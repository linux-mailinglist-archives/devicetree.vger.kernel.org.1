Return-Path: <devicetree+bounces-149648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B7CA4006F
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 21:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04C604239EB
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 20:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1F8253326;
	Fri, 21 Feb 2025 20:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="aBgdtEA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF8C1FBCB9
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 20:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740168555; cv=none; b=fTMOXC5nIdtCFkfX//970l/HzYQojoi3XrC3891+IjTda5dwnEjATa4C44CT7bLIl0RwideF1Q23c6cHbzRhukknS5NSL/6paiyqgJ72PE4lj6+d2E8YdfC0OsTTCePpSHJ6tOXX0Kgi+GerWBBftBJIyQzJCOhV0dv59QfT3G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740168555; c=relaxed/simple;
	bh=F4ZxpWiPpVGVIIx6Y5UzKKxpUZ2iM962XiXBPB3ONhY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=XfjcHjUs2pS8kB19yRCkDpVsDA99ds427mu802QG01w4STAmVmzKezgipu1Ypx9/aJj90Ue6afVYoTwD7tZrIlEomDgnabTYf5YZnOn0E2YS3B9ss9DPMwtPAAQ1GquTxA+PkQNVCfybjVnuzfWU4/HWRGaFR+hGhIg8KVqYy8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=aBgdtEA3; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2bcbd92d5dbso1068691fac.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 12:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1740168553; x=1740773353; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=W1lUGQu2HwadOSJWdDUBLoMmirB+DmWjdW3wr4b1Cj4=;
        b=aBgdtEA3kLKwwHLbVev9Bo9OMIcz4k//w/DjxQM6fmy5b/nlt9lfEznATVIvhIsePc
         KsQiVF7RBM1h/bbA6+L2g64L/gfIA+EgxosoYDieRZHDXd7fHyv8w+R9wZ7FYTg4lyn4
         YoyXZTQooopJEHdnPolQ1lrrQE+eA8OefNFLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740168553; x=1740773353;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W1lUGQu2HwadOSJWdDUBLoMmirB+DmWjdW3wr4b1Cj4=;
        b=nrSUL6bXyU5huAVSghTznq44UxhEkFxVWVPh0FIOiDKLivEbabAPCQaIu4R2qmbR/k
         mDm1ROiWBANSF/2jAJBUisulr+f7aSgvzc5pnYQZJs9PxkcIwNSSbjgucQ6N0zI+Bh+d
         YZRbHyq7T9GNl+hZu7MNJiZNrp/ofuSdmKGggMHUMqXtnQOxXouKPxNuE2ubq43E+Sgf
         TDS10gyqKP+vIzBSWEvfwPxhJ275wZDfaePWVBsTPzgA0FlySC79709Z5oODhfTrH8YD
         aowokF/SVvP9shmdvAlX07emGbxOKjZmYfgWIoEJj+Qcs7t4rXVhxcD2KnczjU40mpJB
         /+bw==
X-Gm-Message-State: AOJu0YyE9gPI53w8aTVm0nT8/sYxmnygJv29adlDa76zz9D9dUyApYyX
	n4KTMoakv0JgrYADC5Fx9F6DZSU5inboTVMYcALTEMceyRt/nPS7r7w+sg8riw==
X-Gm-Gg: ASbGncsAlBo22JX10y5RaHfye9e1xWidI025Du534rmfpoQozwyy8A0bo29ne1E9Rfk
	Kh9yOVU9TVBRXFCwwh+56knK354yDfwayNRTPU8HRHrI0IktHaI6T189E4JdAW4bT9v5eSPzG36
	6f74Z/C/dX51owClvDVXb3anpT/K78xmZsddrRc70zd4TrLsIDcZzaJS5C4WpUSUkiJA49nKeMu
	Sl1TLy4IMn60Tp5Uc7Vt0A7yrinluhCrsp7krVSBRpBJYTgDdARusjFHjqQYitqKlP+Zo7nZKRZ
	eFp/jAHCF99nQEamz31u1MZtbMmwkldEX5gG79teMEQ3LxlmKaEr1fAPGgOkMquofw==
X-Google-Smtp-Source: AGHT+IHSa8f4sqShohgGPtu37G2TvzvQIIJNhmNCM0Znb6JovHA4q8y5Xak/spLsgW1qS4w7BMynGQ==
X-Received: by 2002:a05:6870:4191:b0:2bc:8c86:ea31 with SMTP id 586e51a60fabf-2bd50d808cbmr3370127fac.20.1740168552765;
        Fri, 21 Feb 2025 12:09:12 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72728fba70asm2632841a34.50.2025.02.21.12.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 12:09:11 -0800 (PST)
Message-ID: <47e20ea6-e5fb-44cf-810c-5fbe8d26abcb@broadcom.com>
Date: Fri, 21 Feb 2025 12:09:09 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH v2 0/5] net: phy: bcm63xx: Enable internal GPHY on
 BCM63268
To: Kyle Hendry <kylehendrydev@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, =?UTF-8?Q?Fern=C3=A1ndez_Rojas?=
 <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
References: <20250218013653.229234-1-kylehendrydev@gmail.com>
Content-Language: en-US
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
In-Reply-To: <20250218013653.229234-1-kylehendrydev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/17/2025 5:36 PM, Kyle Hendry wrote:
> Some BCM63268 bootloaders do not enable the internal PHYs by default.
> This patch series adds a phy driver to set the registers required
> for the gigabit PHY to work.
> 
> Currently the PHY can't be detected until the b53 switch is initialized,
> but this should be solvable through the device tree. I'm currently
> investigating whether the the PHY needs the whole switch to be set up
> or just specific clocks, etc.
> 
> v2 changes:
> - Remove changes to b53 dsa code and rework fix as a PHY driver
> - Use a regmap for accessing GPHY control register
> - Add documentaion for device tree changes

I really preferred v1 to v2 which conveyed the special intent better 
than going through layers and layers of abstraction here with limited 
re-usability.

At least with v2, the logic to toggle the IDDQ enable/disable remains 
within the PHY driver which is a better location.
-- 
Florian



