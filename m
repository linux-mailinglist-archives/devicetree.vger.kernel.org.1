Return-Path: <devicetree+bounces-225016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B22BC994D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 980653B8178
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA70D2EB5A3;
	Thu,  9 Oct 2025 14:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YkoKfHHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048F32EAB79
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020866; cv=none; b=lVjbl7oz6bpThcx4ppBVQckWTJ1tMTcCOyyigMwjNte1vA7KMoq1bQI/YNCYLExQY4HeoX0kruA2THMycgGIrkQxS6G0q+CBUoxEkqafkcnpuIQPHW8Phj+zJcOYQaJs9+BIfDyv5Cm3S70yIFLZ5vk+igCUiNAHQzVENz/HU6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020866; c=relaxed/simple;
	bh=gJD4F/VUtyf9cPnOh0/z6nqdkyZqGE2442d7pVCtk5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y7g0Z9ZGZfugUFgTmusMHGIukXwB80YnOSzgE+9DMjJpnlTQD3+WTWsxvbdTDRd9s5Kk5Bzy4LAGB6rhsl093kQkvje0MPoniHWFw736Ex649Y2FVN9irtmoMcsq3MUUTJedPLlXcp2hVRsCci/uNb6FNPAVj+Yft9NyAKDIZvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YkoKfHHz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EW5W3005048
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:41:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cE4ZbHCvUDpmT8UVULSVyNyY
	hgMn1RLMHyhsCsq4I2o=; b=YkoKfHHzQPmes5X5Lu7uBUVqJ539HybUmEdJTtNs
	mYRfymI5GNrRBZovHKlnalSNkYlMHKSjqwnoTeJO/1qKHtL27T5x9HHrJZmgiI5e
	M22xHnZS7z3NNq4D8F2wzNqTi5Z5QK0k4ggwg+4tC+j5+2wUtU2OthJvqKUjbNXa
	pFzTLQSFqTahf0gRoxPQgpHQalzx5K5clJ26++Arwh1Lo4yaS/t5/7FBdDE0BWFU
	atFEI2TtmTaL5plnap4dtdza/xhMR1m5MvItzmyoVeOy5pQiEGfvDob11DS4/8oq
	VB89Mc4Th3E2JqlfR96ntjKNXtiE+9qX3UyVwEBipgB0Jg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4u37fw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:41:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4deb67c61caso41976131cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020863; x=1760625663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cE4ZbHCvUDpmT8UVULSVyNyYhgMn1RLMHyhsCsq4I2o=;
        b=svxRrT3iPC1eIVQVF+aP1PgFjfEkURTznq8VUY0h5BWIrNAXS13eWWR5doZ8F+Miet
         VbH/4Dc7/omRwq+2QiKMB9UgPH7dpYExnXXYtl6wPR2P0WztbQpDZI92QFYlOa/H0uHY
         Et3qm+LKfobeoYEGmP/Bo54j1cQmsIe9mjVV7xpcScQ5sCmowrVdBQ151rTZPi5pUlNX
         F6Ac4MKKWZGOcvlPN+d5KTxvZhwcGQveZmjUbjvhQCwX4eHYQ6PFOtWqyhhkf+9K0LAu
         Sk37rdrxBy3FXvkcP90ZRO9Yglain+BK0gIrX4CAjgHcqBqAsBnoD/v5j1607K2VAv54
         P5Hw==
X-Forwarded-Encrypted: i=1; AJvYcCXHXKW4c5V69EsUolDDV53CM2qBq2Wp1asApNLr9cIwnyziUtFTjs834Zrrr+iXINWe19MDy2YmmxSe@vger.kernel.org
X-Gm-Message-State: AOJu0YzKc37CVqm0rwhgtdGm2t3xEkbo/Bg9tvYPv30VHGpmLGG/xrk9
	QOWzt8tLVVK92/Llvyux/COl9VoSwawjpUdk+FC8t/ESFhKv7E9eUpRZFEJ/wirJU748hmYR7QZ
	LK2sralRFM2VmQynwAX9rnZudKvn3m9+4t8JuZfMym46050D6FnnI1kuj8wVBoA33
X-Gm-Gg: ASbGncvu8rWmD4FrUNtvDdB0835mbgeiKIkkOpk6pVKfPxfaP36Q38AUJP+VAk8SZHV
	DbbNmCPH53bzEjp7QdbktVwIgUEHkwvMAsjJWhlOuJgoj6whM6hQLq4c0S72RuRIviEr8lRYJ7J
	JZFtUXnSGJw6omXAS73fnle0CE8xs3BahTprM0qSkfLah2okwXeKrNVKeAf/JopMLv5VBuN6cGU
	Ao5Y6aDEtf9TGMls2oVsJjTn3J6xqHHgB7lpid8FCdqnLRxbjkM9Oqf8pt0jHKh8CVuiI0oqK4U
	wz+f+EXs/2PDUYOtFcu8qkIdRH2K3dYwnTsvgpmzLR9+P3GTmJqiVYHyO1qim9xbgUtsBHCt1hn
	4XArtoQ1OT+OSvXNf+wCSTrpXMF0KLeIt/lelMI0nC+Ha23mwamF5GKcNEg==
X-Received: by 2002:a05:622a:4d0f:b0:4df:45b1:1547 with SMTP id d75a77b69052e-4e6ead64873mr98220201cf.69.1760020862912;
        Thu, 09 Oct 2025 07:41:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEm/vMZ4n1+Cr8Xoyx5rH/NZmEs2uEEJqGMiK56k8l9LCNH4tFsaMchJrEpi+ttYXYEnglWzQ==
X-Received: by 2002:a05:622a:4d0f:b0:4df:45b1:1547 with SMTP id d75a77b69052e-4e6ead64873mr98219731cf.69.1760020862443;
        Thu, 09 Oct 2025 07:41:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907adb2607sm1093116e87.97.2025.10.09.07.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:41:01 -0700 (PDT)
Date: Thu, 9 Oct 2025 17:40:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/6] arm64: dts: qcom: qcm6490-shift-otter: Fix
 sorting and indentation
Message-ID: <4zflplcqdjbkplu2pb3oy7pc24svrlo6id5kxr6g4ivvyrxh23@j3bfneurfaza>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-1-5bb2f4a02cea@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009-otter-further-bringup-v2-1-5bb2f4a02cea@fairphone.com>
X-Authority-Analysis: v=2.4 cv=Vrcuwu2n c=1 sm=1 tr=0 ts=68e7c97f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=0jPwT5uaXyJb8NjaZ-0A:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=TQZWkJv5rNK5-PaLMsrg:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 6tVtBsH8WXGMhHfwGCD8qAD4tBKNllr7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX0o/CUGYizx6k
 tADHOsh/6AiU8WA9tYMN1DUXHbj2uq7MNcUIfpgkxaytnaMM1xMKg1n9EfgPj4Epol1RjROYYYM
 lAGnccIkEQc4XXpqpnZ9zI11cr5rl2xHuATDJXMwt6E+gJTPVdrwNIl5mSy7jICbbvl7TqZVGis
 71y+WDZsu9x2XznPLqVigNAYTUeqI6RhH+24apNb/Ikd2tF1Z+q7eyXlWwWCeDi4srjg+z2sMPI
 4iYDcfRIlbdNcNE4jSosF18E8WZ7iTE/7t+FrbPs5Ddd6++pXuzBdMCCQn3d+HNYHe+rCGvi6HA
 4APw/q8ti9FrDncAXebwIMMcH7eNZ2njXMGGzE1t9fX3IcwfX9bl0JTb/4ITiPkXuoDkveuXTTW
 KtoDMpwwo5T/uAfozQeR+CqUmrpP/w==
X-Proofpoint-ORIG-GUID: 6tVtBsH8WXGMhHfwGCD8qAD4tBKNllr7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015 adultscore=0
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 11:06:31AM +0200, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> Make sure the nodes are sorted correctly, and the indentation is
> correct.
> 
> Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

