Return-Path: <devicetree+bounces-189023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 353B6AE6654
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A7D47A04AF
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4EA2BF3CA;
	Tue, 24 Jun 2025 13:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="muNs6z19"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7767A28D8FA
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771657; cv=none; b=OMqIx+UeqG1hBMU1eLwFHn46iFl10oSFhpEyuNiXnOeOSqVOHth0dDTyXzjSDAHUUrtJDrv6Yu7/QzUsiKi7jDBkSm3HAhRueeJYa3HmmnDmqWGqAYrJPwyTD9Lt29TQm7+IsgDC+G28GcMUNiUYaojZl3M+1u4RrrDO/RHa1XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771657; c=relaxed/simple;
	bh=Ojff8sjTJgNBDfg7yjLq90tW3e6ffKE9jvPOd/QwwQ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OFOF4zk13RzJJYu/xx6GqqBeL0+7YrqvrqlPeQ/o5MjE+efzNJRN7mexD4DUdbPe8ZFqW4gvwag67CZLOHyV+5VneoHcYxCx+jItBGxfuO6lOa/nqZPePMVTGLFykgxw8LCl6jjcQFBUojLGhpev6WYM4N2tHU1az8TYjslytQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=muNs6z19; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OC1Qtg015531
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:27:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hiikZd0//HiDy1HOJfRrZZxYiF2z/aMJcHxZSnvLNyA=; b=muNs6z191pj68Zso
	j60kmT92ENuQS2L5VJCmXUJJRxf9v/bLOxuhKZGLoBEipEeD4Wuilw6JJA6+sPly
	QBFKRLCDybf8F9gfnogaaK/jmkhUJZTwDru1IkSog1jZL4Jqxu0hDYAEkCxIy1r9
	+BC69/9qMmnQLgFkgLDEfQz6Ep4GA5jy/382cveOk86XUnaW2GtBfUiENRSLdF+p
	0oJp+ClzwnPDrWLD/EJbPu0adEUuecpGyC+0ChZnlADvVvfkuaJhxmJOdFP9TWNW
	kuEUkPxDtVBby2v1SXNGfAufNCTSpYvYVWo9P87w+dFknYbtKKypiIAaOHazLoBm
	Aldm0A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec266ge5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:27:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5af539464so151389385a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750771654; x=1751376454;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hiikZd0//HiDy1HOJfRrZZxYiF2z/aMJcHxZSnvLNyA=;
        b=LnBCucM96rZmJs5aQBjQkxX5UuIk/AtP83awPJS0fLkmcEPKpku2SgjG8uJwYpx2H9
         ExOWmfEFm067D9/3po8q9XFFkb1XHseylTO8xi0j99ftJnbE2xSXlAzV74/XwDbhiZpq
         yaju2jiFZv1YfK+c05y7ZqaaaQ+kEr8z3wByvL/SVFZjQq1GULmltGeDKN/1No4GP1oT
         yuxV5WMwfiW2tarbeM6qZf22ebM4UnC1joTneM+dQV9St0udHSANRyQh24SAdPQHlkKy
         xoJpjHexOx+y4xBfsxEVUkWD1BfizU0qePheVdMPzGOV2IgPAOkrCRqUCDf6gJvWgADm
         35Ew==
X-Forwarded-Encrypted: i=1; AJvYcCVKPSo79AdodaZlJBgmGNnApx2Xuv6ZkxDXYsmnTHTJAk51ciRgsXvinOw2bnfxYHpPFVEvl9kiuD3S@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjifsdidkpy/92BPeEDRto/QvMVWSjBUEDuEzA1PdKtP+/BNHZ
	L/EFbaTzZGl6N92X8pYfhoPh/bdLHRm8KG2qW/7gvjlzLGq17+gFBCPV1AMhr2Unc6tEOgZ05PU
	30Gj9hVWlx9DMZgE36jHDrAmI7p2GS+rYdIC3WE1p8o3DHQSXxuE8kds0+LbfOEAC
X-Gm-Gg: ASbGncsCsRnSfhHMyTb25HXLh4mI1ygIPJSptFIejD0FEjK45BbDHnoNB9L897fcXkj
	8L8sl/5SUtDF0LPEikBDIEKw+rNVS7osGZ5fWGzEbH6BF3ivS4nodboqgwxuaUwuoymffzo1skW
	uclMuv0UDEjaQMe6NX5WJsHeuj8eCFyXZFL4si0a8afh79R46XthG8U2aPTa6c/6qXJBRFx6x2l
	3wgyQWU6AnfUQeoYew5pppl95Jg3bEV+bItNNqJt4eft4wRYDcGkd6Oxh1hEXOy6yG+liar5WD5
	eMOq+GVgllsFGcjk/ts/NDH++NOK3kP/iLkRNUU1rktm14VKIdSTOWRUn6ams70iOz0TPB0eYDK
	QBuo=
X-Received: by 2002:a05:620a:4594:b0:7c3:d752:f256 with SMTP id af79cd13be357-7d3f98e73d3mr834130585a.7.1750771653837;
        Tue, 24 Jun 2025 06:27:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHT5FK5dyTXbZwML/Egr2jcgabtl1hwD+zZ2KIp8tPHr18q1VP25gyb85H3MxSXE/q8MXAvUw==
X-Received: by 2002:a05:620a:4594:b0:7c3:d752:f256 with SMTP id af79cd13be357-7d3f98e73d3mr834128585a.7.1750771653380;
        Tue, 24 Jun 2025 06:27:33 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f485e1dsm1025338a12.62.2025.06.24.06.27.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 06:27:32 -0700 (PDT)
Message-ID: <0826de9f-0125-44d9-84cd-1c52ba199a4a@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 15:27:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: Add reserved memory for TF-A
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>
References: <20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDExMyBTYWx0ZWRfXzAIXptgk9uSN
 QRXQEWaE9u9F1xIPP1+4eucUrp30ngWegOnoQPW+MBcrviV5VFUUgmraaegIrcbh8J4Qvjq+9kK
 lwCKTiyM/mMVJe0/yFwmOPz+QOus1dDmNtGPWMajiVVYyYTBRR4y2ZLShkM5aa+ngu8T2ssXOJd
 oBOo2LuoctYKVt89Wk/HINL0Svsq3f0MCbqXGK78OLCqyweYjxMmt/Qg579DK7VIMXGZjjH/TXr
 qHmQmbsBKPsCRex1hdIOKIk5CJ3qhmNPPP3OpJO+MYUBzYJhwfUbf4DS2U2M9JZg2R1Xlif/n7x
 dBgnSVXLKJlgClhdZgqaBeYBE6a8JSUjA20ErPzGAeX4te2ekmYS16Ma2vGkC4v5Y7KicNOrd3l
 6gqxCWM0WSKAN5EszMIRW8g99AKn42EObh9WPG/jCGv0w/tYBlHG0pseyIhv365Zj3IEMwN2
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685aa7c7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=pHj3i8gGA7zaLbmuchoA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: JYc-pxLsbuE7SuA3a2e0zDlbKxoj355n
X-Proofpoint-ORIG-GUID: JYc-pxLsbuE7SuA3a2e0zDlbKxoj355n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_05,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=509 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240113

On 6/24/25 12:36 PM, Kathiravan Thirumoorthy wrote:
> From: Vignesh Viswanathan <quic_viswanat@quicinc.com>
> 
> IPQ5424 supports both TZ and TF-A as secure software options and various
> DDR sizes. In most cases, TF-A or TZ is loaded at the same memory
> location, but in the 256MB DDR configuration TF-A is loaded at a different
> region.
> 
> So, add the reserved memory node for TF-A and keep it disabled by default.
> During bootup, U-Boot will detect which secure software is running and
> enable or disable the node accordingly.
> 
> Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Can the said u-boot simply dynamically add the reservation then?

Konrad

