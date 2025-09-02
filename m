Return-Path: <devicetree+bounces-211765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DE145B40878
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 17:06:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A123D4E3B06
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 15:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5AA73126C8;
	Tue,  2 Sep 2025 15:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YdC/jkh8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AF92EB5D4
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 15:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756825572; cv=none; b=bv6/EPUmkLhfWVbRIdmGUDV2myveWNg37TrN+MgMdG8wWWLJ7bjxoV0xRBYimOr/1XXySmcdNk92kPfRYAQdq8pXFfbRrucZCRhucg/uO++tEYTEFygtrwkSKL/Dywzbjm/l9c08mQ6YTxeyYvNWG5PeH8ZxU8BqtUojx2ZfPt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756825572; c=relaxed/simple;
	bh=l3BLA3/dBJVYy/VCCZYs268vZUNYued4TlQKRzoOoN8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=So4Js4CqGn6fDm4uK/gFNBhzKTHi8k0FHqRCwkT/BWw0Ej1KIeTiZlZTXomAG8hFeRiWnI8KgY/9G+INlCC7RVQNDROWMWzZnGhKMR/pMcpH1NbCftb5HsvfIZtC0lubRw+IZLAAG6i69B8R4sW1frUFBkJy643WmcnZEdVWoxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YdC/jkh8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582EqW52004463
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 15:06:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r1SOQ46E/29ii7NOe0dMseenbNXVTPfB9cR3qwZszXE=; b=YdC/jkh8xvXAp9wu
	CKDzkCFExpg00v8hlSfM2NnTxpUffrIb2CxhRu/Tp85TV98nCHfTT5zxx/ak2dr8
	fmVm06mpEff/tLeEc60kwVpX4rna7EewkYbwzUWPFW2Ml2zpwAy+2Sp1aYyaP5cI
	u+fFVUPHVRNTs3LsMttiNcXZkb/cM4ys5KQZJI9Pd9yPt7Pp9uDWFQ0dpDbosjDN
	kZq16JV+eU0p8GZeZIs+2B7HCHO3M/mLWSgCaCRJYdp4xbSkvnfjYGpYDi2Mg+SP
	swQ9VBJ3zpK3VkPXM/qRpoZIEJ5zpTkZYBQpCvGBRTgNRd36hiCDNrV0iBAi9hf4
	3X2pYg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjg70d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 15:06:09 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-329b750757aso1890754a91.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 08:06:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756825568; x=1757430368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r1SOQ46E/29ii7NOe0dMseenbNXVTPfB9cR3qwZszXE=;
        b=EprFPHEt07oOV+xb2dsQvcefr1LC1PcMaQO/As6IApfBJvyiwzj2IGOrrb/RPZqYdi
         C4OG7ivsALS6OpvG/uQOsMe+Vg+04SW1fxKfcPJ57IHG0RBDrwEh09PA63zu16FnqkbY
         44yhlPQUuBwQNLeIuEswD3r447+GY7dcZk6/6310BHWJwBrU6EMzQMv3h6/cc+NO8BUe
         LfP73yx0/BViFBXzg8ID5t7iutRGaRAnKaMu6+FVfLOpUclhMmz9doeSJGWbfiucJf5U
         Iit0w+2Yjjdqfm5ppJQecIymVS6/NqeA47QvMIdLdD8eZ+wEVNQlk3AgggVl50IfOgre
         By7A==
X-Forwarded-Encrypted: i=1; AJvYcCWT0iI6E/pfX3pEyBugUCn87uNPW+fHBCcsccy5pEjKFPibydMUaDLqMijH9aHH5dPHGAINJt0v418M@vger.kernel.org
X-Gm-Message-State: AOJu0YwANS9GjptZ4eFPazVAk9lDsOV2Z6vTwRSSF+psEw4lHKxIZmUg
	4O95WJIciQwxic9VC27yepmOTat+HviglMkbK+GgrMCA26moWV6JSuwwoCsKnCCeJGqPJBO1OIY
	qyhqT6qmHf/6oLfxmbnXWZxYeokaWY2Q9Oco+HUwDWWUIk45mzdOP/pBvvSklVZE7
X-Gm-Gg: ASbGncsI8FsPD5rq+cqy48zE4ugTFKMmYUKpAF92apLrcsc/WH9Cf+UPxutPH1ret0r
	JDjbozGVy31rK1jDmFNYlE6L/mAghQMCeDI0qsQNpMV+XBuarGVSzupWzOhazDS0mnzhXv9hzyd
	Yc8kFZdIOS+2JXMBYOH+aMr2CZvrFZAeEMgIMoWjjURRr4LFWr7SPBflvMNiuCrdBVgGwFjo379
	Sq+MmrfeC27ed4nOd+kTwPWst0LdBkZ7sWYnbTyYFALJO58uou2KbEvOvUx1KrrpH7X85sN49Mz
	aGAmrHTr5qoznjBE2GJVp58yPcxOZRekQfGNbnsSiCjI8AekOyc33DRv963b2l9xE8IOi/GWSiR
	uKk9Nig==
X-Received: by 2002:a17:90b:3fc3:b0:325:1548:f0f with SMTP id 98e67ed59e1d1-32815452baamr14929662a91.14.1756825567967;
        Tue, 02 Sep 2025 08:06:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJe+SAiP+/Rz1UolPPoJ/b1VYRXTQmZzDKLHgwcUU5CG0sTmKazqPtSbReEIm7ZQdOuOTLLw==
X-Received: by 2002:a17:90b:3fc3:b0:325:1548:f0f with SMTP id 98e67ed59e1d1-32815452baamr14929597a91.14.1756825567148;
        Tue, 02 Sep 2025 08:06:07 -0700 (PDT)
Received: from [10.74.205.70] ([27.61.53.99])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327d9347189sm14704647a91.9.2025.09.02.08.05.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 08:06:06 -0700 (PDT)
Message-ID: <cd5d26a6-cf60-48b4-8c52-d7eae531e9c0@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 20:35:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 00/10] Implement vendor resets for PSCI SYSTEM_RESET2
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250815-arm-psci-system_reset2-vendor-reboots-v14-0-37d29f59ac9a@oss.qualcomm.com>
 <b08aa8f4-7283-40d5-9f5e-ed8697f882a9@oss.qualcomm.com>
 <7941da77-06bb-a2d3-c2fa-ad2fba54b4a1@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <7941da77-06bb-a2d3-c2fa-ad2fba54b4a1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b707e1 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fw+wMC9hJO9cSnC0spttlA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=FYkGx2FOHYfMPCDhCJAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: GvLw5eAUbKQkPNZIdFgLT5YraKHzg_hr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX7CN9GbcBtEyX
 B0nckt/pnVr6AegEBYAZ8+vKuLX8VOJ489Lq0YN13T3N7EYYNaqq8a2FxGYy+aNMpe6zLL6QU5D
 L7WxQ29S8zRBl1o0u+hRpDV2RUcuSVbgeo1G8EAOOkaD0aZVstKKkjMCzM8WSSCWrMwSvSgeUhh
 qeaRUfDrNy2maAplZk9ROFQO7Po4SDb43gRn1oQgT0EE8RMw4lBdcfSoxLAsBYtu27pwj6sN/+k
 1bT9FV+QPiX/C8pZlkBK7K4rzInA7p5RcM5a5vn/k9w+/dIlK40Ji+DCHtBVpn65JL/APWP7j6K
 mZEVnzmIX2OZxgfP4Lw3XvTQg16suN+gqXmRfoH4D4E3b/+4B8XC3k1u9kGFY/aM4zo8TSYa0oB
 j+Bg8DxE
X-Proofpoint-ORIG-GUID: GvLw5eAUbKQkPNZIdFgLT5YraKHzg_hr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024


On 9/2/2025 6:40 PM, Shivendra Pratap wrote:
>
> On 8/28/2025 1:35 PM, Kathiravan Thirumoorthy wrote:
>> On 8/15/2025 8:05 PM, Shivendra Pratap wrote:
>>> The PSCI SYSTEM_RESET2 call allows vendor firmware to define
>>> additional reset types which could be mapped to the reboot
>>> argument.
>>>
>>> User-space should be able to reboot a device into different
>>> operational boot-states supported by underlying bootloader and
>>> firmware. Generally, some HW registers need to be written, based
>>> on which the bootloader and firmware decide the next boot state
>>> of device, after the reset. For example, a requirement on
>>> Qualcomm platforms may state that reboot with "bootloader"
>>> command, should reboot the device into bootloader flashing mode
>>> and reboot with “edl” command, should reboot the device into an
>>> Emergency flashing mode.  Setting up such reboots on Qualcomm
>>> devices can be inconsistent across SoC platforms and may require
>>> setting different HW registers, where some of these registers may
>>> not be accessible to HLOS. These knobs evolve over product
>>> generations and require more drivers.  PSCI defines a
>>> vendor-specific reset in SYSTEM_RESET2 spec, which enables the
>>> firmware to take care of underlying setting for any such
>>> supported vendor-specific reboot. Qualcomm firmwares are
>>> beginning to support and expose PSCI SYSTEM_RESET2
>>> vendor-specific reset types to simplify driver requirements from
>>> Linux. With such support added in the firmware, we now need a
>>> Linux interface which can make use of the firmware calls for PSCI
>>> vendor-specific resets. This will align such reboot requirement
>>> across platforms and vendors.
>>>
>>> The current psci driver supports two types of resets –
>>> SYSTEM_RESET2 Arch warm-reset and SYSTEM_RESET cold-reset. The
>>> patchset introduces the PSCI SYSTEM_RESET2 vendor-specific reset
>>> into the reset path of the psci driver and aligns it to work with
>>> reboot system call - LINUX_REBOOT_CMD_RESTART2, when used along
>>> with a supported string-based command in “*arg”.
>>>
>>> The patchset uses reboot-mode based commands, to define the
>>> supported vendor reset-types commands in psci device tree node
>>> and registers these commands with the reboot-mode framework.
>>>
>>> The PSCI vendor-specific reset takes two arguments, being,
>>> reset_type and cookie as defined by the spec. To accommodate this
>>> requirement, enhance the reboot-mode framework to support two
>>> 32-bit arguments by switching to 64-bit magic values.
>>>
>>> Along this line, the patchset also extends the reboot-mode
>>> framework to add a non-device-based registration function, which
>>> will allow drivers to register using device tree node, while
>>> keeping backward compatibility for existing users of reboot-mode.
>>> This will enable psci driver to register for reboot-mode and
>>> implement a write function, which will save the magic and then
>>> use it in psci reset path to make a vendor-specific reset call
>>> into the firmware. In addition, the patchset will expose a sysfs
>>> entry interface within reboot-mode which can be used by userspace
>>> to view the supported reboot-mode commands.
>>>
>>> The list of vendor-specific reset commands remains open due to
>>> divergent requirements across vendors, but this can be
>>> streamlined and standardized through dedicated device tree
>>> bindings.
>>>
>>> Currently three drivers register with reboot-mode framework -
>>> syscon-reboot-mode, nvmem-reboot-mode and qcom-pon. Consolidated
>>> list of commands currently added across various vendor DTs:
>>>    mode-loader
>>>    mode-normal
>>>    mode-bootloader
>>>    mode-charge
>>>    mode-fastboot
>>>    mode-reboot-ab-update
>>>    mode-recovery
>>>    mode-rescue
>>>    mode-shutdown-thermal
>>>    mode-shutdown-thermal-battery
>>>
>>> On gs101 we also pass kernel-generated modes from kernel_restart()
>>> or panic(), specifically DM verity's 'dm-verity device corrupted':
>>>      mode-dm-verity-device-corrupted = <0x50>;
>>>
>>> - thanks Andre' for providing this.
>>>
>>> Detailed list of commands being used by syscon-reboot-mode:
>>>       arm64/boot/dts/exynos/exynosautov9.dtsi:
>>>      mode-bootloader = <EXYNOSAUTOV9_BOOT_BOOTLOADER>;
>>>      mode-fastboot = <EXYNOSAUTOV9_BOOT_FASTBOOT>;
>>>      mode-recovery = <EXYNOSAUTOV9_BOOT_RECOVERY>;
>>>
>>>       arm64/boot/dts/exynos/google/gs101.dtsi:
>>>           mode-bootloader = <0xfc>;
>>>           mode-charge = <0x0a>;
>>>           mode-fastboot = <0xfa>;
>>>           mode-reboot-ab-update = <0x52>;
>>>           mode-recovery = <0xff>;
>>>           mode-rescue = <0xf9>;
>>>           mode-shutdown-thermal = <0x51>;
>>>           mode-shutdown-thermal-battery = <0x51>;
>>>
>>>       arm64/boot/dts/hisilicon/hi3660-hikey960.dts:
>>>           mode-normal = <0x77665501>;
>>>           mode-bootloader = <0x77665500>;
>>>           mode-recovery = <0x77665502>;
>>>
>>>       arm64/boot/dts/hisilicon/hi6220-hikey.dts:
>>>           mode-normal = <0x77665501>;
>>>           mode-bootloader = <0x77665500>;
>>>           mode-recovery = <0x77665502>;
>>>
>>>       arm64/boot/dts/rockchip/px30.dtsi:
>>>           mode-bootloader = <BOOT_BL_DOWNLOAD>;
>>>           mode-fastboot = <BOOT_FASTBOOT>;
>>>           mode-loader = <BOOT_BL_DOWNLOAD>;
>>>           mode-normal = <BOOT_NORMAL>;
>>>           mode-recovery = <BOOT_RECOVERY>;
>>>
>>>       arm64/boot/dts/rockchip/rk3308.dtsi:
>>>           mode-bootloader = <BOOT_BL_DOWNLOAD>;
>>>           mode-loader = <BOOT_BL_DOWNLOAD>;
>>>           mode-normal = <BOOT_NORMAL>;
>>>           mode-recovery = <BOOT_RECOVERY>;
>>>           mode-fastboot = <BOOT_FASTBOOT>;
>>>
>>>       arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts:
>>>           mode-normal = <BOOT_NORMAL>;
>>>           mode-loader = <BOOT_BL_DOWNLOAD>;
>>>              mode-recovery = <BOOT_RECOVERY>;
>>>              mode-bootloader = <BOOT_FASTBOOT>;
>>>
>>> Detailed list of commands being used by nvmem-reboot-mode:
>>>       arm64/boot/dts/qcom/pmXXXX.dtsi:(multiple qcom DTs)
>>>              mode-recovery = <0x01>;
>>>              mode-bootloader = <0x02>;
>>>
>>> Previous discussions around SYSTEM_RESET2:
>>> -https://lore.kernel.org/lkml/20230724223057.1208122-2-quic_eberman@quicinc.com/T/
>>> -https://lore.kernel.org/all/4a679542-b48d-7e11-f33a-63535a5c68cb@quicinc.com/
>>>
>>> Signed-off-by: Elliot Berman<quic_eberman@quicinc.com>
>>> Signed-off-by: Shivendra Pratap<shivendra.pratap@oss.qualcomm.com>
>>
>> With this series, 'edl' mode is working fine in QCOM's IPQ5424 SoC. So
>>
>> Tested-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com> # IPQ5424-RDP466
>>
> Thanks for giving time for testing this series for IPQ5424. So we have PSCI SYS reset2 support for
> IPQ5424 firmware?


Yeah, the latest IPQ5424 firmware (To be specific - 
TZ.WIN_WC.1.0-00043-IPQ5424MAPAANAZT-1 onwards) supports PSCI SYS RESET2.


> and did we make any extra changes in DT for edl mode?


Yes, I submitted the DTS patch[1] for this similar to the other platforms.

[1] [PATCH] arm64: dts: qcom: ipq5424: Add support for emergency 
download mode - Kathiravan Thirumoorthy 
<https://lore.kernel.org/linux-arm-msm/20250828-ipq5424-edl-v1-1-d6a403800023@oss.qualcomm.com/>.


>
> thanks,
> Shivendra

