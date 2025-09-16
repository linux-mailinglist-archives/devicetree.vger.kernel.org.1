Return-Path: <devicetree+bounces-217660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34909B58CBC
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 06:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3875F18986CF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52444225761;
	Tue, 16 Sep 2025 04:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LASI0Gdm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6151F542A
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757996389; cv=none; b=tImpFrRb1oxY81VP5h8NMe45iC3/t1xfCkb/B6+c8RdedCDH3syIcLgw7CEx7k1rwSS4W7nL8BylggUCpSCwkAgiyD5bXAATDoFKh+dl8dLc7JyXgPSYy1MjjkKfRBHpwDD4TDhnYPuyogAnrRQwT83bUpI1LKkmVFOrVkdq4so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757996389; c=relaxed/simple;
	bh=ZkhiQNS/ERWY+DeFuB3R+OOmnmRfw0gdxl5NPoVNeNs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fgRkwMiQSK2JV8nEXhUbzv0VDDAl3ZQ1AzEvZkzrSUpvyslhpjhTE0XsrZ/uLPNq5eldicWQtiTGzmDfAzYD1lqsXYlUivwgCG6f0kNnK8oJVJL++uLkXjQle0XeC5LK0K2WAcmJfBlsiiVJJtzVGmwdNnRKqrnau7oHBELr5pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LASI0Gdm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3pcOv013390
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:19:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1MNr2Oj/tB1HY5U5Py6BYHrc+/3H8dyW7TLhuRk0Sr0=; b=LASI0GdmddYWyaqP
	MD5f4hJd1DZI0gfl9JtKVuYM+H6vUYnls353z7XCon6HfO/zH06O4knR8k01X8hC
	C/I17RSEKQxDGePj3yW+FEFd+bF3ZH5DIb3+uULEybgLyH78tfDiuYLDRmgjB0JP
	SnpUboorfJ9G/ADfMeYshnskZG1DoVAkBN9okNBG/xA6EB9EKySXnxSur7+AUKWC
	GQegr6Jcc1AB9xZPt/Cf0avrcPdHhj+C5W265sgXaq1szBHR+e48Q/qO6eU/RLz6
	oeJUk5J05twNyQRgRyVYGFONPXeLCSjEuMzJ519zyQ69MA6p8AvJvNl8ZVWS3xtO
	vaP2kA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496x5arfkk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:19:45 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b54ccdd1806so1108351a12.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 21:19:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757996384; x=1758601184;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1MNr2Oj/tB1HY5U5Py6BYHrc+/3H8dyW7TLhuRk0Sr0=;
        b=e9KzqerRwBnBLuhmCX2IuVlzpEHVSG01KueqnZ/Zy6oos6H4dnMRxQoLMRduFGRl6r
         m+qNZeeYRFR3FhVNAgZ7rwuOOui9tg1LKncUsGOk0BTkDrYitZvF2wUFHkegW6oN3WdI
         eiQUoxrYtVZg0pnsrikycjra7PqnvVWSTj+LVKLW6ViHHWYgluQUzNXNYCuWdNd9eqRs
         JzSgNk9pwbkm54WdpXQfvCNHRh4J7+If6cqPKAlBjFetPnWMGNkBcPb5imvOCf4rVOfm
         GL8SERmhYxoBqfuVXW+L5sqcCmrooIGKM/dqQ/XeTikl8e9f2JBOBCfimT9ld41kQz4k
         9/Dw==
X-Forwarded-Encrypted: i=1; AJvYcCUDBbdql/BUyHBCjwjh2aYQDeY5EzrrpnZ/GEaPxsYKZt2tMU64XwBvTZz6meLf3ODSn2MZJ53OITHC@vger.kernel.org
X-Gm-Message-State: AOJu0YxXC8wLbLm40EgdndYDJnK+vSUrnLMmsWTJ06M5z6v6yytTJ+9U
	AgmMOxCodHWqIjviEC76T1gl/mnbUgjm8wsUHuiRjrwspS00cBNy0pcWVWrmmA91unPWEKtBqMB
	u4SSy3zfSKb/5qeX8hmJQvjnMobo32GqOdt47O5zhlvoaC5s+pCO3qdaItX2D7A3S
X-Gm-Gg: ASbGncsl6sn3TV3UGnp+Y4VF4Hwm8HYMclJ6IdrKsMI/qZ/V3gdIL/076IBsJMkaOAq
	Mz9Vjgl0vWBIc4kMCIb45hss1hY6wA3qByTYcD6pVLj5Yk/uWDqLiz1CIi5SeMKMkYhQ5Hw7cZ8
	8smCfUPlnUSNoAlkEKsMDxmc+Tdgu1JP6hB/mAlpVQQpHOKjPb8tSXDAec5HkGouIg/SLe2SHH6
	QdNIROCZUFR+SlIFFaon5OmvKn+1EcKqFbErhRd3IsrIRACySXuZakBXmhw/BCO9C+wZCN3JrSz
	dtmfK4kCTZ5O74TWwc6ljfJBQ1N1n/wePAR5FrRjTpMAPCfFyOwrDT3weWKfw5CLHtRTzPjP+G4
	4jrpBsAMliM9HxaBf+2rFNMz6AaPMrQa73g==
X-Received: by 2002:a17:903:22c9:b0:246:76ed:e25d with SMTP id d9443c01a7336-25d26a59647mr179877625ad.50.1757996384189;
        Mon, 15 Sep 2025 21:19:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEV2LGxyMNtHNxIrsEsX9rK5fGWOmHILbA5HtUYr+apFXMFMtF4naZaW43tFzS64M44vPJAxg==
X-Received: by 2002:a17:903:22c9:b0:246:76ed:e25d with SMTP id d9443c01a7336-25d26a59647mr179877275ad.50.1757996383660;
        Mon, 15 Sep 2025 21:19:43 -0700 (PDT)
Received: from [10.133.33.244] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25e2fb546f9sm111530415ad.127.2025.09.15.21.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 21:19:43 -0700 (PDT)
Message-ID: <254d7d75-fa02-4bca-accf-4567b9dbf673@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 12:19:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-4-38ed7f2015f7@oss.qualcomm.com>
 <aMPhEm8PuhEofHP7@linaro.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <aMPhEm8PuhEofHP7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: API_CMwAIxb6hNwviFt5rxPnL-91qy6c
X-Proofpoint-ORIG-GUID: API_CMwAIxb6hNwviFt5rxPnL-91qy6c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDAxMCBTYWx0ZWRfX9s74RQHq7FD9
 9UCIVyoHP12/TLgt5fVUb2WS4U8GO/qfxBBg2+m6TY7vbMubj+O49GbfueYQjc6W1ijyFPJ3jmO
 iYtF8dIkHdjSRATjYTyXzvtVXr2p76xYD3oN1zUy0CL8Q6D/lu7fKTPcFcASP2P+H3JlChD+W+c
 67SnuE09CRf5AShaLQELg4GrDIu5dl1t05OTbct52R0s4HXKHd45ISUeNnqKQAqwYKwph3m18zX
 AQOr2xq42hrBEr/O468S357C5wpbuasdB1uDRyrVf0mN1KFLaKIYJYWwzL3cGEYBLv26fC++M45
 M5vTYGH43kQ57IBSJ/O32/KS8jiw2AnC3hKPMzmE8hdheD6b6KtAxXdtyuSB4gQPqWgN8GmN4Y7
 iDQhtSae
X-Authority-Analysis: v=2.4 cv=WpQrMcfv c=1 sm=1 tr=0 ts=68c8e561 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=BKfv3jXuzfWu8byZeJgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_01,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160010



On 2025-09-12 17:00, Stephan Gerhold wrote:
> On Wed, Sep 10, 2025 at 05:02:12PM +0800, Yijie Yang wrote:
>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>> embedded system capable of booting to UART.
>>
>> Make the following peripherals on the carrier board enabled:
>> - UART
>> - On-board regulators
>> - USB Type-C mux
>> - Pinctrl
>> - Embedded USB (EUSB) repeaters
>> - NVMe
>> - pmic-glink
>> - USB DisplayPorts
>> - Bluetooth
>> - WLAN
>> - Audio
>>
>> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
>> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
>> <quic_shuaz@quicinc.com>, Yingying Tang (WLAN) <quic_yintang@quicinc.com>,
>> and Yongxing Mou (USB DisplayPorts) <quic_yongmou@quicinc.com>.
> 
> This looks like you should have Co-developed-by: tags together with
> their Signed-off-by: tags.

Same with 3/4.

> 
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile          |    1 +
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1221 ++++++++++++++++++++++++++++
>>   2 files changed, 1222 insertions(+)
>>
>> [...]
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> new file mode 100644
>> index 000000000000..6eedad7e858a
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> @@ -0,0 +1,1221 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "hamoa-iot-som.dtsi"
>> +
>> +/ {
>> +	model = "Qualcomm Technologies, Inc. Hamoa IoT EVK";
>> +	compatible = "qcom,hamoa-iot-evk", "qcom,hamoa-iot-som", "qcom,x1e80100";
>> +	chassis-type = "embedded";
>> +
>> [...]
>> +	/*
>> +	 * TODO: These two regulators are actually part of the removable M.2
>> +	 * card and not the CRD mainboard. Need to describe this differently.
> 
> This is not a CRD, I think?

I will update.

> 
>> +	 * Functionally it works correctly, because all we need to do is to
>> +	 * turn on the actual 3.3V supply above.
>> +	 */
>> +	vreg_wcn_0p95: regulator-wcn-0p95 {
>> +		compatible = "regulator-fixed";
>> +
>> +		regulator-name = "VREG_WCN_0P95";
>> +		regulator-min-microvolt = <950000>;
>> +		regulator-max-microvolt = <950000>;
>> +
>> +		vin-supply = <&vreg_wcn_3p3>;
>> +	};
>> +
>> +	vreg_wcn_1p9: regulator-wcn-1p9 {
>> +		compatible = "regulator-fixed";
>> +
>> +		regulator-name = "VREG_WCN_1P9";
>> +		regulator-min-microvolt = <1900000>;
>> +		regulator-max-microvolt = <1900000>;
>> +
>> +		vin-supply = <&vreg_wcn_3p3>;
>> +	};
>> +
>> +	vreg_wcn_3p3: regulator-wcn-3p3 {
>> +		compatible = "regulator-fixed";
>> +
>> +		regulator-name = "VREG_WCN_3P3";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +
>> +		gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +
>> +		pinctrl-0 = <&wcn_sw_en>;
>> +		pinctrl-names = "default";
>> +
> 
> regulator-boot-on?
> 
>> +		regulator-always-on;
>> +	};
>> +
>> [...]
>> +};
>> +
>> [...]
>> +&mdss {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dp0 {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dp0_out {
>> +	data-lanes = <0 1>;
> 
> This is unneeded unless you really want to limit this to just 2 lanes.
> x1e80100.dtsi specifies 4 lanes by default.

Great reminder! I’ll rebase on top of the latest code.

> 
>> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>> +};
>> +
>> +&mdss_dp1 {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dp1_out {
>> +	data-lanes = <0 1>;
> 
> Same here.
> 
>> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>> +};
>> +
>> +&mdss_dp2 {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dp2_out {
>> +	data-lanes = <0 1>;
> 
> And here.
> 
>> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>> +};
>> +
>> +&mdss_dp3 {
>> +	/delete-property/ #sound-dai-cells;
> 
> You need to define pinctrl for the HPD pin here.

Will do.

> 
> Thanks,
> Stephan

-- 
Best Regards,
Yijie


