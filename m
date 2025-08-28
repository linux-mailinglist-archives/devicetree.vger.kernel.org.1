Return-Path: <devicetree+bounces-210148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF71B3A7B0
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 19:20:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 670931893211
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 17:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E597F335BC1;
	Thu, 28 Aug 2025 17:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Kd6Rnehs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f225.google.com (mail-yw1-f225.google.com [209.85.128.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51357335BC4
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 17:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756401588; cv=none; b=FGzlB9HtdW+FaLb9hehZFjIiWHrkXYtxvNcEUCtgYW8OhzTqsql3GIVzi+C9c0o+oeO8sacPAIIsLekxssHXiGH2ifWMicRQ3qoFd000iTs4CjaHyJDp/jCDPPCxRMpeFD8GyuPNWifIrKifm1/lq6KEypQummZQUbW4fKZl4ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756401588; c=relaxed/simple;
	bh=oKaJNr68geV1364Fit6zujhxOTPYYNaTUj1N+dfS+Fg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ivRA8vFb17K7rWZhopawPPIWiCKWdFCm9g0G7vjNTfbhmBKYcMj2tIUpJr3lO197aBOVVXWB/XgA7EW1xOWn9RzKxuV+7Gg/pmdJyBcIQufR21Q/9mvgoH7lji7+pvS5Ive5B3FVohpQNEJzK0k5qmtKZ+1G4nEhvpREW9bZwUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Kd6Rnehs; arc=none smtp.client-ip=209.85.128.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f225.google.com with SMTP id 00721157ae682-71d60504788so9371147b3.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:19:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756401586; x=1757006386;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=spNd66xUF/MHH3XfU8KuIautX8tRrHIWRjBPGEFbZH0=;
        b=O8tsebL7UXrvpB07TL2A1y2n9nlqrBGgZy9L/zu7d3npxBGkYr7TK0PMTviceEwwHj
         CA6Oiak/abHIyw8wMa06kf0kI5ANRnXYypNGE3c9BKaE6zQJZBH5CN7fIlSAgwirMUQ/
         2fHL1lphA/LqiHLxiN6afcKFGMFJ50xDxhkQTA/i76gyM3cK/xe9cRKtwR9seH1nQHrc
         thXAykyDyO9n6Iyq3ZP3LB+/sM97e5NQ5q6meqAjvzfPO65LTzUkuvh9VG5vLvkfTga5
         4HNnPldlEdQRgnd7kGEMYYswbo8A/8JBGBuDYB8uLMv4e3hgicGqMdH1kN4Z+hHlXM9X
         qR6g==
X-Forwarded-Encrypted: i=1; AJvYcCUgH7xWLN5E0qtmcxtxmLYq74xksdFM9tQDZi2MEaiDowFs1aBt0aUTuAIH32gB8+0jo1Q0qSyqkdMc@vger.kernel.org
X-Gm-Message-State: AOJu0YzDXnJGW00a26Z8pU5PWVgz1g1Nyg0Wpt8ztpLWyQoEwvt3tNxS
	LzNX567adj+ppGM9Nfx0H4NnhbjXI6LU/fTE2gqjvNJPabfFZ0diP/Vd/5DzRAxOVSMQvJL75gd
	2h0JtjoZhfU3ea5MzaEGnwQKDoAAYVuUr5K4fLOTtJ+h20o1Lh1bRUFmTRcX6am6nA8NZD7LVbr
	KOYne7K4snxpesrgUNHrodL5xv7E9UxGnbWqhLoohC58mfxj/J3rvAfR20ZIt5Oscv9Fmvxfz4/
	RcAAEbbl2igD2X2TIEXbQ==
X-Gm-Gg: ASbGncvGPTW1Ol9lbCss8VPWWghtsYKgYn1Xh62Ue5V+eobgXMPWrt+uCCWdpq749ce
	IqU9MuViAIxIyl19N53vF34QkNf5c+TnAv6cQ89gzEC0Vyklo0GfVMAI2P671Qftd1PKbqGp8ID
	U36D3k/lvEB6NJru5VVls9mXjZ4qyN75CfM5irkKKDdMH5Sjq/9JCUawzTCKnzWMY4RDO9MkREQ
	7U1VURTnnpOhU9Tk6LBaQH/l5eJ4c3JDIZt/d++0edZi0GYU7BS6JyEtamN68eVJzxuNVLluKuM
	yT9FjH0tHqOJAu5dakNUELE7aL1VPmv/XDSD4pRizSMrsRf721NrwU+uCZPpuc+fwwr/8sR05Lp
	cH+avGFlW5NsJEF9Uxeg96tqOdFE6m2lk81LLsaK8aK8EPDAqJmIHIe7Hql7LzRnK7QUFnmRnzj
	QYZpkDSNs=
X-Google-Smtp-Source: AGHT+IEzn4ZZNfxZ88ZVlaeu7laA23txxkAEd/GIboUgQsP2U5UuacBk9SUxVGqO67WHc3VCtcH5DEwT3K/h
X-Received: by 2002:a05:690c:968b:b0:71b:f56a:d116 with SMTP id 00721157ae682-71fdc2d2454mr274497427b3.2.1756401585931;
        Thu, 28 Aug 2025 10:19:45 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-122.dlp.protect.broadcom.com. [144.49.247.122])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-721ce5c50f3sm161057b3.31.2025.08.28.10.19.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Aug 2025 10:19:45 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b1292b00cfso13216261cf.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1756401585; x=1757006385; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=spNd66xUF/MHH3XfU8KuIautX8tRrHIWRjBPGEFbZH0=;
        b=Kd6Rnehsjs3COVD7ahpfMh2852wY6hw93ZvBg+CcW25bKijPbTON1wc2LEp5QaNjr/
         w81b53sdy1X1+BE+5F8xcjrEV/B5FmJ0epRJxd9wEgYJkl4sPLrrjzorPD9BV5JqVi82
         fsN9olp0CGFFtLY0uRdiJunYAuWw65Sp3ZtX8=
X-Forwarded-Encrypted: i=1; AJvYcCVGrvCGlMHa4PnDFGvXwJV/4YX0LM48Dm4OxXaRAzPjOSlucxCsXgFYKPI5vC5HUb0FpDuSh+hDtdza@vger.kernel.org
X-Received: by 2002:a05:622a:40c4:b0:4b2:f469:28b0 with SMTP id d75a77b69052e-4b2f4692bc2mr69991471cf.48.1756401585193;
        Thu, 28 Aug 2025 10:19:45 -0700 (PDT)
X-Received: by 2002:a05:622a:40c4:b0:4b2:f469:28b0 with SMTP id d75a77b69052e-4b2f4692bc2mr69991061cf.48.1756401584649;
        Thu, 28 Aug 2025 10:19:44 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc14754ee8sm16100285a.32.2025.08.28.10.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 10:19:43 -0700 (PDT)
Message-ID: <fac53dd3-9774-4a14-9557-19c2a2532a0d@broadcom.com>
Date: Thu, 28 Aug 2025 10:19:39 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: defconfig: Enable BCM2712 on-chip pin
 controller driver
To: Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wahrenst@gmx.net,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
 Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <38704a5ab6913845bbf9178170e83004ab3e8fcf.1756372805.git.andrea.porta@suse.com>
Content-Language: en-US
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
In-Reply-To: <38704a5ab6913845bbf9178170e83004ab3e8fcf.1756372805.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/28/25 05:47, Andrea della Porta wrote:
> Select the on-chip pin controller driver for BCM2712 SoC.
> 
> On RapsberryPi 5 devices it is primarily needed to operate the
> bluetooth and WiFi devices, to configure the uSD interface
> and the power button.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> ---
>   arch/arm64/configs/defconfig | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 58f87d09366c..d4c3853d885d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -592,6 +592,8 @@ CONFIG_SPI_TEGRA114=m
>   CONFIG_SPI_SPIDEV=m
>   CONFIG_SPMI=y
>   CONFIG_SPMI_MTK_PMIF=m
> +CONFIG_PINCTRL_BRCMSTB=y
> +CONFIG_PINCTRL_BCM2712=y

Do those need to be built-in or does it work good enough if you have 
them as loadable modules?
-- 
Florian

