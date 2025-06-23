Return-Path: <devicetree+bounces-188410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7C6AE3B9A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D53AB16FD45
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E3E238C27;
	Mon, 23 Jun 2025 10:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="idEa+NPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E6A23D280
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750672880; cv=none; b=L/8+OsROh17XTu2Hh3nBrnlmxSz6D21z4SUumhf3JK0FbxvRKhypnIVdmmVe1pWMKnCeW5oyCMo4Hm80BCcFYblQ4OfR3LZpj24ScfdQnUo6jz6evLpGUPKJexASXryZH31YS/vxtVY0dansl9kgZhtFwjmUAOSB0Dxpar8oGD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750672880; c=relaxed/simple;
	bh=hEzR9f/pVzdnR2q2Os57Kxsn5Q7ojiITh9etL1uva70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nf9HLCpioAGNs2649URBOtc4VLKzcSqTad6YyZzG0+dYxnlgVYIy6KGfprryJkrn1F19Fbg0vWHH7aCYl0/bwt75f8PE6ZOxSrxBBrzPKYR7AkAN2vdA2dR4SloXxktKxochEbYrPXNAfORVHlix8OuJUjaB+x6mVvP4Zwvbh1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=idEa+NPg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9vSu4013999
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:01:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dmI4axmiuDRIOEMjY4CzWX76Iufc77l66VOjnoaKHVY=; b=idEa+NPgqx09x+m+
	cNjBPTuW5rQDkrBctBYo3ir0rnZ7yzd5RAq6uk2PGlx2K/ZKReaLtFCc62OirhQm
	q3uX8T+Pp0g0fdh04rKHDC3scyO1eRtOs3LJsgZvIVRgoCx+z0bRlQad6n0k92SM
	SD97gQAseLfFavE7ajvZhsXDpWMERYc5HLaw+ucGvRa7WzwNDhYdo2Vv6GIDG9Es
	p4qoHaafYWvo62kQj4RDwxSYJ0Do+ktzllnWDSoo+1WO0ybH+GUfL5EbwMW4Nmjh
	CZgbZtBW8QOVPCkwFVta3IroxGKlLaa1555KcOTA5qj2SLzNy1jFsV/DQgFI3YoK
	Xj304w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5hasa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:01:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d3ea727700so65098885a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750672875; x=1751277675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dmI4axmiuDRIOEMjY4CzWX76Iufc77l66VOjnoaKHVY=;
        b=IJQMgrz1O5UOcj/Vn7T4+7mmUSiN6Ggf6JBe4/7mi6B0tx9SwSWSty5BDcGWx/0NOO
         PRklYInyOvqhpckCX2LW4qnqpr0/ZjBTuhQAjfa/BK8tBxKJNJMWj4K651FE+q9mlqQd
         0/hoC9tXhRLH2Aujth/VYdS+9v/ol4KR9go05bKIsbB8Q0wN4+ap5nKsiKKqfeqw3KG3
         K6/ohUY+z6qtYDgoQf2VbWKcdCJhJb1pYTtsuGMamvOIbycGyalPtdyXJKRkd6Es/1Uu
         ZMKVVyfC7qCfxcVYpqFqKCbYjcEU+t4CcBvmmOeGfHMlFU5S0vAv/qiKNXZ3dVROAAhx
         tj7w==
X-Forwarded-Encrypted: i=1; AJvYcCXSNjIR7JGWI+6TztUUAXYmmROtP13k/xOS6NUQUP38+TfH95+fnlSRElTnxgNTkwaUg+qedirl20ZU@vger.kernel.org
X-Gm-Message-State: AOJu0YyWAxEz43SVDPim/uNx8GyGhA9i9WKjnDsbrBIro6b7pevholAI
	YhRuIxjH11MGR0QzDE9Z1vfb96QUG+aQEbqxwIRfBUK88s2BZgAeNoTmoC2BmKpTacWQLIp6gQk
	KOLHvznqmJTkOkNVle9TShgzDugUWT/jvzSZB8gEE2dDpW3bvAGN08TfXuYX97k9U
X-Gm-Gg: ASbGncvvdtJJFrn1sloL2b0tQ8syfN2NPQyqWMFflobi2NA5t+hRBYzXEHryue7qzTG
	GahKaGlvdnHqXOfT2X+nVHf9QVibo0zqnnkYR8om66GCiFx08BWwGvdMfpNd1zUdAeoeweYD0FD
	Ubsr7xi8bCahB2jEZEsgBkBgKwxXJrk1sY0exg84+B8QIfMFpA9W2MKhpf0rpvHCccHZAQVSnhx
	fxvB6rUmJj18O8Iwpyohan2sDat6DY6omTRim0mna5tBDKOrrr9j8ji3eUJreNLzaoUVF3qX3qW
	b5XF38oyKNkT3erKkQu01bzjwnzJSQJpYy+zTvjJZNMk12k1+E4m8AbLRHj+zWOesg2SgTJ2Yzr
	iT+c=
X-Received: by 2002:a05:620a:26aa:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7d3f98e252fmr557150085a.6.1750672875177;
        Mon, 23 Jun 2025 03:01:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFd0DfyOKsfHiqaekfIPWUjRqgIfAWTnyptuHPnWpwgrdGU6UXcEE9cVKR04xkNRWtBD8aFqQ==
X-Received: by 2002:a05:620a:26aa:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7d3f98e252fmr557147385a.6.1750672874595;
        Mon, 23 Jun 2025 03:01:14 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18cbd8easm5770386a12.67.2025.06.23.03.01.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:01:13 -0700 (PDT)
Message-ID: <cf1c9d32-9034-4d22-8be6-2abacb3ece56@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:01:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Add video clock controller
 node
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250623-sc8180x-videocc-dt-v1-1-9d210c140600@quicinc.com>
 <7c55acd5-6d30-42a3-aec6-2d7aa2a640b0@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7c55acd5-6d30-42a3-aec6-2d7aa2a640b0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: eUoVNd64dJFWZxLEaf2nWcW_BxUsyOsA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA1OSBTYWx0ZWRfX1GbyYlWhF2I1
 8seAQLEkkh1WmFB5GjJPPplm3ZNcWi6sKEQ+4jxJsHFbVC84rENcG2haOGM8cj47EA6mK9v+AG9
 7eYlC5zX526kQpUXRG0FKn3QbTx24unx+Tx2nL67oJ8OUOtNEuNar9Dhmk6nCts08ALLbDDabVV
 brzjv2zjaZ8u9YJFOThQFvyclZkc0eXTmQKUxbeXwO5JSnCReL0ibcKr57V1PqVW+tv/ea3SQpX
 wnw3RsCmm+kBFFerT0J/nyFEnZ6oqVPmnayJ/CUx540l7CPtqSYFzDl4yDjyt0I5GxNxR0n3IYo
 3+Iqa/ShgUVkEiHCPT73dv9LbNhhZ5lp2na1HJdhvUhScgshClU5RN0m33cdzMBtMB4odWAYRSk
 FUSC2SrepNgNhT04+hJGp0UQMMETHnTNSmSWRSOxA5VYFdZVlMtawTKBpsmCOC0fPiqYH7Fs
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685925ec cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=t5UmTshxakG7yEKo4UwA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: eUoVNd64dJFWZxLEaf2nWcW_BxUsyOsA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=910 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230059

On 6/23/25 10:44 AM, Krzysztof Kozlowski wrote:
> On 23/06/2025 10:14, Satya Priya Kakitapalli wrote:
>> Add device node for video clock controller on Qualcomm
>> SC8180X platform.
>>
>> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
>> ---
>> Add device node for video clock controller on Qualcomm
>> SC8180X platform.
>> ---
>>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
>> index b74ce3175d209b569e634073662307964158b340..4590c2ff68a9885d8047d728bbf2dea0236d5b8f 100644
>> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
>> @@ -10,6 +10,7 @@
>>  #include <dt-bindings/clock/qcom,gpucc-sm8150.h>
>>  #include <dt-bindings/clock/qcom,rpmh.h>
>>  #include <dt-bindings/clock/qcom,sc8180x-camcc.h>
>> +#include <dt-bindings/clock/qcom,videocc-sm8150.h>
>>  #include <dt-bindings/interconnect/qcom,icc.h>
>>  #include <dt-bindings/interconnect/qcom,osm-l3.h>
>>  #include <dt-bindings/interconnect/qcom,sc8180x.h>
>> @@ -2943,6 +2944,19 @@ usb_sec_dwc3_ss: endpoint {
>>  			};
>>  		};
>>  
>> +		videocc: clock-controller@ab00000 {
> Why are you adding the same multiple times? This was added A YEAR AGO,
> so you clearly send us some complete outdated ancient tree!

It seems like you're confusing something, there is no videocc node in
sc8180x.dtsi

Konrad

