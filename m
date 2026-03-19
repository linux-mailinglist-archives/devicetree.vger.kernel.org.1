Return-Path: <devicetree+bounces-277967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN20JA49vGlxvgIAu9opvQ
	(envelope-from <devicetree+bounces-277967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:14:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AED1A2D0AA3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5C806302D680
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E173F1640;
	Thu, 19 Mar 2026 18:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="cj4mfCsM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f100.google.com (mail-ot1-f100.google.com [209.85.210.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32620372EF9
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773943989; cv=none; b=AfM27xoWlyo1Swse63Lb2a5Bbgbv+OsHHD9PFPzq8hXJQBuCBNdzNtPdOQHL1k1m4/dwRDsQchITWewAX2AvOLtfkvGcPhwivYTMKk0+a2A7IPbJAJejXSQlOfolwap1hHx1HOJ7O8z1Yq4ueeULgOaBEYIrKASEWgTIbfIQWzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773943989; c=relaxed/simple;
	bh=TNd8KsiBfNAW4PY5mSr5UDbgWlxUXbASdNC041mAE7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tUZAwrQq2x9QBeru/z1b/O/RkKKA+EsFxHytUmMmJ5VKWd/KDh8NJH9pSvtOaAhgz5UpxBQiWnB7YX4lQhElSpC9s7em7bl6fP6pS3RxZsFkx4G2xCNdhJbpeZ+mLd5djqMgUuSOoPr8XnefoMsNOeRgzarnpwHCjtZWUuIqeQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=cj4mfCsM; arc=none smtp.client-ip=209.85.210.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f100.google.com with SMTP id 46e09a7af769-7d750eeaec3so591981a34.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:13:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773943987; x=1774548787;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dgB/oAPv2Ng5VSm6Q6qVgOpNaKbrs+RRk8Mf2PFJJLc=;
        b=HZ9RFgNrKZ1CKDFun1vKcjHgurzlW4VbTuIfcibwphC1b/RdVbdciO5ES+X5wEoIom
         5F84v7yAH+jGUpZEGVSDrGNINMVAa4ZLhozVJdPOwjKTpFH9ZZtMBU70uGKnJ0+SVpM6
         ihz39ioOoY5gxA0LGxiI58nOPt/BPvqAnh9NCNqeo3CGaCk37R+2TuTPvTU76s7UtuXd
         dd4pk1iXSWxYou5IRB2jX9Q/dUqpIOoLPO7bAETneTNCEfPLb+cKgCU8ZQcRj+6e1O3g
         En9xLp0EMgeJP+V4NyQimYP6l4CAVfs9bzczwPq4Ww+lIGh8VqbAPf1iYRA94f2Jcatc
         HSng==
X-Gm-Message-State: AOJu0YwBJzSxKcuwUkZPFLPOg6oQswP+XYsWLCA2g6G4ynf6KjJ3M24n
	o0MJ1LXSB6kPlEEGefQuvJ2dAUY3UfagKmQtAGo51ZRzzHFd7Jsn/QDsrE6fqinfwFK8Y0xWVXv
	pIvgoYGBmYOnTdKABd8zBsoF4lnhb4Sw0p3bXX7uKBmA95VocSQUsfCu+5d5QM0cs/6iaG6IYDB
	j93xA7UCIZ29iKxv/6kcHY1182w8dA4M/pqI86tniQsM/SVQPoA6cuBW13TRoBqtkPdASZ/A85H
	ems4T7BS7nwCEfFgrkomg==
X-Gm-Gg: ATEYQzyzc0gHRqm0nzJemoIWgxiDt5hrOSw8p+x0qnKfyU+9Dr3b9eQIgi3HMjYmE6Z
	66Ye9aiSZ6OVNd1hr/RbDs491v9zYHoQXvJVFApLNC/ohsdudKsa5cbzx+N4LVyCV6tdu+y3dPx
	VvaYm70KyP9JSazQI123QPwjgQ8lkQ7v0oNRLcdI3tPdXjhGq3vunmRl2o6wzYVPxG5bkTIKTNW
	nyRbxW+zCP72iO4kooQ42hP7wIvuAjfZMJROadN7kzprHacNvYsxFklq3qxd4U0o8ucazn6D3tT
	mW3LrS8ytxpzGdPjgdEiiEQkzWTrzyMzxfABTFMb5IpxPe0gnUrc+H576n3TATjbk5DhJeTVLha
	mUNJlb7VsVjIF5fTRGU0j5K2ABbLbex72JK8kBaavIl+XRbvRWdyKSFqFkTpUI1bdNyf0D95pLw
	LBUTu73NffD71shrquASrA+iY2Yrh6w6YcTgXwUnxUn+Ew97KgX1oDo7J4AdTtJXEg
X-Received: by 2002:a05:6820:4b86:b0:67b:f43f:dd3d with SMTP id 006d021491bc7-67c22ed1412mr308528eaf.28.1773943986937;
        Thu, 19 Mar 2026 11:13:06 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-118.dlp.protect.broadcom.com. [144.49.247.118])
        by smtp-relay.gmail.com with ESMTPS id 006d021491bc7-67c0d796ba9sm504654eaf.0.2026.03.19.11.13.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 11:13:06 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2c0f6593ef5so880234eec.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1773943985; x=1774548785; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dgB/oAPv2Ng5VSm6Q6qVgOpNaKbrs+RRk8Mf2PFJJLc=;
        b=cj4mfCsMnZcxs2btvO+5OBWwr4i4kyF2dfw0P9/mDgru7tjhHA8j4ffTG9O3HweDl8
         sTA5f0dHhO+cCVkYxMn2F51nJyDXWMWIQiT2s9P12tQFY1Hz8Y9H/iV8weucSnPMzuKk
         bmwaVcMx007B8EpwrgFgeH0OAULUf22TMluB8=
X-Received: by 2002:a05:7300:f68c:b0:2c0:d233:d7c0 with SMTP id 5a478bee46e88-2c1096d532dmr198792eec.21.1773943984516;
        Thu, 19 Mar 2026 11:13:04 -0700 (PDT)
X-Received: by 2002:a05:7300:f68c:b0:2c0:d233:d7c0 with SMTP id 5a478bee46e88-2c1096d532dmr198770eec.21.1773943983785;
        Thu, 19 Mar 2026 11:13:03 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e536894bsm9978899eec.5.2026.03.19.11.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 11:13:03 -0700 (PDT)
Message-ID: <4d4a244d-f179-4e24-b8ff-b3f77bc83f8d@broadcom.com>
Date: Thu, 19 Mar 2026 11:13:01 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: broadcom: bcm2835-rpi: Move the firmware
 node down 1 level
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114015810.701076-2-robh@kernel.org>
 <CGME20260114182227eucas1p16eee8f1fbf41f998214b89517793bb0c@eucas1p1.samsung.com>
 <a9a202c1-048f-473e-b8f4-6f0550bdba2c@broadcom.com>
 <86bce6c0-dbaf-4508-9f40-ff209c85a76d@samsung.com>
Content-Language: en-US, fr-FR
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <86bce6c0-dbaf-4508-9f40-ff209c85a76d@samsung.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,samsung.com:email,broadcom.com:dkim,broadcom.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277967-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AED1A2D0AA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 04:19, Marek Szyprowski wrote:
> On 14.01.2026 19:22, Florian Fainelli wrote:
>> On 1/13/2026 5:58 PM, Rob Herring (Arm) wrote:
>>> Commit 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non
>>> simple-bus nodes to root level") moved the firmware nodes into the
>>> standard /firmware. However, /firmware is intended to be just a
>>> container for firmware nodes as it is possible to have multiple types of
>>> firmware (e.g. SCMI, OP-TEE, etc.). Move the RPi firmware down a level.
>>>
>>> Fixes: 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non
>>> simple-bus nodes to root level")
>>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
>>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>>> ---
>>> This is only half the fix. Unfortunately, a kernel change[1] is also
>>> needed to make this all work. I do plan for that to go to stable. I'll
>>> leave it up to the Broadcom maintainers whether it's preferred to revert
>>> the fixed patches or apply these fixes. A 3rd option is revert for now
>>> and apply these DT changes some time later to give some time for stable
>>> updates.
>>
>> Let's wait until your fix for the /firmware match table gets applied
>> and then I will pick up your two changes.
> 
> 
> Florian: I've noticed that the $subject patch has been applied to
> yesterday's linux-next as commit 0603d8af97ff, but the code applied in
> Your tree differs from what has been posted in this thread. See:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi?h=next-20260318&id=0603d8af97fff097daa118faf04d9f439b2227ec
> 
> https://lore.kernel.org/all/20260114015810.701076-2-robh@kernel.org/
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi?h=next-20260318
> 
> 
> The "firmware" node in Your tree is under "soc" node, but without adding
> a "compatible = simple-mfd;" property there it won't be populated, what
> breaks operation of all drivers requiring the firmware driver(s).

Yes I see what happened here, Rob's patch is dependent upon 32eea985999b 
which I had initially applied then dropped, and then I did not (re)apply 
it again as a prerequisite for that one we are replying to and I 
incorrectly resolved the conflict as a result. It should have been clear 
that no conflict resolution should have been necessary, *sigh*.

This is now fixed and pushed out, sorry about that, definitively a 
sloppy move here.

Will let that simmer in linux-next for a day and then sent out the pull 
requests.

Thanks again Marek for catching this, my test rack does not currently 
have a working RPi system, something to address.
-- 
Florian

