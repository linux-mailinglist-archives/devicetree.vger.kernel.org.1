Return-Path: <devicetree+bounces-250407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7848FCE8F69
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AC1E3017F32
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:02:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FCC82FC007;
	Tue, 30 Dec 2025 08:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WQWEaome";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="glZVetb9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24079296BD6
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767081758; cv=none; b=Ruj+5CP6yWX5Di7Vf0Vxx5kiNZGkC0A3quFZQkwieuO3twqtog+tHQ4in6FLC0HcyUL5VSI/rCAB2d/M5/VYaQtPeCdl0n+Wd0/fsVn7IgSqKEI8V+dlGhWdt+SjG7oKP3yC1jmWVHokg6HCaPmLtQkJbVw4DXWoyAaQhoeHkyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767081758; c=relaxed/simple;
	bh=gINk5FE91N30iPXdSLNhZdhs7EAsNPJ71wds1sL6I1A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jtdqCklFwhE/WEo89LyGjfze8jO/ZX8KQXxK3Oq+8TmgGwcI8okaBHyJ73dAGCJEp5VNQfEgRZLsjuqtjBEmzs6mgas/0LpT1M1pv28XPirv321Tr6y/whiO1FwBUiKZWUIZ9UcGantroSn+5abe+yAm129wE8hV7DoBwVpXrNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WQWEaome; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=glZVetb9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTKXVb32551543
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:02:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3OhHCU1J9aP6tsjQt+X79nSYLwwMPdY2IpL+yaltzGI=; b=WQWEaomeOaEz/GFs
	bWh8L4oDKVohUpCJ1c4ObETe1vzoN72aAc82hb2jedCUDl9E9IT+cy7euxeCf7Bv
	IfH+0Er8Zu6VpYeZVlPSFO8JZFxfnNs4MCWI0XQR9OzvOE24psghNgNzKPDKfi3B
	VXRnTp4qZY9pwge8sYpbXudD/HR2fgzUytapX3DWy3pJcef0j/R3ldukbyvnmVQJ
	woLmL2iYqPknJUBwvfXPNKooWwIC2wiXb5HMEXf8GCfbcER3/TgzDKSfXPt5yrLm
	7RKVWJfk1FJ/M+yVZT6xou2sgHgl682uHPbwCpKexxWqfpk5UwZc33AInhd+S+7f
	aHcuXg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0skh7r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:02:33 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c6e05af3bso21704432a91.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767081753; x=1767686553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3OhHCU1J9aP6tsjQt+X79nSYLwwMPdY2IpL+yaltzGI=;
        b=glZVetb9dz1Y3VtJ5zm0wN1Evtnl4wglTJOkO9OmJn06FG3ZQzf9qIF4uXgIiCfh+F
         YchZ+dLKkhaxz3oYfblrOEZh5mgPO+XKRRZoxA/IIRq0l9UqMqtIQUTSSBSnKeVpLi8O
         iNGnKue1N69JcGgkUzZwBnFEH1YtWAENJ4jr2/UuQIyYltE8Oc+s/Tge8fpg9M3d7eRB
         BILvWy6Q472wlg5V0fq1YHQ7ZvzOJFhihxGJkYlloXgpYNFSHH1GUncLYSc9V4p9rFMg
         NZByRrbyirOrkmIaSJgvBd0Uyb0A+xIpfy+lokr5Yb5Y/5Xgd1rxCZciCJAodwS+Byvl
         eYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767081753; x=1767686553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3OhHCU1J9aP6tsjQt+X79nSYLwwMPdY2IpL+yaltzGI=;
        b=olvsQzku9mylVJ6ZcIXqTiJUX7OxNrVLOnuo7aEjsTOCWOjaas2kZ2clIbmixD9NG+
         O+VmRbGYueDbQm8NtKAj3mXY8NTEuPddQ2B9D/aaGFO0cZHkKruG2IVBTulqFxGuOW+B
         fTf1C2SplKpoc+uNrsVEPyoUZipy+eouoyI8T3r1QjNXSyVTYrMxmOhBY/up12b/Avyx
         fTCF1pviG1mn6YKP+AeGDEBeaQw6QoD4IKZkIey6TRFaju7Sj/sD4HgVFppuFDI5yfgy
         3AWFDrFitVqAefnFsU1EWGcp7v5FPykORRuHP1bvXE5C4xCq8J/ZZ5d04GhXhdI0jGhe
         18Tw==
X-Forwarded-Encrypted: i=1; AJvYcCU4QdvX3eNCCQ0qUBQOftySq42ecYreu+wJjQKnk823phHXwRPEgttQ+BO/DiacnaBc7tcPlbQX3+K2@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb8dpE7WjK13ve81eUFoz6xkmnksTL1fqzaqkAUdozBfkF+Z/U
	rcc70CA/eMzeKPseqOV2cJeyd1vwYnlHKdPKltRF2KSU8FApBunZOziWJ/eBR3QqupRMCOXH1Gf
	QEEgMxo54IXf/fkpRzjqfL+Z3YlJmitLlfIXco5wVHCFbfbwCUtnJpnRrKrBNCsh8
X-Gm-Gg: AY/fxX4lbpeW9kd/25qqxBJOwTaNllSSYjBmYWJoZxRk824Tyevj5dPAFahrVRe+6cG
	UEPx6MXTOBKXkacLJUM5qslZgDL/+kQtqVqwo7CMh3aaXs31DPgpUbaKFqybc3LvnuRyx3rZQDk
	7S4e5fKY/UtG75JshdYYO7JV8Rsin7cKKz2WBERZ+wooHEBcuf6QWuTNljvLXMNa5PkCwcliOgu
	mlMRKXB6vUbSx8YJj0Ef4GyKsFD02KvH6295Ck0y4KY5RRcgA4VxXlF8SqvzLHgoEuMhkxOrR3C
	IK1KZ1xI/Fm6FrZeCIKk2NoCjAuk6tCxSN5DFUDnLz8Z+9VeYqI9Q0ghd+MKSXqDEq+cWsoCndT
	wA7ARute1Sjq/GvyRhP8g0thMoczq2LfcRhBg5odmyumpGo7jxHNlxurMwi54l+ToI6uaViUwJg
	xj+ClNSxwJ1DnqtMm8fl9pOTsoFig=
X-Received: by 2002:a17:90b:2f05:b0:340:b912:536 with SMTP id 98e67ed59e1d1-34e921f5816mr24699358a91.31.1767081752879;
        Tue, 30 Dec 2025 00:02:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvh5gVshkpUSUTueHD7Wy9iBjRVMxatQvV8KoF2Z2q7toFBbXZGwf+VH73/aLpk6bpIIOlSA==
X-Received: by 2002:a17:90b:2f05:b0:340:b912:536 with SMTP id 98e67ed59e1d1-34e921f5816mr24699330a91.31.1767081752317;
        Tue, 30 Dec 2025 00:02:32 -0800 (PST)
Received: from [10.190.201.90] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9219f03esm28769350a91.4.2025.12.30.00.02.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 00:02:31 -0800 (PST)
Message-ID: <6b048028-b3f9-4d8d-aa20-89236c66b800@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 13:32:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
 <aUkj-CkSSOlG8X6Q@linaro.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <aUkj-CkSSOlG8X6Q@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA3MiBTYWx0ZWRfX3zvGsiLVwSZF
 x2IA06IoVOi9QxCDBcsqzXJ+h8pGCJO0nKtFSPfXX+3gS36k/v3DJetskP9OB/39A1Bo16AwT2Q
 d2F8K8/YgHwr0uuiYEx4Vr3VQIXKuEBcbRAKeljUqkjq00GD5Z2JHTcMQC9J+USjS/MfWnQm5jY
 llJOLKKAIQuhhDOdALvKSNa/VjDFjCjQ+ya0OoPviHVvwL7ZuHZb0H2hqJdJ5pFGTBw5yXY70w7
 PtwN19Ox8AAErLujlCpr2amWJtlS1PWcjCXiX6F+IJ0YF2IGtcm0xPao4mU8tq1+aBhSuejgThZ
 snN5aYHVLysDn3aTZJFUYVKb2Z9jVr5pftp3uHjiO+7hwbIWxb49idNgFXKZ2O4wzuyReTxS+4Y
 l7wXE/WiZk8Y6XedTVcsS6EBLOnJJ1CQPtpgVlUrZkFJD/IkTOZJ9Pet8Hkunrvtt2f1+i/ofpW
 DRsST9OXxXh78VpoxEA==
X-Proofpoint-ORIG-GUID: wX-rHJ1M53ymFv6YXOgSU9Ivn11GA9Ls
X-Proofpoint-GUID: wX-rHJ1M53ymFv6YXOgSU9Ivn11GA9Ls
X-Authority-Analysis: v=2.4 cv=FJ0WBuos c=1 sm=1 tr=0 ts=6953871a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Ik_U2rayHFIm2EPsZfwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300072

On 12/22/2025 4:26 PM, Stephan Gerhold wrote:
> On Fri, Dec 19, 2025 at 08:16:56PM +0530, Pankaj Patil wrote:
>> Introduce the base device tree support for Glymur – Qualcomm's
>> next-generation compute SoC. The new glymur.dtsi describes the core SoC
>> components, including:
>>
>> - CPUs and CPU topology
>> - Interrupt controller and TLMM
>> - GCC,DISPCC and RPMHCC clock controllers
>> - Reserved memory and interconnects
>> - SMMU and firmware SCM
>> - Watchdog, RPMHPD, APPS RSC and SRAM
>> - PSCI and PMU nodes
>> - QUPv3 serial engines
>> - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
>> - PDP0 mailbox, IPCC and AOSS
>> - Display clock controller
>> - SPMI PMIC arbiter with SPMI0/1/2 buses
>> - SMP2P nodes
>> - TSENS and thermal zones (8 instances, 92 sensors)
>>
>> Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
>> PMH0110 along with temp-alarm and GPIO nodes needed on Glymur
>>
>> Add glmur-pmics.dtsi file for all the pmics enabled
>>
>> Enabled PCIe controllers and associated PHY to support boot to
>> shell with nvme storage,
>> List of PCIe instances enabled:
>>
>> - PCIe3b
>> - PCIe4
>> - PCIe5
>> - PCIe6
>>
>> [...]
>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> new file mode 100644
>> index 000000000000..eb042541cfe1
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> @@ -0,0 +1,5700 @@
>> [...]
>> +	cpus {
>> +		#address-cells = <2>;
>> +		#size-cells = <0>;
>> +
>> +		cpu0: cpu@0 {
>> +			device_type = "cpu";
>> +			compatible = "qcom,oryon";
>> +			reg = <0x0 0x0>;
>> +			enable-method = "psci";
>> +			power-domains = <&cpu_pd0>, <&scmi_perf 0>;
>> +			power-domain-names = "psci", "perf";
>> +			cpu-idle-states = <&cpu_c4>;
> You probably want to move this to domain-idle-states:
> https://lore.kernel.org/linux-arm-msm/20251010-topic-x1e_dt_idle-v1-1-b1c8d558e635@oss.qualcomm.com/

Will fix in next revision

>
>> +			next-level-cache = <&l2_0>;
>> +
>> +			l2_0: l2-cache {
>> +				compatible = "cache";
>> +				cache-level = <2>;
>> +				cache-unified;
>> +			};
>> +		};
>> [...]
>> +		qupv3_2: geniqup@8c0000 {
>> +			compatible = "qcom,geni-se-qup";
>> +			reg = <0x0 0x008c0000 0x0 0x3000>;
>> +			clocks = <&gcc GCC_QUPV3_WRAP_2_M_AHB_CLK>,
>> +				 <&gcc GCC_QUPV3_WRAP_2_S_AHB_CLK>;
>> +			clock-names = "m-ahb",
>> +				      "s-ahb";
>> +			iommus = <&apps_smmu 0xd63 0x0>;
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +			ranges;
>> +			status = "disabled";
>> +
>> +			i2c16: i2c@880000 {
>> +				compatible = "qcom,geni-i2c";
>> +				reg = <0x0 0x00880000 0x0 0x4000>;
>> +				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
>> +				clocks = <&gcc GCC_QUPV3_WRAP2_S0_CLK>;
>> +				clock-names = "se";
>> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
>> +						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
>> +						<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
> CPU->something paths should be QCOM_ICC_TAG_ACTIVE_ONLY (everywhere).

If we're removing and placing the vote during suspend/resume scenarios, then the tag mentioned in the device tree doesn't matter.The intention behind making it ACTIVE_ONLY for config path is that during APPS suspend,APPS->CONFIG wont be accessed as APPS itself is going to suspend.

>
>> +						<&aggre3_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
>> +						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>> +				interconnect-names = "qup-core",
>> +						     "qup-config",
>> +						     "qup-memory";
>> +				dmas = <&gpi_dma2 0 0 QCOM_GPI_I2C>,
>> +				       <&gpi_dma2 1 0 QCOM_GPI_I2C>;
>> +				dma-names = "tx",
>> +					    "rx";
>> +				pinctrl-0 = <&qup_i2c16_data_clk>;
>> +				pinctrl-names = "default";
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				status = "disabled";
>> +			};
>> [...]
>> +		pcie4: pci@1bf0000 {
>> +			device_type = "pci";
>> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
>> +			reg = <0x0 0x01bf0000 0x0 0x3000>,
>> +			      <0x0 0x78000000 0x0 0xf20>,
>> +			      <0x0 0x78000f40 0x0 0xa8>,
>> +			      <0x0 0x78001000 0x0 0x4000>,
>> +			      <0x0 0x78005000 0x0 0x100000>,
>> +			      <0x0 0x01bf3000 0x0 0x1000>;
>> +			reg-names = "parf",
>> +				    "dbi",
>> +				    "elbi",
>> +				    "atu",
>> +				    "config",
>> +				    "mhi";
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x78105000 0x0 0x100000>,
>> +				<0x02000000 0x0 0x78205000 0x0 0x78205000 0x0 0x1dfb000>,
>> +				<0x03000000 0x7 0x80000000 0x7 0x80000000 0x0 0x20000000>;
>> +			bus-range = <0 0xff>;
>> +
>> +			dma-coherent;
>> +
>> +			linux,pci-domain = <4>;
>> +			num-lanes = <2>;
>> +
>> +			operating-points-v2 = <&pcie4_opp_table>;
>> +
>> +			msi-map = <0x0 &gic_its 0xc0000 0x10000>;
>> +
>> +			interrupts = <GIC_SPI 505 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 509 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 510 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 511 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 512 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 944 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "msi0",
>> +					  "msi1",
>> +					  "msi2",
>> +					  "msi3",
>> +					  "msi4",
>> +					  "msi5",
>> +					  "msi6",
>> +					  "msi7",
>> +					  "global";
>> +
>> +			#interrupt-cells = <1>;
>> +			interrupt-map-mask = <0 0 0 0x7>;
>> +			interrupt-map = <0 0 0 1 &intc 0 0 0 513 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 2 &intc 0 0 0 514 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 3 &intc 0 0 0 515 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 4 &intc 0 0 0 516 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			clocks = <&gcc GCC_PCIE_4_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
>> +				 <&gcc GCC_PCIE_4_MSTR_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_4_SLV_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_4_SLV_Q2A_AXI_CLK>,
>> +				 <&gcc GCC_AGGRE_NOC_PCIE_4_WEST_SF_AXI_CLK>;
>> +			clock-names = "aux",
>> +				      "cfg",
>> +				      "bus_master",
>> +				      "bus_slave",
>> +				      "slave_q2a",
>> +				      "noc_aggr";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE_4_AUX_CLK>;
>> +			assigned-clock-rates = <19200000>;
>> +
>> +			interconnects = <&pcie_west_anoc MASTER_PCIE_4 QCOM_ICC_TAG_ALWAYS
>> +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +					&pcie_west_slv_noc SLAVE_PCIE_4 QCOM_ICC_TAG_ALWAYS>;
>> +			interconnect-names = "pcie-mem",
>> +					     "cpu-pcie";
>> +
>> +			resets = <&gcc GCC_PCIE_4_BCR>,
>> +				 <&gcc GCC_PCIE_4_LINK_DOWN_BCR>;
>> +			reset-names = "pci",
>> +				      "link_down";
>> +
>> +			power-domains = <&gcc GCC_PCIE_4_GDSC>;
>> +
>> +			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
>> +			eq-presets-16gts = /bits/ 8 <0x55 0x55>;
> Shouldn't there be an IOMMU assigned here? (i.e. iommus = <...> or
> iommu-map = <...>). The reason we don't have these directly in
> hamoa.dtsi is that it runs in EL1 by default and the Gunyah hypervisor
> prevents direct access to the SMMUv3 that protects the PCIe endpoints.
>
> Your cover letter says Glymur is capable of booting at EL2, so this
> can't be the case here. Is there no SMMU for PCIe on Glymur?
>
> There are significant security and performance downsides without a IOMMU
> assigned here (especially with the upcoming USB4 enablement), so this is
> not something I would expect to be omitted without any TODO comment or
> similar mentioned anywhere.

Let me check on pcie smmu enablement.

>
>> [...]
>> +		dispcc: clock-controller@af00000 {
>> +			compatible = "qcom,glymur-dispcc";
>> +			reg = <0x0 0x0af00000 0x0 0x20000>;
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&sleep_clk>,
>> +				 <0>, /* dp0 */
>> +				 <0>,
>> +				 <0>, /* dp1 */
>> +				 <0>,
>> +				 <0>, /* dp2 */
>> +				 <0>,
>> +				 <0>, /* dp3 */
>> +				 <0>,
>> +				 <0>, /* dsi0 */
>> +				 <0>,
>> +				 <0>, /* dsi1 */
>> +				 <0>,
>> +				 <0>,
>> +				 <0>,
>> +				 <0>,
>> +				 <0>;
>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>> +			required-opps = <&rpmhpd_opp_turbo>;
> Are you sure you want to force TURBO here?

Will decrease it in next revision.

>
>> +			#clock-cells = <1>;
>> +			#reset-cells = <1>;
>> +			#power-domain-cells = <1>;
>> +		};
>> +
>> [...]
>> +		watchdog@17600000 {
>> +			compatible = "qcom,kpss-wdt";
> This compatible is deprecated.

Will update in next revision

>
>> +			reg = <0x0 0x17600000 0x0 0x1000>;
>> +			clocks = <&sleep_clk>;
>> +			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
>> +		};
>> +
>> [...]
> Thanks,
> Stephan


