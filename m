Return-Path: <devicetree+bounces-101794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DBA973E03
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 19:03:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BF421F27113
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 17:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93BB519ABC6;
	Tue, 10 Sep 2024 17:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="G9oUsv2E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBAD16DECC
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 17:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725987819; cv=none; b=OeJqRbB5U21zBEe5JuigNKA3Ofh67xTG40h6PCc0ECy/KY4fm+2ZZacq3Ns+qX6nXtoAxjdqU0yAohLYnM+ux687O+IUQ5XtdVbytKbCciB4w0dmkaZRkfw0HADmQ6gpppeX+yb1CH1T+hhyse7g4jcE/rIzCgDnwwBOZXW9BFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725987819; c=relaxed/simple;
	bh=WC+O13q6L3HoBM9kN8mi4TUPXvKfvpZ4WBMo1Hjk1a4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fhG+BfuMdg0R76AV9zjyImTAb6ogGuf4aHMMH2vXswXh60QSjuRoKOo0s0H/RhgnRQC41UkMNDgZOccQBEXNaynAQJ0+KL+CQCdMDaeRceGysN65zgO4bI+yydCubml6e7HkVfFQhq/Br/3LqjPESV+54iDVsklomnJZV0s7UBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=G9oUsv2E; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6c358b725feso7517386d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 10:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1725987817; x=1726592617; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PGNxP+QyH3G5Fni35YB5TFeeZk4HpbFOyiLTZt4pldI=;
        b=G9oUsv2EsycPh97h6NX3oKjiz6wfRLZKqIajRXiFHBq8SMkSmSOBioRxPt6ZgeVRRJ
         iWnleVkAY76Sz4UQN6/+tnqoAuhaoep3c1UjZNuvw50KrpRnXM3de0LTiwYyNEEDe2kT
         Z9FWNaLKVte0pLF+SgFXqDkPDAQH9sRmuEVMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725987817; x=1726592617;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PGNxP+QyH3G5Fni35YB5TFeeZk4HpbFOyiLTZt4pldI=;
        b=tZ1JlhNvPBb/ZPYAxaxW7wVX8yLfZlhxMCePMK4ZPdsW00qDUlAtlNj+MKSlEHV8qh
         1g6KqXfc2e07GnTAuxsRRNFVV+UUGnj9cmMB9lWakp5zRcFusrgwjlOV6hO+LXW4rPCK
         BfI9tSLrzARLmP7GHvLDVR7AybkTU0lk2e1+VczNUMUl4rPrlp4XmNtS6+eoe4CBaPNa
         nGR6KRwSjqgl+cmm+xm9wBQW5HoDJT6xfcgKw8t7fehYEywrQhtCBF000lVC+a+GNGf0
         +dxbHukHvep/cwfhwK5sWmDHRRbJQ6IEIN0XsqAZXOtKK3VRkApxu/QBuWnxUfbOJLto
         Sd9w==
X-Forwarded-Encrypted: i=1; AJvYcCVwYUwcYhS8KEtMxaU2n8gPomOyCgJRrlHGPg11rk7w2OEXSmjsjB89w+3LJBaQpdHM3WsUCB6rJtFD@vger.kernel.org
X-Gm-Message-State: AOJu0YwDEaj42A1jyW7AjO2wVtvsXjR9wqr0f02+k7INY1ij8dSia9x8
	dPZUbBWc5jHsGjs9JODatUZDBFJGYa/tA1AQ9HCxC4fXOg/GjYoKu4kbufSS4Q==
X-Google-Smtp-Source: AGHT+IHDDOkUyLXsJJUAQbDqviqAlXaHMusWg1ObwAqoknADMqtSvYgyhkhUvTsxQMCrLxHwNKUcbw==
X-Received: by 2002:a05:6214:5c44:b0:6c5:517a:56d1 with SMTP id 6a1803df08f44-6c55f9f4931mr924796d6.12.1725987816498;
        Tue, 10 Sep 2024 10:03:36 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c534348d6bsm31813256d6.73.2024.09.10.10.03.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2024 10:03:35 -0700 (PDT)
Message-ID: <b41afb62-8a89-4c9d-8462-f4c5574eac7a@broadcom.com>
Date: Tue, 10 Sep 2024 10:03:32 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 -next 07/11] PCI: brcmstb: Avoid turn off of bridge
 reset
To: Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, kw@linux.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>
References: <20240910151845.17308-1-svarbanov@suse.de>
 <20240910151845.17308-8-svarbanov@suse.de>
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
In-Reply-To: <20240910151845.17308-8-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/10/24 08:18, Stanimir Varbanov wrote:
> On brcm_pcie_turn_off avoid shutdown of bridge reset.
> 
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> ---
>   drivers/pci/controller/pcie-brcmstb.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index d78f33b33884..185ccf7fe86a 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -234,10 +234,17 @@ struct inbound_win {
>   	u64 cpu_addr;
>   };
>   
> +/*
> + * Shutting down this bridge on pcie1 means accesses to rescal block
> + * will hang the chip if another RC wants to assert/deassert rescal.
> + */

Maybe a slightly more detailed comment saying that the RESCAL block is 
tied to PCIe controller #1, regardless of the number of controllers, and 
turning off PCIe controller #1 prevents access to the RESCAL register 
blocks, therefore not other controller can access this register space, 
and depending upon the bus fabric we may get a timeout (UBUS/GISB), or a 
hang (AXI).

Thanks!
-- 
Florian

