Return-Path: <devicetree+bounces-197379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C90CDB08F27
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 508AF189678F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7215F2F7CFE;
	Thu, 17 Jul 2025 14:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oa4q5Wy+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40E92F7CE3
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752762361; cv=none; b=jQ3ZMW9vL8d++KbnpBIKLlNfJmQ+CoNwf/rfoI+fCvrm0/qQyCG9qCu7DG71tv8Mvc/SHPZ3GMDIXOsN7mBH1EQnbJK4yJ2MY607JuA6NxtVex8vACNU1c89n1QShkIcRME2jaUVMz+VdU75rwmweQtAD8W87ExJYDflvmshAFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752762361; c=relaxed/simple;
	bh=rxGb3b6rCytVM4Jnnuf3rJk6tteWeN3eGG1kBvQvorY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b32ITmBCGj26Mpbchw/cfTs6McvaYh2loWGESy4a4f/qSMP1zifadvU9ufhfV1PSklfbwhrI4amMHOWKRs1H845QaYB7sSlRwFRJDQ0t3LUZqXUWQ/WZYV3zLCkwdnhg5CXUBh/xs9qvYg7B/La8HGu/Kzdf6GywEkID267l5tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oa4q5Wy+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HCZNIO025200
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:25:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1Tbo3hxwNdSzKN2ImQHTT4RdnkySw0TT6Zap49m8D/s=; b=oa4q5Wy+T8sLAGIf
	FgF5dPkHpCTu7jQjBrxEwjNvCiTI38WvdqHlfP1NY/WmOpb5W0eZvN1UrbDr2swb
	HufGsGHUPJs4Be0mnCF/F6VAh9iLgkJzpX/LIhBZQnHfoVh6JRY2c6YvSuZ1ncj+
	bbe+ocvufrvQQGdVmTqn3U63sr+ZZm1yTs5h8BNekTP4KfspFNEpuB9v4yH2LreC
	v4e87fBGq/cB689ydf2wVM1PdXaFLlMnfyTQjmDS4seZFrfCbiyBtzTrnzE+8Kyn
	rCheOdqOx1BJNeqUJz191rXnhwBv0vudkyAQirEbq+aUDhyZ4zve9wM+g4KAchjv
	t1723A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47xbsqc5wm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:25:58 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab61b91608so3084451cf.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:25:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752762357; x=1753367157;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Tbo3hxwNdSzKN2ImQHTT4RdnkySw0TT6Zap49m8D/s=;
        b=VkJMxnVIhY0mthP+N6QQ8Mfx8UD84h78laV64UOTpvblgo2/5lZW8//oe0GLPmxeWN
         5hyJnTCoYg3vdVh9L2AQrIc2s4CrvuexJdnwkXAmUkSynvzmxMipIqrcm5LBGmJlyxrd
         hwFyunh3/nRXM3SLy7GKER7C7WX+6FMST/YXl2+VhVgpLPqlCVcJwJRA0/K8rWJPQbuK
         JNcgBch7gMzPNxCPbTdWOoj+VRcCr8i73MElozaIHAcvGD0Us+zw0JqnNRofp9ltaByG
         tuMvuPJ44Pwq5lpxRI6RgJwlB+5pyy4p8WmYbd4PlbBVoYQr2wFuGSzdg4ZqQe1wPW2d
         ObaA==
X-Forwarded-Encrypted: i=1; AJvYcCU62T7Wy3vB7+V3N3aPLOsoctEvv31bEJkfiF/IYwDrPXVqRInHyFb7wtffGY7d6gwaCtgrEL2hP8KJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzOHtPTO7Xvht9FuprV6whQujMxxvdOgJ+ENs04yc4Ajcfa62E9
	UtYogkeg2CNzdOeZ9FG60EMxeYvYJFOoCAg67EDSuERJ8Mm4gD6O1QvFI9q2emQoP4YxB9XJmDp
	jFCQ/E14tarvS7bSeBbwqPplP0NuEsjhoy5eC3KOw0LYxntAOjJqC1u/iWjBMcSvM
X-Gm-Gg: ASbGncuwPc2tA7t444owB4aaBKw0Qp8/cjhlcs1wZ34aHKDBHLojEZWkdUIs+8AkFYG
	pQXZvqwhpHqhUH9r0mGeqnR8Cnsa/4T5w1npmMf3skAclrWTkv3TpYGk/OYLLVsp83CCVufeIXK
	8mdIEPjp3IYNWyGhKwMQvmUL9f3Wfx0vSrNeHg2Op0OjI+MiCjgrvGFdDTosUu/QAKyOaZeM/9r
	z3y2bG8msanI43ZfiOXnHaL3uaIKCc5aQkl/3uV8cGK3Rsbz1CF+uBGM9QIiBYqUJ/xczUQ/yY9
	1RbDnkfxktdhec0DKj5IRjv2ojRs5FsPRG4fYk3E/4HPPBh5JEiuxV+gX5jnlMojN5rIP1yV8SS
	Ko//6AenSebp50c2YSbHr
X-Received: by 2002:a05:622a:1b1f:b0:4ab:609f:d7d2 with SMTP id d75a77b69052e-4ab90c8cf06mr44175381cf.12.1752762357156;
        Thu, 17 Jul 2025 07:25:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNh5ls9nEoL9tUKQMnzpM+c6tj7YbKF0V/yi9uBQ+BeXiIHOFS1dk2lquey36qCD3DemVptQ==
X-Received: by 2002:a05:622a:1b1f:b0:4ab:609f:d7d2 with SMTP id d75a77b69052e-4ab90c8cf06mr44175121cf.12.1752762356562;
        Thu, 17 Jul 2025 07:25:56 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7ee4607sm1390774066b.57.2025.07.17.07.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 07:25:56 -0700 (PDT)
Message-ID: <ad40af48-7c43-4341-a4c3-73ddac129c05@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 16:25:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sm8250: stop using SoC-specific
 genpd indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
 <20250717-fix-rpmhpd-abi-v1-3-4c82e25e3280@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250717-fix-rpmhpd-abi-v1-3-4c82e25e3280@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ad1hnQot c=1 sm=1 tr=0 ts=687907f6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Cj4UM151Hv94rJL_BKEA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: Fvn6ZsQ1LCh1Xtf4M6vOAgqg2oqbs_Z8
X-Proofpoint-GUID: Fvn6ZsQ1LCh1Xtf4M6vOAgqg2oqbs_Z8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDEyNyBTYWx0ZWRfX5vwTkp0pYCTs
 2ha4VQtF1uvlnY6yHXq4OPOCk1q/RPN+vM13F6xqNFPy/yDiry0oFeDsuR/8Vo6Y8z4In/XgXIF
 /uF0mqvwHUaeq7c3viRRhamLJ5qQ0rqDCz5RFe6STxoUkmsApzXQR3M9SceYhNKX5KnNdKfzlll
 FqcfAKEqCF/rrjvIjeREf9Z/aBMY+tMw0I1iC1/lNePx3R5Jz2lpx7q6TVy2L4egeHAVsbG5qM1
 Kz8w4b5FOtL+DpS/HsliC6KUCHKGyB7w4CsG5mfeh6iosLlYlNlvNn4Cpy/MdZgDApQkoYN4C6F
 KPt02b3899DMxXKJWeUYnUKXa2hNow/SBtdlk2qzwlryuAbllFBOA1Izcv4fv35Ntul9B+mfIXu
 oxVsRlFNyL7rGbSFEqwr1n4KLYJaxfac3n8rWzrq955XQUOcmIvApUqXpHnUAJAhe94WkOJw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 mlxlogscore=797 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170127

On 7/17/25 2:48 PM, Dmitry Baryshkov wrote:
> The SM8250 has switched to RPMHPD_* indices for RPMh power domains,
> however commit 86a9264b6c56 ("arm64: dts: qcom: sm8250: Add
> interconnects and power-domains to QUPs") brought some more old-style
> indices. Convert all of them to use common RPMh PD indices.
> 
> Fixes: 86a9264b6c56 ("arm64: dts: qcom: sm8250: Add interconnects and power-domains to QUPs")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

