Return-Path: <devicetree+bounces-244453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CD7CA51A4
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 20:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B097630C7BC4
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 19:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F372F9C3D;
	Thu,  4 Dec 2025 19:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p0jgh1yA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TA9ZNgmp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739AC2D7DE4
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 19:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764875577; cv=none; b=jTNM6StOYOG+4VEqcgAi8RvtTtKpmpgLookXzG0r7hKt0AahxQbzT2FQx0X9gFg/buiEY5EI0AfZRQUcpEsz2v4ffpro6Ts8Gh7xubKh7/02OJ5rySvu9MOcx2qjxgrFzpTNZcbh4Nq6eCuW+CV0WCCzdftB/zW0WK9SAFOgc4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764875577; c=relaxed/simple;
	bh=ZSYu37fsQ8eaB5am4EVsHCPdVSE0BP/RLJg6zrrYJAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JFgt51H3kr476aC9EYvL+qMeDfjJmqzcf6K35M/TOmyGWoO/SL1uDkKaxETf7ChvkAGpeWx4vsEL6VwTcUp0nCKpQkryoqIU04cSYmBPMi+HCRxor7nvs46rtlDttUx3oDT9XbbdkaDs/MC3RwrOqIQzLf1BygWY0O636BCUYjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p0jgh1yA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TA9ZNgmp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4B0xNG614237
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 19:12:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gMXljUTHUDZrazBKhYz0V7JIj3Pmy0xVP97f3AGsNHE=; b=p0jgh1yAUdA7G52R
	iRe+CmrWAIeAWFccDeSzc5ijBonE5yR+53N458rVTrAhQWLbKunQ5pKMplfo0eNR
	70FkZZVMrYLGfKmF9YYO0LcBapZjxw/f0RFrjEef6IFWo7P0/Q6bgGBmbMOb55LZ
	rGAjnEHObZxhOg663fKeWp4e2hxUi7w/b9aXjilB6PbmsVvg3EhPywOmCOXndanu
	zW0UBnmFyTE3JCMuiSRzAzqjFwKpOsMLngXQqLAlh3rAEWPYcEN0OSJdaR8DIT8q
	wtltJSfGTcflq0IVZ2fEy9qJc7HucSpzrkCiYLHmmHudrudRl0GpsIDopOyRGlzA
	RxWTRw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au9299ged-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 19:12:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b196719e0fso43390785a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 11:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764875574; x=1765480374; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gMXljUTHUDZrazBKhYz0V7JIj3Pmy0xVP97f3AGsNHE=;
        b=TA9ZNgmpoMOA9HK14nyVSIQPdJVT+4mBnrucefWNC4qP5Gccj2cQ+BhOeMBocDPyU5
         2W5Uguo7cRXGbr/YpWxpSiUMcp4m0p/mb9xnA8cwfuSZbyl6gHcUc7AGntrRkMD6Gec8
         RJ23VwBgvlNkBcOy1y/mXbgueClr479qUYIoARZdsEkCcq9VrXIc/6wbysEG+2/4AvbT
         VFVYUhEzwXgSOe7+zIiYLfEJmT26yY/avcOqVwtUHQom5etQCy6NA1BTfHqfoa3xR+mG
         OWgUf4kuF/gkCvbalMs6FrhcPRUJItuVSZgwO61m/68gxRYBiOKq5AHCVsBzporFxrSi
         6h6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764875574; x=1765480374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gMXljUTHUDZrazBKhYz0V7JIj3Pmy0xVP97f3AGsNHE=;
        b=upu1sRhQH/V/KYySe6hdjBCXrmC6SV+fjctgjt1089Eu3Nv+CgCRrzb5s+fUR+xlSD
         BroJCH0GEnXIGEbDo8H5/4SpIze9ocRp7A32t6nOO3w9mXTFuvepCH8AN5ouxsg/mq+9
         znVVnyBoDPixW8sVja+18gPgBTHTkj971vd7WJagRrNaduHsxD0B/ZY1qGLNWBRUxldR
         YOmt3v2Tf3z5sa02UaCLbOjk/9bq76IuxD2JsRGERMpssKqGXBCKI4OaeH2s3zO2xl70
         Co3ADT5L0xSVScYLqP4lwYfoXzoeCKd0xxSBoUZHJT3JpsBEf4a2hDM8hO7Al+2XJRSU
         03VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYee8xrIGWn0e35GJMylv7BhWRM92Yd7/qUC6K4UBWB7kKAWJUcIrHlljxGIMkKvb0z3QWHZ07HIDG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4P8fyUGyzOPokNMhrnFHqZuygLvSPF+oyx70k9OP3ZihNOKbI
	7K0HdsPbQT2M1ikChuduaObhLzaIdDB0nMCuWHgCbUCQv0EdNscuqS8qo92FaFuhjun7kUPQogV
	cNZaliDtGscySk5DTDNrZjJE5IVB9WPQ0flEkTW8kKaxpXnQy6bqtZa++KnVwBA/p
X-Gm-Gg: ASbGncvD1YJzZiL5kWTxstNyRcrsKfjzHn6HZr/3pdZJQ2x7wsWRWXG3JsXVkJYVbsj
	xj0o323c1gCR1JI1oWKLLwvGRY3PU94cQaFjr3pXpJXBQsMx/wloTqwWg1ShoF99ExSLSNGB5n6
	mycyZPQEg44xQDP7hJ9VtztNEzCB068v4iyqujwqrtyCOMok5PhbSx/J4LRep3onh1VEYeZiqtm
	y7PJ8nP4rumicCqGtby/r5gudYo5vXB0eVdFvPDGQ3Nuk0t6TiD123bJFaSIv/hEvB9H8YbFT1t
	J/1k0juV9GgRjfAbMapOhJ5OrtrBn2K2o7BAH8eqREmi9J7/hFCtsDaURbZi+dICpqVsBp4+OWS
	xlwvlxZSO27frDLBOkKGQZ4sGBWBsMw+2RcaDbQDJkZMCI4QqcMJe/TKYGnANqa4JYg==
X-Received: by 2002:a05:620a:1a06:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b5f8a71ac1mr621086285a.0.1764875574451;
        Thu, 04 Dec 2025 11:12:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZouSKHdyV4594zTzpYT1Yr/fZY+cSCHiyW+3H6kE2eA9RTsp0/fJ6OiDHkTrFNvFXexE4Fw==
X-Received: by 2002:a05:620a:1a06:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b5f8a71ac1mr621082785a.0.1764875573986;
        Thu, 04 Dec 2025 11:12:53 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f449b160sm201125866b.23.2025.12.04.11.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 11:12:53 -0800 (PST)
Message-ID: <170f3adb-6f35-4113-b114-6c677a7851e8@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 20:12:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Enable AMC6821 fan
 controller
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204041158.2613340-1-gaurav.kohli@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204041158.2613340-1-gaurav.kohli@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: SdFq2gCXviMkRrBzB4vh1n1QhQ8HllaR
X-Proofpoint-GUID: SdFq2gCXviMkRrBzB4vh1n1QhQ8HllaR
X-Authority-Analysis: v=2.4 cv=UddciaSN c=1 sm=1 tr=0 ts=6931dd37 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=dxXtgrj7fxIw5hbx2lIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDE1NiBTYWx0ZWRfX5SNHwR5f9WTA
 gSKlAAp88jgBcj1VABPOdLG8bRBaEbP0mhTHTEWmCOmhBjWoYiYu/Z8G8fUSytpfqa8OAUgmE6O
 b5qPgOmEBTE9yvIOKtJZg/zVIl04CWNdYj+fg42qXzRafxUcW3GqaF4bJmcXwn5kqE1bsfLRXCX
 JkFbwk9qCXSMhY/qr2HlTHrlyBC4HQQ+JrRxq3r7lAm/ZEWbhY5rlmJlRzbnIYBQqYApZbq8PtL
 ykGUAzMxRgutpCuOGzvjskWZ4M9dH/PDowwX//mX+DL97yAF9iWxqjJnuqelTMis4pCU5eUErxP
 /dF5liJ3tKR7HqyfhIIs+/9gNDUSl6cnizew66MGKRAU8Ukx7OIpsWzTTkDKbu3SM5w86AMML1s
 oey+D3NCn617w6Fbk/j6InDqRg9OVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040156

On 12/4/25 5:11 AM, Gaurav Kohli wrote:
> Enable AMC6821 fan controller for monaco-evk platform and
> configure pwm polarity as inverted.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

