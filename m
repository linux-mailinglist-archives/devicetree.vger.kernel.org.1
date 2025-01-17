Return-Path: <devicetree+bounces-139357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 646C1A154C9
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:50:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D8B9169D63
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 16:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D9319F111;
	Fri, 17 Jan 2025 16:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FsjXtR70"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B186199249
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 16:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737132602; cv=none; b=hDAjxJ5Pqqek2g3YaIBiCrnVrocgpmHlFO8ZAxXzMPMF4HeMEBPTbVa1vVh19dBtMpo8NqTnOIjD5CBjH56Asu47Cf6zQ3U77s8j0nxXKxqamWMWR2WeiEoFNHQPIBvcYUSXXphMI8/h8WyeFLPVPMcwm2WYsDAdOyyoXuuf1RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737132602; c=relaxed/simple;
	bh=FpxuBLNIQsGFKYYcEXAmg4dEIgJueftMuOKYIHyVmmA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TiTp1HuTTwRGH30qGXplLmgy+Xmtu8WGiMDKNltbGoIsw2FAjEXi3Nr6F2xerkysajDmjd7MqrxAL+9tPOcNYsJextqouV8dhlxaGpcUxRr3qMUoCmMd+mUt/LCiVXK4JdcBtm1lc4wDzhHXSvaNY4ffxPPQwmHWqYIHaMxafI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FsjXtR70; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-21a7ed0155cso38131355ad.3
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 08:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1737132600; x=1737737400; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CbR8kLFTS4yK7aY/EmxJd5Q7gBcao7ndUZr1nGBUT5c=;
        b=FsjXtR70cc9ILN3uyQ4f0I4rHHvhbzx3eqkgfjVkVADeKy7sOqMcCXakpws1vL19zk
         Wvb87WJL1n8ryj7rg3bq4vM8J1V2ntwOjmCVbMeylG2XGh9VAOmjz99SC/w0uuNwEUCP
         RSA8zmGYA0Wrdz/UgyL1NEhuUzcR9P1PMKQkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737132600; x=1737737400;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CbR8kLFTS4yK7aY/EmxJd5Q7gBcao7ndUZr1nGBUT5c=;
        b=VlQBBJZYeTUhc4N+ITO0cjjmkhNt41Y9uxXUayF5+YeHlyFFU4OcJgGDvDfSXned6J
         qhMc7gGhkXvLnSbi+5ZgTBsyvjMvfHmUxuztCWixim0xAFty5IiSOjzMAaXNqXuOEr2i
         HXlOXvAi5saJ571a9ue2G947I4nefr5gygJq194qtelDmPB/9e4Iie2F2Hylt2L6KSt2
         mhEtbaRAHZijkdqmoWEMDG7rs3Mx8waINkMIE8choCAnlyVsuVOJSgJ8IBCuS0TqKiX4
         g8+khELGnAfxCzwBulyWq58gwk4Srff9RvDdvCPN6GAV7VDu/cga/4rnP5Xv8cxZ0oNr
         7N/g==
X-Forwarded-Encrypted: i=1; AJvYcCWXXrD1IcGkFLIdLc4b91YSSt8tISxRg7loWBqqZRyh6MK2Pp315siR8CYP14Gw3lvNurEgMb/gKA7F@vger.kernel.org
X-Gm-Message-State: AOJu0YwNK6qr+uAJjWwNRg0RRsaxMFXeLYvDFJqjlR2kF0nGDV85R2rs
	R/S04VLFTyFNjR1Xx9sOGftFjK2d8srBqTXWDe563mDfHiLlRf1Ln6TrgthsoA==
X-Gm-Gg: ASbGncuJsMozLOyXOzsHdmCr251fbgWZVw09hs29llXQ1wGBTGse8JcFISNSuDlQPGM
	xF1WjppY+Nc9qiH2cGzHalfeQDdGCGA0ljAc0cN/2fisYmaktr94Nj9ASa/eVeKNpczMsSsd0Lh
	kjWl7rscU34UDzJuQQ7VOG5+Bb8ueanesZ2ySeEkW9I1HLz7zKK/Uy1U80/yJV/Od1VxgA4C13r
	Sbj9nWzuvfAVk+FKbaxl/+ic3jexuQ8mQyY5W3rpxJxLhRjF5jv7ml8DYJBBEGI47rgL34rx+96
	bWUZzPzM1kWOlRb+qCV+L2l1X8Hu3zQ=
X-Google-Smtp-Source: AGHT+IFaKYsJ5THFTqoF+Nj6i6KUhfHBV6KaSHY9X55z10j/BSWwcRP/2s3vh+3Yy/A7L88yCp2qCg==
X-Received: by 2002:a17:902:d48a:b0:212:67a5:ab2d with SMTP id d9443c01a7336-21c35604a08mr63652045ad.44.1737132599690;
        Fri, 17 Jan 2025 08:49:59 -0800 (PST)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d3aca04sm18337615ad.135.2025.01.17.08.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jan 2025 08:49:58 -0800 (PST)
Message-ID: <a70e8c45-97a8-4fb6-9b27-4f9ed020211c@broadcom.com>
Date: Fri, 17 Jan 2025 08:49:56 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/10] dt-bindings: clock: Add RaspberryPi RP1 clock
 bindings
To: Andrea della Porta <andrea.porta@suse.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Linus Walleij
 <linus.walleij@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic
 <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
 Masahiro Yamada <masahiroy@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 Herve Codina <herve.codina@bootlin.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <cover.1736776658.git.andrea.porta@suse.com>
 <ae94e78443099cb6c48528ac8b18daaaae41419a.1736776658.git.andrea.porta@suse.com>
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
In-Reply-To: <ae94e78443099cb6c48528ac8b18daaaae41419a.1736776658.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/13/2025 6:58 AM, Andrea della Porta wrote:
> Add device tree bindings for the clock generator found in RP1 multi
> function device, and relative entries in MAINTAINERS file.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../clock/raspberrypi,rp1-clocks.yaml         | 58 ++++++++++++++++++
>   MAINTAINERS                                   |  6 ++
>   .../clock/raspberrypi,rp1-clocks.h            | 61 +++++++++++++++++++
>   3 files changed, 125 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
>   create mode 100644 include/dt-bindings/clock/raspberrypi,rp1-clocks.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml b/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> new file mode 100644
> index 000000000000..b2670cf7403a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/raspberrypi,rp1-clocks.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RaspberryPi RP1 clock generator
> +
> +maintainers:
> +  - Andrea della Porta <andrea.porta@suse.com>
> +
> +description: |
> +  The RP1 contains a clock generator designed as three PLLs (CORE, AUDIO,
> +  VIDEO), and each PLL output can be programmed though dividers to generate
> +  the clocks to drive the sub-peripherals embedded inside the chipset.

typo: though -> through

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


