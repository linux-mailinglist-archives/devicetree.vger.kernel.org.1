Return-Path: <devicetree+bounces-256954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C90ADD3AF77
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E170A307AFA8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4478521FF2A;
	Mon, 19 Jan 2026 15:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gs2wIgAc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gPdLtoyF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA37421CC43
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768837531; cv=none; b=ZYsCRUi4V+wwipnGZsEbhoXLJRIouhkImIzvNDfjUsfPwZlgh0PjipiotupbwN8KB34x3YS/jtqOj8ZSH2Pcnj6Pq5QcbosG1ErrjL2JDRHkvPHEOtYeVyYalrfhBCTq7Hy4d4iOl9qQ7lViOxhqDXV/cumMscmVcUNxkEFlL6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768837531; c=relaxed/simple;
	bh=ueatqlSRaZNQtdkbSIcVnGvg4lTbklxPzJQpdEFKQ7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fBVvC475PJBUVwb6Pqi6KbP7C0U3ew6tIfnbTOaG/h5Bz28RaEXsMG0APbmRiOQ7koFwITkxS186n4O1mLKW140cKrSfRNvtJdKP68ERpe0/H4yw5H9Rkb/velkysBmj9cBFZ9m59vA15XMlvGUE/gKSUaMfyJrkvS2/caPcpu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gs2wIgAc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gPdLtoyF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J90jrC227888
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OdDan9HGVtfj4FJo5UKWFffsTLKNtaQDs0FP5LiRLhs=; b=Gs2wIgAcZmWxyTDd
	KeYVdDB8Gxa8ozC+wZyQ8fw97Su9GC5M6k0uqbUT6nK/uAAkATM7a7RHJ16ou/LI
	C+8/C0ae7so73IFo+TUeCf3s9WshDkc+fMiOchKyJOwP/Aoi81xOni7EvYNaWCMa
	2PuiSEWzDDvxgssAFrwVSuG9iMgP+N4ioVSGladcUPBMNAKLNiKtQ4C138Xm0AjN
	MNchec/spjYXwWUWNQrp+p62tgOTYmfChxd12y1inYXsjzuYwJSYh0mT5O0lzoAs
	97RvL5C7FB2ui6XM301aTlKKENW1TFEbBGlb1m1OrL/hfS+ECcxCXP8KVVLUDQFS
	UQvRFQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsgfr9fp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:45:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c533f07450so105018485a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768837528; x=1769442328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OdDan9HGVtfj4FJo5UKWFffsTLKNtaQDs0FP5LiRLhs=;
        b=gPdLtoyFwg0rLaxyW6yx8umaY/9gMSbNpXPAyGC/clMVGfq8YqQEz+DlpTmOUkLckn
         tUWiGMMxPpOymYxzxQ3LZnwxEcjgpzzuDDkn2X0LiphCa7F/hImJ7clHuTpybiwLmi2U
         fRFwGWilX8xdQlrj0u017lIBsrvXvMgHaIT1i6GbP9AsBqJgXekotE0ZxGF4SBzbTCPT
         w4fDdBd2NW/wJja4AEsfsn/jXlscaHREmcXFOtOCNnKn/MMttJAbdx5rekBJge9X+YkT
         bbvYg8fXNSoRKWYjJl5AbaEQjo/ohd7YUtLRzvRegIrBJL63gg+MwfeN5ilGqIrSMZs6
         Ce8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768837528; x=1769442328;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OdDan9HGVtfj4FJo5UKWFffsTLKNtaQDs0FP5LiRLhs=;
        b=iYKhmK5G35ABaclkzk6eJTCys3RRVNCf/Az4vmuS84mqf/JKhAzr0dr6wIzFNBwDaL
         dg6nSsjOl6UZVIyH0ZAfIUjglaK8GHwxFxRJPPK1nFqpl5duHIYJr3bv0YIbiQaLQnYl
         Cz/N34zF7Qbal/QJuX6dlC4K8flEdj2oFaDid8yUEmvoHjsTs93qHWmcifO5P5PWUXBJ
         JfxrzpIVP54MKjiT1h8T45BL6QzS+CZjaYBwre7ASZIZi8wHhOMy3Fp6Cl7IXmADX9eF
         4I+yIcflf8wciZQ5z1mj2mjIqlUonj5uR42WI5fUa4UCXm7jYhOjYOoSdTJtuXY8Agv1
         IKqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoHViwbrT2xzxyPQakiagpGK4CwGqGgCiTLl4AgyhsojLEfNPVb5C4g/zvGJFpDfJ/sSmtK1iAo7EG@vger.kernel.org
X-Gm-Message-State: AOJu0YyqT2eNOcaYwkTR3tdumptoviyvMhUDuLP+7NiZvjB6rRH49TG4
	1ZQ09w0ZSh4lIRDHTTmEGIPnlnyHSeROIw/dyIjslAoZ+Jjemw/e0iDuXCykGJXBiF3xo1F5973
	cDcVWohneZvJGN27NmBLTPLDSNnenUIq6rV0NkZe1Bxsdlg0DPpdOY8daFum1EVNI
X-Gm-Gg: AY/fxX6RR/CdjhDTjzkDwiPEiBDetbZZzne1E/tU6G9HT/E0SiRtkDH3TBmNUqS2aYL
	8Dp6M2YX/JMnUCDe7RrbQjCAiX2mQ912y2fless6qHR3KtRbixVXqy0oKEztF0vK0DgzDuNjseP
	2jKu9qz51+COtLZ6B2wOAiLhxJRZxZwa8kgEdc+wkvlMn+8Ypsay7WKcR9/9lPTIoh5iLMAQjT8
	ofXBHXOERnShR/Luc8QdaxAZ0dvSHKezq4Rb6hpbRHV/zMqf2igk7c8nWPF0RMads/eAF5XvwyQ
	Hi6EKrKDzUQLpOO/yOCIlk286bArN2VaJxki7TRzBngp9QdQbaQgI7LTbqR9VmA1d587Ebb8cKn
	SroxjGiU2cy0KJDhLjhx5Brwmf75rDL6GFusDAFOc6gsqNIXd9XkZ67bcOS4OJuf6UlU=
X-Received: by 2002:a05:620a:7017:b0:89f:63e7:b085 with SMTP id af79cd13be357-8c6a67c651amr1276687485a.10.1768837527868;
        Mon, 19 Jan 2026 07:45:27 -0800 (PST)
X-Received: by 2002:a05:620a:7017:b0:89f:63e7:b085 with SMTP id af79cd13be357-8c6a67c651amr1276684185a.10.1768837527212;
        Mon, 19 Jan 2026 07:45:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fbefdsm1110425566b.55.2026.01.19.07.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:45:26 -0800 (PST)
Message-ID: <89f59f3c-8cdb-4190-acdd-d09136c7b67f@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 16:45:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Fix volume up
 button
To: nathbappai@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260119-xiaomi-ginkgo-features-v1-0-3c8fae984bda@gmail.com>
 <20260119-xiaomi-ginkgo-features-v1-1-3c8fae984bda@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260119-xiaomi-ginkgo-features-v1-1-3c8fae984bda@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gr64wXR6VfRLoC5r8J56ZjoR49MSmjbc
X-Proofpoint-GUID: gr64wXR6VfRLoC5r8J56ZjoR49MSmjbc
X-Authority-Analysis: v=2.4 cv=c4OmgB9l c=1 sm=1 tr=0 ts=696e5198 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=0z5cGoq-UR3Mgirp60AA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEzMSBTYWx0ZWRfXyFdCBSUxaOHb
 WQvlHfzbXAfd+4HZI1LEULF8fM312eHpJZPt0/KObKjNnG08P9Zd9QeR6J7haJGC3kTdDXF+Zqi
 04/Dou4/HsX/2nWhXahhRvqunXzAHsMQeD0sPqsKLtBrNNvW6vv0CmRPSZzwv/ioooWlFqni/Uo
 rE09DYFWbl8HhbEKMt/lV7t9bvC/bWV6Mppn+l90h/l0eQrWe8t9dw5k3+F2Zb3c2GzVFwnXrXs
 5dpy1nFntWq/DZbigHTREcOQf3w5g2El/0IgJV9MPs3vf34+iOFsdXzq4q2zPWKXFs81ue/o+vh
 5Ud2lV+Iszhx6d7/0U+/SyloxwRKeep7RAjsTOqxvoQG7PnVq9sQ2U9DKm2KQGbonnN2YCbwIhs
 rmYr9JXSGvfRiwk1yBNYH91j6HDZpA916cepKRBXlEH1tMCMqCLGKq6PMn/+6gcec22PIVNmAIN
 IEh1Jqkaw8bp/aJG5vw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190131

On 1/19/26 4:13 PM, Biswapriyo Nath via B4 Relay wrote:
> From: Biswapriyo Nath <nathbappai@gmail.com>
> 
> gpio6 in pm6125 is used for EMMC and UFS thermal monitoring. It is
> changed to the correct gpio for volume up button.
> 
> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
> 

For future submissions, please remove the newline you kept before fixes
and s-o-b, so that the "tags section" is contiguous

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


