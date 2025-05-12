Return-Path: <devicetree+bounces-176368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD0AAB3AE4
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 16:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D45D43A79B5
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C83CF22A1CD;
	Mon, 12 May 2025 14:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RYLH6qmk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08026229B2A
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 14:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747060987; cv=none; b=It/JCSkdzRxIE7VLIZ66+mZvFIgMAA1dTDzktp8SFEaWiyBKGpRi6+BcM4FPDyKcswlZrAC50/UO2Y66x8t11yqcXHwCZDIEi8A1tXX3huzrq3EwjxZhHmXFGE61G8+rxBZCbCTesk47u2bnWlcARdaG/BwW6LzdbafIEUrLz6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747060987; c=relaxed/simple;
	bh=bwj5+mAqRjuGjBMyvAcBv0WTt7nuIWHgWGUjiJkGlaU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IEqi/frxriXp0SUjTxLaSLMMQrfY/kxTV6f5EwzGVdFpQsj9jsZIlsx4AsaZDa1+ikLwmSMo6ZcX8DzN3rL19nIKq0CVYWQkgVaWlkpQDRDox6yfK6FjBSU2z94LIQGYqjQq85fsjUZ/9CN0r8yMDa/pblmAAlcSgl4pRKHMQqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RYLH6qmk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54C90X2g012804
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 14:43:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	djREPE0sqvYKUCjrqfcQkeo21X9ODx3TwXhEw7tG1QQ=; b=RYLH6qmkSz4e4/1g
	l87B/O6n70JEljqOUJfC6vwSlyvX72sA1SK6K90jO3KbrlWHCtsylyVyMC/IfsEI
	pmXzNpZ9jf+Opkw67IIkcd+Bw6SlAjUtRPnCkZ1jvXY4QX+mQrr9xH5aU3VwG4pn
	JJB/s74c0pEMfZglyLjJfEDOn2lAIwBzD6xlLl3Bmk3o/t85rxE2B2zi6nmzbtSQ
	Ij3eJYzES7Zrf3CLJF6yTiwIPg/z4IR5c2M7h/a/oVkdRZzimm3aASU4fzbADtq9
	Os168NFT1TlHADdT4B86D6KDwFIILOCr0tdTYBHPC/ZMRB67OsisxdhGFfd6Prdp
	Sdi6SQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hyjjmkjk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 14:43:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c76062c513so136683485a.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 07:43:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747060984; x=1747665784;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=djREPE0sqvYKUCjrqfcQkeo21X9ODx3TwXhEw7tG1QQ=;
        b=mxhnfkhCgxQ3almDAaGcS1UiMN5xtqkPZuskXm4NttWDlaDj6ykMOOKpXVU82NvAuR
         sERrRFWsaiCUBx8Qca/tyrrgnX70q8OptiY21NncBVQLMOuVgILFe0uwkA/Evqq+s8MR
         CoAsySqppweAJmzshUSrBq8OGMcF08mgr9hwoTjv5AffYYIvSpRh691uq4V6avOhvi4k
         hXXKzOl+lI+v2cZTMYSi172YYgrB1BFBq9hn7NNIF9ac0E9r3HShwEiLWdSuNbZBfPRG
         14cZ4f9/UoH1kI1QllEyC4ikZB8+EkRfO3mALYCCPE4TijAbLvFzo5j7PCFhGdGRi2oo
         RATg==
X-Forwarded-Encrypted: i=1; AJvYcCXCOidcuXYYw5KmlpndJmB4Kqrvg0eEmsykfIaUXc9gNVoColknLtPhX7Q5rgUbIySD452c5dwebOlJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwMJsejk54MvT6wPk+AsF6IyFQggBzGFN76O77+4a88WphhZLb1
	acNHww740X9htGIUP6+r1D4U7ETgJlC7qvNHNhPiQJjceVzlV8al28JjfepPduwGQH65pf+TbD5
	HeERSU4uAldyEdmwe1/BK8wCj2x4Qs1bFtpmXyGQYbTP2jdl+nA9naOfRRpZO
X-Gm-Gg: ASbGncv53nec/LW4JT+w2fDU95J5mi/efEILmYRhugUmc898VwafiCbNNuQYb6an2lX
	MPEa9z68jaGZuJveJXWsWa5WLXXVjNjrQR5QY7U//X//yGGKGmpB+o9As7amUpZjsTjj3uh2WCh
	BSRZFi+/MJ/tx2A0AkS5CiNwYCIvbq8uhjUv5dxWawntWP2l5cv+jTRv424nYobQNXhIrGumDs8
	ewdSz6XgCan2GvdMXSe45QZx+to16VUrQwQ5TYbBl04LvGTl6dq7p5CC/Vz9CDYI5ZcNC2SfRzJ
	ZFT9O79LMQb0OYbbsFeAjGiptXVxGK4IpMw2GXuy+CifvMruEAGGq+f+yxBV1aEljJk=
X-Received: by 2002:a05:620a:24d2:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7cd011053camr814294785a.6.1747060983790;
        Mon, 12 May 2025 07:43:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWY6Cl5GMpMzeN8jV1HQ/TUtYeE13TFqO10nMiMdzZFvOrcbPNhOHTggYJdxF61Zyg9UNzUA==
X-Received: by 2002:a05:620a:24d2:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7cd011053camr814292285a.6.1747060983233;
        Mon, 12 May 2025 07:43:03 -0700 (PDT)
Received: from [192.168.65.222] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad22c563e34sm492121366b.137.2025.05.12.07.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 07:43:02 -0700 (PDT)
Message-ID: <83cf6202-0efd-4382-bd0c-3d196c4a0b9a@oss.qualcomm.com>
Date: Mon, 12 May 2025 16:43:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq5018: enable the download mode
 support
To: george.moussalem@outlook.com, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250512-ipq5018-syscon-v1-0-eb1ad2414c3c@outlook.com>
 <20250512-ipq5018-syscon-v1-2-eb1ad2414c3c@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250512-ipq5018-syscon-v1-2-eb1ad2414c3c@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDE1MyBTYWx0ZWRfXxMNHTUzujADz
 pfYX0xStK2XnjRdfXYN+tvZbisyxoVrvPBZl98YnOQyjBZrhE/O4nbvSWqbafHo4dl95ijBToVc
 850yfkz7+raMt1tf0UEv0SyOJbGJCEp4+wdIu7TqteaR9Tuc1skhm2BoPGiSCw1cFfj14h9mBKp
 oY0c4Gxj79bGYUnwinK5cmT1kTIg73uYuIYnFqJPMJ3COS96bVk06FPQnnQ1xMFo2P/xYQuTjgU
 URKwCvCd4DAQpMbvy66/VaP2GhSVz6oSu6a/I6iTSg7eiDIExYYuTLFPGgNGhRDJ+65L4IdObs6
 jR4OiReMfKjAJT4gU4+/EPPpiQ3sNOiXrTFZH9lGI37zW+/UHt6uNkW/8o7Bz2KIi3D9tIUihFs
 sHSaOWoKxIAgcp0y18LldZ852/bRP2YWY1ZhMZu5P4I5cwVlGY+Xc9QEiaJ4jbadkJJfOafi
X-Proofpoint-GUID: Up6D3bir0IFq6LjIgfVLCvKyP1-BLc9p
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=682208f9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: Up6D3bir0IFq6LjIgfVLCvKyP1-BLc9p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_05,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 spamscore=0 phishscore=0
 mlxlogscore=616 impostorscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505120153

On 5/12/25 4:36 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Enable support for download mode to collect RAM dumps in case of a
> system crash, allowing post mortem analysis.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

