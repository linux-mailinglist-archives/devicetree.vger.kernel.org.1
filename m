Return-Path: <devicetree+bounces-213498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71498B458A2
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74BA57C520F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 13:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A900D3451AF;
	Fri,  5 Sep 2025 13:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kSBe4BfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BC52343BE
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 13:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757078375; cv=none; b=ClcA6SvbAijQFOzhZkoV1HZTyM3Y4yLThST48tKrAIhoR58y8rSuz0TGlx/yoZlEc8Hshq1jeUXsuv1YonTVrfMVzohpi61QKPlx9yapgybecw29Ll7narZ9onAdpoEgFauXOOpStHySPCPevFkAJXpuhCfQWiwlDYEIMFQgbB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757078375; c=relaxed/simple;
	bh=f9dg9f79cEQYwrNo5ZvWpn7K6mPR3qTgf9FIhmyJUKI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DDhtLm+kulp9htID2C7bcAE53p2KQTzWLSG/6IlIkWX5oTQOp+yhWgH2bGpUsnJ6XKlc2wtJz4yYl/WV+CIdCgkXsdF2id55scJbzyrtnpmqMaA2oIbvfGQnq9bb6X2QpQZYC8sNUoG8R9hO7buWKM+Mn6iBVG9IeE7NYILsBCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kSBe4BfI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58550Qv3018463
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 13:19:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U0Bhjhxk+tpvajQc7hWGH3X0z8vhyfUm5KLA3GKOkgE=; b=kSBe4BfIxrRDISVO
	fFe1nqQ9zNjhlm6th8gyoWVyI7V85NuzBr3Vm5oSs7ci1nl/zp7b5t4tYmZFJDUL
	a3K4lGv5PTGcaztAUitXrmzCXGVQXcFERsolprSG64IGIdwzjdx4f4ZlPA+q0gpN
	m4Sf6SyfcUCG1dmW4os9pGizcTIcWDwthvm+8W7EAW+CKGIyLmb5GdIuu4ETcxJO
	/tIlmoZv+U/vhOVBpHEM5TVsE03LxGC2sZQQFKK6qpT5OI6BfMOxSOk8pmKFPHej
	aSAMk81jLkrNyekRvUCxSjZQiQXD2liJdo4FRBTOsQ2lfOzWWtdO6pASOUY9qwi2
	uYoZTg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48yebuu40g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 13:19:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso9741801cf.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:19:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757078372; x=1757683172;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U0Bhjhxk+tpvajQc7hWGH3X0z8vhyfUm5KLA3GKOkgE=;
        b=UQSpo0Q9OUeugbUiYoAlh8lXxzksk8bG1D2vUEYQmOf4hiUzpai4aA4Uehe7AAq7tY
         +5B8uHen+9OgyeLT4KemmPsuWhtueYZZ0AKFf/JID14j8RxcGX0zD1JJ4OUDCk3rc4Je
         Wr6Pnmat1gFjKAUeghB4Xw2+uhxPQ7K+cDL6iAm/hEyVdQi1N//z5J4CKrWhhQkXdfLG
         CqOQWgcR//aiwo/4C/g3TF5kdVDg6Ijfwsc3oq/0vNJt8V0wNaNQ2lYGg09/hHnoKAkr
         QliP4QYwafwV6li4ZjETGYZwkHwU4oukARsj2Dqn/C0pGjR1V8LAx5YueEUSIMvRvWii
         S6Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUAB5uPP5dqEeaCoWSu1QzqItGd7qNvTtG8LQ1IXn2GNwpn/+v0StAVFyYwGMJ9Zfc/YBqftr2exC8m@vger.kernel.org
X-Gm-Message-State: AOJu0YymMAWymsPMFd6V18Jpp0qKFGHzMVOOIk6nVUbt8hSBW4qdsJ0D
	I6YP75+aeqxN344aN45i4+ScC6tjlwGonLHtzpI8GgLvfAaD8J6eCCEf9UiHyVPUM6nqQ07VRXV
	vjp7GcKWqXDnZRnRuZB4oPooUhB5tAkNXyGLM1nYGmv2BlCCB9Dv1rv/sImXlTqep
X-Gm-Gg: ASbGncsIBAlSCePTiLiEd7R0rirSqu8x3l6IfUVXeJghjLBnE3ytn7cz+dQ0jlGPwi5
	feucIBCEn/cmJgfB+HJUrCGgqnAs2M2scpZ/J40PPH4TH38LQeWrVan5N58KX4fTSkMuBYboRLJ
	ARPz9uohMHKHRDfKz3tzlFO5ccVCrh1D3pB9HTmCbUSEC/phANROUqLmSwoCQMVMMm8FGtJaU4N
	zys/w6l7QFiQA4KUxtMLIy1W1sgwdAX290mFBz+/oSVhtQvCIzOSaMHQPKxpUogkIT93pzw5huT
	H5DV+Fa6PcnO2xeclUEVzOFoXKKWTRujLnLj/+oNgqusqm5qHPVeBKZRbtXZIDvaevKHXsk00Ty
	fHEL669y5/XevPQu5EGe56Q==
X-Received: by 2002:a05:622a:1a1e:b0:4b5:eb40:b1c4 with SMTP id d75a77b69052e-4b5eb40b475mr15321841cf.10.1757078371977;
        Fri, 05 Sep 2025 06:19:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuoHXh+KD08XcnAE/jgm1vEO0s+IDJTiD+07YDOxNry7G/om/NzxaG8um/RprAJT1rWU9rbA==
X-Received: by 2002:a05:622a:1a1e:b0:4b5:eb40:b1c4 with SMTP id d75a77b69052e-4b5eb40b475mr15321611cf.10.1757078371453;
        Fri, 05 Sep 2025 06:19:31 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc5306e6sm16320205a12.47.2025.09.05.06.19.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 06:19:30 -0700 (PDT)
Message-ID: <91fd1e35-7e3c-44ca-9ffa-9393dc9e904e@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 15:19:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: msm8953-xiaomi-daisy: fix cd-gpios
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alejandro Tafalla <atafalla@dnyon.com>, Luca Weiss <luca@lucaweiss.eu>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250903-daisy-sd-fix-v2-1-e08c50f3be57@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-daisy-sd-fix-v2-1-e08c50f3be57@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: DHJ3s3WgtXvdkqe5nFZk6nxsUUOjK7JX
X-Authority-Analysis: v=2.4 cv=X+ZSKHTe c=1 sm=1 tr=0 ts=68bae365 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=P2Z3rHzvZxtGOU_tVGkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA0MDE2MyBTYWx0ZWRfX0f8e38FO0nA+
 FTUjDar0flw2ihqkEsv5YBrbsvljlDA3fNrIdCjC6iZ0wfJPTCueRjNd1NlS6UVfYQhVHgm+y1o
 DibAHHUXrKDpBmrJShjZbX8kE5PkZMkeOLeWkt4J9iTWHIfLdQDqgErdAK+R5p9rDNOxb9NLoSg
 P0nVspuogbmS5H/B1LXSAvZPHfa+cNeBc37Cj4tCxzOwXek3EcJgZWyWCX57ErmEX4rfwc6yrF8
 7TbtyeTRhv0k8feilO8paFAiLaYuWR7QLxWQ3wv1NzOUOpRNZmBzHAbm9Jps8ZbElJppo28G3BI
 3e6tKxHMJ9QLSIPy7dI4FmLuAUIFen/eiVNylPDrJ+QYg4LhR9s2zJ7lGc1C2Kd0p0wXVi3KE5G
 aCb6Cq/C
X-Proofpoint-ORIG-GUID: DHJ3s3WgtXvdkqe5nFZk6nxsUUOjK7JX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509040163

On 9/3/25 11:27 PM, Barnabás Czémán wrote:
> SD detection was not working because cd-gpios flag
> was wrongly configured, according to downstream sources
> device is using GPIO_ACTIVE_HIGH.
> Fix SD detection with change cd-gpios from GPIO_ACTIVE_LOW
> to GPIO_ACTIVE_HIGH.
> 
> Fixes: 38d779c26395 ("arm64: dts: qcom: msm8953: Add device tree for Xiaomi Mi A2 Lite")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

That's better, one can now reason that the change actually works and
is not only made to make the DT inline with downstream

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

