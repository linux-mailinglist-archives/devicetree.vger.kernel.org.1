Return-Path: <devicetree+bounces-179351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AD1ABFD1F
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 21:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF5749E0090
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 19:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFEFF28F942;
	Wed, 21 May 2025 19:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CxL19PIw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4091E1C32
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 19:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747854183; cv=none; b=mI9IUxic4CgZeMJc/I/9gVVfK/ZfxHvnWRSiIxZX74/nTyMcPHQR71xYYE/P7QIDUpsCG/8efarGoqXjBMmfH3Adea7J0Jw6PVDp1ZYNOZSmGzZWlO1rDhEoXeVEIheX7i0VnKU6aiWjThLaWRyW6RA7jEGFZZLFEVrS1I+4gpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747854183; c=relaxed/simple;
	bh=8twrfZ+IWMuXm8fHTJgrikxj0BAx38DiOL17BbqoCBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aURXMJKtXKKQj50FF+f3EzHPAd4OEmCKf7JdyK0n72yvzYj69wT8XCjVYVZx7ZCtOvgu8PufcIixrh+Ylc9ubwsZ7t4RBatB5WZEJcBlfrvSHLmkcIWvzYZSKUIqzGHpFwQcT26IHmdqOlfpIdcGumfgvCpNbZ+1JYLKCk8BmOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CxL19PIw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LHg093013629
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 19:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hZvwU6rcn1pU3SuVgKIwUOa5mEmteb7nXnsZfgaC3Wk=; b=CxL19PIwSFTBU8oj
	l6VLwLrdcSv/c0377U3U+DmxCKS/7QWlBdDIZXNM576sGs1HLErBOb6zL/Qe/udJ
	PqsYaLiY2p4oNUclbqV10iQggH7XM8VnUxhV5KArprwx+EETwpRGXXHFSkSsy2w2
	m9LCYv3TPI7wPkZ8BQOQDEcDW1NE/QUyoK/NkD42hr1GN4BPGeoVMcDrd//h0hz2
	3kNSZMp5VkkTpnj7NnvnaqnmJennMCyEc7AWFgw370w9rI9VY3gmqTGJn8kMYj+Z
	A2wMz26elrq3/blKPd1u+hvrDXPwQtdYZxFCtDAQ9uZrwHvKZAcmmI9jEehrzHeS
	BB/ugw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh5c2am-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 19:03:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5ad42d6bcso198277385a.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 12:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747854179; x=1748458979;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hZvwU6rcn1pU3SuVgKIwUOa5mEmteb7nXnsZfgaC3Wk=;
        b=MKfbZ3sTmSmIEYwyX2LEtaPNs/qdhM16IEfQHlNUo9s2mC3QhHMmPaIqghXsGGsJbU
         FelSewCIFC6xDWylsPdlIhBOm5nCBAW46nM8wHJtRD4bkyswiDQgvXoquwlFmvt0kRUm
         FCKYqr3c1M4d129X1A6ZYqc+83p7660Ih1Y7OXPpGDMjp2rhRlfeRdt/BqyHDJuq8eow
         McAVH1D1gzDbq4ZSSSHmFG1use25RW2tXTD/6VUwv2pNE0J8RAnk88BuVUSevuQCnqsy
         f7MZJD83uHHlbKdD11i3sUr+Uhfn3DOQ7/tN2NznFQDsCgJxs4NwOsStc3TAzomNq+67
         F1CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUbB+KtXVKWgZjg24yijgwhtGGGuQYxaVkrF9vmFLCQypiVdv+/X+kVWKPoL4Ru3IXjgf/1fXzfnds@vger.kernel.org
X-Gm-Message-State: AOJu0YxI7VKWWA4Zs31Na++YZycgJhyTv3fYHqbBKw1mLCS7lVI2CFBl
	keD3tdPtlGUOUK1EjMZYRcQK8R/ZPc34+y+KgZemLO9VRZzdfh+XcluUT1p7ZN5YRUynBFzR4Qw
	3vtmz7QH5u1fpiD8FQaYDv+rWcz1x+vQzuxw5ZsMhgtBIsZzqW6E/Yrcl6YJ6MdMh
X-Gm-Gg: ASbGncvQc+eKUA6m8owiHn7YD03zy9ucgsFWK4hbQNd3YuM3D0Hxi8qIAhTjRzHJBOm
	uQVKLsvI468YO8dM6d8WwPkzOB8GYAWSo0nhgpVgWedRs0maD3ccicuFLy6GrJ1YWxovPSiWe7j
	Jpp/qiKZaLK6ATcLikXADcNmqwdRwz7QW6iUTx+dkSGpbLFYVWhNSXW+Ksuf7pFXhmq55y8rr6Z
	h3rPy3RZ92/RUkQ6HlgPZ42pZGH0aym7HKs2xr3tYDQtDpqcz32k7SxoGIbDjNgWaAdOMDYH95U
	sE9+xEkWFzHGi6y77YPVK5d+r8m8sWVXwYFCKKXHnVl2bQUcdmrHN7nGHHR/f0MYKQ==
X-Received: by 2002:a05:620a:6504:b0:7ca:e39b:946f with SMTP id af79cd13be357-7cd467db69bmr1311536485a.13.1747854179433;
        Wed, 21 May 2025 12:02:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJthzcnQRjBSEzhEyNWSkKkY3ARkGqwf4+As8NUm1pnKzoZ9brBaKeWvyPRtoJC9YLjjiNQw==
X-Received: by 2002:a05:620a:6504:b0:7ca:e39b:946f with SMTP id af79cd13be357-7cd467db69bmr1311534285a.13.1747854178861;
        Wed, 21 May 2025 12:02:58 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d047c30sm937346166b.6.2025.05.21.12.02.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 12:02:58 -0700 (PDT)
Message-ID: <575212e6-5f43-4e41-8bfe-8774f07d78df@oss.qualcomm.com>
Date: Wed, 21 May 2025 21:02:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
To: Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
        bryan.odonoghue@linaro.org, todor.too@gmail.com, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDE4OCBTYWx0ZWRfX/gqkZpkvbzEg
 94YZwdNiapnWdIh4TofK8x7/C/Z6mpvdR11rFDER357xLnn8B+1oyI6U00AzFc7jzbM7k4/R+QT
 6ShqU3LceLfq81WKodaHIb5hNPw8+Z0TZ6s+LLtT36iqm0+UM/ix0FA0fT6Fh1hzYLorCPr0OUE
 2a3jRBv+oAg+j9rEqyaQrsm01YHkayF8KX04UvHRSboNqfZKSr1OdBeXfXm+20OsiXopra7ZDGY
 0Pis65pu0JTXcOriagJFo5NF1Qyz7oOP43C+PM/x0L0gtabBmSoQr82oTZswNNg/Eaf5AIxIsLG
 c+JyGYcydkbEDC66DF5xs5uPD9W5wVZdk7ZKGKVgaNImO4yZOH3VlJapSZJw6/F2ezY/4eRkyi0
 440apyPhoN1OnCtSTF3wQuFj82kzPOZX46djbewUKlVbS9FOhiIU5FG5Q2zM0OJNMG1f1mi5
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682e2364 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=lBa7_Vnelazs750aZ08A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: tiiTTRmwsqFhyQBY7wmT2VWh4dPSuJMK
X-Proofpoint-ORIG-GUID: tiiTTRmwsqFhyQBY7wmT2VWh4dPSuJMK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_06,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=853 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505210188

On 5/16/25 9:27 AM, Wenmeng Liu wrote:
> Add support for the camera subsystem on the SM8550 Qualcomm SoC. This
> includes bringing up the CSIPHY, CSID, VFE/RDI interfaces.
> 
> SM8550 provides
> - 3 x VFE, 3 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE
> - 3 x CSID
> - 2 x CSID Lite
> - 8 x CSI PHY
> 
> Co-developed-by: Depeng Shao <quic_depengs@quicinc.com>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

