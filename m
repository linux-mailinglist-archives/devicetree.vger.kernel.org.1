Return-Path: <devicetree+bounces-299018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPz1AA8PCmoOwgQAu9opvQ
	(envelope-from <devicetree+bounces-299018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:55:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8BA563654
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:55:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B7063002796
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 18:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67B0B2BEC52;
	Sun, 17 May 2026 18:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BdhC3kJZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UcbuSkFu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBCA3254B2
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 18:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779044106; cv=none; b=abitCXDsO0cWi2IBpx2SC15z5jD4b2hw9+wkjZeP0HvGW9HryGRE5Ll4X1WYvjnMs0MUhEv6ohZAL75s8jmzuTuk50HpaGx3apnTEJ3HuKwW9FxpTXFv4rcv6UP05d31BqQk4SVoNVjh58I3tGQBs7qtxTAqPXnQvGzF4jZ/d4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779044106; c=relaxed/simple;
	bh=UM1+She3vV47eJLvWlxHmDcU7oUXlpVPDW5mtW7orS0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eIEhi1JWV53yxZac03v9NKpY/SeQx/8ovpj9hHeg9pTd/y415kQsJMYQvRNe7wfmtuu731492z0UeHCOHeG8eZCzqG7ooa59EBCDnda+g+kbmHDA71rAYTOj6e0MiWVkHJ6l6z+GASIuRgZUQPIkUREWA5d6ceepUUv2+s5kwCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BdhC3kJZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UcbuSkFu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64HCS3YS3512430
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 18:55:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uvotslgmuBxMjV4vyIrw83t49BBKhTWX250EySC5IBU=; b=BdhC3kJZ8j191vgZ
	wXQhTlW4q879b1VEnlS0m6NYHU9Y8JvKhOekIBK/8/osCzUghd/GXNK2T/oYOBZp
	1WCO22orpCnV6aoAudY1KbOLSh8n9OQIqgby2BpV/ltpOb2DicKksNvUElWck0u8
	bH15I1sbH6fb9NqQsY9VxtYG/6dVnbof1UMuEU/MJAkNIy7m8An6mNSv+jM8NNub
	H4bo3uqngLmozCQD1T9WuUIyxBZiW6OsMEexS8J+U4uiQheO7l/j5/fvdYr5SfRe
	cFAjTKX3erdcpPunEz7Ec0NNCel/6KzS1g72Dkc7aIi73cnNulkWagZT7Le3SAoM
	lGMZJw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6gx6ucr7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 18:55:04 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c827bda2e60so638827a12.3
        for <devicetree@vger.kernel.org>; Sun, 17 May 2026 11:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779044103; x=1779648903; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uvotslgmuBxMjV4vyIrw83t49BBKhTWX250EySC5IBU=;
        b=UcbuSkFu3AVSLMBfU/feNFHa1zwTL5pV/V/nXcwzU/rABBvvcuay1PVRWlw6CyhESy
         klj00f5AWfeXRLp95xWUZMp0bmc3j0UD/NQraUucE4/GWEXQBEM0Cj56p23sVgWZWGtI
         ORC7iW1VaGCurDqyFyujNKQBcvUYrTGT6r6uSu/uWxeh9PNZ3S+E/ZU8rmk3cDpOF7zc
         kojzErtdM3UF8tnpk1Rv11bY5WxV0qE2bMq83RhvjfmnT8x0xiyC1xq9opAnP9/hyC2r
         EpH5qBX9gt2g4VqqOSfZ1qGYIocbsWlmUEPSh9uIkvdtY4m2xZDjHGM4eiTPAdP+xEUb
         s4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779044103; x=1779648903;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvotslgmuBxMjV4vyIrw83t49BBKhTWX250EySC5IBU=;
        b=AJVSC+bHCrPSUUjZNFa5lUGWml06l7miublstUYi+GWcOdUUsRumw1kGY0S+f1g6qg
         j7olNBDKGPVkRp7V5tc4cvoISNPn5P4841IuqPw1Wxf4LtvihlWoRIDT/1dwGv2kMun9
         /84djY0ixgoT0dsuQDLWYfOMsBMi07+Y6FIFgDrP8R8vWtn5uqyEpZEI08YgKbH/W81U
         0KzCXzIC21PAP9QCP44/7mIACIJk8HfNfpNIJFmtl3IN+Rk1c3CL6rwE65uOWhvBj8iP
         SI1OSdpAh/hZVDD6r4SKi56P7UyGhmq6oURwH96fYHskP3PNKFkcuyxDbmZiZHMMMHLk
         UPyg==
X-Forwarded-Encrypted: i=1; AFNElJ/iHlltOFz0sBq+fP8KZSaIZF9geh+p7CSURgzY/HF232D5VF+4tcI8qnj1veDR5Xrdr34NDxpY6THl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/8OmrFL7ZpKKyT2suVoMMLY9ff1If1uIbV4w/geYHL7yUcED6
	0SlAf8KbN13Srqm3Mxtbt6b6N6E4RZ3isGiqAU/MfkzzmcoAVieLlrBoe/VPKkDkX+mo0cITlJQ
	lo/XDlfAI8VGpT6N6DAM8h2GoY2Q4N+/j9ZZtBue23vHO/BzZt3rWYxedt7eBzNLT
X-Gm-Gg: Acq92OGkdi/aq/WZ2MQM/hu0k2vI6dpQ5wcsu7ar+IsFaYiwZ91/jMc051QUnz2173k
	35IY3tZIoseL64ZsmLrUVQ4vEPFYopds9l5elsPodClEsdGmf3MLCIjUpJNTgUznaxBcLZqlo3z
	98m7OzxRl2ctBogSOAaLvIF3Zr+KT+pQ0HmbFxPYtCooLe1Nm/TnQ5X+lHPZd/ik+r4J7q7rb+O
	EcLlhXCpHtl4b7h2RRqiEZJNRluPVgTd9AsOSG8fKiXFnBWIH/lhomZUYiTelWzrwBfTuLfVp1g
	fsvuGIFrmAIa6UQIHUO4Hnu7OjxF4/dsctKJ9nDcL/yGVQPgevrvMSZa0ACs7cr1BzhvDZFIOYf
	AvyS4I3xYZ5HKxiwW7eooKx8LfKe2mcVyrLx4sQqYwYvJJaqULNU=
X-Received: by 2002:a05:6a00:2793:b0:837:40f6:cb88 with SMTP id d2e1a72fcca58-83f33d39d8cmr11942500b3a.26.1779044103494;
        Sun, 17 May 2026 11:55:03 -0700 (PDT)
X-Received: by 2002:a05:6a00:2793:b0:837:40f6:cb88 with SMTP id d2e1a72fcca58-83f33d39d8cmr11942486b3a.26.1779044102990;
        Sun, 17 May 2026 11:55:02 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.235.85])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19663cfdsm14550673b3a.9.2026.05.17.11.54.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2026 11:55:02 -0700 (PDT)
Message-ID: <17e87f6e-fbd0-4787-aab9-d3a32de44887@oss.qualcomm.com>
Date: Mon, 18 May 2026 00:24:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: Introduce Shikra SoC base dtsi
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, neil.armstrong@linaro.org,
        olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org,
        vkoul@kernel.org
References: <20260512-shikra-dt-v1-2-716438330dd0@oss.qualcomm.com>
 <20260513040623.03F36C2BCC7@smtp.kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260513040623.03F36C2BCC7@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Lnd4KJYs34B-JI_-PyU8HM72Xat_6RfE
X-Authority-Analysis: v=2.4 cv=f614wuyM c=1 sm=1 tr=0 ts=6a0a0f08 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=g4/7f0GlZvY0MGcqtTB0Sw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1Btu4tQq9WNLzPClb6kA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: Lnd4KJYs34B-JI_-PyU8HM72Xat_6RfE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDIwMyBTYWx0ZWRfX4t9bDDahi/YK
 2owGP7ilTeLROu2rNxljoqnIrEVgO+tSexNZ7VT7/afdNP8sZSHguPQC6RQNtqyAaVRGBr+8Y95
 CdIyiZvCfkRbERzX1H4U3JIBtfOpvSjnpfUJDK0Gz9UTlOlWWTTfhJjhBKXyyJosuSn4Xv7b3H6
 N1nlVR7724DA7YVBpHnPYfiFmeVHP2DhzKOKF5Dn1qJZQCog8BHBunDjU+cIVplIfK9qilvYQvu
 jaihv0U0aijeRjHpzvfyXIh6RVx1gUAtGIdV4cuYBk8MfwyntBkQDvicD5B2asp/HKcI/ADvcGv
 kmEmv/oe3YWquQV4nN1e4Ohco7Hkd9uwDMO75HHDp1WDBd9SbWxi9OECusn3MavGz2vSQ+7PsYX
 pKtvc4gsgbX7uHBnbgDAX/KCz5yBYpdLEX0zCM8uKA26YgM6DSArfZc6cetmYkCIOjVQ06al8i+
 9rOY1GYYIh8l30NqgOw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_04,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605170203
X-Rspamd-Queue-Id: 5E8BA563654
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,4e00000:email,0.72.99.64:email];
	TAGGED_FROM(0.00)[bounces-299018-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,vger.kernel.org,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[komal.bajaj@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 5/13/2026 9:36 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 4 potential issue(s) to consider:
> - [High] Invalid PPI interrupt numbers (1, 2, 3, 0) are specified for the ARMv8 generic timer instead of the architecturally required numbers (13, 14, 11, 10).
> - [Medium] The `sdhc_1` node incorrectly uses RPMh interconnect tags (`QCOM_ICC_TAG_ALWAYS`, `QCOM_ICC_TAG_ACTIVE_ONLY`) on an RPM-based interconnect topology.
> - [Medium] The USB SuperSpeed wakeup interrupt (`ss_phy_irq`) directly references the GIC instead of routing through the MPM, breaking system wake-up from deep sleep.
> - [Low] The `sdhc_1` node uses the undeclared macro `RPMHPD_CX` for its `power-domains` property, which will cause a Device Tree compiler syntax error.
> --
>
> commit e2ee94ef3a5741f2cb9aae14dbef52c5f4a760f1
> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> Subject: arm64: dts: qcom: Introduce Shikra SoC base dtsi
>
> This commit adds initial device tree support for the Qualcomm Shikra SoC, an
> IoT-focused platform featuring a Cortex-A55 and Cortex-A78C cluster. It
> configures RPM-based power and clock management alongside various peripherals
> like USB, eMMC, and the generic timer.
>
>> diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
>> new file mode 100644
>> index 0000000000000..262c488add1ec
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
> [ ... ]
>
>> +		sdhc_1: mmc@4744000 {
>> +			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
>> +
>> +			reg = <0x0 0x04744000 0x0 0x1000>,
>> +			      <0x0 0x04745000 0x0 0x1000>;
> [ ... ]
>
>> +			interconnects = <&system_noc MASTER_SDCC_1 QCOM_ICC_TAG_ALWAYS
>> +					&mc_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>,
>> +					<&mem_noc MASTER_AMPSS_M0 QCOM_ICC_TAG_ACTIVE_ONLY
>> +					&config_noc SLAVE_SDCC_1 QCOM_ICC_TAG_ACTIVE_ONLY>;
> Since the Shikra SoC utilizes an RPM-based architecture, should this node use
> interconnect tags from qcom,rpm-icc.h (such as RPM_ALWAYS_TAG) instead?
> Passing RPMh interconnect tags from qcom,icc.h to an RPM interconnect provider
> might result in unhandled parameters or silent bandwidth request failures.
>
>> +			interconnect-names = "sdhc-ddr",
>> +					     "cpu-sdhc";
>> +
>> +			power-domains = <&rpmpd RPMHPD_CX>;
> Does this power-domains assignment use an undeclared macro? RPMHPD_CX belongs
> to RPMh-based power domains, while this platform relies on RPMPD. This looks
> like it will cause a dtc syntax error during the build.
>
> [ ... ]
>
>> +		usb_1: usb@4e00000 {
>> +			compatible = "qcom,shikra-dwc3", "qcom,snps-dwc3";
>> +			reg = <0x0 0x04e00000 0x0 0xfc100>;
> [ ... ]
>
>> +			interrupts-extended = <&intc GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 302 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "dwc_usb3",
>> +					  "pwr_event",
>> +					  "qusb2_phy",
>> +					  "hs_phy_irq",
>> +					  "ss_phy_irq";
> The mpm node correctly maps pin 12 to GIC SPI 422 for the DWC3 ss_phy_irq.
> Could routing this directly to the GIC here instead of hierarchically through
> the mpm (e.g., <&mpm 12 IRQ_TYPE_LEVEL_HIGH>) prevent the hardware from
> waking up from low-power states upon USB activity?
>
> [ ... ]
>
>> +	timer {
>> +		compatible = "arm,armv8-timer";
>> +
>> +		interrupts = <GIC_PPI 1 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 2 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 3 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 0 IRQ_TYPE_LEVEL_LOW>;
>> +	};
> Are these PPI interrupt numbers correct for the ARMv8 generic timer? The
> architecturally defined numbers are typically 13 for Secure, 14 for Non-secure,
> 11 for Virtual, and 10 for Hypervisor. Using invalid hardware IRQ lines here
> could prevent the kernel from receiving scheduler ticks and stall the boot.

PPI numbers (1/2/3/0) are correct for Shikra. It uses the same older 
Qualcomm GIC implementation as sm6115, sm6375, sm6125, and sdm630, which 
all use these timer PPI numbers.

Thanks
Komal

>
>> +};


