Return-Path: <devicetree+bounces-177708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C471AB8B0D
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:42:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF4F63AD261
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60583219A79;
	Thu, 15 May 2025 15:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W4+44zPr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAECE218AD2
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323297; cv=none; b=nr+vbXPSXSb3gLKRWj64QJE6i0c+lcQvSrQ7Xf35m9OsX98BKKi8AZiCqhP4BeFtE9fCY6OcJ2FuYtP7gxsTZbMm8Z6xyco146JL65CmcFKSOnnbWy7fpnKt12aD2GDY+QADKLs5tt+QZ05e+r5eo5HGWhkwTtdk1zfMvbeW2+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323297; c=relaxed/simple;
	bh=ixVP8pcTpJz5v3f3CERMJ2iDXMg23OMY+fwNf7RKcvg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l5QVjHSm570sYECY9t9gpckAm1bWwyBMnWOM1I9Pc3C69WI9I1ivW7JEDoGh4v3yJXZFq4CRYGIbz+rBo2TkVhnobVzCXBGgMQb1Uo1PrE/mkCMT3NLO3CTvYMjOoO99NOmo7KCDDHt0PbGBKuPD+YYAyK7et9uIU/Ov7O9u8jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W4+44zPr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFYhT031720
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:34:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4lA9ROa+Fk96jm+RavuSIENPK4Ma/Qw8dY3SARVyTTk=; b=W4+44zPrmFJUOxF/
	czpMNUl51CcT3hnQTqrrBvdxEbXdOCejmvSrIRDIbanB4oBwECKYLtPESVUqSBbC
	0EmLRKZcNc79jVRTdP7eI0+qPpdIRhQBAIuVGYBBr12+NTb0OgfawUuFeF36hVhF
	MG/kr/39YPtCFD3e5m6jn9KqIlz3gDvTQML9OGQFbU2LAAmYsa0vkoDXGfHxtZgT
	tCCfsHtZuBFbFti8OYo0X64ix/CjnVEImunXCfaKOWsWKqscK074hcap9RtDfH3u
	wnsfwtgyWmlOvcZORlEAN++RAzw0Dk7XtjTyWkdSySHAPxr1+Dpn+QBmSDWIyFIh
	pgm0QQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcr6h7k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:34:53 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8a8883437so901546d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:34:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323292; x=1747928092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4lA9ROa+Fk96jm+RavuSIENPK4Ma/Qw8dY3SARVyTTk=;
        b=vKA3UqyOKlFC+lU7pPe9LlVXsi9/RTwUJ/oX5vVOIrxc9zlIRqFOu8aFkdi/DhALAh
         kqEczRTGnn9h1BzVFbXY9Mj3qlc1RnUaeAgIXty8+BM4CAFND6IsKA5QINnWcyVYn81s
         XyHJsOXn6k7XG1LibmMMuOU9bmrJDFrceGb7RGaQufo/LA3P4eloTvr1dlDJyL7ZnacB
         8DzbxFu+/bZfPM+f56MsUx6rZyOdjXR3x4SqZSm6pODPfxoXAvezq2sfRhVyW7XzaWCv
         CwA6JAOobb1ir8GXJTgH9YE0DKaIJlT3YmX+YxtmCNxzgxS5HBizfObosB0ah8uQ3e/j
         gx7g==
X-Forwarded-Encrypted: i=1; AJvYcCXTkLL0iQvH5aWBIwGQEa7hPg6Pj0Yk5IymaB++jDicOtu5jx8dI5I63F8uY9RyhvyW52oPhKkr+i7T@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1KTJwZvZr+JPoMLli1mF8PZGUvvnzwVk6vRmhxuCi5QIxTEz1
	CU57ClyxtE/Vpf3HzyPgp/37QEwX9ljPmzIuyCU5CFFXRNe0yaCArKoae9igO275k2oeOpexTsH
	fjw39UzTeI3v65iSB49HDRHSLfUOTRxnihkfNzkNUNleTelSxIyFmt119jAKxPGoD
X-Gm-Gg: ASbGncs9MW9k3+P4PvBEzdUAPlT3nAQc72tQVrWfhNrna5d7c9y67Sp1vFWq4dFUKbB
	h7sPGen6MgO/Qr9Htaeh+8zUOwebGYBfZV3Vd7RwVaAjD7GTnb/X/kQouW4UdTF13ClaQt5So49
	RUDtIx4saUgSj7EZtdDyVJa8nZjzN/ea1t5TwkP63hybj7wmeaYZ+A+/j1VfV5h4E+caIUIT/qO
	MYy5VydMWwuAjx4ZqB/s8wMWGrERfeFo6utcJltGYE5FXguBm8bWPKlWk3WI+1wVUWyk3EC6sHe
	GTp/Z3vjQbu93JJnnP9F41HmlB8Sxa7rns+RYwYWoFGzhyn3DzOeVxXd5vwOUKHDtQ==
X-Received: by 2002:a05:6214:dc1:b0:6f8:9c21:5ad with SMTP id 6a1803df08f44-6f8b0864435mr966866d6.4.1747323292581;
        Thu, 15 May 2025 08:34:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjj2ZZDhYRB2enJaHEsOmAOykmUWbJUBTlc1NNsNBnxb+VMUfOdfTnLIoB9XZCg64ElxHH4A==
X-Received: by 2002:a05:6214:dc1:b0:6f8:9c21:5ad with SMTP id 6a1803df08f44-6f8b0864435mr966716d6.4.1747323292181;
        Thu, 15 May 2025 08:34:52 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04ef59sm6102066b.36.2025.05.15.08.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:34:51 -0700 (PDT)
Message-ID: <4a5cd51a-b88c-4ba4-a8fd-d065f9b9f113@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:34:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 18/18] arm64: dts: qcom: sm8650: Additionally manage
 MXC power domain in camcc
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-18-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-18-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ioHU5m0quP72zQCgAsJ8BqaSecg8Z8g3
X-Authority-Analysis: v=2.4 cv=Auju3P9P c=1 sm=1 tr=0 ts=6826099d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=l4YKJxAlfa9iYSc-yQoA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ioHU5m0quP72zQCgAsJ8BqaSecg8Z8g3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NCBTYWx0ZWRfX2PPJAo4gmKKn
 6RHXMtL17+Rvv4UrefmMkqdScpTspl3VqEg/3yfmuXAPuJ0V4QSaNFPmExbSD1uXbRRL2CxJYCV
 QG3COe7D1pMhHCBVej78JiEUJIE/tNHdM3mmquQ+363gKWNsNi4G3f7cfCXj3Ou+rWZSNWBLo6Z
 SMnExKoj2zyrSJvQETpMzMjGD3HUTqVIArqauCv7TJ9XjQI5TZmP35kVjtiexJ1sZ6dQZ4six5j
 qXvfyo6rF83vTgwxzYvbbt4AtNJnHTY73ShIsQJlI0sflhikf7PquacjfGLV4+6/IxKGyhmOCtq
 9dMhqnhtBEpMmHYEgZJVBoXAvhx/L9CQliYyV4vZXSCTO/6spzPAElXGpNYCNB2/CnjNp2th63O
 1eskVxsANcHZ3jWfcwAT9/WK54pY2gKFndwc6VKQVcI9RivCdPwigMq/dr8gkqFdM5gS/XkP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=635
 phishscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150154

On 5/14/25 9:09 PM, Jagadeesh Kona wrote:
> Camcc requires both MMCX and MXC rails to be powered ON to configure
> the camera PLLs on SM8650 platform. Hence add MXC power domain to
> camcc node on SM8650.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

