Return-Path: <devicetree+bounces-231267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5412C0BBB7
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 04:19:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70940189E5C9
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 03:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBFD32D4B71;
	Mon, 27 Oct 2025 03:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lvo7a4o/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50008F9C1
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761535108; cv=none; b=OBYHmbQkIxOotlv0WokqiBvZ4bhrLNqVk7Wf1m5KkxDnKFHogyJis+NM+2FNeZ6lUonfGdUDbUXIm86KQgIzcmu+Ou7C67h9gmHW8KHfP9hJR+5bKhblqfgvDei1dDQclHyOe2Gg1HT/QumdAsNl1kX5Ag/4ZrL8iUfxVhAVCLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761535108; c=relaxed/simple;
	bh=HVX4IgIqLmSwibcSj1JBmsMBTsJCHqjQerkoJDSYMtc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lNpvizaSR4t9vd4uBbUT7pIYTQhDzcmN52B7MhZVG8k/Mksyka1HghQngF6y4pe9L4JyY12rApH5FOi5F8lQT9yx9uu5/Re+6mp0coWOlO2bLgjx8PD+9Hrzt0x5rtx1uS4HZKbiqCqZbKVd1sJIsY3ojYkJiGdTGGZ/AED/mFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lvo7a4o/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59QNAekj1112205
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:18:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hsC4kwhJQbAsgGRl/SnnoHZ5wdx1iZ5j9DLWMKdfA7E=; b=lvo7a4o/V3aNZ8nO
	pUKLRHz+KfRF7bKkEsYdsnxcgPq/uXggQZx/YTIcHP7S6PPCtG4zYfuhMuSV8vU3
	E+Js5O4zPjFAdSsdzS7RZ1440wxgQTL+60CNKq3D93YatiSZhWOKSk/yUm7hpJv6
	yhg2Stijbob+55bY+EHfqvfbZmrL56iHR9Kk62/eIGn+VFYa82YDYU8obou1YMA7
	CZXRfbXJRJTD8k+ldEyYaWvtdb5x81s8eorjxP8eGiCbaAVVAnUHSzBlGsEOS+/e
	Wjhzqe8BXdrfafQC9Zeqy/bMH1RfPL/LJTwmChVtmZQZoCso0Ef/P+TOO55cYySe
	OCyHdA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnxu3kn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:18:25 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33da1f30fdfso9961191a91.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 20:18:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761535104; x=1762139904;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hsC4kwhJQbAsgGRl/SnnoHZ5wdx1iZ5j9DLWMKdfA7E=;
        b=AFJvuftRARWhIcpi1C55tcrKArrrP42TWdI0hpye4VsNnyoFOwUKxXTQuk2WUuRcVh
         QKe+jVw6KXiQgx2n5Gr2UBkIBfucwdn4G04tFf54wFPL216QNeoFMsqKK+i4b8T06lqe
         z4UolLvsSVCH6Xx5wVUizTErCgW3QPS/PY+M/Rt7lC7pgFt/BkReOsT8iD+Zq+jeM4Gj
         Bbx0cdGbhkmZ/F+9vq+zWJEKV+iD091+VS+o4p38betxpFW4EORuxvOl/Hr6eJMfooLa
         huD0i4brXOkmN5BwPdJFzXb5EHX3C1uFjfeIWDof+a68jF1NZn6OPYWtqMc6ktaEnhlw
         ueTA==
X-Forwarded-Encrypted: i=1; AJvYcCWzWPSZJtQfdI97IM7UCHFFGSX5i+g6vCTbfnVo65o9LZCJB/9+TsD00vXZVBgy2WQaI1Jm49WcX/fQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxvaE4NCgbXUTMh8ii58LYdnTcTLFq3nZrb+w6hGrixb972ydH+
	O8adtP1yA3r0viTpRJNNB/UK6oscPTSZC5gqr4++iW1HfmKfTQaEb7Tq2Pss1+hBgctLig1n13V
	pWcxQQz0mqpK34AnlcBL/nvWzCTSZWPKJuL1U29ayFFa0HErex6Si3X6NLr2pM6Ch
X-Gm-Gg: ASbGncsDmOsRTRI6gpfX3UNcrx1baFEIZiyJi5LrPEnb4ZFuVhAOT+d3kHgd0oqecsg
	2z11k+JO/gaWJtzo/fcm/aEk25tCBep+kxtNgL6Z2LAi0lK+YIbLmaLkmNQNmHG/STzYAgUR8Fe
	UAXX0p7F0RpcKWKQluIunT8KwQv50OkhazrP6fTnd1chNX4nlfWvIxq1ozMWWXNHV9OgbA8kKwN
	kCuRCRDC4hoTnCgKAV6PZ9ylP5DRO8BxUBPv3zwhj0N5+0oynr+zjiUHL4LVHcLHtERdZ8oSsEj
	p8qU/gj+Nyqc5y+R8Ms2IUbFfJj+c1qaEmzs7tJrmSYvrU/yRMIDhVfDloTdmWpOatDOp6wyvAu
	TMWWy/+RmisMiqi96jzGeq9pzU5dy1chUyfialCf5Q6+3i5XVOA==
X-Received: by 2002:a17:90b:3dc4:b0:332:8133:b377 with SMTP id 98e67ed59e1d1-33bcf87f8c3mr42789915a91.15.1761535104151;
        Sun, 26 Oct 2025 20:18:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYkyXH+hdMZG8oNznDJ4jtrmldZN/nblX3y0v8ZeYj872vhQHc0eblp/uw5lZT6uGYyCFOXA==
X-Received: by 2002:a17:90b:3dc4:b0:332:8133:b377 with SMTP id 98e67ed59e1d1-33bcf87f8c3mr42789880a91.15.1761535103715;
        Sun, 26 Oct 2025 20:18:23 -0700 (PDT)
Received: from [10.133.33.226] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed80adb7sm6656310a91.14.2025.10.26.20.18.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 20:18:23 -0700 (PDT)
Message-ID: <a8a2a55e-8bc8-4dcb-8a15-f950727bc112@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 11:18:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: talos-evk: Add sound card
 support with DA7212 codec
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251024023720.3928547-1-le.qi@oss.qualcomm.com>
 <20251024023720.3928547-3-le.qi@oss.qualcomm.com>
 <150836aa-b69b-4dfa-8118-4c32f181e03a@oss.qualcomm.com>
Content-Language: en-US
From: Le Qi <le.qi@oss.qualcomm.com>
In-Reply-To: <150836aa-b69b-4dfa-8118-4c32f181e03a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Xc+EDY55 c=1 sm=1 tr=0 ts=68fee481 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=DwVtD6Y8SjwMHt-vgBoA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: cJn7FXJiYdKxUoS9CUz7t9oTFCb6DL0j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDAyOCBTYWx0ZWRfXzOJpIxUMVSN1
 UqsPEjuBfXPyWkSuV4BnL/V7j07XLBJ7MJ3y/mf8ruuwEwACb6kBH2gS2YE+bGgDp5RpBSWLVF9
 OY65VjQjAAPFj0ysrzmanHQgTXof/Fs98pnIrRM+5ZnAO5SdABKvbxsoAmQpm4BJ7oKGCXSQQ4+
 +S+/my1VLh3VAun5YoVJl31Rp1DOUeij/XfPh5qxNcDtqsTcfxi20uslipIhsytvGw/XrDikRBQ
 0mhPf7N9XMsKiQSZW9LVQy8Bac+PNZRd+6AYrEzC781+E4sGQEPmBLdql7vbD0KwCQWllSewntY
 cG5EWO8Wo43c2d46u+MLS5A+6LUSXBIM/Xcf5uiainCbD3/NMGA/MEFI9P5xxB9wry+7zgAameL
 Rac7mM8DUP+1EMKnR+4B9xTR8egWtQ==
X-Proofpoint-ORIG-GUID: cJn7FXJiYdKxUoS9CUz7t9oTFCb6DL0j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270028

On 10/24/2025 3:59 PM, Konrad Dybcio wrote:
> On 10/24/25 4:37 AM, Le Qi wrote:
>> Add the sound card node for QCS615 Talos EVK with DA7212 codec
>> connected over the Primary MI2S interface. The configuration enables
>> headphone playback and headset microphone capture, both of which have
>> been tested to work.
>>
>> The sound card integrates:
>>   - DA7212 codec on I2C5
>>   - Primary MI2S playback and capture DAI links
>>   - Pin control for MI2S1 signals
>>
>> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +	sound {
>> +		compatible = "qcom,qcs615-sndcard";
>> +		model = "qcs615-snd-card";
>> +
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&mi2s1_data0>, <&mi2s1_data1>, <&mi2s1_sck>, <&mi2s1_ws>;
> 
> property-n
> property-names
> 
> in this order, please

Sure, will modify in next patch, thanks.

> 
> [...]
> 
>>   &tlmm {
>> +	mi2s1_data0: mi2s1-data0-state {
>> +		pins = "gpio110";
>> +		function = "mi2s_1";
>> +		drive-strength = <8>;
>> +		bias-disable;
>> +	};
>> +
>> +	mi2s1_data1: mi2s1-data1-state {
>> +		pins = "gpio111";
>> +		function = "mi2s_1";
>> +		drive-strength = <8>;
>> +		bias-disable;
>> +	};
>> +
>> +	mi2s1_sck: mi2s1-sck-state {
>> +		pins = "gpio108";
>> +		function = "mi2s_1";
>> +		drive-strength = <8>;
>> +		bias-disable;
>> +	};
>> +
>> +	mi2s1_ws: mi2s1-ws-state {
>> +		pins = "gpio109";
>> +		function = "mi2s_1";
>> +		drive-strength = <8>;
>> +		bias-disable;
>> +	};
> 
> You can group these together (i.e. create a single entry with
> pins = "gpio108", "gpio109"...)  and move them to the SoC DTSI
> 
> Konrad


-- 
Thx and BRs,
Le Qi

