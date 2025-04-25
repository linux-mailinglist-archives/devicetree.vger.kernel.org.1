Return-Path: <devicetree+bounces-170724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A849CA9C306
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:13:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB3B47A60D5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C4123814C;
	Fri, 25 Apr 2025 09:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R37HHpOU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57CB236429
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745572083; cv=none; b=MZdpZLS+eR6RAOzlf7vGx9z9iodsWH5I46qqBlhIpRbjym8Wgs+A3xyOCEVFcvYYK7qZjBWkcahG7roxTgp/AkL2U42f5V5t2b+hWaamEqAW1nizgZtVk5e6g1hdvmKZ1MUnimFfFBjGOlnCz39jlqJAD8vXER8DF1qsm95c/nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745572083; c=relaxed/simple;
	bh=DsjDnHtiCgBweWj2Z9rRF9NFYYy/5gSoExnp430J+Js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=De0vYdwc0Ckw4jAblMY5Rs2EG3vk4V3DiBi9tKH0uVLEgifTPCasqjHk1QSwCWocCCgcM4fnK/awRYwIn3CnJZO55dz+LE4+Bq9yDBFcsjLNIi+awzApU6VrUakW+esrdMOuqdp6oUC8vf5nDif19d05fBIBD9iqLtGoJJlx1RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R37HHpOU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8TDsS012129
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:07:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=E7YGT9JoWm91VFNYG/u4ZzAL
	7c7lgU5OKZbu1IKjJ28=; b=R37HHpOUIk4ozHJYiR/Vf6YEkpL6IJnwmqdF+5D/
	Efzded7xua0q/u+CyTp9Zv6jKWBABfo7lgKiFApdm9UcbKC4jIf1amT0KxH3bbLZ
	FLWfEcCHT3wCUpHOqxSJ7752t7yf0yAv6XvetfRfvEKikA3uUX1Yx5HM8+azt9hW
	YQv78cpdaniUK/Bln8YCUxYmNVgQ0UJOsyyrXtNUb3FO/+vSAjCe90T2z5pPzFea
	mU1OG55KJ7uNj0zotoSiZhxPf0x/2Mj4APd9uY+bzL8UGZlotVbymTdvZ8o4b9Db
	zxKz2YpdNGirhCI/apCdUe3tRMWdP2hG2BDSbijWsWmAPg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh18ar8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:07:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5b9333642so253840185a.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:07:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745572079; x=1746176879;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7YGT9JoWm91VFNYG/u4ZzAL7c7lgU5OKZbu1IKjJ28=;
        b=nP6p9YltJPV/6TmUd6PjSmHUpZ0q7d3Ja7ay9vkZQWTM3n5WYlkeuK2Gi/Ds5K3zIw
         XZRMxCN+b+NGubqEVarqbUOCj07UGpzHTYE7vR5rQ+URFCvD/29I7Hf79dVKy+0076SU
         f/pG1im4dh95nll0opTdcKFjXOfWm3yROtIujS6UYpJb96S8KheM880zttnl5YLGJSM1
         jIHLRZ9jVEvPoX+Nn+tWIfbamx9Z0rCy7yHt9nH5w5Ko0pZ5ywp5eKMDfqicwbS+UTNO
         n0UOpNwxj+CVSZ8H14enRyIZf2rz3exn3VBKvG1zkUAYVtQOxDS7hNsjUBOZsVT4NXWc
         JS/w==
X-Forwarded-Encrypted: i=1; AJvYcCVkN0tZ/dcwuye+FaljJLdKFsU4EbAT6MXp6IL5ZPnWhsUmTPT7MY4kupaIOcSQJToMtyivl7vTOQWK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/waXtymw47RKfWYTonUhoa7vneBmz1m4szCkkD0gnCO8aWC90
	yb0hporiDeCYRh3CxnPC20faiM8k61lR/56yPFxYc1KQhIF4BYZzaurfLTmRHnoni0umdZuV2/e
	o4hVT7pGv4R8Jf62XtJdTQ5Lty55w7AdwiieN7l+er8NHGE/7aymNIkHbDZPw
X-Gm-Gg: ASbGncsu5a+clqzA5+4AXJ/wGUUZNyYhtrEgUOptow9H+Xvf8U5bK29IhxhS2rdegsV
	8nOh0UPEEQ3KnGm+QeMvNxLUQqa+/bX0X1yrUPSk2wr4OwVx/1KHD57SVyWrVf/+M64Zl1XFGYz
	fB0Veu08sLLmwkCNYBwHE5PmTkBIm0BjWITthYKHbuHiIAm2fWUaqJLyO0k76eYB/DnJCOqWxeG
	bfFIPOjX84ioLEniIDcxTkZInIT7yMaTf0kKtKh+nQEoU8HIK0DF671uc8VFeOiIp/x5YxTra3G
	B+JDSwBa9Et4qmHoNoocgF/kaBpfxCNAY0H1V/faOO9gfDQp/RgqPmmGcrs9wgOHD9F7UqP3TRI
	=
X-Received: by 2002:a05:620a:1b99:b0:7c5:a463:397b with SMTP id af79cd13be357-7c9606e0b7dmr246312385a.20.1745572078694;
        Fri, 25 Apr 2025 02:07:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHpqKgmY/joCABcKakjj51b/bf9LSO5bp8KVEFf7NSYBd5yr5G0Dj8JO9ClMIekjeU5G8jvg==
X-Received: by 2002:a05:620a:1b99:b0:7c5:a463:397b with SMTP id af79cd13be357-7c9606e0b7dmr246308285a.20.1745572078331;
        Fri, 25 Apr 2025 02:07:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb83dasm520591e87.249.2025.04.25.02.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 02:07:57 -0700 (PDT)
Date: Fri, 25 Apr 2025 12:07:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/5] ASoC: qcom: sm8250: add DisplayPort Jack support
Message-ID: <cgog34zs3e43n23mkt35swvu2ibuoaav4ccrhjoizg6b4kgc63@36blexv25aud>
References: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
 <20250425-fp5-dp-sound-v3-3-7cb45180091b@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-fp5-dp-sound-v3-3-7cb45180091b@fairphone.com>
X-Proofpoint-GUID: Cy8OPhmoeKJ9xy3tKA2sc1RxGCV5YeD-
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=680b50ef cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=EBsx7UlYEkoSbB8InyQA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: Cy8OPhmoeKJ9xy3tKA2sc1RxGCV5YeD-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA2NiBTYWx0ZWRfX2Y027h2gaXHa O8fsh5kNJ48nuqtuJLxugfaAQ2Ps1Izvltxt3InkZepv6rw2mGufyZLzy6bpWg9CgjSbT3lSIdp xMh1loXxObaHqj3SFliYHlc9o7lQqTThDnKHVNI8AwzHdX4vi1CAMqZcyN418pmChMI802GBK/a
 3sHICW/F2+gZn5jTZpIAfdkZlKiZmv1XboIjhFPNYMtfKz/waj3avZFnUy+sdxetizqWzRA75Je V2A9W2GpUUReoQVcjAhntERypn0zExm1Tk6jWdMJ/+IvYRbn5HJAqtWxw1NcsN5JMz+VaJv3vVw xtURRi6/9vC4kIN2O/VCwlz+M0QWPNjznTfGwBBgbSSkthJG4a0HkEGX6g20HKc/bXa7GPX+do/
 0XimevohIDHnKVGEE+3RaNU80R5r3279YLpa7bfaTcLnFXHzsoIhq9UfZ1y6lNPqBjaHX+I3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=868 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250066

On Fri, Apr 25, 2025 at 10:07:27AM +0200, Luca Weiss wrote:
> Add support for DisplayPort Jack events, so that user space can
> configure the audio routing correctly.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  sound/soc/qcom/sm8250.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

