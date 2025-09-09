Return-Path: <devicetree+bounces-215131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BE1B5081F
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 23:26:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AD4F188E520
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 21:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757F925A355;
	Tue,  9 Sep 2025 21:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="iNPWWGqn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f100.google.com (mail-io1-f100.google.com [209.85.166.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0814025A338
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 21:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757453165; cv=none; b=Qfg5Sb5I/OBxkjjCvJQlGP2GW0oMhQ4fDFQ8qzokWyCIFaRAVJyNmjhpt72KeZLVo1YvtVU8vin4Ug9i3Hve0Gh0+FPYcY6pV/A5bMK7IKA4HIw9bX0bt3C+LZ2rf0qzBpSc03g1C2Xh92z9L/ffrz9wyERlRQzDaUA6k1LD/pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757453165; c=relaxed/simple;
	bh=Ch+WWkLXleWL5addBiUiXk58BipmrswuiXTk/DPEo+U=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=VEj2DzrTT1wOQricGE5pG/FpkXtD9I0ydHWRdtTjaGvkZ3eb15nEHXgAW2LDsaomJqCgXJJHoPmMvV5PM73zuMfE7n7ZGAz6lawSsG9X6q80smlgL8veB6u6v1lfVd/GmzpHuEsAi4Qprjy7JbHo0aGu7GdWjboJuICOXC3kHpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=iNPWWGqn; arc=none smtp.client-ip=209.85.166.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-io1-f100.google.com with SMTP id ca18e2360f4ac-88735894d29so220415439f.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 14:26:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757453163; x=1758057963;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wEBL3qJvgSuPYBB2IE0AOyRPFYQUDIJrLl+44PVzXH8=;
        b=b8OxlRaJ7+EoV0A1FXXK4Xj6Uxa2axBL3CdCWOS1hILRIdDLjNB/MZWmuyUqx60rY0
         K1joFbOFH1LuNqw4EW/Rc0cQ6nWeq5vWhw7THmxJeXLZCk++OgspIShTVjuMmcpyiVoE
         ICX47ooFkofmg79HBMMLFIOBWWfEgRn0a2SlyDXLOmgrZijteTgJUKZwLnFyKUJs3wgc
         AGpf4iJHU5URXhKm2jU5ScdBxcjuCvnMYuhvEDVZ2j+8+fkxl/I+Z2YOsLbKd71Y8xys
         IG4k82M04re6wOxZzqeMyUdx28Mc5uIPHH5oCWMZ5x1XmP5FD3QjarUbPlAxCLEMhoo+
         bYSg==
X-Forwarded-Encrypted: i=1; AJvYcCW4LME0Y2jW4NP2MMFX7HLsXkmUuv5WFcgwkUAE6ivQtg6Bo2qpUNzi1ht1LU90gFyJUmfvWvAdgTc3@vger.kernel.org
X-Gm-Message-State: AOJu0YwBxRlv6fJ1pyKNI+tvXGoh6eGROsjm+KcyeWPel6IHnJOBttyG
	D3KUXzco9u+JjkvB0/Pu8clmiVY5ondrLijbizLXgwrxIs5Drx1zD2pqcxaXKkfU9/EYEAAfaxj
	9hxWx9RcEHMy9rV+htf4cJluQRMmTOIb5VFKSlwo5fLuFlLzJ8rYOhmltirw1MkqBlNvRsMgq+8
	1GEwzI2Qmr17ax1FRtOL5GRH/cB5GRq5t25lzpQ2p1MmNwEO+os7wMsLrfBKRNYlZ/EYmeV1nE3
	b9CyBVdS6raEVPgGvzbHg==
X-Gm-Gg: ASbGnctVV6L69v1Y6BrhVCC+4KPmSPLxFW1eJit6Naxa6wau9n3LNCPlUYZzQlRxZrJ
	xsLUriV4T/f7uI8T6mA2Utx+zYHw0Qmg57dh2fTC/c5kw8yN8DZj+jEegTqj37/Q+fZHnYrabs/
	Is8m+DEpQlk1K1F3VJpGM4yV/sbELYAV2GIGnMjafyYjyy7dg5UtieXaUBh26eH6lHpOiZ/pwQA
	qD7bXchobpElN8ZIbhmmPUaTxf6y5o38WXvlMltq7usDa1ERCRp3DBXdZrkbLKJKRTTMRzrCE6v
	MZstdOTKr5dBy+omMC5gZPp8fba71VLT6mowGd4zxkao4CgUDh3o5icjDHQTaTBP3yxk1FjI14y
	unO9zGJVdjwOicivTe4uBFMmr294XQWjrF4H7l+TT/lk3eTGbHyQw6xuZ9/Mibq2X1VMq0IYa+v
	mCImYi
X-Google-Smtp-Source: AGHT+IGHaBauZBIjB2QyAgwUp/vA+yf701zfR3Gf21gXORwCFt7/JjVjOJDN3LDNDm3FW3fWm94zgIJXVwbl
X-Received: by 2002:a05:6602:154c:b0:887:2880:ab6 with SMTP id ca18e2360f4ac-8877765bd21mr1939674339f.3.1757453162975;
        Tue, 09 Sep 2025 14:26:02 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-18.dlp.protect.broadcom.com. [144.49.247.18])
        by smtp-relay.gmail.com with ESMTPS id 8926c6da1cb9f-50d8f28b5afsm1653361173.25.2025.09.09.14.26.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Sep 2025 14:26:02 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-248d9301475so111860475ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 14:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1757453161; x=1758057961; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wEBL3qJvgSuPYBB2IE0AOyRPFYQUDIJrLl+44PVzXH8=;
        b=iNPWWGqnlfQ/ox/cMpD/b+8JwzUq36qrkZKr8iOqCODdIbTyZHsC4D0ie6R8FyJpNl
         wTf6S9YOuQ3GfekaM1rw6mR3cLi6rAADwzI5NJdXrlOWwoPEnSEZvBESLIGznOYg0Y/s
         6exjJin/E2p4CzhUvnwFcwCXKxnYcub2EWf1A=
X-Forwarded-Encrypted: i=1; AJvYcCWjua8mOdGoukh2GpboUcmnw9EGHva6wPf+xXPFXQiUUkcpLzfD2h6oXUfwNcUjAn5c8BUBR42mK9gB@vger.kernel.org
X-Received: by 2002:a17:902:f549:b0:24e:e5c9:ecfd with SMTP id d9443c01a7336-251728629c4mr169828355ad.42.1757453161388;
        Tue, 09 Sep 2025 14:26:01 -0700 (PDT)
X-Received: by 2002:a17:902:f549:b0:24e:e5c9:ecfd with SMTP id d9443c01a7336-251728629c4mr169828075ad.42.1757453161006;
        Tue, 09 Sep 2025 14:26:01 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32dbb5efe61sm108217a91.18.2025.09.09.14.25.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 14:25:59 -0700 (PDT)
Message-ID: <f8e28893-2401-460d-8511-9b390e091b4c@broadcom.com>
Date: Tue, 9 Sep 2025 14:25:58 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v2 2/2] arm64: dts: broadcom: Enable USB devicetree
 entries for Rpi5
To: Andrea della Porta <andrea.porta@suse.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, iivanov@suse.de, svarbanov@suse.de,
 mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
 Phil Elwell <phil@raspberrypi.com>
References: <16d753cb4bf37beb5e9c6f0e03576cf13708f27d.1757065053.git.andrea.porta@suse.com>
 <c6b17f0f896b5cdd790fc10aeb2b76b71df9b58d.1757065053.git.andrea.porta@suse.com>
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
In-Reply-To: <c6b17f0f896b5cdd790fc10aeb2b76b71df9b58d.1757065053.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 9/5/25 02:42, Andrea della Porta wrote:
> RaspberryPi 5 presents two USB 2.0 and two USB 3.0 ports.
> 
> Configure and enable the USB nodes in the devicetree.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

Applied to devicetree-arm64/next, thanks!
-- 
Florian

