Return-Path: <devicetree+bounces-125515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 941ED9DC2DF
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CB55163FE2
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 11:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEA219C543;
	Fri, 29 Nov 2024 11:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MasX5LPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027AA19A28D
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732879865; cv=none; b=Jap9OW1imUOOEkork+VirG/vt5rM4NoenZxVYU1gTOPd3fGmvocuCEUY/txsfNCByUiSElSYScmyyT4oy2prdgcn+eqt7nszX53PfpV+E3heu9gHQdAnas24ZHjG/awRZ++30u8iosz/hKs4nRgiWJLRYWBvi8CR21e6BMs3SX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732879865; c=relaxed/simple;
	bh=E/nct3Z0AyiW7so5qEv2TjxTURueIYFuWIEzfrDHS+c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UtaciZiafs74mJU1yWYbWvJJi5vCCuOSIB/4k6NaLa9I67PAKBjpWFJnms039ORLc8z8Jz/WDsWl5DME6exWMHKHzwgEJcdn5SCT7Mv1VD0MAo6diDP055fEQRGWaVxVcChhh4ZwVQFcrIUcLSs+nw8WDo5VjtAvtr9cYhlzK48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MasX5LPy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASNhiZF011402
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:31:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2J73uNjPZGAVHNhLAoMksXEtawK/JNV411b/AtLbyMI=; b=MasX5LPyTHJqo+X7
	zqhVTnDR/lxymLKcgXXcX9K/fv4eIYvlKv7EsL1/a05k/xVQaTnhZH6Z0Pn4MH5q
	8uoBw0+cxow7q9reaYMsuKGWqMeB3Gt4ZljLGJloXmyxh4/NsznqbDixKqK52FwI
	YeABf0Ou7vavA8lNfpnouQjAmHd5Va9y2mIbK+i/Z3gVjjoCtv8m37iwyACGvQ6F
	p8FhDyY+MJ2p9UfIQC1VUZj2x6I5n5yiX9XM72nhhJyKyEAANSF9fqjz4PYppfc7
	YOVciVcwr/26mNC1/HMZMj/tr0I3sKYF9CwCygYtUbNzegGVDCgwnonSFmJIrc05
	APoRtg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4366xwnb30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:31:00 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d3b1d1d8c1so4005156d6.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 03:31:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732879860; x=1733484660;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2J73uNjPZGAVHNhLAoMksXEtawK/JNV411b/AtLbyMI=;
        b=wlaPmyVRcLv64Ho2p6SPNbmyXIdVsrP9d8MQJA8wYV3wtj4B3LTAMjCAgySJKQ1BaA
         aVtNXV89ucmeLpYsoW/azN/IgffQNyT0fcHGGKQ0X5cqFZsrvqMU+gBVXFrfGRl/Oof/
         giD/a8I/V/4M0vbjn2lRaVW0miRVR75gHNwGuw+zawdY9GOoQqKZuapsDl2DZ9VdF8Ff
         SkUN1DAORDiAq6M/G0dKQaPyjLV+bJtjyCik0myihKQytIZ55vHEQVBxV2dfcmAQNkZ6
         4XP3viO4pJk8XCd6HqCeKmYdQJYOctnVFaPt0U43ZHKKvD4gDTGBwR6TXQ6+cKbtOrVg
         PLJg==
X-Forwarded-Encrypted: i=1; AJvYcCWFrNsfN+CsA+9iud0e+YvJlBE0nB8sUroFBJVR0X4fPVCr4gEHQ+eJCQXWN7gBw0cFh8NFG/rujj65@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh4JuhMFk56bMfhWeu06gnqtt6UcWySVjFMX4hWI2kRY4DwiT1
	2WSbnfXhXc39hXnLowX2sscfpArkg4kzRy5JyxtGOQhdwxZsjwolwhREwpCjCI8+wzMfePIxVn0
	HEEQ5YP4pyikYzcYzFUA8ARQwhArkc7OSHo7V9PoGcgx35qilJLkpAC9FeXJC
X-Gm-Gg: ASbGncvYLM1MZVK+OSAmAlRwe491e5tTjW6Y7C9X0/N0ZToujpsIcZllJvTPF6Sqfgj
	vmbkhpWxH58wy2OuaBvTyzN+CWEKzELpiWDGbwv6JSQQzJoPAfLjjgPuXKBp7SF00LwOVUH+bdH
	lhrCTJ0lIlkVvunUt5iWNdmMVJCN6zd2bvdfCKZLfLbo0B8bp0Y91yz7TqSjxOIZmkd+/1R0y33
	eqZFHlZQ71E14643KDrzcUf5QhlW58rCciw0eTqjXYFpv3OO3bPd+rAPeb8DCetLreiBYrckWED
	5yaGLFQv8kvXlydE85u8pBjG+DwloNk=
X-Received: by 2002:a05:620a:468f:b0:7af:cac7:5017 with SMTP id af79cd13be357-7b67c294e6amr664115385a.4.1732879859922;
        Fri, 29 Nov 2024 03:30:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+ZvQGdRMQzPEEaLaG2syP1M2cbvOxApntRS5gUHerceJ8hR18oZcXNURE5/8QI1Nm+rL0BQ==
X-Received: by 2002:a05:620a:468f:b0:7af:cac7:5017 with SMTP id af79cd13be357-7b67c294e6amr664113385a.4.1732879859513;
        Fri, 29 Nov 2024 03:30:59 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5997d40f4sm167622766b.65.2024.11.29.03.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 03:30:59 -0800 (PST)
Message-ID: <4f3921b1-412e-4982-b360-d0e6cec69673@oss.qualcomm.com>
Date: Fri, 29 Nov 2024 12:30:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs8300-ride: Enable PMIC
 peripherals
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Tingguo Cheng <quic_tingguoc@quicinc.com>, quic_fenglinw@quicinc.com,
        quic_tingweiz@quicinc.com, kernel@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-0-28af84cb86f8@quicinc.com>
 <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-2-28af84cb86f8@quicinc.com>
 <5ae55ca2-d9ef-49c0-8868-2c5bb665ddb1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5ae55ca2-d9ef-49c0-8868-2c5bb665ddb1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _5GsZvQny466py97XSSynexhwb97ddIc
X-Proofpoint-GUID: _5GsZvQny466py97XSSynexhwb97ddIc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0 mlxlogscore=999
 mlxscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2411290094

On 29.11.2024 12:14 PM, Konrad Dybcio wrote:
> On 26.11.2024 10:35 AM, Tingguo Cheng wrote:
>> Enable PMIC and PMIC peripherals for qcs8300-ride board. The qcs8
>> 300-ride uses 2 pmics(pmm8620au:0,pmm8650au:1) on the board, which
>> are variants of pmm8654au used on sa8775p/qcs9100 -ride(4x pmics).
>>
>> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
>>  1 file changed, 23 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>> index 7eed19a694c39dbe791afb6a991db65acb37e597..9447efb9cd01654b74ec4c18dec58b1956ffe710 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>> @@ -9,6 +9,7 @@
>>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>  
>>  #include "qcs8300.dtsi"
>> +#include "sa8775p-pmics.dtsi"
>>  / {
>>  	model = "Qualcomm Technologies, Inc. QCS8300 Ride";
>>  	compatible = "qcom,qcs8300-ride", "qcom,qcs8300";
>> @@ -223,6 +224,28 @@ &gcc {
>>  		 <0>;
>>  };
>>  
>> +&pmm8654au_0_pon_resin{
>> +	linux,code = <KEY_VOLUMEDOWN>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&pmm8654au_2{
>> +	status = "disabled";
>> +};
>> +
>> +&pmm8654au_2_thermal{
>> +	status = "disabled";
>> +};
>> +
>> +&pmm8654au_3{
>> +	status = "disabled";
>> +};
>> +
>> +&pmm8654au_3_thermal{
>> +	status = "disabled";
>> +};
> 
> Are all these PMICs absent?

OK I re-read the commit message..

Disabling a lot of things usually points to a backwards approach,
are there any other PMICs on board?

Konrad

