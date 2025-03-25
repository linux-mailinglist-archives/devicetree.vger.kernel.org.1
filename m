Return-Path: <devicetree+bounces-160593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BDCA703EE
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36AE81891C10
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 680B225B66E;
	Tue, 25 Mar 2025 14:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oXVWegIH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF5625A630
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742913562; cv=none; b=G5DfbeqocJRXxOzkLA/GwSP0AOxfNKwjnZhAfvktGZOX8Q46Qgwr5WO56iyorNLheNtJ0B8C9dbEol2HgZJW1Q+2x9akavKImRX8wZ6bWd1U/0SzqocnV9e+imG00UGUtQ/+N9y902w8geWoBIRxzacJoFnNWEslzLuKHfOuNkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742913562; c=relaxed/simple;
	bh=BF/9SLoL0/eahxTrlHrP7+kk6jiwP3IV1YiE0RpH0aU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GT0wRwl1UOxCic24nv7WeclF5bYFqRIzdDkWcXn5mGRIRzP7XfPqP4LxtyU/6D1wdguwIYRD+d1L9BwecUthuOkZgfb+/W47w31r73+v6i6WiyKt4hAAorJjNDot6MBPGI5D2vKYvgS4gmSMbfOaXY9jkjujnocDO5LmIkit2S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oXVWegIH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52PDs0q8002242
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:39:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2AR9DLJxuAX5J+vUj9fnqNV1djjf7QFzxQNMwmMHS4A=; b=oXVWegIHey1D7hgo
	mRkBBDvrEh3YomsjH1AECYJXa3PCMVCFzndXKb1l2dzhimMHtvRcxtM8lIFdL4Mt
	g1cUvzhOZj4137q2hxw7GCPS0TgV7uzVS0UgOTT46SKIcJTYuZEsLoeUyi5GvM/h
	j8cEit6MisUlo3SNqKHqLYp5ZQIqMgxvENZhEMN0BUJ7VeM2VCsTmWN8QTzNL6f3
	payQVb0iXgpdb4FL8UyODIMlWBHBWHj2T9z2inD1BR+6IfL8aYQLfdev5ArrKEd6
	RFMN63VayVKplC8gdDqA8ckGC3pH1fFbW3iCZXtBc7RoO9UwBWPMOb/gABePN+bh
	G/Cjrg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmd4hwqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:39:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476718f9369so11365631cf.3
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:39:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742913556; x=1743518356;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2AR9DLJxuAX5J+vUj9fnqNV1djjf7QFzxQNMwmMHS4A=;
        b=gxcvUwl/F4JiEQJUVrylWW76dUPolr02axAbrehWOHSwXsarq1opLHdDiw0jLkktBe
         4gV5eAD/0TnEd6vjJhwjiCQbiCUePh1F/RNvc5IHouEGlkN0NtzICyEj3GKqqT8IGqG2
         OBAeAP5jB8c2CTdnNdZSgpkPcym0fYTFXaAFIJUdcOrliwl+VPql2rYOy51UYFX+BJmc
         WPjTZa7L3BUdPQqwceRT2K1rqA7N9vejGNr2Ps/9M7UC/KUMlnZ+M2kKe8sqWbJsrI8I
         KFRxPA3fGIZfEPks3WeMgi/xtpPGcAF0OkMEkjs9Iy/eH63+0uCXcqA91poywuvS4YCo
         JhIA==
X-Forwarded-Encrypted: i=1; AJvYcCVFPUoEDeFCaItwN99jAyzwCzB/cWpPxY+N8+NjkLfT1+HNqWbfUA+x9F4B9ZdW9d5IdQudxTwXn9Dg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5C7ZASq2zEwIgVntMbgSNS0nawhQEsJ2mfe1qYOOPUJC3KkN2
	1MDBo2RBiOXpPbvmwhK4D4dpbiG1yUuGFtkjTrGKXfjMqqZhDmrj9+GxDrwa6dwudJcADTGIbzW
	OEj/x5y0KUG46MzSxjW3IJ4uIEjOcLNhqwuQQzLZhY8c6qg0oETpFy6QQbfnh
X-Gm-Gg: ASbGncttMCGJjZKtsuIqM0kmBcjlFNulEzjmuWPv+x4VOuFF7VojB81my41/wMzNPzj
	y+/xZVcwHCjakw27SXYc4L1hZWJil0on1ItwlDv9LvbgKW+aWzXC7LTDp+1f9+3wyAbsj7Vy/6k
	r3T7qIBhIwUQb8JB2ND9WJ0S2xMomAyPoV01ZzDoZCXamkj41KUfZgN7FhRRW0xEq7vr6nG0IIp
	KUPY/yeapYFVSF18UIf999du/be5Ow4CDixN48ZqOUb7REeusO1YyM47YJajMT+BeWjUBncREJ2
	xKdeGw0D2O14uI3S+YmvtTmBQJ3bOOIluxKD4V90aJ58N7L/wA8hWPUG84ZYqiDMzLHWaQ==
X-Received: by 2002:a05:622a:1a97:b0:476:af54:503f with SMTP id d75a77b69052e-4771dd6226bmr92953481cf.2.1742913556329;
        Tue, 25 Mar 2025 07:39:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGR7ZJxcn2AD4UVzPlapOFAWeZjSCT60qNnDD/c5K+/WhuOlamYQaCR57BDtBgMf8xGuiCSWQ==
X-Received: by 2002:a05:622a:1a97:b0:476:af54:503f with SMTP id d75a77b69052e-4771dd6226bmr92953231cf.2.1742913555748;
        Tue, 25 Mar 2025 07:39:15 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebcd0c7759sm7850418a12.51.2025.03.25.07.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 07:39:15 -0700 (PDT)
Message-ID: <0f700f59-3cbd-424a-84a0-0d23db0ca581@oss.qualcomm.com>
Date: Tue, 25 Mar 2025 15:39:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e001de-devkit: Add Wi-Fi and
 Bluetooth pwrseq
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250324-x1e001de-devkit-dts-pwrseq-v1-1-530f69b39a16@linaro.org>
 <Z-KuG0aOwEnxuhp9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z-KuG0aOwEnxuhp9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: z8AMuOTJensnYyTB-dftr-hNmsasiVYP
X-Proofpoint-GUID: z8AMuOTJensnYyTB-dftr-hNmsasiVYP
X-Authority-Analysis: v=2.4 cv=QLZoRhLL c=1 sm=1 tr=0 ts=67e2c015 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=RC_zNtMqMYb_0QXlmi0A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_06,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250103

On 3/25/25 2:22 PM, Stephan Gerhold wrote:
> On Mon, Mar 24, 2025 at 04:24:01PM +0200, Abel Vesa wrote:
>> The Qualcomm X Elite Devkit comes with a WCN7850 combo chip which provides
>> Wi-fi and Bluetooth, similar to the CRD and QCP.
>>
>> Describe the nodes for the Wi-Fi, Bluetooth, the related regulators and
>> the PMU.
>>
>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 144 +++++++++++++++++++++++++++
>>  1 file changed, 144 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
>> index 74911861a3bf2606add8cf4aaa3816542e837513..8f288a138c4cb6e21725fdf726eb2a2489bfbc38 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
>> +++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
>> @@ -17,6 +17,7 @@ / {
>>  
>>  	aliases {
>>  		serial0 = &uart21;
>> +		serial1 = &uart14;
>>  	};
>>  
>>  	wcd938x: audio-codec {
>> @@ -392,6 +393,42 @@ vph_pwr: regulator-vph-pwr {
>>  		regulator-boot-on;
>>  	};
>>  
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
> 
> Hm, on CRD and T14s there is a TODO comment above these two, which is
> also why I haven't posted these upstream yet:
> 
> We still haven't come to a conclusion unfortunately how to model the M.2
> WiFi/BT cards. QCP doesn't have M.2, which is why it is upstream
> already. These two regulators don't actually exist on the devkit itself,
> they are (probably) part of the M.2 card.
> 
> The devkit only provides the 3.3V and 1.8V supply to the M.2 card.
> 
> We should really find some way forward for this, but just omitting any
> mention of this is not the best way. :-)

Now that we have a PCI port pwrseq driver, perhaps that could work..

Konrad

