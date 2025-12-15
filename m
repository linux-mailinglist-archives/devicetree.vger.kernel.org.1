Return-Path: <devicetree+bounces-246806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 371D1CBFF6A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23B11301C657
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D595D3093B6;
	Mon, 15 Dec 2025 21:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WLZeNdiw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f98.google.com (mail-oa1-f98.google.com [209.85.160.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA03425F99B
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 21:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834652; cv=none; b=t3zj9ckE+YW6/RWngP03ypFHiizBbpuxHY7zFWnR1/eVXkFmDgbFIjkbOPrf5XmuTRCC5xC5onYTqWPm7b30FD511uiJpfhqsBlxgZ9+AkZRGn5W0tvU7rXcRPpDkhVCHF0wl1T2yUSn0dkY2jXri7D8GY2BFYjOKfWnDL8Ce3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834652; c=relaxed/simple;
	bh=sd68QLFvyFQ/JuzLorP+hpKlItFpHSco9yQI8JEckL4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OVbctt50Jjg2CLPZYDiLoizbky5eqTGRFlW55s1qpw9QnLu2jfZzNnrlOIc46agvtBxRTg96/dYfZYKrsIPCdEUGUaFhouuQB9YiE+lkaTp33gGE6lmk/cq+jZ5ywbQ37ON7ukkgA9vI7XUSIv0mhLT0KmCWiPN+ZQwM/4X5ytE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WLZeNdiw; arc=none smtp.client-ip=209.85.160.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f98.google.com with SMTP id 586e51a60fabf-3ec314aaae5so2117150fac.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:37:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765834649; x=1766439449;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IciMt2ZnUq8oXS0IaO7fKLSgGJlrLaCCmsmagqu8OYs=;
        b=i1m7F/1+zaR0KEhgbgwIEOri9VVi7wEkqTzkSy/YyAEPK+2NvxHoAv14VVwqli3RWp
         j3SHT34P13OhnvQ2kCMvkbWvec5mbK5L1zOeyu7UGi33ezhczzVFgds0MgVsbqrMCEQM
         CXQebhLLsT+SK/hQpWXO2JjMS8qIFKe5AmJXoX99Ak7QzBQN7Z8soYKqmU5Sh6qfSDOK
         DGTR/Uv3VXktrngYe9HLK6kX6AfLN+b/sc89xt/BbFmEysRNRfCAyz+iqwB7+vLf/aS4
         bMNqd/9dxMZyVY2vYrYU4jZ0/m5tw9yGWvJXIc3+OK6SVckIj4pmCtY7mIRO3PROEGvr
         up+A==
X-Forwarded-Encrypted: i=1; AJvYcCUp1IJ9TLLTrXxBoa1B8Nob2GUf6aVH+QlvcpHwry2lRcEWgkuMJJRpjZjQIpattUN4i6XDUIDFJxZq@vger.kernel.org
X-Gm-Message-State: AOJu0YzGsPqoD8Hmjzmy1cTRLt8uBdBAPHM1UIX6Z1tx1md3+fnPwhVO
	/T8GBhpw28RFHfqe4aBJSvkt7s/wsWRfIpoZLqSvbdR6ds8Il6G4b2nRoj1tz4lRMVWD9YVr39o
	hAPV7hHOEl2iDIjh6MOzpKN3DOSXh7B2gGFw0mPNHYxVAWJBwhjW9bAxk2zieOGZH6iBzddsGBu
	t72SAUOuvLuQUOKc03EvszHDyrw6VdB6t2Sr1z0xITbpFyfu16L9ApJIFn9mhv4eteui1SDHrlS
	jVIOc3UXOsoz5iFFRIf9w==
X-Gm-Gg: AY/fxX5UbRf1coYisNDq1GBqNl+U/Thm2j1vMStoDkwiYDF4cGn+aNMTo/yELP2I1/1
	b/WZDiHNtq7RMlMDqbMtPLwNa81cxS743yznF0vzgUlDn0RtGTv8fImBTmy4okBHBFgJIemlGq3
	7ns3TEFt4bt74jHk6PSgpq2iTlHxukw3lKZl3F81g7TkZNAJVieNq/ELhwk/5hjZf7fDkxwoWFg
	nRu9Vkj+IOrRL/2P+6pFIY3iBIK6c25UtFENzkueu5hnQYMRwWnKRimlblTS6pNbdcDqE8QA4KA
	ylkldBoSiZKFnQ+U4fcMRoPycrB0iu9lVHmXCH+AwskGKzB5D/JSHSxnk7tM3brLXraNlWyiApC
	ZYoXcVqCujENwuOWE7NV56TdQLWKOzyrSFrY5SsRMnz/CA4n2DHDVZDy37w3js/Q/Okm2v4t6Y1
	GddmYtyY4HctnAyUQLHt0j70yN2qBqw3b4Y3QV0tTlEsDmP0lMqg==
X-Google-Smtp-Source: AGHT+IGDp+uI8RyCPr7QJ+BtqH9uYbsKv/Wb5ZdB0DXs6c/groOCBvC6FCtO9KWJr8LmX9Npm7wiXzcYGcg2
X-Received: by 2002:a05:6820:138f:b0:65b:3480:6453 with SMTP id 006d021491bc7-65b4576d9aamr5160621eaf.72.1765834649519;
        Mon, 15 Dec 2025 13:37:29 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-3f614de0b2fsm1086595fac.11.2025.12.15.13.37.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Dec 2025 13:37:29 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so86468841cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1765834648; x=1766439448; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=IciMt2ZnUq8oXS0IaO7fKLSgGJlrLaCCmsmagqu8OYs=;
        b=WLZeNdiwOEaZB9WKzKuoC8gOQitgJWnR+1lvg3KD1kCiyVPiQq7QESzy6h2A03hY7b
         hJrTtphgFs1s7P6GIV8u59veqIgeu48b7N84Yken67NcVmUKOsjmfD6gw3n0eJ5nV5ry
         p0E0P8flNIjZWmBR7MGADy/6fV8o7D0A5ozdw=
X-Forwarded-Encrypted: i=1; AJvYcCW1YWAlX5ZtAPSj4/uJVTukOeV11XX1Xm+QwDo5qldn4heKZTJfsckvuVltyK8d+9KXt+78Oxw/KwhZ@vger.kernel.org
X-Received: by 2002:a05:622a:46c4:b0:4f1:dd49:c8ee with SMTP id d75a77b69052e-4f1e16a70d3mr92845351cf.28.1765834647722;
        Mon, 15 Dec 2025 13:37:27 -0800 (PST)
X-Received: by 2002:a05:622a:46c4:b0:4f1:dd49:c8ee with SMTP id d75a77b69052e-4f1e16a70d3mr92845121cf.28.1765834647300;
        Mon, 15 Dec 2025 13:37:27 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8be31b52abbsm38900985a.35.2025.12.15.13.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 13:37:26 -0800 (PST)
Message-ID: <6102176d-6116-474a-b228-ebf0d46d99ed@broadcom.com>
Date: Mon, 15 Dec 2025 13:37:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: net: brcm,amac: Allow "dma-coherent"
 property
To: "Rob Herring (Arm)" <robh@kernel.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251215212709.3320889-1-robh@kernel.org>
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
In-Reply-To: <20251215212709.3320889-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 12/15/25 13:27, 'Rob Herring (Arm)' via BCM-KERNEL-FEEDBACK-LIST,PDL 
wrote:
> The Broadcom AMAC controller is DMA coherent on some platforms, so allow
> the dma-coherent property.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

