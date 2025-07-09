Return-Path: <devicetree+bounces-194343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E54FAAFDECE
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 06:28:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A97FC1BC3BAB
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 04:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F980266595;
	Wed,  9 Jul 2025 04:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q7eXCplE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C287223ABB4
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 04:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752035320; cv=none; b=IKxNG3AKIFDmiISX8Ch7dOnJNYr/kQ+OVtPhihavOFiXH42BtgXg3GN2gW7LDAbo2CPc0gJ08z7NF7cNf/2eJFyfYWAYmZU4TVVzW5JQC29BUz/S0iugtja2qbWcbuY6epjeFslgPparndHs3kGC+fJ/ooNl0eAlTggfo8EaGTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752035320; c=relaxed/simple;
	bh=nGDSMdGiSbt3wON2yfyjNDeV5z0MkUjSja5IO9PLcNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gyjenVZUJcCpIYj3C5tjY8ZOlWRHWATuUttZaQPoPZICyjRFTnBA0X43AJx8UIlOM+8VJtpXf7cczJtTCeazXd9yHpFC7IHZodsOfbbAWDVZU2QUopA3zbAWkoX215fX+fNkY3/pEQ9wKCuo+4kCnFgxShfxtpnKTj7K1HMGovM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q7eXCplE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568JnvqB032658
	for <devicetree@vger.kernel.org>; Wed, 9 Jul 2025 04:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	46kHjVSek0uSdgdCzU896+4gvfYavkSNrHpJbnFkc+o=; b=Q7eXCplEJXdX5i8l
	4a7Wyd5WNQCCewVOASQfUiqhZcdsGIC9z8qF+5UWBZgeSULL99PaPpqPfIBuIoYF
	2EZZ+0MH3R+eJa1BhedIWQpdNBOANg/TKEX+RHfIJGKEm1iGSfqkDlMHuW/hJReh
	kqggoXl9ZosLkTwnaIZ+a5R4R0qqe7oa+7APFhUiBQGMddEHrjoSbLurzJCRdnFT
	K0lq9i6jq76Zho9H+ebCcjmiGoIjP9lZgivfrKlTQYboqzdaKiHBJ2CMdX+4Xrum
	WDlPv+seXzcoC994pH9piuE8q3ylyFx3vdVKRQf7AggFNzOXNHLk7CxnbZcirwBB
	ft7F1Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47rfq356fh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:28:37 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748f3d4c7e7so3842792b3a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 21:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752035316; x=1752640116;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=46kHjVSek0uSdgdCzU896+4gvfYavkSNrHpJbnFkc+o=;
        b=dxSnjBd+/lkgz7oyvFxV0aR6tjJEsMwY0ujrl2IZiXn6ws7wtaJYO7dTNqOx8KgezS
         0HLAubQEzztSHCMsp616Ftvb/ResvQPcR5LsVkOsqSn7IU/9WuAfV7uT0LQSWe12L/wn
         WvZaD9ChB1CQb1M2pY85ZpzuR9WJGhsoQr6DHXCVmUJG8dBIKZxSlHAJBGdZqMXHhgwh
         Cj6dHrUuja79EgjveFRLJudh4aZ76AD7vC/LixkWbpHHDVU7OXbiPV/7hd0zvOSkAwWQ
         8UmcjpRMllrrTk7iAz4DFxvs+6uK0v+JdpQ2DjGHmLQXmR+No5kzmhOdA9cxdvbFilgl
         M94A==
X-Forwarded-Encrypted: i=1; AJvYcCWIfacYoIiXQi1wHecOex5GhqrYgI8MQAPVAkZoiA5Vut14QnaC6CHeQE/197ItaPHqjE++M7efPkeg@vger.kernel.org
X-Gm-Message-State: AOJu0YxCsn3Ry7xmBMdMYB/sBIPyeNfRvhZwl155F0nSS9NmoE25bNH+
	y6mCzuZo6aRA+2zkiU03nyJD+GZbWvUUiZK80Kyu5T48XR/dR2P6+G+nK3coAj516nTMPdzGg7W
	BEYR95u8GTYWUbVvhBN/pd+t7kvSOWBk1QQqMosR5Ke/djn+uQ7ZdWZmYnqNe5sjO
X-Gm-Gg: ASbGncuMx3pDWoe9MJ8Zo6lNXn2RovkapWIOGsBFyWwTCIAe0IVfl105ub4fBfHv92R
	SXRoGwzZtk3lmKIUBdYqwV9zSvsD4jWpRHO8vXS/s0LNvkNBLsOM/fFwG8lnNGhnLN/2sOduNG9
	HCAjIYU0Lk7kloVercFtx69ssJ7SmQRX0zh5ahtRmqhiuuB8mZP4rhU+vG1drWsgHhG8Mc9pZvz
	MU17P2IQ+HeEmNP282Ozze8gMglT786y7jlkv/fGZ7v8LihP1EGkVjSzNNz/4C/5PrLMTNSR5ux
	pfwFvahCerUsOfId153oPiAc/qqWPjDbfur4ILyggN07w+D+7jn5C5U2EVfMUIU=
X-Received: by 2002:a05:6a20:ce4d:b0:215:df90:b298 with SMTP id adf61e73a8af0-22cd865ae90mr1458520637.26.1752035316260;
        Tue, 08 Jul 2025 21:28:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1XrTBoe3AdLJKGcotRecgsSopH6Gfr07q95OqUr4/vqz2YgYImVe+KEbGNSUtTurtM2DibA==
X-Received: by 2002:a05:6a20:ce4d:b0:215:df90:b298 with SMTP id adf61e73a8af0-22cd865ae90mr1458495637.26.1752035315826;
        Tue, 08 Jul 2025 21:28:35 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b38ee450dcfsm13036210a12.2.2025.07.08.21.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 21:28:34 -0700 (PDT)
Message-ID: <dd2fab47-d451-43d2-b2d5-36d957c5aa46@oss.qualcomm.com>
Date: Wed, 9 Jul 2025 09:58:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: ipq6018: Add the IMEM node
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-3-692eb92b228e@oss.qualcomm.com>
 <bdb5e19c-dbab-4ea3-9a6d-a4ac795fb43a@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <bdb5e19c-dbab-4ea3-9a6d-a4ac795fb43a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA5MDAzNiBTYWx0ZWRfX/F18D1kkg/rK
 Fcciug9bIPIkWHaa7dj3Kcp3t9tCGhtkasrFrwJw7e7qe3zxC2oMp7mwM2ZCjM0BttX1KMIIeMi
 Apl2av5nLqvrZDcMDOviwooLRTyvVGAUtboHNqkLjtemctjQmBwwkjhasBTU/V26TY+LTqIMcIZ
 DQw7uxfRxiLIEhvKun6dOCUR/Qdz2AgfFFED/hxMyOp3iFPYhVIlgNcrpO09NMiYycCxVsm6fLR
 iO2CBU0VwEq5IfYlp9iCL56tH5uN8tLCsW7KxAV/rAzq6d39p89fS/gJI5QQtPPNtOJ9pL9K+tJ
 Ybc0/GosEuTOhi3Ib/xwR/jFwJZDz/AKKX8bcDPTBU7hlUUIcCYberLuwNaGJu4ZuFV5adbxmhv
 wX6tuyemHu3IX6qAa++RPK5o6yb6MOBeYjmn0hfCkHfQvQQSXOJ7Nl+j8fTjfw1ZaJ7qW1nY
X-Proofpoint-ORIG-GUID: 6e3zsSV547kZr09qjXanQjTU_Wr4VO6U
X-Proofpoint-GUID: 6e3zsSV547kZr09qjXanQjTU_Wr4VO6U
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686deff5 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=CWjMFFrlLJj86FlfhvIA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-09_01,2025-07-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 adultscore=0 mlxlogscore=896 spamscore=0 impostorscore=0 phishscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507090036


On 7/8/2025 7:49 PM, Konrad Dybcio wrote:
> On 7/8/25 7:39 AM, Kathiravan Thirumoorthy wrote:
>> Add the IMEM node to the device tree to extract debugging information
>> like system restart reason, which is populated via IMEM. Define the
>> IMEM region to enable this functionality.
>>
>> As described, overall IMEM region is 32KB but only initial 4KB is
>> accessible by all masters in the SoC.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Rounded off the size to 0x8000 (Konrad)
>> - Represent the reg's address space in hexadecimal format (Krzysztof)
>> ---
>> In 'ranges' property 0 is used instead of 0x0 to align with the existing
>> format.
>> ---
>>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> index bfe59b0208415902c69fd0c0c7565d97997d4207..3b9e40045906b26b94e2d2510b0570d3eaf084ce 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> @@ -659,6 +659,15 @@ qpic_nand: nand-controller@79b0000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		sram@8600000 {
>> +			compatible = "qcom,ipq6018-imem", "syscon", "simple-mfd";
>> +			reg = <0x0 0x08600000 0x0 0x8000>;
>> +			ranges = <0 0 0x08600000 0x8000>;
>> +
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +		};
> On this platform, shouldn't it be 0x6860_0000?

Actually, that's from the RPM perspective. From the ARM side, the 
address is 0x0860_0000. The hardware docs show the RPM view by default, 
so please switch to the ARM view.

>
> Konrad

