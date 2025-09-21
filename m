Return-Path: <devicetree+bounces-219706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46499B8DC6E
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:38:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0203E3A728C
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A342D739A;
	Sun, 21 Sep 2025 13:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XcNGjLEF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACBE2D238F
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758461895; cv=none; b=KKoKzWCkUsDEJ0bP08vDqBR41LMEpOx9PtokdqVKbR7yfn+fVHCgoZ8hy7TwN3jXRZs7LNQkCq/e4K1xVSY/3GGt2lnogEVrCCc/Ty1AFA2fbBvucfH1T3Eg3/fKamhMo863FtJhUM01jyxJtbSeOT67OdOK5jRS8/Cm7HDe/DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758461895; c=relaxed/simple;
	bh=kfxzqQY9FBGo3ot94aCtIjWQ9LMwiuq7sLB8wE8t39o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GLaz3OqJOLio491tuAfgXfNgRM/YtXf63poG4yqVwAg8I9mCR4kaTU0nhGsILx1pY+UVdu/CJlD99OqTlPx9vDCySydoLmZWmR9m/lQpuzzceJwonMbkhDvRVBnXxbeuiuk7a9zTNMBBdoTDmYL93Lb02QM9++YINRJdUUL1LDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XcNGjLEF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L7nkGu018503
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:38:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UXvFsOnz/bg69aGhRBaNFRF1
	HMJGHKlWWIW714fk3pg=; b=XcNGjLEFG00hpkufZFQIfp7v2mbvMgaRHxm1X98G
	IWB79xydbywzYmCvdaqZ0S5Hfv4/ScxXaHi4E+H4WHRB3D/nSC3/1VITg19SC9zk
	94QvEKnkvCEg1Pr2z6ULYONwsUlfgadBqpsNlftFAKQHIVzwfrzBqD+2GxNn67E4
	/ojYPjje2uyGgjTkWjFgXcesAAXVFIYDHo9Eiy0qNJ0624CEa8sQapivGGSF29mn
	D7YXNOuZiFTHrGVfgHdjfm5W7Ztrkpxhd7CHIvmbLFZiZOBJPWjJQWK3PFAecIkE
	JDy8f9MSjSQAL76Oo/Doogw6OrzSz6ESZTka21AdxGYYgA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mbv27c6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:38:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-79538b281cdso51771356d6.0
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:38:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758461892; x=1759066692;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXvFsOnz/bg69aGhRBaNFRF1HMJGHKlWWIW714fk3pg=;
        b=MSrb81SoNjA+vOwXj8BaoRZqPrKoOdXJGrMcx27ie19B+Q6lsJirNk+/A1MD0JwFhc
         VXRjWsZfryZXdhifzk+CYAAa2oDoTwQ64RdkYMwLwR6fVfzNmMDxH8GER8BeZtEurAVz
         f66LAJDuyorCdFHFKmxUQe4E2JvgNyB40DDBDjmAcxrbd1t61OCk/8TyUKUSKc6+8PB3
         sNRlU5VOU6x0D7vKTyHwixzl3c/UOHV/Y2AO2KE801mh3AHrOPTClJwRInMhX4puEj60
         BErocAxh3T/j/l8F5OKGfiKpUJQBshWFAg6Nn4m/bCYAvF0VXS7XtuSGmvdM5gX43AOc
         TACw==
X-Forwarded-Encrypted: i=1; AJvYcCVRakVJQQ7VYx9fIVpMCawAf4HKQ/Ha2hRleOCt00rj76GxnkayjHCoUJsEGE+YoBt1fmQhhD6W7MHY@vger.kernel.org
X-Gm-Message-State: AOJu0YzXnhLXMNuNBRyLFXtEZWwUwqVjGtJP2OaZe5IsPxY42Dnb0O0J
	bduLejpHdZvn3iBNfsLDxGQDGucjFZL5zbjpbTLm/o+OJVbSfKq5gXXCcDeoWNP0Xl16Gho1tDH
	Fp2xX4IA4YN5TaKc2jsx+EGxb8QUjUi8oGfVS4yZuXlPGYNst40agka1OBVCxGJmP
X-Gm-Gg: ASbGncu/nfz1bjMBF+Xrmrg2Ejf4+12OJbA3OwstlLFyuBOPOJai90Jzk5XCog9DuR9
	FHEb3Sca53LvlTFtVwaavPw0Uc/mrEbgp06D0tUU8MUzOgVPQ05XcWThXD/ZkBuG7bAAXUGZQa7
	0wHo/dKByvjKMs78wT6b02JbHQ82npPn51uKFmaRnEPFq+ltZSsUFLk4kBuJGBVZbdyfpdk4anA
	XTydyiZCF6pgYnJ0JoxvgWweeA0Cei5N8jcMZrYp3BvXhORSKbse5cRkUd7h808wEdvjKKeHhR4
	Qeb2OZ+82lf5052MpasZr7fGPh45cJnLwnpDv7cYqbxNRyeinY3LA/2jgnh822KNEoFpPwG8cBP
	y//ZfpLc/mz3yIlXQBJhbBHZzJYAY4ZZCuae748XgAZ9GrXFoabe9
X-Received: by 2002:a05:6214:14b3:b0:797:1e3e:bb0c with SMTP id 6a1803df08f44-7971e3ebfa8mr79271616d6.33.1758461891584;
        Sun, 21 Sep 2025 06:38:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjThN5e2uPVDWFKuoGk6IPrJFb/I2On/gRq0XvQWhXZz/M9H0O9RQW1RejBp9P/jCHPApZBQ==
X-Received: by 2002:a05:6214:14b3:b0:797:1e3e:bb0c with SMTP id 6a1803df08f44-7971e3ebfa8mr79271446d6.33.1758461891143;
        Sun, 21 Sep 2025 06:38:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361aa480bd5sm22491641fa.65.2025.09.21.06.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:38:10 -0700 (PDT)
Date: Sun, 21 Sep 2025 16:38:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        David Heidelberg <david@ixit.cz>, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>, Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH v2 2/5] ARM: dts: qcom: msm8960: inline
 qcom-msm8960-pins.dtsi
Message-ID: <ehpuhdh6pueeqbw3qoq2ad3xqjefcevja25wia2poyf4kzdvbj@ki3sjyots5im>
References: <20250921-msm8960-reorder-v2-0-26c478366d21@smankusors.com>
 <20250921-msm8960-reorder-v2-2-26c478366d21@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250921-msm8960-reorder-v2-2-26c478366d21@smankusors.com>
X-Authority-Analysis: v=2.4 cv=ZcAdNtVA c=1 sm=1 tr=0 ts=68cfffc4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=kbTPNbk5bq0GMcXo2L8A:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: 9cXWWCnSJ-AQ-0GsR0oX_rw3uPjYj-GU
X-Proofpoint-GUID: 9cXWWCnSJ-AQ-0GsR0oX_rw3uPjYj-GU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMSBTYWx0ZWRfX9b49ZJky13WX
 wauYuIPgtq5rSsAWFDktjkzhsCSIbl7LO3nSKvt5j4lXEaE0JLWmBNCagb+qTfmzjuaqLCRoyF9
 0hIaPsA0ehkXU1xECfKZLtcWTPNvzScM578M0Q4UANY8+H2kqquYxHBlBjJ/sYUUKGGQcpMj2ah
 qT2hWZ7YL5JZlOhUeUpzwlPjwoPhqA0m8FpehEqU3y1NCws1BS3AKzBsetxj82s9bpO64I5+cq6
 pDWEybxrFCSLgD2kiQx0e+3WrVfZ2mQ/I6z1QhmdJ3wwvvIGhU9yoDrhWhhxEB4EzOyPlXblRUJ
 2Fh1W6dqE8Mw1dOn7QSvvrCOG7fwsaXx+C2h3bWywxtFB3+lByHT5QbS0jjqhMdsMUkUOjgH+Iv
 Rw2mYdM7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_04,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 phishscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200031

On Sun, Sep 21, 2025 at 03:08:05AM +0000, Antony Kurniawan Soemardi wrote:
> Inline qcom-msm8960-pins.dtsi into the main SoC dtsi. Most Qualcomm
> SoCs embed their TLMM definitions directly, with only msm8960 and
> apq8064 using a separate pins file. After this change, only apq8064
> remains split.
> 
> This is a cosmetic change only, with no functional impact.
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Tested-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960-pins.dtsi | 61 ---------------------------
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi      | 59 +++++++++++++++++++++++++-
>  2 files changed, 58 insertions(+), 62 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

