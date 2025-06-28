Return-Path: <devicetree+bounces-190743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A20EAEC866
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 17:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF7E5189C375
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 15:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E2D21C9E1;
	Sat, 28 Jun 2025 15:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B7By2li1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA7C207669
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751125819; cv=none; b=Jb+v8a3pZQ2HgQhezyG9aMz2L+u5iapn7NB38t8oLS79P8iqMYgQ5qRHFJa1mQGeIw8F1yor6qcIPJENGO3xxq73d7/mgAkTjKwvM+/N8AtHxjI16JWRHYCEnHCSc/CR/W/wOIjnadn1cYrG0S0+fy4E3VaNIw2nnJ/KVGscI2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751125819; c=relaxed/simple;
	bh=UhdyBvWUdTzq9Tt5CDP9Ck0AZU7LvAz9Un6yPjcW9Wk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r0bJIOzEvXjO3hrTEpradHiu0/0mQXYiIJ8PPcBxywlOn6kipowV8NHsQKlSh4aa0phOs1m/aOEUWKrp3Rmpiitl7sWOPQi9ZpKMby/f60QxoFQwh1ERjMXxvZz8RYKu/QJ7t6wD2+tZ2Ko9Hn5Ps4ZxIhDXtbRQb9bq96Z1HNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B7By2li1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S3agRB014840
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:50:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eWdrwLiaH5wIgAqjHd2m4i/B
	poO4mO4jKXqkdUUaYhU=; b=B7By2li1GNB72N13F0O4kwQ8l3hqREd2hocKNCAH
	5F2Qnki+puRtJ+kshqMy6IvTc549shFPDBZhdsKudvNL+yArE4lnTyoC8hwF6Oet
	OfzqAVt3ujL/tST/7m86L/C+lFysuqiL+K88jW6i/pehY0yCmv+yZkmHvw4Gkv+u
	nnPq7XyJCCTVJqR+v9jL7+2sjNVBodfqhupiczCGD76XHB61psa6YauosrAfwDhk
	VdIIAWsLnyVuyXl0Bb75VRG3kdzyYrD+r+kI4Rabb79V4fzzLOHGL2DmStqLw97B
	KSiyXZeU/jZOh+YJXo++2ftVsAqj0IFcqhlie2AX81z5iQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8m60u4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:50:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d446ce0548so141457085a.3
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 08:50:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751125815; x=1751730615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWdrwLiaH5wIgAqjHd2m4i/BpoO4mO4jKXqkdUUaYhU=;
        b=k8ii2pzb9suldCwZw7QXaptRKVM0jj+DF4hGyCEOTeCaOldrPdjzEos+bYM1SD6Mnv
         ztiD18h3ruTvj662gNpeU/LY1YjI5PnNCJVD6YQ0ItIMtmUI3ZQq+kPJyfdUtBCg4PK5
         nWbDEkgvuKnjabrEVJcUqfmLl+8FdCRtYs1UHbqnCfhhT6EmSChfzr+z1pN6FjcNQe9w
         bL7HFpYGReF/h6mTj5WzkOGpviKzCHefdk7dJNzUKh8MF+oAAfv343kCluhvxm3jf+SR
         XzAszpLuY0fGBazZvVK4HhSqdMTESsoQo6Tpnl2tUiynEpFh3+tm2Ag9SrChO5f0uFFK
         Vp5A==
X-Forwarded-Encrypted: i=1; AJvYcCVmDf9/aI6LkRZ1Fz418PrAidAUmYmBaSjpr688qV4WMr/YRo1D43+O9mYJNL3E5Ea1kiiMVh/8nWME@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp7HctlxRhkrjgYMtooFZ0wNwUFxIZwuRgIPvFjBSzLiBrnlFy
	08jaj3HZPd7eGBRu16ceryQM3jiNfRxgYOvxRf9YV/c1Et/w9dFoQ94AUr7U+DyVGhhic8O0mEc
	IFvKd7WQRpoGlObFfTQelMc12LslaN+fuQFsFgObM2IE9AWXBt47ypOsBKmV+1jV7zdXmXpN2Uy
	1ptg==
X-Gm-Gg: ASbGncu9wXuunjWU7J3qKuWbpG3bjpCm7biU0tTIwJbU42nQfG0oFJHHbXhJ1nXNl5E
	MJhG70XZrTKCAD9scHkZIIIx8xan0FaB6nA/f9kyMJ9Jx55ae4MxMqrPa6S0kkiHAOo7dPrng5T
	/ZGRxFrp9uag8juzPvxZF6tsM1Hx46MblmJznGmT30IGP+PF2tlLnd/HGvUn4XFTq/jkkjdpuKt
	lEhlbEDBrbnGQJqH4fageXhe3Z9lB6HfzrVuj1Ej6W4zS/U6EBcZa67NoXWvKw7icnrZa7bexhQ
	/EYrwYgGmZfxcaRQiIl6P5/HTZQ2a0hn3KrG6PlbXMi3cpbc42eeA63uqk9axR2ikdTv/SKfcfb
	NBwsrAzV0vaOsECcUuptQeT18pfmB+mb2DXE=
X-Received: by 2002:a05:620a:1b8d:b0:7d2:139b:a994 with SMTP id af79cd13be357-7d4439a65femr891492785a.34.1751125815012;
        Sat, 28 Jun 2025 08:50:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXHeHAR3jro5JwVkyah1P0tVqO4Nod5yvizT9CIaPu13zn8ai+/6N0tztx2GTOOd7HbCGs/Q==
X-Received: by 2002:a05:620a:1b8d:b0:7d2:139b:a994 with SMTP id af79cd13be357-7d4439a65femr891489885a.34.1751125814642;
        Sat, 28 Jun 2025 08:50:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2edcc2sm842664e87.238.2025.06.28.08.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 08:50:13 -0700 (PDT)
Date: Sat, 28 Jun 2025 18:50:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 3/3] soc: qcom: socinfo: Add PM7550 & PMIV0108 PMICs
Message-ID: <uzohbx6rzv5wmo3c45pczn5lory7qwhqc5ixx5wdnvdbzemhvl@edl7dddvruly>
References: <20250625-sm7635-socinfo-v1-0-be09d5c697b8@fairphone.com>
 <20250625-sm7635-socinfo-v1-3-be09d5c697b8@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-socinfo-v1-3-be09d5c697b8@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDEzMiBTYWx0ZWRfX3W8cQtqNMonb
 ri4bUvVWj4hGIG/eFcHcBsAPvtdihuoz9CjjdqfhoTAzCzkXOrVY+rtKgNpCCWAU0xdoZcYUdcp
 O21dzOCZaSAg8vwy1f1Y/hQJ0kDOm7/ka809dxF4+lpDfLDLfVqQCvJaDWBgP3N6SxcQg7VIVTh
 tHlPcCybCjAanrh+BZRY8V+0ZWCP3PpXOxIqL5exfiKwC/UyOrjOH0TvcKH5lyLpToNmaND0310
 SzRrjzEUTidn7toAIw/ttFFa8wukbadi1yK/1x3aoaLlljeJiQQJ8s/2xnvpkiK0t4vIvSBs1qt
 CknQWxqOpeNeI0nuTHfLTUdSxMMsWbSoYrcOSwYtmU5WkrAe0mRF4/2JY7EHFm9t3oey+pqj1Oj
 xbNaX41g7VsQdx2YZ5x/YLn1DX/+C+nT944alKTBW/1otYqvHaUFMbPl4XTt/WlyqY2hJYD0
X-Authority-Analysis: v=2.4 cv=Fq0F/3rq c=1 sm=1 tr=0 ts=68600f38 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=4BQ2PeVRA74-f4yG9uIA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: pbG0q_B2b37uuCN8Kp4YUzIL9Hq3rbW6
X-Proofpoint-ORIG-GUID: pbG0q_B2b37uuCN8Kp4YUzIL9Hq3rbW6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 suspectscore=0 adultscore=0 clxscore=1015
 mlxlogscore=729 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506280132

On Wed, Jun 25, 2025 at 11:11:46AM +0200, Luca Weiss wrote:
> Add the PM7550 and PMIV0108 to the pmic_models array.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/soc/qcom/socinfo.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Assuming that you've seen them in socinfo:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

