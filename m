Return-Path: <devicetree+bounces-201906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA338B1B345
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 14:24:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 385CD3BEB8B
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 12:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0650227280A;
	Tue,  5 Aug 2025 12:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dww+5siG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C11126FDBF
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754396664; cv=none; b=SRP2ji8hu/rdLUJgPcR4enNeoEuoNQ0KeJ7TYx1YXjI03ZQxQS5AWrCVjGK/Xt0qustpAf7TkSk8KpHulc6UORXfSGPhBM41x/D+/zxr8o3hMF35d8y4PhSoNgtu309Tg22vdjPpTBxaJP3/iNxVPTkqiNpvgsJTSKl4QtVsHiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754396664; c=relaxed/simple;
	bh=r43bh0V6thcvEMRBP7uiBSj2mvfPyvWe6UvyV+75yF4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ECw8UGvn35daDlxwuMmY35J3VJeY+tOCEYIFVH/1tPVhz0XlFGhgWrOv6L/+XLB4A1JFSPL4m99DkKZ2RsnZCYXWl0MoFMUY1WktA99VrBL8ikZJLQ0tvcBtbUbSh+tgds8DKjXDa0lxSfJoY5WBqlWkvcBnKouvDAuVzHLR18M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dww+5siG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 575A3lSc007598
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 12:24:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zakc/kpl+pcymVtBZ5JqlHHlVTDZoYtg/mhLwZJ2HUs=; b=Dww+5siG6JioDz0l
	u8O3Hx5ToGQpPtmmVQue0NnE0vOuWLUVZUod5tXKLAXiZDe4vYM09eGIl+DEjhH+
	pLsshW97GYFj3+u1WmjYMXz6kVaW87nvqijvJEp7hrDVKVSiCy+gKCfpgO1Qtxay
	cRSuNqJMP4G6y1Xy3mmY4gCc30QbTrj+nVIdHhqqPGLpkGBUYSM92bAJum03qJCx
	OOYUpXtUq8JFC9rGoMFjUP8nWgPaSyiD6G2kBSa2UovQEm4j0uKP6JchBRmOfZa1
	fcmu4G052uloKSn6LqLGcjqNlRgmxQWm7bTxz2UhmIsiXuk/4M1Wv7j6QNZXzka8
	SAFt1w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489b2a89h8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 12:24:15 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4227538a47so3777550a12.1
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 05:24:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396654; x=1755001454;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zakc/kpl+pcymVtBZ5JqlHHlVTDZoYtg/mhLwZJ2HUs=;
        b=tgAZprGG8NcXwavN0c/0/jDIiU+hkN/0ZkfREJldUrAqSAmqdm6ZnzMM9jwFAT30px
         91mGpz4g/FqIaxhfEVlaIqCcbartVxH7xPR6q/FuJ1BiXcpPUk5LCK3JjrRJYHxjHRyp
         Ea6SP0KIJcS7Vp7QDNYpNbvaPTh7sGKPTbUTPXtMWJ+9LMiDtVA0GooDBuid6ip6Z3LO
         O4Xl+MZzB7+hrxg0As6NyfAACHBl3mG6DxDwRMqkD7H5Ooo6aVBWQ/NcMdcM5HxiWqov
         uHFdIXOPyOoj5Ik24WcQS3DpKWsoQ5XT/cctaUmUxxF06f/g/WEUqZpdfsYh7bWla1+a
         OtZg==
X-Forwarded-Encrypted: i=1; AJvYcCXSpzsDGK64w7q8R04aQoHAsS1W5dM2MtGcjH8VeIaPVu0CvwBBn1hzQS+TIEZzmi0RXsrrJNpRXaD8@vger.kernel.org
X-Gm-Message-State: AOJu0YzwSKcbmb1uY6cgRf2usUzgCvMSQGZocmhcgPHHZ3aEfAiinzpr
	/onutS5nIu3OyXvgixkZd2kcd57HjLe1Jlx6+kwnIfctLXBl1lCjUdk/sI/cE9Slwapz0P22KS1
	seox1/biGh8xIBrAlxLgiYH3L7HlOS4Vvf5oj+EPL8Eha8/js9B4EWveG+QCZGQwT
X-Gm-Gg: ASbGnctyFmGN4cFZM2j5YoV5Y76dVnXasRnh5An0IX+3z3ZSvPlVDZptNcP2O2HZD97
	aMFUsc6UPtDQDJq4uvWjpuja1w/KHG5BoC54hzaYr90hhdQpn2s8lNQskMQyLwfWZpHqASMwJBk
	e61c273orlTV8c4TlQoGmSE9J4Kfzvov2HcGMXfGCfZn/VVGNnaxoc4ZyKbCEreKjrQlnSLQaBI
	mGkJYua2+NxjNbGa1HBzvD73Crt+wOg6FpBGa3VWX1OCjTpTmKCDiKsMJ5DBAut/fvUtzW4cBic
	fx/gRmn/+JQwlzM36f9O5rG7JKZfUwC+Zhvudti1ZPsUt6sKWWfqmem957wlZ08=
X-Received: by 2002:a05:6300:218e:b0:21f:4ecc:11ab with SMTP id adf61e73a8af0-23df8f93cd1mr16966225637.9.1754396653982;
        Tue, 05 Aug 2025 05:24:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmAtlyoCkBTucfFzqAePs0iFp/iqsO9db8iSLJTshnWRKP8i368ShtTr8e0T6Hm+SHVmEG2g==
X-Received: by 2002:a05:6300:218e:b0:21f:4ecc:11ab with SMTP id adf61e73a8af0-23df8f93cd1mr16966180637.9.1754396653534;
        Tue, 05 Aug 2025 05:24:13 -0700 (PDT)
Received: from [10.253.39.156] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b422bb0570bsm11090730a12.54.2025.08.05.05.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 05:24:12 -0700 (PDT)
Message-ID: <7e4d9dfe-428f-4374-9be7-97123cf36e5a@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 20:24:07 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] arm64: dts: qcom: Add display support for QCS615
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Li Liu <quic_lliu6@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
 <20250718-add-display-support-for-qcs615-platform-v5-1-8579788ea195@oss.qualcomm.com>
 <1f6fc7ce-5826-4f59-89d7-ac691a3ae785@oss.qualcomm.com>
Content-Language: en-US
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
In-Reply-To: <1f6fc7ce-5826-4f59-89d7-ac691a3ae785@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OKwn3TaB c=1 sm=1 tr=0 ts=6891f7ef cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=oI82J1t3JKGWbxmVtl0A:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: RjI8U4AaceNqAAEdmDr1IqENOg-vc2aF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA5MCBTYWx0ZWRfXymcxIqiF/jfD
 /WLY9/pxRV9HRhT69n3l38XdU8wFlMRF6CQUJYHdiPvZMc2F7WKd665iTngTXkX/BkOvyLeA3DY
 dOEiVDjQ6xNGamdFjfPVnvvBopikT36/Nj5nIIuYXBxazKhmi4XxQZLjyA0P9YvfR5fcHEtjL6t
 S/LlOSTtvjGpUbKO62+ZxEKl/k1nwogYIZ2wxXuvFWSQjSNUruq4FK+mPbb7WVmMWjcEdymcb5D
 hmktFMvfcm4BjPaRncrl2DNcg3hILKB/kfLt8dW9Umz//1XWD3/XnBetU9np6JjQNRhCKYf5fhD
 lUnDZzc9NwfFnJ9fbXIFmuccgwENiFWdMbZiQOUIWpJ6+zQ6TtyIhLkRKpgXFUhrQS4fAqjFO37
 iLu0j6O7D6DQ/6OkBoJQB/EMGPUlKMD4yXawhbwGEE6gULwO0Bz9MtvFLAAts20DrYSx/6Ta
X-Proofpoint-GUID: RjI8U4AaceNqAAEdmDr1IqENOg-vc2aF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015
 phishscore=0 impostorscore=0 priorityscore=1501 adultscore=0 mlxscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508050090



On 7/29/2025 7:17 PM, Konrad Dybcio wrote:
> On 7/18/25 2:56 PM, Fange Zhang wrote:
>> From: Li Liu <quic_lliu6@quicinc.com>
>>
>> Add display MDSS and DSI configuration for QCS615 platform.
>> QCS615 has a DP port, and DP support will be added in a later patch.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +
>> +			mdss_mdp: display-controller@ae01000 {
>> +				compatible = "qcom,sm6150-dpu";
>> +				reg = <0x0 0x0ae01000 0x0 0x8f000>,
>> +				      <0x0 0x0aeb0000 0x0 0x2008>;
>> +				reg-names = "mdp", "vbif";
>> +
>> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>> +					 <&gcc GCC_DISP_HF_AXI_CLK>,
>> +					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
>> +					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
>> +				clock-names = "iface", "bus", "core", "vsync";
> 
> 1 per line please, everywhere> +
Got it will fix it in next patch>> +				assigned-clocks = <&dispcc 
DISP_CC_MDSS_VSYNC_CLK>;
>> +				assigned-clock-rates = <19200000>;
> 
> Is this necessary?
test pass without this, so will remove them in next patch>
>> +
>> +				operating-points-v2 = <&mdp_opp_table>;
>> +				power-domains = <&rpmhpd RPMHPD_CX>;
>> +
>> +				interrupt-parent = <&mdss>;
>> +				interrupts = <0>;
> 
> interrupts-extended
Got it, will change it as below in next patch
interrupts-extended = <&mdss 0>;>
>> +
>> +				ports {
>> +					#address-cells = <1>;
>> +					#size-cells = <0>;
>> +
>> +					port@0 {
>> +						reg = <0>;
> 
> Please keep a \n between properties and subnodes
will fix it in next patch>
>> +						dpu_intf0_out: endpoint {
>> +						};
>> +					};
>> +
>> +					port@1 {
>> +						reg = <1>;
>> +						dpu_intf1_out: endpoint {
>> +							remote-endpoint = <&mdss_dsi0_in>;
>> +						};
>> +					};
>> +				};
>> +
>> +				mdp_opp_table: opp-table {
>> +					compatible = "operating-points-v2";
>> +
>> +					opp-19200000 {
>> +						opp-hz = /bits/ 64 <19200000>;
>> +						required-opps = <&rpmhpd_opp_low_svs>;
>> +					};
>> +
>> +					opp-25600000 {
>> +						opp-hz = /bits/ 64 <25600000>;
>> +						required-opps = <&rpmhpd_opp_svs>;
> 
> This and the above frequency are missing one zero (i.e. you
> have a 10x underclock)
Got it, will fix it in next patch>
> [...]
> 
>> +			mdss_dsi0_phy: phy@ae94400 {
>> +				compatible = "qcom,sm6150-dsi-phy-14nm";
>> +				reg = <0x0 0x0ae94400 0x0 0x100>,
>> +				      <0x0 0x0ae94500 0x0 0x300>,
>> +				      <0x0 0x0ae94800 0x0 0x188>;
> 
> sz = 0x124
Got it, will change 0x188 to 0x124 in next patch>
>> +				reg-names = "dsi_phy",
>> +					    "dsi_phy_lane",
>> +					    "dsi_pll";
>> +
>> +				#clock-cells = <1>;
>> +				#phy-cells = <0>;
>> +
>> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>> +					 <&rpmhcc RPMH_CXO_CLK>;
>> +				clock-names = "iface", "ref";
>> +
>> +				status = "disabled";
>> +			};
>> +		};
>> +
>>   		dispcc: clock-controller@af00000 {
>>   			compatible = "qcom,qcs615-dispcc";
>>   			reg = <0 0x0af00000 0 0x20000>;
>>   
>>   			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> -				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>;
>> +				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
>> +				 <&mdss_dsi0_phy 0>,
>> +				 <&mdss_dsi0_phy 1>,
> 
> #include <dt-bindings/clock/qcom,dsi-phy-28nm.h>Got it, will add the h file and change as below in next patch
				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,>
> Konrad

