Return-Path: <devicetree+bounces-190583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E31DAEC209
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 23:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E81D21BC2633
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 21:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB661279354;
	Fri, 27 Jun 2025 21:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="koGqEnCi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E6927933A
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 21:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751059797; cv=none; b=HOomR/+P0Qt/dFJmsDZLi8Zhyw9T7Tygfw+Z6IRACWqmR602x1swNgCuQJtw+m0MKmM8GAhHqCahSuHXdg2M228b1R4Xjvxqj3lfIITDKrG9QA8EfVZkAWht7DZ+NQgYJT5SGNdfwLAWUr7cOtnezlCNrddANBIZf2uwz2Nin4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751059797; c=relaxed/simple;
	bh=DDrlIsBowQIoYj42JBQiuKWXbnIzuVcfTZ6WW+6h26k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rlE8VT0K7SpqdkVELTpHaFwYU0xFTP6arS67NeIJCTG32ZdxJQ3uWAZ9Zu7ezmN1/VGUde+87NlD2jTA6bRpVD9I8cZp/dx6nrPRmVZCYoroH/KObBHbwKl6pbcEv5KCpHLDrD/6ZcamaTar50Jomyk6KznGY472ooSIwDHoy9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=koGqEnCi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RBoKB2028952
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 21:29:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j+VclKGpJtOMeG2/CBYjO907O4spsZFF4G3PlFZVFvU=; b=koGqEnCim5hP7+EU
	LHS0XQuPw/A3zDmAwwWpmZcjPaA1rivwkrl4wCpl4zGemNcPKZ0up794iytwe8sv
	nMYE/6UBcZxT3HS1deXpSuawI/QwHWGCaqYypHhxEfzmxrQhiPWyyRAtWiZw2aF2
	X2OLqLQSCKYxR1CYo3X+xmwrcjA8smYtQuYPIPNd+0wl+bQMAtAnhggqUarWrESH
	pHSa7s5oOF1JKtI9WQ/E4B+Gftsq/J+AWMh39c5L2L6LEd+xyXyeSaksx1j1dxjZ
	Yq7VmeTYHnylnhlhiMIgLp0LsBBWceQKvMKCIwzKr/REMwPNRkTusclbPXXcovwH
	SrvWvQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47hkpbjqwp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 21:29:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0976a24ceso69443985a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:29:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751059794; x=1751664594;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j+VclKGpJtOMeG2/CBYjO907O4spsZFF4G3PlFZVFvU=;
        b=eKKpXTQy0ibq6SHOgwezbbSa33ytr8MbXbcsxqkZt2QzzO6KawganiM67VVtTjteWc
         k0LqZuOt7KemVqdpW20zzYNgc0Bd/pqefkv3shsvv9KqIaBodgNu6csGr3lh8C7N9e0V
         L6haPFSS2Vmnwj5X2I/gRm6QtSJl53cmHpJwLg7xJDf+l2wfDHSAVFbd9Mdw9B3KcOWj
         F/llbsfSLJ7XGIxzyAA6njO0M0i1liKDMNCvb+FMMPEdiPb5+kMa9vC4Z6U5Jk4fDIWd
         fg4n//pogDfoNHZcj8gOXlQvUw+Bi77FXdK5WesEDdCkj+7KJZxZXVcyHvAiy1dnyM2F
         QV1A==
X-Forwarded-Encrypted: i=1; AJvYcCVZyiB7q2YHCBJ+eRrMNrrXo478h4c4KSn/USU9LLledj4JX3KO7HT5hw12c4/EalSM8mgB0RUnFons@vger.kernel.org
X-Gm-Message-State: AOJu0YyVM82Nlee/tZqrbwdY5WPm5UH+RRMXYgaeHhBlA1E3+ERNNPhD
	QG3HUv1g5+DVCg5CXSYE4pvNHFMI3ieNxOV6FmpXNwImnLf0baLGytteSQAbfw+Kd3X/ZTeqJxk
	nU+xQW/q1qBxEDaI4G1Cc8gG+0ecRRU/Gd1Yh6164psKlEprLz+mWU8ePHbXsmFjzPoEsXhcv
X-Gm-Gg: ASbGncscStvYoH1rNDFgdZnbD+SqT25Vh+0ACWUyAPKdsZakx/NP40jWXBZGog35ZwB
	Eos9J8cCb9WO0CPBRUlmRoQdFV/JnJCRK6RR4bDjZ7cP54LmZW2+XvcuMcZ93eqjRjaOboU0qhn
	6lzYpTTlQiwDaSdzsrs0vtwZzN8KlN9K4iHZ/CrJg3buN1fhRydY1ZmnjSKrcLwxGNhNmiOKVFf
	tsqge67AGWSEvaYFB3suh5O3NOk7TKJ8fFqHZE1VhgzmScu2aE4dp7moqrQN51JYpA9Us/hLqN4
	tylFDfvRGWgHnTGqi1WeEnAe92K9OvSxt2QvYarkMd/FMwI6S0vU3wdyak4FXvredfS9AfM4QN6
	xYyM=
X-Received: by 2002:a05:620a:26a8:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7d44c27a0e5mr34980785a.11.1751059793925;
        Fri, 27 Jun 2025 14:29:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6O61YOi4A2FE/HAM5495f3Lx0kZsOuxdmkU5HT7ZQwhZfq27mgtK/+v+5AKGJA2+aDJAuWA==
X-Received: by 2002:a05:620a:26a8:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7d44c27a0e5mr34978485a.11.1751059793400;
        Fri, 27 Jun 2025 14:29:53 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35365a95esm195682966b.59.2025.06.27.14.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 14:29:52 -0700 (PDT)
Message-ID: <6e4854e7-1bb6-436e-958b-382e26beee04@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 23:29:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] clk: qcom: tcsrcc-sm8650: Add support for SM7635 SoC
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-clocks-misc-v1-0-45fea645d39b@fairphone.com>
 <20250625-sm7635-clocks-misc-v1-4-45fea645d39b@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-clocks-misc-v1-4-45fea645d39b@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDE3NCBTYWx0ZWRfXzdmTCAon4vyT
 aljfU+u4bK3oh226PDLPC+2OAnibwJFVqQTULNQiKi+cey/3wvLgTy1fHX212bFN/raiYltGtWV
 OjbqVUkWhx+2AA/rVAFs4UF8mdCknp/36aqE7Qqsanv+bKhfocTesuuxzkzh6L00ut5NnfLPuTS
 8Fb6bDWIcHMq5dKEvwlipi/HL8KlLdCWPqPryNhx+AKQ11Sg/YptXRQeBCNI5M8L+aFbblU8f0t
 YafCAzjwsUGufqLzVB6x4/0ZnsMnc33fnYtGL1+FMRrZue3BlBMllmICKE8r5GjMmKpUxKwnXic
 fm/e3DAc7XRGRfHYcq2Al//8UTqUB7isBsELM2iU5epDJZN2+4C6uYP3BOJj15iNaEPxtK4HoFm
 9nq08RKb058N3dMjf9H3yiqdedFjtuOHnml8F7lxivem+5Virkfysxe/mtpspt8L3d94JaAX
X-Proofpoint-GUID: XNdy64Yg021bkRF3ZnvK1_O3CKxX3sm3
X-Authority-Analysis: v=2.4 cv=AY2xH2XG c=1 sm=1 tr=0 ts=685f0d53 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=vTaQQWYYi_PMaXEYf6cA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: XNdy64Yg021bkRF3ZnvK1_O3CKxX3sm3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=811 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 impostorscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270174

On 6/25/25 11:12 AM, Luca Weiss wrote:
> The SM7635 has a very similar tcsrcc block, only TCSR_UFS_CLKREF_EN uses
> different regs, and both TCSR_USB2_CLKREF_EN and TCSR_USB3_CLKREF_EN are
> not present.
> 
> Modify these resources at probe if we're probing for sm7635.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

