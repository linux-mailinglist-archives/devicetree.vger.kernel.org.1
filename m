Return-Path: <devicetree+bounces-233822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA0CC25DA9
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 16:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DBF31897CC6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 15:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BAEA2D94B8;
	Fri, 31 Oct 2025 15:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OIjm/KWe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ekwVQYjr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F882C2340
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 15:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761924868; cv=none; b=lHfm/R19pewjKUBs8wYyiRoDiFI529Z2ph4AZdhNIxQN8j8rXNadJUmbaPwiwxNpyr3XXFrSjWHPzk+e0yQAW5VfbNesI3Ln2TJXPoSqkZRJ1VWasg2hYw6fCeCkK2GAjj99EpDH/cIfIfRsK890xKM+NfSrPxn1+BJYs0DB6ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761924868; c=relaxed/simple;
	bh=kCGpQQDPDsGV+HFv03e4hSRvtqe6h1MpjYcaU2irqzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KgZXN9A6/joUaH7EmyCQL+A2GZYWuhkMwqsMDEt1dXVdyvDTk9la7h2wvvqpN1VnhcPTFzGGANQZUhIyr/2zt/9vmWG6yv7RK6LxfHFoULbUkDVFogsmwH1X97TIqeyYDdTJIoSyYvWqnBoIgw9MS1eMw70ERv7blafm5gOvZMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OIjm/KWe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ekwVQYjr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V9tGKj1513338
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 15:34:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TfEIxygLBCR3MTFE8Dxk5/NW5IeXIOLAMoviQaI8t1w=; b=OIjm/KWe6aUWTC/D
	S74HKF+iw5ZeguPCwfKBtG8027kblQtBkEIvB8rop18XBld/95UyF4cIOfDpj1B8
	2Y0FX3ZZNviqJzArWTfoXa77gtErOrVcjxwz55kAt42rstHMtls6whe5Uh7C+EpD
	8TCj8hDJbddEQwG73EyPMyNW7AVfeW2vXrkQtagiv56pc7QdNp8Ee7GE4k14OSes
	meSYPXBhK2F4zquH/xonKCX43bxsbgM3doqjwTWunjKHXI9PKLHXtYtv/ymAQSqX
	8P65FxGhflKMt+bM6LYEE/Yr6GPWTqHT5xES+fsdpy7gQbfDBKkcuth9LBiwj1lU
	DWTnJw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4k69j5cp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 15:34:25 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7a2878dca50so4560683b3a.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761924864; x=1762529664; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TfEIxygLBCR3MTFE8Dxk5/NW5IeXIOLAMoviQaI8t1w=;
        b=ekwVQYjr35s9zjlPSfu2PPKnIPh1GM/ruhGscGcuYPpWFpFAqmd5VfCeci4CDg5xGq
         zqjHFbPcn6ag7ZjQpb5QVAzl9fJMlCJ7ETkJHUg7MW47QIOdbjYPN0e1dqeVDCZB/av5
         SckdIZOfVbGodfGBsQXWiyVdvsWws2Y/FmuN6hh5YCLRjO6gCReGAUPhG39K6otygw7l
         2SNEd4zUCwxX+Ao4ert8iHty/te2jyBzpPUV/HTzVfmGKIhYjsA+cFgJqdkf/EzKluGG
         f3puxtiZPHUAR04Y/S0eH2cafT/wcxHjt+65R1cF++zopXOZlUu12qvdyMO465iC35y5
         gnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761924864; x=1762529664;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TfEIxygLBCR3MTFE8Dxk5/NW5IeXIOLAMoviQaI8t1w=;
        b=wkiFcRYhu+xClYcAoiItZFrS8l3T7gA9O4MYhiU/dGce2bJiJ6Hn9vQNC8hR24DW55
         Pu5VGP7EXAU6KOtn+oRAV2YbIR2bIXJKuRNLlHYXqEwlusphHTQ1o9E+A4N9gvdaY7+r
         CGfAkdS7URF6uxQGOL60D140ZyxPYmd+SGbkM4qeXo5tiNxj9nXqqOgFhD69MRZbzG5U
         vhNwzrpnoSGhYCk4ONvrHrfnWjsb7sET5Xgsq1oNoWZoyvwKmAo39GuMxwCB/oejGUYL
         8LIu08RiyQ6OsrPGCCGmlkvGRFQHere0Ox77oeeDtup3Ez/4wKKje5OQVwC81SZJsMdl
         2K0w==
X-Forwarded-Encrypted: i=1; AJvYcCXC8m1lilupt6Hfi2h5/8kYP6UpKknp8IOSnkEicm6t9NDj1RxYnhnjxh4UFZv7NaEbe0kL9TY3Mlt+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqtcrttwr1z37AHG3mMbjvrIRYWlguUs8uRbLOgwArvCcN+aiq
	Q1be4kOXz3rK9QRuCM8NDLvbSjb7kqwiXTDrBXsHiiN1G9dlo77Wd7VMmPPi6la7SlMAJW8zvhK
	KOUZo33aV6awQu82QrPEMsxu2mZma6UkKUxRSp9yM12PFN7O5YB4I3PGksfMHGjrb
X-Gm-Gg: ASbGncu6ZSS7AM8znhNTCaxjlsq07IG1TH/kYNQccgP9WXmtVCmYG1/HUrjPCvS9Gi+
	t3zg5BVU/ccxMvJLsOdJ6d3clyKFaQHpVbAi2ODPuOH2h6qaC9dPWbjihyjBPNYCfBZzSxs3QS+
	cmhL3+c7vwJx5wj+hLNWzvW8VebwsI0HtYVYOf++YUHR0T13wf+BMKmbUOPlZWQ5g7xTjdGBRYe
	RnLtgwJCJay8Nmq2UdfofkrkEzsOCPhWr2VY1ZOOL3dQBJi+TF95h4TbsNi82gkQd62cNkuBe06
	Snr7RxBBfKp/j2yI4c9LPMz7GJxYRG3SMVixDLbF3vgBAdVq0xhKzogVTYb+8OyLlDQB8DbaWFM
	QtQOMs8UnreJQkLT29mUcT6QPEzcEvAPZzA==
X-Received: by 2002:a05:6a00:a0a:b0:781:1f52:490e with SMTP id d2e1a72fcca58-7a776aaebb7mr4449665b3a.3.1761924864290;
        Fri, 31 Oct 2025 08:34:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5yZpldJgDJ7sN8RbItOVJqFUUtdlL7LoTnX8hkK80FW6ox+B0yHnT5+RAFabXueoQjiWw2g==
X-Received: by 2002:a05:6a00:a0a:b0:781:1f52:490e with SMTP id d2e1a72fcca58-7a776aaebb7mr4449636b3a.3.1761924863809;
        Fri, 31 Oct 2025 08:34:23 -0700 (PDT)
Received: from [192.168.1.3] ([122.178.56.191])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d5e27104sm2627776b3a.0.2025.10.31.08.34.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 08:34:23 -0700 (PDT)
Message-ID: <42b9b481-ec70-4600-bae4-9f0afa201623@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 21:04:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/3] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP platform
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
References: <20251031123354.542074-1-krishna.kurapati@oss.qualcomm.com>
 <20251031123354.542074-4-krishna.kurapati@oss.qualcomm.com>
 <glkwowxkqrhszlh7mpnct2pdc2na7yffq5r3uu73xphtj562oa@mbdlmdltyi4e>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <glkwowxkqrhszlh7mpnct2pdc2na7yffq5r3uu73xphtj562oa@mbdlmdltyi4e>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: WC7zymPIiv7i5UiKvo0SBfNYnARDal5d
X-Proofpoint-GUID: WC7zymPIiv7i5UiKvo0SBfNYnARDal5d
X-Authority-Analysis: v=2.4 cv=OYaVzxTY c=1 sm=1 tr=0 ts=6904d701 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nBTQbq2h+7tEuhtSPO5ERQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=18J_DnCs3-7fnQno7uYA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDE0MCBTYWx0ZWRfXyCTUlS9gEmQF
 h7ZRko0CUV2PGSc/t3xMrIrxsa30idvpRcNtpkQlE2xBQqNrJovPQfz9xEQ0CEjdj8fTRJxeWbu
 qJQoDoD+8oWzxq3RE3V/qAmHxqbWfIR3LRthTsULExq+rv4lX4UojPsqpAYj1JtY/EtC8mGkcw9
 QO+2RKFyNUkY+d0HA/+UOcHYqd0kfYnu9yhFUvYLNkdPOQ8cRXYIzIezXsBGeuN+jOeRFvIKIub
 UYKPHffNAopwTXnLSxWQH+0q0lwFVIvlyfY6SrdfhtVXv5J1hcqExVMM2Kzwtvk96MNDmkDC2wS
 rcVC18MwQ5jO+dBWjDogASO8eFYNc6e2djeM81LowgOTmwJ/1PI8/qah/Xulk8HwWImvIzFleat
 71yvAV9K7LSESdRXqska92GoNXe22g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_05,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310140



On 10/31/2025 8:14 PM, Dmitry Baryshkov wrote:
> On Fri, Oct 31, 2025 at 06:03:54PM +0530, Krishna Kurapati wrote:
>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>
>> Enable USB support on SM8750 QRD variant. Add the PMIC glink node with
>> connector to enable role switch support.
> 
> Subject speaks about MTP.
> 

My bad. Will fix it up.

Regards,
Krishna,

>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> [Konrad: Provided diff to flatten USB node on MTP]
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 73 +++++++++++++++++++++++++
>>   1 file changed, 73 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> index 13c7b9664c89..c545695751db 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> @@ -193,6 +193,51 @@ platform {
>>   		};
>>   	};
>>   
>> +	pmic-glink {
>> +		compatible = "qcom,sm8750-pmic-glink",
>> +			     "qcom,sm8550-pmic-glink",
>> +			     "qcom,pmic-glink";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
>> +
>> +		connector@0 {
>> +			compatible = "usb-c-connector";
>> +			reg = <0>;
>> +
>> +			power-role = "dual";
>> +			data-role = "dual";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				port@0 {
>> +					reg = <0>;
>> +
>> +					pmic_glink_hs_in: endpoint {
>> +						remote-endpoint = <&usb_dwc3_hs>;
>> +					};
>> +				};
>> +
>> +				port@1 {
>> +					reg = <1>;
>> +
>> +					pmic_glink_ss_in: endpoint {
>> +						remote-endpoint = <&usb_dp_qmpphy_out>;
>> +					};
>> +				};
>> +
>> +				port@2 {
>> +					reg = <2>;
>> +
>> +					pmic_glink_sbu: endpoint {
>> +					};
>> +				};
>> +			};
>> +		};
>> +	};
>> +
>>   	vph_pwr: vph-pwr-regulator {
>>   		compatible = "regulator-fixed";
>>   
>> @@ -1054,3 +1099,31 @@ &ufs_mem_hc {
>>   
>>   	status = "okay";
>>   };
>> +
>> +&usb {
>> +	status = "okay";
>> +};
>> +
>> +&usb_dwc3_hs {
>> +	remote-endpoint = <&pmic_glink_hs_in>;
>> +};
>> +
>> +&usb_hsphy {
>> +	vdd-supply = <&vreg_l2d_0p88>;
>> +	vdda12-supply = <&vreg_l3g_1p2>;
>> +
>> +	phys = <&pmih0108_eusb2_repeater>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_dp_qmpphy {
>> +	vdda-phy-supply = <&vreg_l3g_1p2>;
>> +	vdda-pll-supply = <&vreg_l2d_0p88>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_dp_qmpphy_out {
>> +	remote-endpoint = <&pmic_glink_ss_in>;
>> +};
> 
> usb_dp < usb_hsphy
> 
>> -- 
>> 2.34.1
>>
> 


