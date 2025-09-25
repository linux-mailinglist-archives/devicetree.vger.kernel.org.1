Return-Path: <devicetree+bounces-221349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB514B9ECE3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:49:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB6034231CE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417272F8BC4;
	Thu, 25 Sep 2025 10:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cvQAuu9q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A213B2F90E6
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758797234; cv=none; b=NXAmK8n+hp8T19zfQgy8a/Rl54pLbb8ipRm/vPolCqPf8ELBnpqbq3q45iN68AHzBOlKx2i8fFYjjxSH4SFtl5uTlvKpb4cQNMkpBiVVMS5Q4r3Ipz0+Ub1jX7oIj+uWu52O9wd37VCiKMYF+eMG3P0VeyLjF6TKa5vC6nibg5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758797234; c=relaxed/simple;
	bh=kA/W8j57qUwRf6Pe0hZo/Qn/kO9UwhDxztWC+vH3KNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ma9LpkSzSF2FXNjROX+XqwVVUlWYDqTAl4H5cUZyk6TYWLSZP9M/mPyjtzhkyTn62wK222uWTx3nVIr7HpIv/9hIaNkcoXAKQzr2Ftr11LkhfAGYbRdIM5JlN00fz0GIbWTRyJ/SW57swwCbDUs4esAE9Qvm2YND8nLf62jRF8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cvQAuu9q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9UgNK025591
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:47:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ap9zsKuKlu5pNRSUb04qd8s5OqnjzWt1Q5GsG3WWIsw=; b=cvQAuu9q6gCUC959
	JgjrF6Rk20T8plh1fWaGVlr/rrKulvhtw091dT1T+gRp137bXcwFuFMl3NDg25G3
	t7gAj3sFXSF+WNSVxbrfdIJ/JXXIBLi8+WDNBIE++Qzaaslm9iWIXm+HOF1m6AuH
	8MOS4OMxb4ICMcOoSwjvHPLlAwA7DR+DuQXbt3oCmx5oh9QaBrnFWd+oy+KFVXNY
	yElK1bXJSOwyZc/JRzGMK4xwcggiIHoF/04Vm8qOkOydGrndpK0I8MNxgLscBIQK
	XIEvOFDfL6D5vRpDe+eweKjc3CKe/rt5JohhEzwdnjA58LJibx5iq5AQgmCeRTqM
	fDUqCw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyf04bg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:47:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-850dfe24644so35027285a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:47:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758797230; x=1759402030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ap9zsKuKlu5pNRSUb04qd8s5OqnjzWt1Q5GsG3WWIsw=;
        b=tdRHt3WL9/13np9BKZ00P/VWDyNoLRD5IcTYTvFD+Ufhdefi+UK1ufK/xasOpk33rj
         LTFQU9wcv9pKAINUrVN07SrC8RwGadCPif1gco775kh1p4QtJ8s7CthXP+yLFbAB56Nn
         MNEIE7g02n9T5uUAMOep4QS94kgXdEJy5925vHM3zTeHlscypk1QPjUcKGiu1jxFst+P
         ECUPuEZx1ymwydSZbBPaoFDdyQCHLueFJyKq5jWqqUAxxVCN0sSjPHpyVpMMMN2ePciT
         F8gRO4w4RihmHcPKnCWd9a2/JX9sLzVmZY6NspZO38l7C2Cg893JcdKu/OoiQkIYfU9x
         B6jA==
X-Forwarded-Encrypted: i=1; AJvYcCVgjbV+V9H2/Bz7xALa7CUo2IpyJ5GSxOF8f9H0k0eB4CpiAzGomXvOJKsSiRbrzxYLVYZVgW4OeXzn@vger.kernel.org
X-Gm-Message-State: AOJu0YxEwIMK8zHHXDmPoaOoo30hzewuhyqi9Jwonxpg+ZUfCPgqqG8k
	xL3gzHRvAh2+0V3rzSAwjHUpGgjwud6qhXTT+CMpssqUiijDYY0TRy/tXyuEV1rbA3+phVVxr6o
	EwVTVLgO5V2SNMnW3RFO41ZKwXJqvxl7IXKyQkFWGs90q7XxmeLQQE89Bp1UnBTOy
X-Gm-Gg: ASbGnctOcrMdLMm+Hs7dhjvW75mSvi600kol01G6QJXNIA+92Mfy2JC+N6kS3+QeGYe
	fokT954SBwSbfRP8HYVW3h1fpEPpdgBvYfauMOEIyvGO4LCpcFuyN2TZFCD1s/kJtpWErlBftXY
	Z4vUNr+ZmmFTIBq+mk5uzwwhXhIugKXnK1GOqdHXQb7j4uJx4ahLByGkChOD8dKvtnxmTFU1E+z
	63lxlR5gq0M0zcP/Kb8+1ElQoqu/7148otlKvzdWkD1JyTk3hMkRGpa1SKWqjDIYkSgmQPeajti
	eDCBEGTf/YrCsy1yVNuddaRPMDIXNjirBkSnJHAEXEsYJLQZx74ZCOmy0YauQYm5+XHwNafrUoq
	odZ0h6JThU00oE/uVoBtePw==
X-Received: by 2002:ac8:5d56:0:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4da482d67b4mr26593151cf.4.1758797230201;
        Thu, 25 Sep 2025 03:47:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPlsCdSBp4lVFO9DqRFAK2J6u8/Y0Vcz4TcgQGFKzP4hjuFZPhw5/Mpkap+CC2vkrjuvanDw==
X-Received: by 2002:ac8:5d56:0:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4da482d67b4mr26592921cf.4.1758797229601;
        Thu, 25 Sep 2025 03:47:09 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353efa4696sm141562866b.27.2025.09.25.03.47.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:47:08 -0700 (PDT)
Message-ID: <2eff7705-8d85-4c48-820b-bb9d2095995a@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:47:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
To: Xilin Wu <sophon@radxa.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250924-radxa-dragon-q6a-v4-0-10d584f2c806@radxa.com>
 <20250924-radxa-dragon-q6a-v4-2-10d584f2c806@radxa.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-radxa-dragon-q6a-v4-2-10d584f2c806@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: L0oM40rc8ERBXs6smXlEzDylOG3sTQ1j
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d51daf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=ksxQWNrZAAAA:8 a=EUspDBNiAAAA:8
 a=JC7H1UVUsGpFjcbbhlEA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX9KhHj8DCaqOV
 CXPH8viGW1s+IzRYoUxh6weBhWvS5bydaj8mtXaiNK/ZcdmSkSyyfmpG7snEaUlUKqgR+PmHExP
 FirH+nYqy3hPz7AmnPAOwy206vsRZBV6eYw5WAtrie5udK8I48haSXPN+2pFwSXKQjYPXJCYQfX
 broN7JdbmHRJFzWgZF/PkGW1vC4/3jLhfkniopF4OuUc0Dt1IuQoMeYsvUGa9FsQdXD6mLdhFwz
 mZB8S3SfDHQR/v4bzsD7xTPZisM4AxMyzmUIQgW5yAo/rxrMuWy49gkqjI2nVWfv17KR8SCZXae
 TD+uwpXDbNPCKGOiZKUpIu3ZGS+blz3kFizv1pk0q6kZpuoRcPQUERtZrVKFwzoIFthdFqG6W4+
 +9gN21f8
X-Proofpoint-ORIG-GUID: L0oM40rc8ERBXs6smXlEzDylOG3sTQ1j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On 9/24/25 5:07 PM, Xilin Wu wrote:
> Radxa Dragon Q6A is a single board computer, based on the Qualcomm
> QCS6490 platform.
> 
> Features enabled and working:
> 
> - Configurable I2C/SPI/UART from 40-Pin GPIO
> - Three USB-A 2.0 ports
> - RTL8111K Ethernet connected to PCIe0
> - eMMC module
> - SD card
> - M.2 M-Key 2230 PCIe 3.0 x2
> - Headphone jack
> - Onboard thermal sensors
> - QSPI controller for updating boot firmware
> - ADSP remoteproc (Type-C and charging features disabled in firmware)
> - CDSP remoteproc (for AI applications using QNN)
> - Venus video encode and decode accelerator
> 
> Signed-off-by: Xilin Wu <sophon@radxa.com>
> ---

[...]

> +	leds {
> +		compatible = "gpio-leds";
> +
> +		pinctrl-0 = <&user_led>;
> +		pinctrl-names = "default";
> +
> +		user-led {
> +			color = <LED_COLOR_ID_BLUE>;
> +			function = LED_FUNCTION_HEARTBEAT;
> +			gpios = <&tlmm 42 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";

"panic-indicator"?

[...]

> +&qspi {
> +	/* It's not possible to use QSPI with iommu */
> +	/* due to an error in qcom_smmu_write_s2cr */
> +	/delete-property/ iommus;

I would assume this is going to apply to all non-Chrome kodiak devices

[...]

> +&sound {
> +	compatible = "qcom,qcs6490-rb3gen2-sndcard";
> +	model = "QCS6490-Radxa-Dragon-Q6A";
> +
> +	audio-routing =
> +		"IN1_HPHL", "HPHL_OUT",
> +		"IN2_HPHR", "HPHR_OUT",
> +		"AMIC2", "MIC BIAS2",
> +		"TX SWR_ADC1", "ADC2_OUTPUT";

odd line break

[...]

> +&usb_2_hsphy {
> +	status = "okay";

odd status-not-last

lgtm otherwise, thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

