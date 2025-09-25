Return-Path: <devicetree+bounces-221100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A030B9D34E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79FFF4C37C0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095082E613A;
	Thu, 25 Sep 2025 02:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UaALzCdV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99CCF2E172E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767557; cv=none; b=qonHgGjbesS9KSt0Q697zLe1m9zXvsJ7r9fc0i9dyuow8pIhtKtDmU9U3QpOgaMjnf1t5ORA/zRS1Pbc6ZanNw0jYdokzFDzFuRh8OXvEFupzFf0AYPvF9rY8jtJnmYbkSiFXjFNNvugUFkFh5nobw4kzDrKvcV/tXSLw2s4kq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767557; c=relaxed/simple;
	bh=2esFbPJwuZNBvuWMWMGHgBr2T2aPcaPBSG9Bo+tbOBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bhEzHBu8axtpBHmSOmx2Uff0QI02cU3MZo+o4VquaSg3u00o6oNdswE91yBw9c72q+gCGWBOCeDAYaxLE+95IpIyzmDOs/LmUFF2dJjOuQR2iq7vfvhfZpVkoqCG6Po0sL6YItTf4NFNOhIqL0Gadw4mhG/gvSizIEk8NWgRyfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UaALzCdV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P100ag019923
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:32:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WP6034qc9OdpvRUZ+H/itl+v
	tk+A7rdlL3cpQBd8BR8=; b=UaALzCdVvMwadCXCuUupOm0S1BaT2tdFQFTFGMkV
	9RZo1XCqQs2BsOP3INZ01lNXnOXEvVkWCDARxQ7RICiGAg/gVhw9ted+i6vREZ46
	efHVe+eExc8PLhtd5enZR+RBPSFpkcaxcd4vTQrdjLHcl/Mf6Eqc/YHCLp2fKoNl
	wBS0e2kf09AwPDUDhV6oRCC1JGLnWhKmaLc6qzwht3iJe2F0QEsH6ZHuQzUK7eg/
	uHmtG6LTebQs2cm90Xt5JrRKOHCibGgS7ULkUlXiXbcj+njcFkyEtVc7eporB4DH
	cfYNGy+9PeGkAFwtoPI/+AUopZkUuMKjGsKKQ61KoXs7ew==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdynwn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:32:35 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4bf85835856so14764621cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:32:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767554; x=1759372354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WP6034qc9OdpvRUZ+H/itl+vtk+A7rdlL3cpQBd8BR8=;
        b=kTIs5uUkkMDPMfupsq05JEJFDzgaVVgPIvQ71jcPxJj+18hqCm2nhYUQ5ebIsvPcrE
         LjEF54kImXVJ2V40VjA1qo2mgeTfYteRZhk44IjuOX5/bcoLP7bYwutyVz8J6h0gja9x
         vx8jhcD8EzzncBy3nHY8eYwOPPzBq2Zhcr9d1B0P7mUxQZjoeGbedYZ/s/DiOmWqDf/g
         UCGYgpm0N8RCkbN8SrwgmwcBdQncfv/5Xvg+5p68oYAHnpSN9jsLr+uG0312YJGWKfFz
         861nC/duwDmG9WXSFoWE13m63gdaBCkgt+/lYErgZTsZIR26vVMoSHN0/ncOr9+/g36T
         rTlg==
X-Forwarded-Encrypted: i=1; AJvYcCXP85dUJSNg5NjtmrXFNXPD9oJDJjygWviPDuFYkimWNa61HTy2N1lPEjo3EyV8VXbfVrXVu9V0Vh+G@vger.kernel.org
X-Gm-Message-State: AOJu0YxtnfwKEv5nD9ZAYxFPRzNsJ6jECzgXsx6LHD43YtaWiiQteCoK
	VmVTJ3t7oiOrDzOS7yzfEYBhR05FwwTeU4sw/l5ZX4qixNiOaKXmVP03M95pbhMmSrswEi141QW
	JgMHcBesyW/V6fwf8twZU2MqyDNCMkVKmnrAkrur9Z6b6KiQgSKbM0FpAUgZfBTuu
X-Gm-Gg: ASbGncuJRCbFEFnDtXGiK56U7tyyPyNWOebZVxS9RPn4Vo0ubzsZw78is/fGYqLj/T4
	A45YYm+EdAYDzER2+z0PeCof/wbX3mCJnhMZVZjGH6MB8vSZF8BGFJtlvjEarPlLiGZLf7CEedE
	Ukyjc4BJiWowQo6d7539QP1/va4VL2miY8I3ontcwR+3eehjp9tUOaPRcMdIYGdC9rUIawAhaZN
	PxFy37JxFnpAL4cIUpY+qgrJF1GI5z6jUaEq3t4i+kDeinNzv5pXE7ROVB3977eGu9tIp++cJM/
	PKGhqFe5YiFuZTAHEEbJvU2crZ8OkHqMmprKd9TDAXNhmmoTRvIWi191GtQoCi9nozNjHlltn5y
	afPHZOLik2xYtMfVbt+RnZJHfYYp7XKSji+kKwUTnB/cSNscTeM1P
X-Received: by 2002:a05:622a:190e:b0:4b7:acab:852b with SMTP id d75a77b69052e-4dacd2444dfmr11870261cf.26.1758767554420;
        Wed, 24 Sep 2025 19:32:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFa2IDBVMPJ9g/d5ctxxzydrjUFXK6difp7z1Bg2KGvP8iuKn8/jevRHGqUMRizyeUvFoawRg==
X-Received: by 2002:a05:622a:190e:b0:4b7:acab:852b with SMTP id d75a77b69052e-4dacd2444dfmr11870031cf.26.1758767553939;
        Wed, 24 Sep 2025 19:32:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583171e50d3sm237438e87.139.2025.09.24.19.32.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:32:33 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:32:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] regulator: rpmh-regulator: Add RPMH regulator
 support for PMR735D
Message-ID: <7zxx4kcplkfblivww3b2cm57vgkp6tdspmptor45w653xcwjtx@ziyhu7liqnkh>
References: <20250924-knp-regulator-v1-0-d9cde9a98a44@oss.qualcomm.com>
 <20250924-knp-regulator-v1-2-d9cde9a98a44@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-regulator-v1-2-d9cde9a98a44@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: EF-up5EBUVRJjnUIohCydLmGdOKU_LWG
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4a9c3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=B0fzD_Jn_k95df8NiIgA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: EF-up5EBUVRJjnUIohCydLmGdOKU_LWG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX2DraWA1gU/93
 x6WfR4G6XBrpKyxtfLEHzF+ExC1TO8dQtthQR3B9OzmW+9NNwTTvOeFtTwb5LaSxuf3oiypcE31
 IHgme2SJRG1IZr9wFa3HLsUBffgM9azi+aC5y4X8+sCucLVm9JhS0UXPPc0wkmK+8n9bDJXZA8b
 KiuLJ2kIKmpSq3psxkjpe4wT3965/F2AfGoJBVYI8dGnJHgzW5qy/FSMXCwuToitDgMDjq0xdId
 exoGS1I+yWBrqfOq+DXt656+sTMsLvnhmn+j6k/Lb/DtRCfMldLPSZ3Bg+dSHev4JXKu+hjHdbp
 HuSzUBjauZvWrMglyvkDKXOsONcee1f/EXK03ZdueiUJJOF5ebXJqltyfY1PhRbGH2wOadYe27u
 iRVIDK8C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On Wed, Sep 24, 2025 at 04:30:48PM -0700, Jingyi Wang wrote:
> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> 
> Add support for PMR735D PMIC voltage regulators which are present on
> Kaanapali boards.
> 
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/regulator/qcom-rpmh-regulator.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

