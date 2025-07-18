Return-Path: <devicetree+bounces-197795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB99EB0AB72
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 23:30:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 298885C0169
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 21:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B864B21FF36;
	Fri, 18 Jul 2025 21:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="PacQjIDs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E890021D5BB
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 21:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752874199; cv=none; b=Qyj55PKkttkmCFHF/ugXT5C+GfT22VgrVNueWzBzsl5CbpmCVng1OfTM+XIzmo0+c9ncm+YfPeAaJQvIcY7mdQ8xAnz7ZErghQVVSKUxpPH5USWSMWgm9xIkYCjiiBtjo7GWJECDScXbSDF3v1xlUMDeFx8ZqI4+2dMEh7l+Qbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752874199; c=relaxed/simple;
	bh=DKGj5zgW66HcMPoy8Rh9/qrWG7+rLrKazUS66uz0+kw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f1a7byKu99Kmx9AqpA5Sl4Pd494KMHi7h/8rnFO8oNZdTcUmmfhMpsEHdFbR+TF7AfFFXzMaJUvfxc9KiPap2XhKo8J0ZQRB+JkHwvu3AV8hrLELMequ9O/6vVLczTTFJlx7ezvwHl01MxmrxMU3t0jLNRVdNyAJvChs5hpFB1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=PacQjIDs; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6fabb948e5aso25773396d6.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 14:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1752874197; x=1753478997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=X1eGe+D/Z/AW4jpQRHh96jT6N7ULQskAi6plZCwYDAM=;
        b=PacQjIDsvlQ7sZA36RWy/9LnvIjNT4FLCwqaqL1r3R8PwPX2d+kqMT9L72rbDj5CRy
         oAjA9K2LwHWMv9ZU3wCx8DcLGQ0yTHclal02sdkB/EE0yoZzrORGuyjBJaNobCerLpSM
         WF+jCRyjQoY86l1tWUtVJD4LWfhHEAi3qqv/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752874197; x=1753478997;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1eGe+D/Z/AW4jpQRHh96jT6N7ULQskAi6plZCwYDAM=;
        b=bsMVGYguG66x0lratb6CunjS5Q3bbAeDOtGUpGZWz5XjyrlwYFRKcjnZuDYU9WcK3/
         VQyViVsbe4ygiIeSZHsEXbzt+tq12QwAeXyk9JoECWfqZk3GsWWkQYOL64/LwmwIZ2Iw
         CFNGNZ1WjYP+dIg0xro7+Mkht0Ax5XVCCiBuskkfDX1ZrNR3QU3qcTpkMWVm8QWr3BHY
         DxARC5lAL8DuENjM2HuG3+9GjF6AnmhEK4K1iI1X47YToPhCSUvgnU391iXuzi6/DgCP
         LsKVUXU5tInSNgNhMMRDlsZXs/DBSK79u1YpHK2FOHcp8hSdEKO7kqH3dv8fFsEcpuAH
         thEg==
X-Forwarded-Encrypted: i=1; AJvYcCWJ83X1f/gf0sWGJg1zcCXy7RacsGWd/ppjUsW9gEVuGy/7cUAozKyvB9PUxjohfS3d8uBaMqSBJ4Uh@vger.kernel.org
X-Gm-Message-State: AOJu0YyCDyAfwLAcfQp9ZsRxH3HjFMKI/tRCX2OJ08WJrf1twC9z10l3
	hF4Mnk6UHn1svyPgLNZA5Ojg77Et4ExqsUQkbCcBKW28aWygnCyWIM4FeTQlUx7aqA==
X-Gm-Gg: ASbGncssSvVsYQMIaNiGMaeH7w2yumSzxFlQ1WvIqa3qsx/Q/N8u9R0JMQD3K3NjeAf
	b2gS2g661tHyu8VAvuIXkxshe+eviVc/P1okSojCnEldGXpMiK1SWibD29Gd7lx5qTO9By0kF8E
	VWzm2DFrWJIrx1MfJ67BiAcsWIJ9k6glCAMbCyRq9pFBhFCOjBMCX0WiALUXnzuTt6F5A6INzx8
	KeQUhWpPcIPvNeOoqNJGNitgzQhxSxIHmTyYbdU43LogT9coF6eDvlxHJJ4x1+4lqY1qd87pVSw
	zd6wJNTV/dRUa9/pIhsrCkLvGOsb7n5Fpw3t0piTez3KewzkbVZWD8nSSlXS2WVWQGxxolu2+Iu
	dtWKlNCtgfWilOW3s9nraN/Et3YSoUfqy3TjblD5MGBJaxMOa2O9X4aYBRsvg0A==
X-Google-Smtp-Source: AGHT+IHfpv+jKiZSsbSAu6fIdHHgAPkuesqv0Jciafy7Wr6ldHI/e3Td9sy9TJjdKnnb7ZgZg6XPvg==
X-Received: by 2002:ad4:5d41:0:b0:704:8916:dbc5 with SMTP id 6a1803df08f44-704f6a322femr167113146d6.12.1752874196728;
        Fri, 18 Jul 2025 14:29:56 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7051ba6b0fasm11783696d6.65.2025.07.18.14.29.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 14:29:55 -0700 (PDT)
Message-ID: <c32f918e-edfe-48d7-9043-c52fc39630f1@broadcom.com>
Date: Fri, 18 Jul 2025 14:29:42 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/8] Implement vendor resets for PSCI SYSTEM_RESET2
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Vinod Koul <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
 Stephen Boyd <swboyd@chromium.org>, Andre Draszik
 <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Elliot Berman <quic_eberman@quicinc.com>,
 Srinivas Kandagatla <srini@kernel.org>,
 Elliot Berman <elliot.berman@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
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
In-Reply-To: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/17/25 05:46, Shivendra Pratap wrote:
> The PSCI SYSTEM_RESET2 call allows vendor firmware to define
> additional reset types which could be mapped to the reboot
> argument.
> 
> User-space should be able to reboot a device into different
> operational boot-states supported by underlying bootloader and
> firmware. Generally, some HW registers need to be written, based
> on which the bootloader and firmware decide the next boot state
> of device, after the reset. For example, a requirement on
> Qualcomm platforms may state that reboot with "bootloader"
> command, should reboot the device into bootloader flashing mode
> and reboot with “edl” command, should reboot the device into an
> Emergency flashing mode.  Setting up such reboots on Qualcomm
> devices can be inconsistent across SoC platforms and may require
> setting different HW registers, where some of these registers may
> not be accessible to HLOS. These knobs evolve over product
> generations and require more drivers.  PSCI defines a
> vendor-specific reset in SYSTEM_RESET2 spec, which enables the
> firmware to take care of underlying setting for any such
> supported vendor-specific reboot. Qualcomm firmwares are
> beginning to support and expose PSCI SYSTEM_RESET2
> vendor-specific reset types to simplify driver requirements from
> Linux. With such support added in the firmware, we now need a
> Linux interface which can make use of the firmware calls for PSCI
> vendor-specific resets. This will align such reboot requirement
> across platforms and vendors.
> 
> The current psci driver supports two types of resets –
> SYSTEM_RESET2 Arch warm-reset and SYSTEM_RESET cold-reset. The
> patchset introduces the PSCI SYSTEM_RESET2 vendor-specific reset
> into the reset path of the psci driver and aligns it to work with
> reboot system call - LINUX_REBOOT_CMD_RESTART2, when used along
> with a supported string-based command in “*arg”.
> 
> The patchset uses reboot-mode based commands, to define the
> supported vendor reset-types commands in psci device tree node
> and registers these commands with the reboot-mode framework.
> 
> The PSCI vendor-specific reset takes two arguments, being,
> reset_type and cookie as defined by the spec. To accommodate this
> requirement, enhance the reboot-mode framework to support two
> 32-bit arguments by switching to 64-bit magic values.
> 
> Along this line, the patchset also extends the reboot-mode
> framework to add a non-device-based registration function, which
> will allow drivers to register using device tree node, while
> keeping backward compatibility for existing users of reboot-mode.
> This will enable psci driver to register for reboot-mode and
> implement a write function, which will save the magic and then
> use it in psci reset path to make a vendor-specific reset call
> into the firmware. In addition, the patchset will expose a sysfs
> entry interface within reboot-mode which can be used by userspace
> to view the supported reboot-mode commands.
> 
> The list of vendor-specific reset commands remains open due to
> divergent requirements across vendors, but this can be
> streamlined and standardized through dedicated device tree
> bindings.
> 
> Currently three drivers register with reboot-mode framework -
> syscon-reboot-mode, nvmem-reboot-mode and qcom-pon. Consolidated
> list of commands currently added across various vendor DTs:
>   mode-loader
>   mode-normal
>   mode-bootloader
>   mode-charge
>   mode-fastboot
>   mode-reboot-ab-update
>   mode-recovery
>   mode-rescue
>   mode-shutdown-thermal
>   mode-shutdown-thermal-battery
> 
> Detailed list of commands being used by syscon-reboot-mode:
>      arm64/boot/dts/exynos/exynosautov9.dtsi:
> 	mode-bootloader = <EXYNOSAUTOV9_BOOT_BOOTLOADER>;
> 	mode-fastboot = <EXYNOSAUTOV9_BOOT_FASTBOOT>;
> 	mode-recovery = <EXYNOSAUTOV9_BOOT_RECOVERY>;
> 
>      arm64/boot/dts/exynos/google/gs101.dtsi:
>      	mode-bootloader = <0xfc>;
>      	mode-charge = <0x0a>;
>      	mode-fastboot = <0xfa>;
>      	mode-reboot-ab-update = <0x52>;
>      	mode-recovery = <0xff>;
>      	mode-rescue = <0xf9>;
>      	mode-shutdown-thermal = <0x51>;
>      	mode-shutdown-thermal-battery = <0x51>;
> 
>      arm64/boot/dts/hisilicon/hi3660-hikey960.dts:
>      	mode-normal = <0x77665501>;
>      	mode-bootloader = <0x77665500>;
>      	mode-recovery = <0x77665502>;
> 
>      arm64/boot/dts/hisilicon/hi6220-hikey.dts:
>      	mode-normal = <0x77665501>;
>      	mode-bootloader = <0x77665500>;
>      	mode-recovery = <0x77665502>;
> 
>      arm64/boot/dts/rockchip/px30.dtsi:
>      	mode-bootloader = <BOOT_BL_DOWNLOAD>;
>      	mode-fastboot = <BOOT_FASTBOOT>;
>      	mode-loader = <BOOT_BL_DOWNLOAD>;
>      	mode-normal = <BOOT_NORMAL>;
>      	mode-recovery = <BOOT_RECOVERY>;
> 
>      arm64/boot/dts/rockchip/rk3308.dtsi:
>      	mode-bootloader = <BOOT_BL_DOWNLOAD>;
>      	mode-loader = <BOOT_BL_DOWNLOAD>;
>      	mode-normal = <BOOT_NORMAL>;
>      	mode-recovery = <BOOT_RECOVERY>;
>      	mode-fastboot = <BOOT_FASTBOOT>;
> 
>      arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts:
>      	mode-normal = <BOOT_NORMAL>;
>      	mode-loader = <BOOT_BL_DOWNLOAD>;
> 			mode-recovery = <BOOT_RECOVERY>;
> 			mode-bootloader = <BOOT_FASTBOOT>;
> 
> Detailed list of commands being used by nvmem-reboot-mode:
>      arm64/boot/dts/qcom/pmXXXX.dtsi:(multiple qcom DTs)
> 			mode-recovery = <0x01>;
> 			mode-bootloader = <0x02>;
> 
> Previous discussions around SYSTEM_RESET2:
> - https://lore.kernel.org/lkml/20230724223057.1208122-2-quic_eberman@quicinc.com/T/
> - https://lore.kernel.org/all/4a679542-b48d-7e11-f33a-63535a5c68cb@quicinc.com/
> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

I really wished we had stuck with using "/psci/reset-types" because I 
thought that node name was stable, but regardless, on ARCH_BRCMSTB:

Tested-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

