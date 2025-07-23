Return-Path: <devicetree+bounces-198903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E588BB0EB3F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 09:04:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 839F71AA5312
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 07:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39AC127280E;
	Wed, 23 Jul 2025 07:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CI6cHYjZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD232E36F8
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753254280; cv=none; b=Ob5MAyZD6SGq0dUIkKiMOGEFYtfd7ik+Cbnrv8Gelaidm0QLXiMFzQZOKKIyebQHVdpbs/R7X8GRuCIFxBhWsB3U/Cv86vM6DKHMPtAtR+c/x5NEwxA4kWkDvN+DLw+AGq1UdDqm52aHHDTawXyif0XH3QGZTQNm/zxMbnYWMt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753254280; c=relaxed/simple;
	bh=PoqcbJsGpwvHEHRaYv9tGRmPiuuf8WpUxuWrdAv1enk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=tJe3E3t6e1HV8WV20qFq5+7ismk9N0D45NYQwLS9yCmfK4evJr7+5wKlcquuIssX515FG86KVLE9g/im4lmBkHVHgeE05KCsfxWwK9C1HLn0NQo92I9bs/tu3YawrU7nBmNURQXiD8Zeu1tKnImtP7r2YzQZ2ioXaAN05IjA7RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CI6cHYjZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMONrM002917
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:04:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vH6UcnPPc6AgAILCvjIhfjZbNXQE5ix/Quz8z4LXSmk=; b=CI6cHYjZrdwPRlfh
	Hz4bmDHKcCXUe3Q07LIjxYFPD6utjV/v+e35ELYDZ2r5EhLpAy/cslLbxRN3oQjz
	NVoHgVhAO15NIESgms+VvR/uDRVy7/N55cilfJ6W5n7aW80jVEUUNqMED0gZPUtt
	WtjZpWNbbizhhde/8/r02ROKsDRiEjymuDf11rwGFOFmtZObnLy5PNjd0MehumQT
	AQ/E7pfWW7PhRHu3Ke2wgrXAbJp9NdUaEUV7AQvr8SsgXE0KLdH4J82qcQlQZM27
	9j/n0vPGHsjW99AhV7mhYPp5TNcKueZY/jgPwZ3cSOcy6BFFplyxyDFCQ8V31t/7
	k3pq4Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1bfug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:04:37 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-23827190886so69216975ad.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 00:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753254276; x=1753859076;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vH6UcnPPc6AgAILCvjIhfjZbNXQE5ix/Quz8z4LXSmk=;
        b=sohpuj6NxAfhIwgKurLURtzPcHhuSZ+feoyLLQzXwDaHET/tSItTERxkqaonFiJnGW
         33IZqpM9+NIvMdDd7yBgZXmAU0CNuwMqtjxpsGWb1w8RK4bKXg84J4Gcb9sOeAgPRucG
         2ZfMeqDd/qXkgeqDyfIkxymJZ+zKPYdtTsivHwVGlkhMye2l+VUMewYinlMZtHQaYjv3
         nHeijgk+XViFMGw5304TAeF1offjCFwMOc2ZjN0jJ4rt5mEpZRBmDP0zcTy+pxj49NM2
         eH2REiNtCsSyAl3AtWORg2+K+XIYDU7eAIJ3sg+RsZ2NVIhBK8BgYQhSeh4iKNIC6LET
         oCWw==
X-Forwarded-Encrypted: i=1; AJvYcCX5ffHGp3N2IJYCV9HaVL3qssr8Bzn1Nh81fYOCGbZ4mCoQ1x4w2FLAYO/uwi7OtNyvGIKIwCG4Q0Pj@vger.kernel.org
X-Gm-Message-State: AOJu0YwglkjCEG/wXQHQmtJ7jR7AgruNEHonIEwiR3XW0ByLupyMJNKw
	rxg4waDszP0CURq67fLMkD1Lxj0IjBf7tLxefWeq16/pUNlBXF/Mb3uZZA6if0X3kQlZHA8RpZm
	Kj3t3VKSiu/+WbTJsLB5peQW8OEFvmdefEhFw+Tp0HwNT1SHhtCQDPz4eEGQyPAVB
X-Gm-Gg: ASbGncuiMcFBbHbwRHG5krTGK5e+LRHq9RzaavT5XlXeKY1v5/QCHiY5ECZFRtX7ZFN
	0Z37+y2k244KcEDfArVGd1ZxUQFl0DlIHUhmbcqrlFuThyU1Rp6cds+YJ99pxdJ5nzzwG2N86zd
	IoVmCFptyIQJDFmLnj7aTCP24hb2VH6hgqzszoHF8sIppF4hiHLX8HZdiuPDFw0gOeSO8+F2N0N
	kWdw44JKskOcKRbbUQSwWoKyksyGbGgbLloq6YFzjvXtyVqYdwBJ+ithJIcPAts0Cui7AflNr8S
	8o/Ma8un69gzIKEqbOcvcK5F9vNknBvjCuf2wWgmnZd7aoskzBg4+Un5x6vfDPXpNJ9h3K6zbCH
	vQyGSNYks
X-Received: by 2002:a17:902:c943:b0:234:f580:9ed with SMTP id d9443c01a7336-23f98142a01mr31946865ad.21.1753254276009;
        Wed, 23 Jul 2025 00:04:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQQHnDxC0IpogQNmaCVUpDYUfW0d0gC9XQA8tMK1P98ASHk8Lii3GJrd0WTMJHT7IWRGOoZQ==
X-Received: by 2002:a17:902:c943:b0:234:f580:9ed with SMTP id d9443c01a7336-23f98142a01mr31946455ad.21.1753254275590;
        Wed, 23 Jul 2025 00:04:35 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b5e400esm89793775ad.47.2025.07.23.00.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 00:04:34 -0700 (PDT)
Message-ID: <64febbd6-abca-4ab2-abe9-93812bc115cb@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 12:34:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: Add reserved memory for TF-A
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>
References: <20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com>
 <0826de9f-0125-44d9-84cd-1c52ba199a4a@oss.qualcomm.com>
 <7d641576-7ec7-46f2-ad53-e0b8b36351d1@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <7d641576-7ec7-46f2-ad53-e0b8b36351d1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vGDrvG_eoykG5k1ODfuyx9W93ONjLIbF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA1OCBTYWx0ZWRfX+MWO7UKNfQmp
 oSCrT98GGC23c83sbq+mHnYYEopJBTGb7h2GMKg1H9YRnHMruperCRHX3DtGwO/ThHeTt5Odcxe
 Q4TLDp7jRMGdR22av45oag28md0yOVG0c9loraE3tmo6/b9+6FNHJ6t8GIkwMrBnoQeTv6/hNrD
 uV5ybXSzUSuQF/vR3NF0rFDNoslm6I08Kmynmyv2rJjMitO1i4XBf/VI48IBjL8prAiLrYetkL7
 nMKoSGbA0IpabnMOMFz6dbTAQx9LygHeG9+wxnfnxIoLC1IZ2KnP5u8Q2KeudX+TzUkNkQtS7gG
 UF7a7KUogJ0lCtV2Tu6/ZCkfc9Of4Y9kUJ3mt0V5kKZz3G1Fk+ph+Wfb6+DBl68VQWIp/WQv5zK
 DjbHzo1Vy1+428JT5DfdYuO4QfUEEgYydX9pWTVDScFSueg2OT38fKBJV5ZaP4Bu54M1d5SN
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=68808985 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=YISUMjRIwNUwlFPiRe8A:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: vGDrvG_eoykG5k1ODfuyx9W93ONjLIbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=468 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230058


On 6/25/2025 10:20 AM, Kathiravan Thirumoorthy wrote:
>
> On 6/24/2025 6:57 PM, Konrad Dybcio wrote:
>> On 6/24/25 12:36 PM, Kathiravan Thirumoorthy wrote:
>>> From: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>>>
>>> IPQ5424 supports both TZ and TF-A as secure software options and 
>>> various
>>> DDR sizes. In most cases, TF-A or TZ is loaded at the same memory
>>> location, but in the 256MB DDR configuration TF-A is loaded at a 
>>> different
>>> region.
>>>
>>> So, add the reserved memory node for TF-A and keep it disabled by 
>>> default.
>>> During bootup, U-Boot will detect which secure software is running and
>>> enable or disable the node accordingly.
>>>
>>> Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>>> Signed-off-by: Kathiravan Thirumoorthy 
>>> <kathiravan.thirumoorthy@oss.qualcomm.com>
>>> ---
>> Can the said u-boot simply dynamically add the reservation then?
>
> Yeah it could have been done in U-Boot itself but it wasn't. 256MB DDR 
> configuration solution is already shipped out and the stock U-Boot 
> enable this node to avoid the random issues.


Konrad, Do you have any further comments on this?


>
>>
>> Konrad

