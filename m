Return-Path: <devicetree+bounces-221111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B92B9D43B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:59:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A94B91BC0C55
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45A02E62AF;
	Thu, 25 Sep 2025 02:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hYh8zZdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2172E610B
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758769172; cv=none; b=qtNRoh3wcWNrYlfRU4h90EU0oY+Ao1JdOek45zZV5QSypohfyBR3I+Ugca+43FauTLidVcxB3bQf3/UjRhX5bqUSuEjf7c2GqI1X1lGiVrxs79cIFTIRVl0+3tOE19aXVQaSytKFofTo9omymOU89snJrgjyx4XUy/GmI6b1qyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758769172; c=relaxed/simple;
	bh=gWp+RwukaHXXQOdYQ68gcT6pxRzuW8r0v6Od5sh551w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oOWZ/OYz9mHpbYlnar5fyAZqBsSLigyA5XH7yvnZYEo2zy6R+wwhWogirMbwxgaUXa0KyTfN/RnDADOiJ/UH678rS0x/2kVs6n/VVC7OfTQbvJF7VqLPtwjmz6ktbNwCJm26jWJhu5wry1fFIXvnky7jnKNwsU2dMgx/WsanLYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hYh8zZdb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Jo0Q017470
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:59:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KUkSZrEB+7wwDzk+xOPFFNAq
	wUcknZyQi2qYnntju00=; b=hYh8zZdbVDFXMYczFtJMbxYdsxLlUZcdvGF3pBgJ
	VR7KtARJOu4YQOfC6VikKMumYVzwdIQfAXqIrYakbSc0jkCWNRJojipltMVyPgTg
	osG/2z9n+wRlyhQetruurCd0mnSf2WQT0YTjZvJpa7AONpZKshCZAaGQICt6W3uX
	EhTgbjHo8rAaQ9iTzAqJSVRM84W5A4hhM+o3Zx/QMD0ko7uKGMwu3PSUgerlJi63
	WWqr6dMDDXP1ngLH6LL8KYVX4mkJ5PSTbUiZqt7/0veMGuYl7HHDYIDdU+ImTlsu
	T7PDZmOaymH96DLUmfUGpWhAhymH6W+soaoU4BdFsVf7uQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjyumh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:59:30 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d6a82099cfso11778101cf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:59:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758769169; x=1759373969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUkSZrEB+7wwDzk+xOPFFNAqwUcknZyQi2qYnntju00=;
        b=GB8RiDRQcvNegtT6GgcgiAHIiiQhSlzI9sbSnscHReF7OTrTeAemYSiW/3WsLVwPdL
         YgnIWZOW1dlqLIn0wFGin8TBdFCeDqFU6/f0HUiO0G7f5gOqbLwp2DYA+7rZ4LPznG0v
         Nj/9uI0QDL10MrVi7kqeFbhOopeDmzvaJqxhuefEA5pP/zW8H9yOyg8wxI+Nq5KFX3pO
         sa/yFs4Cejqz/AIfpB65aXPYgg/v6czIgaGhN4NkDAY5N3X711cA2AYMF7Rzl4+02xlk
         6XXeSTalzT/M+fCQ/Hb7KOo6fYb+m1uQDtBijlrkOUncPUu/GNdK/kOJ0nAuVgXt+Xxk
         6vJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuC89cnIDK+wbxsquT3Ptu2QP9NjhV+HQKODmjUB/wbs3/tZtrDciXIUuMQakEwdG4ZsgWWxDpK6kD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8YyLgIxm0XoOLajuAjvfZkjlZwEWuvTBSuEOqPa7bxnx2TjzE
	etPxa4LAzsyZzQQIR00zSKv5oEQTtf+7WLaM0SdkEdm+HVjE2NiM7IbZkox0jXkt14MmscNma3u
	x1Q5L6Asedhh/kpFCe+fvoKbSd5UC4kXr1WL4gO8g//VEWGMWzuqUoAcQCMRtikNO
X-Gm-Gg: ASbGncvd2kG5jQ/rqWkgIb9GIzSG+ldqu29PMxKQQjU4Ayl8ybz0+xHzI5zxckWYL3/
	ZRQTJUZ+UecXdajDSksM2M7Km8qHnNVxnJQq/jz7ZN5Jl8V8DV+COgnB4+FBcK9ib+bJ7DC+pbi
	XpGdFV6pB1/k7hK513MIIjQhBsfVTWAn30eXCOXqMX9EGGDqh0mol+5AayewebSRL2gmcsXuqh2
	hVBKWUfg6fNpbaGZR/MTnyhiq/t+6aiQhzIDSDmlLP9XPtJL0N/rh54OnzSODKLVDBrAMTMV0tB
	kkMhdJdpAL32A4/5fVHkbp3Mfh/nd1f25xy6LEYC82InqHkxKrLoCeB1yJPuyh+im0a5JA3o7Gn
	88qNANYxFzXwLm6Rx1o/flmwMoL+T0VbQK/DNfCthoJTmPoyS1FPR
X-Received: by 2002:ac8:57c9:0:b0:4b5:de80:10f0 with SMTP id d75a77b69052e-4da4dcc498dmr26474891cf.69.1758769169458;
        Wed, 24 Sep 2025 19:59:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbU2tPJev/yLAjKJPRsx1oGdBDYTwvY4oft/2UNElSiRbI6I5eMzUIs0+rpDewl6Pepf+DcQ==
X-Received: by 2002:ac8:57c9:0:b0:4b5:de80:10f0 with SMTP id d75a77b69052e-4da4dcc498dmr26474761cf.69.1758769169048;
        Wed, 24 Sep 2025 19:59:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583166561a9sm263826e87.74.2025.09.24.19.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:59:28 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:59:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rao Mandadapu <quic_srivasam@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Subject: Re: [PATCH 3/5] ASoC: qcom: sc8280xp: Add support for Kaanapali
Message-ID: <ru7km6vtbxwnoqtt2zf24si5envayqh7qy45mc5molevrgt5pv@g32atkcwqyan>
References: <20250924-knp-audio-v1-0-5afa926b567c@oss.qualcomm.com>
 <20250924-knp-audio-v1-3-5afa926b567c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-audio-v1-3-5afa926b567c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FyMN6qwKjS9qx1yOS5z3URs-wsxt2SFs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXy9lkEPLhRrCC
 XU0IRariLCHZV8o+OReYdcDC48no64thJjuc/aeAcfXVvfdi6N/lk/wDqRC7lcSXgIxOehzinNu
 Fl0ntNpEsM/HEPKlmf+eWwV9KX4Fh+MHRelV4X/g7FOYllzCoj35Lz6nnK+cx9qiQ0ZTuulZ2oN
 QBgTaXv0MbcRHTbnQS4K8gzPPzJR1zjgz6hMGQ8kfWAsfeIarvmw9kzAH9ak29FEauAU4gK9JJ4
 kfId5F1R9y/WaMQf7fZ1FMgz9PLcUbMoPdhEabUB3+KjpUtn1UtlmLxm4Sdn4TZpQMpbXwCv6Zm
 MtE61qowUo7jJ7lqLGCURH65j4nkmsEt4VUE4W7xfXnce/cvPbZ+dGCKdBBb5ORoe4brzFdmSVO
 ebiyR/do
X-Proofpoint-GUID: FyMN6qwKjS9qx1yOS5z3URs-wsxt2SFs
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d4b012 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4OgBFdbP32ImLjEHi4sA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On Wed, Sep 24, 2025 at 05:01:17PM -0700, Jingyi Wang wrote:
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> 
> Add compatible for sound card on Qualcomm Kaanapali boards.
> 
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  sound/soc/qcom/sc8280xp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
> index 288ccd7f8866..e231112175d9 100644
> --- a/sound/soc/qcom/sc8280xp.c
> +++ b/sound/soc/qcom/sc8280xp.c
> @@ -198,6 +198,7 @@ static const struct of_device_id snd_sc8280xp_dt_match[] = {
>  	{.compatible = "qcom,sm8550-sndcard", "sm8550"},
>  	{.compatible = "qcom,sm8650-sndcard", "sm8650"},
>  	{.compatible = "qcom,sm8750-sndcard", "sm8750"},
> +	{.compatible = "qcom,kaanapali-sndcard", "kaanapali"},

sorting

>  	{}
>  };
>  
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

