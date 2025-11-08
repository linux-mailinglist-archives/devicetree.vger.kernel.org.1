Return-Path: <devicetree+bounces-236352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E1C4340E
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 20:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 393F8188D7F7
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 19:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924E52798F3;
	Sat,  8 Nov 2025 19:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pIEl9Zrd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DokuCfRp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D3B25291B
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 19:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762631173; cv=none; b=B4uy+MYQ/rRCcU8xX28/F/3rBZReUC47XdK8TJHSZwyIDs7B6tdSvWv1S7EM1RFv+wddGwY6Cy1TzWx8xY2J6JykMaHQ1J8lV+ZdSN1uPaPK2uJrPce7sClD1lPIvOZ+J3tsD1CKbTHjbQln1f8f/pPOh46vGyubw7uXiWTLd5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762631173; c=relaxed/simple;
	bh=+Hoil888rGf7WfZpji4y4VNmOyUwaxNOhwYYWlexOJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=drry+tgmWJOjdbFwMwy1LWmIOKMmE4kMd4cnI1llUzihC0ub2kEvyiC3v2CNOFr0gpEVloWdSJPonb02bU7Q3RCeL3GKbSC3MdB6f+GMxITiAIkYE/q8gZXfZuQMOYvWQl+YjkEv23S9ApKUPtO74wJwRa5iBTRl78PVSwRsKdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pIEl9Zrd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DokuCfRp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A8FLZLo2423072
	for <devicetree@vger.kernel.org>; Sat, 8 Nov 2025 19:46:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=N5kLP8hDSeanKiERqglKodoR
	Cnx8rVn5yjp6JtXx5aQ=; b=pIEl9Zrd6spWFEWF0oEEF6TNGZQW0DzqEgEONpBZ
	0AhHTZBrEOrCanWbOIRRceZHDYSDpxUzTlMpU1tQ1nExMM83HVfkxCegwwjS8dh1
	1ArQelJGO6WJbYqvWVTWBd/AO4yniwG9LIQCdUet8a8luT8wwdq+6dTxRUtmXKRl
	3iWhjTZ/d0Zo+jbP8F61yRSJ2kEgP8TwNrva3LEKPfETvH7vYBt3HkVsTsmGil16
	HHKWeviIjiod0t5o54aWRjHJC8FiZnZ0FFm2LGMVPQY7SS45Pxgu1Q7V5/azEIX6
	4pZZNRnF/CkyG+Vyu8hV03U+YCo0EfzYMKhngr5xSB0Hkw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xwfh3g1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 19:46:10 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed74e6c468so25147451cf.3
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 11:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762631170; x=1763235970; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N5kLP8hDSeanKiERqglKodoRCnx8rVn5yjp6JtXx5aQ=;
        b=DokuCfRplZI83PeUymA+yDI5Q7ALquN8kEtXcdFHD+uDEE46kD3Kkb8m4PYj0hDZLy
         K+4XqmQ3CxQpl7r4trF9yAfxTHQIumnvS/97OLpW3KM6PepfxkMyqNo3Ez/Tg3hy8DsK
         8cqp8mKm2dlzxzOKfl+pMsBDvBgsCwqm14nvTeKHHwGeFcU+UoaXOwdhxFHiO0OWVWG1
         J2J3bI14sBjspLVkCKGCU9nRNoSpN23ykIRl3ZYjRh7xyRQKuWzG8ArtWt6+pxZ1WBG3
         wALIfZwpMHeW8B3z1YSkg+sOWarlUBQkJei7nU+3D1jPWq7hepkSKroyDtqzJkoT/EQv
         DKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762631170; x=1763235970;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N5kLP8hDSeanKiERqglKodoRCnx8rVn5yjp6JtXx5aQ=;
        b=e7ERuYrmr7DN3bV4A7oh9ZWO3iDjUcGzfgHKWeIluz6yQFeXCENGSckt75+Z8ntozX
         Xau02+rvDWWTLzO/39HorhqEURnNf3wt431XaSigBXZC7S0+c7Qy48O+vC4JS/zy2KEL
         ijsYI/rqHtgNf37AyCtabxAu9StIPuVPane7i6gYSvop5cuketzMD9mEDw8qm62DjiiZ
         ADgB7LIzd1bqAWY5r+YucQ5sJN0gh1XxPO3RWRhRfi8P8d/ULJHd9Cru4qwEELPdGVzK
         44GLha38Oij19OuureRQwmlJH3eZNUswmrHrpRi9PHRY0dyooCZxH7Du9fnIpbJxz6Bt
         sY6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWdugwQz+Q1tkFruu4b/ec6K9jUJn0GQm2+zSiXv4NLxyjcpPrl7J8vQGL3bsmOHmftQXS1HDIYCtyN@vger.kernel.org
X-Gm-Message-State: AOJu0YzeK/cYd+ZwNrp/sJsucfyXySH2+xt5fjlJUTrn0u//PRibVIh5
	NOZ9wyyIkchVYx3B3gJbzehMLC41iRJykZJC1rN9d4L6rnSQnPapke2zMIPhMGFXiuPCeDeHfUP
	n2WroDGStroMckM1tgHWcOOQdlyWrqI38bEZf3h7N/kutMupTOsCJYIsyezwppeQU
X-Gm-Gg: ASbGncsmAAqA2jyu6EMJ3MUkypiz20VC+HifmRYPueaoJENZfXJQfCipzPm/veGUVDJ
	jFdQKQLyR4OzGdwhR1yPpNb5Lmqrw6O+ku+6LiqH8AFBRI9upoVrvJHIoeeQEKlgn1uOo9M/8YL
	Bml6py5j5p9xssr2RjDHRK1/5wPIAE8NvcLKiCGFgBbZtWpm6rE5ZSM6/7wfQPPLG0JfkYmIIfH
	RvzjyG3yJKXLrqPE5q9XlAbrTBygcq32zG+ObyIQuGZSv/rsICvfNW01qNxy2zirhchQ3XeNZCO
	9CmkDLl6tJ3s/fVcmxuAz/qY+QClWpZ1sG5nxOzYzHjFa7blXdbre/09TH0M9FJkvNhflfTSxG2
	ZCTvut0j1OMzVqoqNgbM5Sb9m5wBP6+NIBiEmfgb67WyUCDk1KPMqSawq88TCFYltM/m/Uh5jgv
	TGD75jS/KO+tgH
X-Received: by 2002:a05:622a:286:b0:4c0:5e82:86d3 with SMTP id d75a77b69052e-4eda4e6ec21mr42626911cf.1.1762631170006;
        Sat, 08 Nov 2025 11:46:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxWcQNlieXpFs0/FgNMHfMIB0ifmLg8ipoQ00ZlH0+sZ5XazDWrKkbEsLsyh7hlUoYpPIS3g==
X-Received: by 2002:a05:622a:286:b0:4c0:5e82:86d3 with SMTP id d75a77b69052e-4eda4e6ec21mr42626511cf.1.1762631169567;
        Sat, 08 Nov 2025 11:46:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a840e20sm2422937e87.60.2025.11.08.11.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 11:46:08 -0800 (PST)
Date: Sat, 8 Nov 2025 21:46:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v14 5/5] arm64: dts: qcom: qcs8300-ride: enable pcie1
 interface
Message-ID: <3ero2b5vzlyncubdbiknkimytvuelashqn62x5bg2x2kx66ml4@hmmzxt5eiip6>
References: <20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com>
 <20251024095609.48096-6-ziyue.zhang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251024095609.48096-6-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: PW6zZPC9GZpHNJ1vpYMh7gAnhMtJ7sSJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA4MDE2MSBTYWx0ZWRfX97SOt3lxlUMp
 QeILCAsop5WANAa7sRD/a6M5JHV+ZlL6kaprQvaf2aqRM3mP0pPaowGwvhVl9JjsRXVqUf5r5/6
 c7ygqKyd+ro+BvDq9TdzTSuSkKDPE5mGnzgBP7px+TpJUs4sCm1CvTF3TPQGncEOJhtMUTtOIFe
 374w+CF+iKRT5H3Moqrm0O01MFDrd4R2BYPINFXiOd66qzwmphSL2n0fRDAUeGsXhqzLE0HGQtK
 N4uq1q0db9PACNON501fTgtOllP5b3xZhk9l2Hbe1Bva4lYHbECShGNKyZio7t8X57q26h5dy/l
 hVhkEKhuMOvkA865f59U0K1BAMXYw8RXpyIXaMjn9b5mfqUr7Ka/yau8nHB4aNAxIaVWWAL3NMp
 mqrzP7lXl7/1cg7EXIs9WyyPaYfA3w==
X-Authority-Analysis: v=2.4 cv=LaoxKzfi c=1 sm=1 tr=0 ts=690f9e02 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=wKY8r5YjdiK6585sAzsA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: PW6zZPC9GZpHNJ1vpYMh7gAnhMtJ7sSJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-08_05,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511080161

On Fri, Oct 24, 2025 at 05:56:09PM +0800, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, board related gpios,
> PMIC regulators, etc for qcs8300-ride platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 +++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> +
> +   pcie1_default_state: pcie1-default-state {

Incorrect indentation. Otherwise, looks good to me.

With this fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

