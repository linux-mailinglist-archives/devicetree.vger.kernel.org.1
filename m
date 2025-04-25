Return-Path: <devicetree+bounces-171005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ADFA9CFAB
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:35:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5383D460BC0
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F06620D509;
	Fri, 25 Apr 2025 17:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LHUmUr9p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1151DB92E
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745602496; cv=none; b=LZxxZOpB24uNlHzg0O+HKQYilBGypc5GJDAJRSI8hwlkfUNHOjlKv9fhjhJbn/lJN5ZMdbUB9U8UnzAH9FvwJ7KjtqSTxAZT+kV/9/woDWo6ln7+RHPD47DSQvEpwmCZADeJZXy9JkN69WTtO81+9Fb9+RgcQ9FjNn/C0iWeZZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745602496; c=relaxed/simple;
	bh=TFEdMlNIoiQqELt0JCQQPUgIJevHQRS2Vk04AlYrV3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YXUygdDLEZLy2XFVQMl7El2bX+AXSUklJ5tHj1UqlS7vwxi5BN1WdXs7UcVeBg15yzkH8mhMH6/IKqH9cEM0k4rStqvvMtTmmJJy4CwDlNW8erTTHyNUQ+Ed/dxpwFG4bgHNmmKVmKC/P25dCXFaj1uyDvqfA5fLrKWirZQlhOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LHUmUr9p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJpi4031931
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:34:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hLwVTepjDVXejNa1tCFYvYXy
	WyUbn6X2cQd++bAXZOs=; b=LHUmUr9pfAs/bqL9pLDuq57EncJrCRHzEseO84Vv
	a82s0WHx+SIy46WdNQzPmXrvMIPqcdblp12K0z8Pb2bcrMtZ9DqCkfHXuF7aLcFQ
	6AfTX03NYW8uuSMwl8HWjXuVC0tnA/eyNCMkfvceMoyZzghC2Z9kM7a9Jj5rj2Rb
	DR37x2o/XA8f6VWmdk3sDKRcIAr3tvQ5CsV6Md7fWocjhJfezioc06GDCJSyWgbM
	NJ9nuId6HQJ9st/GuJSm2hOfFyzNZShys5xW/UmGrlJFYEUGmd2BNz/9rR1irQYK
	BRI/1aB6NC+XG1Qv5rcj9ChoCo9+tYVnGpoMbcUxbsJOAQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy9twn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:34:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f2b50a75d8so31219416d6.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:34:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745602493; x=1746207293;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hLwVTepjDVXejNa1tCFYvYXyWyUbn6X2cQd++bAXZOs=;
        b=wQfzGbLvtOVoEdixQx5XPk4Arqb2yZcGKsdr8X0puLrb1SFIRohEt1lscKyfYMpMDO
         kkN/ILOaRz5q6jMBryfGuZ60ydtpysMWpseIIbBb/feCWoesGD4UYbaxHajM6UvAmP/M
         OtbsYfgcICfSCGuVCYrQdD6XKPMeOKkLxNNeknJq/HfsaUPqoFJxFZcO7v2JbwYy5l6J
         Igbnu/YR27t/PbYXdbicOK+mYiVo/VmOIxIPKbyTrvZJL7LfA3i0yZrmHUpzjis+Cllg
         r5O/qXfQqFybykcYs6egrMsNYeCyGemnNXTi9ZNRxiE44xoD7guN188RsuBZQD51a3O1
         Zt/g==
X-Forwarded-Encrypted: i=1; AJvYcCUFQw8OjCaftj1O1F73Uq4VwyYX3x/yE33H5O9GIUyOQEpcDiVqou0w4C+rwH7y2oTlcTPMcCzGD2bV@vger.kernel.org
X-Gm-Message-State: AOJu0YwfTAFF9sNMTHldaFeAdHgMOWUoxBPOhEG44PonYEYjmS5BZPZo
	foKdciyH93JsfpzmU3czhuEpaK/YyUWTCyxBwU+BKwxF1hIe5c+cnE6rr1+YifzVi/XQZz3jskx
	Wx1PuGSod11CR7zq/GpjDhG/2iybuFunieRHggQpyJobBq8WjDPdr0UevF4F7
X-Gm-Gg: ASbGnctVbWbtVHbdeTp5+FD6wibtm4qNUrAU12XG4BAA3A8rCb+5s5EbeIpursHBK0g
	7Bu4XySqsEy62iP1fSSuWKJxwaTM3BhsY4U+kzAwgZOK9LenFwiBg4IxTJaEemwF/8nZLEl+ICi
	k66o+SF0475fh/pVUgA8/hKy3yQ5veIQrFvhZGqsDS+0h5GpDMqZglM+xQcs2qrndYjOAPaPwtR
	IlepAAVWkxTOhMnE+iXIb4hGMXQKDyaV17E8I5y6N3zIjPAk8jKo0T0pp4QY957c9RvmHKxDhMk
	X9QmyCeQRX8KzCfNJOQz5EfcZ/+goGSPhJbLiyhHPF1CIq0yV/FWnpLLjgWddSCzHFit/WBG6iU
	=
X-Received: by 2002:ad4:5c66:0:b0:6e4:2872:45f5 with SMTP id 6a1803df08f44-6f4d1f16818mr4509296d6.25.1745602492736;
        Fri, 25 Apr 2025 10:34:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0SyVjc0RwTNTmuwQe3VVznnrOs1x0zqUz05amuo9krdS8Yw9U8i0uKqP+X/0Qq0cUkmLviQ==
X-Received: by 2002:ad4:5c66:0:b0:6e4:2872:45f5 with SMTP id 6a1803df08f44-6f4d1f16818mr4508916d6.25.1745602492411;
        Fri, 25 Apr 2025 10:34:52 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d0019d59sm8153871fa.64.2025.04.25.10.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:34:51 -0700 (PDT)
Date: Fri, 25 Apr 2025 20:34:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/11] arm64: dts: qcom: msm8916-modem-qdsp6: Use q6asm
 defines for reg
Message-ID: <kwvouq7elpyzktrwqdzjg7omzzn76ocxtauhlmpwgv6i2ca6wv@gpjksblyphm3>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
 <20250425-q6asmdai-defines-v1-2-28308e2ce7d4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-q6asmdai-defines-v1-2-28308e2ce7d4@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNCBTYWx0ZWRfX6t8XGWrHvRZU MP3ogipyoMB+sfyqXvjovrXyUw2xGkeEyYAVHZ6pBm4kIZH2vOEROzFpbo37Xf2AhOSrgkCdXS8 FIUCKYw9f1e6bhBYBaeYyd3rv51aBz2EuqznLTijXPKY+xX/XrEot+ccT2n3yQ/fI6G2sEjQLu8
 b5IFN9W6PN0v7i4jFbZZVuN5/jn0VKb+EMhh1Ld7/KwjJKmzsp0e3jNc776AQcKkHUqCBkyhUcB U0ugjdjWSTS74jaulJMHxzka9eVDzxNBewSxhfHYewBabTJ9sgG42/SeJWAT++dLj7x+TcAg+HK nov9PHnJhNQx7LMZYmAl050S3xNaUy9kzuXGyfRdFZEpeSwLvnX8jGEbkxTjb/0GOSH8gr3PJgj
 wSvo2N7eRxCwGgalC9tLhBdIEEa1h9S/Vi4V7+3TMVIEm1mlypxpkvx2dShYv9yA5LPrz5Nb
X-Proofpoint-GUID: 3Xhriu8eq4QlfCs-_ue0CiVC2uTcCOGp
X-Proofpoint-ORIG-GUID: 3Xhriu8eq4QlfCs-_ue0CiVC2uTcCOGp
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680bc7bd cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=0uHdMyS-I8ESt-gxu3MA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=660 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250124

On Fri, Apr 25, 2025 at 01:53:41PM +0200, Luca Weiss wrote:
> Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
> readable. No functional change intended.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8916-modem-qdsp6.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

