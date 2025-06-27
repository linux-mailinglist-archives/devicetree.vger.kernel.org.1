Return-Path: <devicetree+bounces-190473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B767DAEBD37
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 18:27:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CE3A1C4729B
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0991C6FFD;
	Fri, 27 Jun 2025 16:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WSO9h00m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C7926AA83
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041515; cv=none; b=IgfigjszeSII7uYE49iYZWcomZ/S04WqHqgKPU9TjGQO1/F23P+RCtIld/OYMfAMHnzgdE1Hnm6HfW7hw9xo835Agow1mtKI6rdHvPanlXlU8W6uUBxNcLoLePSd8iTDWP/y05rbivCTBrj/RYZXsyMB+LfUNKdXtp7YiDsEvZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041515; c=relaxed/simple;
	bh=C4i+82VCqawXzba10UfgLVMnLpSjEvh/T1+KBY4EWZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qJqibkPl5z++5V5Kocxu5dvX0Aio21DBZUexCWz51IUDARAIqZbLsA1M0Yw6BQMOL0HyYc7+ujIM+CIBdgRN5BvUv00q6Dcj4l64cLEMkAm6V2F5Pq+9NATGBrbexHiDPONExldNyu0VHrYBNvgv7LXX5qnbytHZsHZoE/v4Nk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WSO9h00m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RBu3xe009871
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3K3ulOM8/2gxiv3n1FZOLEDC6VhxDRLLFSUlDuxiVZ0=; b=WSO9h00muASik1PG
	hgjJUhe/Z5R9kzOcFzfY0VkTeXu//fkoP+y+ArJjBq8XqZGBmWanNftm6dETR3WK
	lwsl4p0ShctmgOsBSaRDTYA8yHarihKHhgjcEPLJCnKBirw39trtgV2nq1Kbaf51
	VekktYj86D8jrAcpKE5f+6Nj3sPc87YAR7pzC0Y0t4kQxSbpUXkOILS2WI8ocyQT
	LHWfJC2OxUlSyDUq8kNQHOWPmTMkHlfor2tCPzTO5+OOiT8kk8wFWCiQzwIP/FgX
	4kgAd7OTfUr5gXUH3kUZm2vddnj6PIVdbr/p04B8/LiMWbtl+2hlR6lpfC2Iv64L
	P45v3g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88fh59y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:25:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09b74dc4bso45090685a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 09:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751041512; x=1751646312;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3K3ulOM8/2gxiv3n1FZOLEDC6VhxDRLLFSUlDuxiVZ0=;
        b=WE4dKyYkxK6TBLEuGiNdkwZ0I374VWIoqjcJNARQAP4G98B3Ccvs52QcWpaVt9SoJC
         ljUXyWJqHhF+oCEMDjg5h/XCvWggtbLr6teXFdUInxJDZ6EepLApAkkoSixHZbm8i8uJ
         Yee7w+nip41TiCMecJEqDNg2YXdJezt9zt+RVDnd1rGyP/pnDrXG8UcfBtuMnc8QnSF/
         5rCD5Xm6FGNxn4x1+0BIiibXuMiWFVigg+10iLMMVQ73RQUPneV2Horzs7Iy5mdqHUCk
         sFgrvrakUTa/sDw6C7UKaWh6G3xkj/eN7QbzJMCzS2jr/KRrTjw4bCWViMIrG/SXmNDX
         tGxg==
X-Forwarded-Encrypted: i=1; AJvYcCXDMBOpcePToOcjJBn/qMf+DolC9BsGChYjI9TTPiapretlOAXIo7gBBHjLPXgf7TJsqntMlqVDGR1N@vger.kernel.org
X-Gm-Message-State: AOJu0YwREqJSmYTKMU2fUiwRwq2sblje/1JZ1fs92EbQmW1avNrHlsTP
	FnsJ360lzAssOYJuVO3fC0x+xDc+wHWni8TB2OpXiaWeYxrmN7hyd4qIJvpFC5w7TAQI4YmveoR
	lhA4ehjoHGsmJXnTkRV7w6wJ+JNFrWbYx7MCB5LZ+0f4gBLF/gzGVU9ZmVPquNgLr
X-Gm-Gg: ASbGncsrTWmHFmgaaHZLjwZTQzyNQVWMgEYiPwy9Lz7SqP00LvY+Exe9dTEWiDp7B47
	+y8SpL5Cg6/lIb8svMcagCYygkyBbw99OlJYCcy0n1oqUuWaOrWqqXxosEkEGbYtvPcPZ+QwMwA
	Di70e3RlpWdYI7p8yps9ZaMa+BDULT7N/3je2N+V+TYQmFTe9PTHyK7IlS3UIhFfGGrzaUWW9jz
	m0FtBWv5lbmj2D6hga528CJFQpTCVrdxrCny5FOTR5/+fJusqTX4ao8jCKFykebcJkNdFkWTCbd
	Jdd7QsrNGxKY4+BTKsjNCCF1R0LIOeZUo9p54Q/O1Ayb7VljSp1c9BanhQX7fcflNjAOuGF0mR1
	qoYU=
X-Received: by 2002:a05:620a:24cf:b0:7c0:b106:94ba with SMTP id af79cd13be357-7d44393cb0emr186172285a.7.1751041512169;
        Fri, 27 Jun 2025 09:25:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF07xy/DeRmmmedPMJULYDxGN/26ma8lCZYySazHvEfgzdLyxgZdrRzYmMNDCeah7SlE5mBqA==
X-Received: by 2002:a05:620a:24cf:b0:7c0:b106:94ba with SMTP id af79cd13be357-7d44393cb0emr186170585a.7.1751041511671;
        Fri, 27 Jun 2025 09:25:11 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bdafsm148417266b.143.2025.06.27.09.25.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 09:25:11 -0700 (PDT)
Message-ID: <cee7bd5b-2c7e-4abc-8810-4c650207b4e7@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 18:25:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] clk: qcom: Add NSS clock controller driver for
 IPQ5424
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        quic_suruchia@quicinc.com, quic_pavir@quicinc.com
References: <20250627-qcom_ipq5424_nsscc-v2-0-8d392f65102a@quicinc.com>
 <20250627-qcom_ipq5424_nsscc-v2-6-8d392f65102a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627-qcom_ipq5424_nsscc-v2-6-8d392f65102a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEzMyBTYWx0ZWRfX99gwqILUTDWm
 s6hllTZnsVeMzlaTKPMKuyxU/p86+LrNMC6eWby0xwMUsx9xnkMQM9gKnLXUHFYMK+08k8mCusq
 1Xs3cg1dTfoe8HJimlRMLBmYrXUNguKJ2qFvfK0C4UsSdEdCvKB2LTQ2jZE9N6pqk5sLG+ih1az
 G4fX5Yx8djU6B+oZDyph9M+dC6+jpkisnD90T6hHIcHQo0ueDF/rPw+slDA61W9xPd1mPHa0yHJ
 wF+y0SnuN9E+FVir6FkV2zGy+jpehbg7TlwlLp44aTv39zYDbVglMQHAsOyen0P/e0vtCXuKbQQ
 shLllqibNXXgREdKYFBZrq95Rvg1+p9I7Bu/0V55vqWdNJxW8E87z450cLFIiKpBLfzVF2h4T6g
 AoCBYcBbLiwfhK0evhIXAnw+osyZ9pmRwI0AEaveP3JKWZKupeJW0JUBe/dboBG8qZdu1vXS
X-Proofpoint-ORIG-GUID: htRKGYgeSEiwXNIcmo9sBDJhFWepHvWq
X-Proofpoint-GUID: htRKGYgeSEiwXNIcmo9sBDJhFWepHvWq
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685ec5e8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=bcbUkqnWQ8Yi_cfyv-MA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=693
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270133

On 6/27/25 2:09 PM, Luo Jie wrote:
> NSS (Network Subsystem) clock controller provides the clocks and resets
> to the networking hardware blocks of the IPQ5424 SoC.
> 
> The icc-clk framework is used to enable NoC related clocks to create
> paths so that the networking blocks can connect to these NoCs.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

