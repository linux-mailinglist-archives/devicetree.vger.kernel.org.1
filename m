Return-Path: <devicetree+bounces-260653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JXoK1eNemk37wEAu9opvQ
	(envelope-from <devicetree+bounces-260653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:27:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4599A98DC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:27:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C6FCD3006997
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7133E342C92;
	Wed, 28 Jan 2026 22:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="dkiztnrx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f99.google.com (mail-oa1-f99.google.com [209.85.160.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DB426B77D
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769639250; cv=none; b=bIl7NhPlmNEwBTA1zIoGv46bTuOLIPtJOfZIU+pTsHTU4ooFsvo3s8FyQ9yqCCMMaGfVjMdQklaG3V1s1+Y1PasdkuIquPclYAomfFKh0R0FfO9mj82E8Ue7HvYMky0hIPIxJz9MAKYFm67RrdfucEB/MUI5vPJg8pkVtdFB9LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769639250; c=relaxed/simple;
	bh=ZC6+JCW+StMfS9SRF4p87Keqw6sepsCtUfuYYuNl8aM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g0Tjdks9lAHkPBP5VnMrMs147O537m7q7v0+yIyMng8bzwK4rrkV/qcavNyD7788iX9IAmaswSRN7XrVV67qRUYvQKkq63cDC810iMYypHCqKT+/9Ze5s5pW67e5FK3WdeTaNKNDy4nJT4ooeRwJzOyK5Th7onRXsP3ZbProHZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=dkiztnrx; arc=none smtp.client-ip=209.85.160.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f99.google.com with SMTP id 586e51a60fabf-40946982a78so118170fac.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:27:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769639248; x=1770244048;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IIAgO8QkRYmg4NNs702q5Q7Jg79m8gPvL1WevdqMxmo=;
        b=qPfkyQpwH+6u8xjM5q2FF9338AcgC5xBtcRF+0rXZdUgccntEenZ6PRBCeHIwrN2NS
         FMFhlDqK1AszWhzPKDSK1/zZrxgEvKlKYPbZecCX68FxYWzxVaG8PdrM06drOnmHa9Dq
         eGIqPz/7FbnkpR/5z/m9ceT7GsFAq4MJl/iGAY3bHxaRB8xWd92Ldo9UYPzcGY/Nyyxf
         sSlnkH/WTcA7cHzSm9hy88GIkQ70unm/QsK4dZSuUEf4nfxGngTLc0oKzXYmpqubNZPX
         F+vSiUYhhDRzIPFWYe+G3FP8dgJIQ6Wv9NEdpycvpCwEP4e0rj4SzfbfWtYOrqzDkwRX
         /TSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMYvBiWVurvuYSaZWvYitw0oig9r3ZNIdf6h85q237wzcsVXzNpVGetWG7jwUvykISgqjjlUl4eo0R@vger.kernel.org
X-Gm-Message-State: AOJu0YwDbVJDP8GuGyLdiGBVjnlJC88hFVdi/Qnn39MAJTHbtHxgEfRY
	swQxwYVU25dRdcyjk0apzeHtki9nxXytJeTiuNHuM2SXBEVVoYIa+Gp+GoWF5RZyNFIw7xyUCeo
	2yltpL7k6vUEp93f1Yj7ziDjWLp9lRvOswqEDacEqaPdxXwzXn+dFFZPQGSR9M9+FTLW7bk2QFe
	qUDOEAFH81iFoVSLRBLHKNGJ90Fwyjag+lhcJZxb0mln9a5yqCJ+OcR+Kt5JPtjzCXuoJa6cCFy
	v24QmuPUvgejy9/MHVTbQ==
X-Gm-Gg: AZuq6aJhf04tk+tsdHatdiTVz0QxxNhlHKzodIBOcZS+2StjLEsfpgQfqpxQC1MnP2J
	VHD/xin/3MSlk9M0mohJEkYS4yoJ1NDiatNSpEZjPNgJj9w/Sg+U28lAa4tulYCQxl4VCt1bDfj
	EfHszswq74KpFMYtN0EBVk77pmoEYsScGN/xfFOcUn+sSdxXOiNMz4ypwgt81pnMDrH+1bGR/JM
	wrap+LvuxE88xLsrmN+nmlDsF9M5p4PJinjLdxVocRfHlf18FFZg3RmMk7h4xUAE39Mn2WJbPtZ
	ihVwdz+BPO71QNMFTxzraIdExKDbe7dQp6GZOSp2lkce9SUQIkPx1NM75YDQYwOxtCcAibbZOs2
	svBtfqrg3+I1OdiNMOT+0zhIoDoHPzhmJ8PN4+EDtACzXtIrvB5bTDTDXexhJEC0IY9f6XRP8Xu
	p1gCdAE3YEK0UHChEnnDZvOj7znuqbM037BL7wp4ZtX5q7bcq/hg==
X-Received: by 2002:a05:6870:4cc8:b0:3f1:6dce:b865 with SMTP id 586e51a60fabf-4093ff58be5mr4081899fac.28.1769639247588;
        Wed, 28 Jan 2026 14:27:27 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-17.dlp.protect.broadcom.com. [144.49.247.17])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-40957123e84sm362875fac.1.2026.01.28.14.27.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jan 2026 14:27:27 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7ce1dd077bdso1038077a34.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1769639246; x=1770244046; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=IIAgO8QkRYmg4NNs702q5Q7Jg79m8gPvL1WevdqMxmo=;
        b=dkiztnrxj1PQUGSbAaUt2ieDjVGRcVycD6BeiOE65BlTIEBvKZblrEbT6LYRIH3yt/
         QtlmqOQY+xOIjhL7lv7m3CpStLOovGRJT6W4OTsTjXX5fHjKLwyu3xminUxVl+vuSXjZ
         sAbSjYTbyFvcpf8cc3jxbL1UZhasbKCs9aylU=
X-Forwarded-Encrypted: i=1; AJvYcCUdtvjpfn1xavejzmoC4kAxU2c79i/kPXovcMZ5INff/3Muzgc7RdsHLHSvAojhrfEbnwuWvtCPuDTf@vger.kernel.org
X-Received: by 2002:a05:6820:810:b0:657:64ce:b40f with SMTP id 006d021491bc7-662f202a4f9mr3874926eaf.4.1769639245659;
        Wed, 28 Jan 2026 14:27:25 -0800 (PST)
X-Received: by 2002:a05:6820:810:b0:657:64ce:b40f with SMTP id 006d021491bc7-662f202a4f9mr3874921eaf.4.1769639245274;
        Wed, 28 Jan 2026 14:27:25 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f996216asm2174258eaf.6.2026.01.28.14.27.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 14:27:24 -0800 (PST)
Message-ID: <eeb09ca3-bc8c-4747-a6f5-29f15335c149@broadcom.com>
Date: Wed, 28 Jan 2026 14:27:22 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Add V3D device node
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com
References: <20260114120610.82531-1-mcanal@igalia.com>
 <224913c8-52a6-4b3f-a375-e1b4fcc0c142@igalia.com>
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
In-Reply-To: <224913c8-52a6-4b3f-a375-e1b4fcc0c142@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260653-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[igalia.com,kernel.org,gmx.net,broadcom.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D4599A98DC
X-Rspamd-Action: no action

On 1/28/26 02:39, Maíra Canal wrote:
> Hi Florian,
> 
> Just a quick ping on this patch. Did you get a chance to review it?

Your patch is based upon linux-next rather than the Broadcom SoC tree, 
the devicetree-arm64/fixes branch is not merged into 
devicetree-arm64/next at the moment, therefore 
arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi does not exist in 
that branch.

Give me a few days to figure out how to best deal with that.
-- 
Florian

