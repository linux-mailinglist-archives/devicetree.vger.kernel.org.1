Return-Path: <devicetree+bounces-276400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDoKA75yuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:14:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6052A0A0E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A202307E876
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF96A363C4F;
	Mon, 16 Mar 2026 21:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="CUQpw1O1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f228.google.com (mail-pg1-f228.google.com [209.85.215.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D09331207
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695471; cv=none; b=W0COP4Imn5tAKca6SfIqwHVyrcKicKfd0aroFtruCJZPCroRmx8F7g3bOknqPeARwTD0a/1YM3EZbShkr++nognvGYe6AuKEv3HFrgdmYcaDSrtdWX+uHX31wgqSqWtVSb5bx0AvD2G9sVVfShsRUVv/uLZbgB/452xikja/re0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695471; c=relaxed/simple;
	bh=4QgtBc5CWS1KXpXPzeAwghVCoytCNwTn/0/nX466lfE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fez5srpRMxSJ5wg55mruY16VaJyurDWuP2G0clr8MoLTNxX+XH4rdAItV9RnW8+HmxtDwR2GY1NoYS8cp5TJhncAmLSv7+UMyEno7sTFXnUhbFgMIyEwZCbY6huEG87m6iQ4GTN+l0sezCTNZCpd6ZhMSp4ND7BCVB5eDO0BWzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=CUQpw1O1; arc=none smtp.client-ip=209.85.215.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f228.google.com with SMTP id 41be03b00d2f7-c739e680bebso38400a12.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:11:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773695470; x=1774300270;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ntGOuBcFhll8Sh31h3Z8af16/+BUIbfDCN+JQMkK2k0=;
        b=kKpcY8EYG2Mg40E2PvNy9TUjhnVQTLNzZ/uth2C26lHs33egxrnsxjbPLtJI1szdtZ
         Y7Px+dXNLbiTULELYo8p2gpUUKQZM6BZf4QxMjjln8uweXta3AWLcO80DqxJFDRR59qB
         6us7RZYyD8kHKw5C12mlst6et/koV7LlNECmxZobxlrKQ8DnLI2thvp66co6t6AXPCQ5
         mb6pzQN0r/oFqn4hxfV2gOzNorwjkQbZNntXmiV7BzE0lqc6KTqo/68uZ47k1OOnInmA
         +bhzEQLXpdNI0hkw61DqBh1VzfhZwa0NzSKiieyshur7K2Xdm/GYNgYkFz7uEo6t7ZlP
         OUjA==
X-Forwarded-Encrypted: i=1; AJvYcCX8C5PmUxZFUKBsUGAigUacKjfmDrOfQMhixOG2hmPY5nuu0b6fKg5NpjFv9WiTRmJlKMwlO5dPDrfG@vger.kernel.org
X-Gm-Message-State: AOJu0YwFgb0Eiz0ZsRZxBzhy6vwFIzOTlD3O/GRmfz67exVbFk081GCO
	pLlg4LFK4WkKO7ONXIelel1NBYuZoW4QayC0hpZacolTS6VdTiB+G/FBRVrP1Vg99uHd9kz/jjE
	3eZAWuMm5hLtDpK7pyAeW+fgoghwSjXxPFcGnIJ9aiGsxfiz2mQoAcmiyHhWElD/ppIosem6cFJ
	gUfjT8wRIwogIdv5KMoHKl7KAliInx0q0/MD/TKLymPbNZjPpgvJNHvvC12BnzixIHH7v6cHEW6
	RmPDR5dFD+y4MzCYCLwDA==
X-Gm-Gg: ATEYQzy+yEzjt0XOqo9OYcrhIJe2b76iAk/YQ8z3kXvUZUTRCFaKOzRgU+EIRuOntkL
	Cf33ct5jZFO5pa0Qk0hiMpKxOgPU0414DDtRtiyy69Wg/ItUclyiHmhLPKCBhaoF7Roz49zOSwj
	oX+arGFBkb4JXzSmvuLAJ+NkdagxEsrCb6KA9at+7VR0k/9Rycn2ImIRrdi1HiH3ZIktn/Rl/Y2
	UliRZM6SuwSwyxQpMM9mJUIh2mcvBGRTzZ4bOOi4oIww40LpVVNC+fCmGgsFLGKLgM50kJtrp50
	OEDUKmHE6r8RRR7+toSqZH/rFZpzVKOTcvF9XhU93tkjwwE/kZpipJapWN4Ge6sScT/6dTWPmE+
	Bs+ptVB4DuZOST+eCteiNMJWHVj7o01OblaGO4TMtwRz3Fnr5g3uzyUpISGixfbRYuOq1V250Pc
	kheBpXtlym9/F/CM5uvthSOn7DJKXc8dnfwoWzaDZqsoGdtKIZiB+SVSuocVShYA==
X-Received: by 2002:a17:902:cf03:b0:2b0:506b:e6f8 with SMTP id d9443c01a7336-2b06357ec87mr8250415ad.5.1773695470054;
        Mon, 16 Mar 2026 14:11:10 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-22.dlp.protect.broadcom.com. [144.49.247.22])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2aece80360dsm13741445ad.38.2026.03.16.14.11.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2026 14:11:10 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b81ff82e3cso60841eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1773695468; x=1774300268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ntGOuBcFhll8Sh31h3Z8af16/+BUIbfDCN+JQMkK2k0=;
        b=CUQpw1O1rp7YBSs0l4acM5VxiHtQ1WEsrTg7DVOmHbS8x/ZXvCkWT5KYkNs0AkQWRp
         u6/kPSzuUHrFhIcIrPBENKER3g6Kl6o90FpHAnQGdob3/Nsl5PUzHw0LaZCAefRlF7Qp
         obQTaZkhcuz5ToxRNhPlctZGGLbNKQyIGGbss=
X-Forwarded-Encrypted: i=1; AJvYcCUBzanBqYSFspgB5Yqmd5aP9zN7qQ1Lt4DZtyfSUuh5o1GiBZsccCkeIRK/gVUi/VKesJnxTbJxAs2Y@vger.kernel.org
X-Received: by 2002:a05:7022:e1b:b0:119:e569:f875 with SMTP id a92af1059eb24-12917268285mr548580c88.18.1773695468171;
        Mon, 16 Mar 2026 14:11:08 -0700 (PDT)
X-Received: by 2002:a05:7022:e1b:b0:119:e569:f875 with SMTP id a92af1059eb24-12917268285mr548557c88.18.1773695467537;
        Mon, 16 Mar 2026 14:11:07 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f6384f6csm12657965c88.9.2026.03.16.14.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 14:11:07 -0700 (PDT)
Message-ID: <052e82fc-cb53-482f-ad6e-95a48b2c7029@broadcom.com>
Date: Mon, 16 Mar 2026 14:11:04 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2 4/4] ARM: dts: BCM5301X: AC5300: set WAN MAC from nvram
To: Rosen Penev <rosenp@gmail.com>
Cc: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "moderated list:BROADCOM BCM5301X ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20260225230827.21715-1-rosenp@gmail.com>
 <20260225230827.21715-5-rosenp@gmail.com>
 <20260316204422.2145317-1-florian.fainelli@broadcom.com>
 <CAKxU2N8bNdUC9eS_qgqsJ3o=scmGnYoWh32AMQCpL2DDmdt52w@mail.gmail.com>
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
In-Reply-To: <CAKxU2N8bNdUC9eS_qgqsJ3o=scmGnYoWh32AMQCpL2DDmdt52w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,gmail.com,hauke-m.de,kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276400-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,broadcom.com:dkim,broadcom.com:email,broadcom.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A6052A0A0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 14:09, Rosen Penev wrote:
> On Mon, Mar 16, 2026 at 1:44 PM Florian Fainelli
> <florian.fainelli@broadcom.com> wrote:
>>
>> From: Florian Fainelli <f.fainelli@gmail.com>
>>
>> On Wed, 25 Feb 2026 15:08:27 -0800, Rosen Penev <rosenp@gmail.com> wrote:
>>> The WAN MAC is offset by 1. Set in dts to avoid having to handle this in
>>> userspace.
>>>
>>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
>>> ---
>>
>> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
> There was a copy/paste error here. et0macaddr should be et1macaddr.
> Should I resend?

Fixed it in place for 
arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts only, right?
-- 
Florian

