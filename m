Return-Path: <devicetree+bounces-173198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1D5AA7C33
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 00:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B27414A691B
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA6972144A3;
	Fri,  2 May 2025 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bQ8JLnKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D91A8632B
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 22:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746225334; cv=none; b=mARgNHuI+PcgToWYgvEJYtDa0Z6+fvtwsIgc6nH4Gy3Fx3NeMMuy3BOk+yXcvjVBXdgGj9MaQ7zy35luu+vBu8gNbPY5kdmf4S4Y6AELhhtXuOpDe6miL1z7kQKYZjKUFvf5x6mbZKiFHL/3v+j01Mol0U5RZ7UOC7rQox5ssH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746225334; c=relaxed/simple;
	bh=HIvoANCYobIgEBaeF1o0L3N8Y/liT74RM47L1xXFkN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RWNuDkqFeGhJeSVejT3TUbiZ90DHBEJhYGTaS5ebJG5KlLc6QPECkyR/MvOVDHGWLB94Z7erSUzD1rhpf6QhGCVu30506NR72YxjVjk0x3LOw6ki7AX+YUfOkQUiy7dhRwMfBHglLuhtn/6lNJbhPuNqEbbYW0hF4DDhpUXumXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bQ8JLnKN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542KB8XS000907
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 22:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SuCVsDN6g4TFy2W7M3iJ3Plk
	T8Xwqrsi5URWt0X1wqI=; b=bQ8JLnKNZEpvENFCL6angT79ippzHBQMcphYQ1va
	DY3KUzWc1BJbIMfVp1kqy4SdhEe/n+z5BS8DffimnnB+uGh5QIMsztMXGbz/d7H+
	P2TeZn23s6KCyTl0ExHijlsMe12COcBNSRH3BDygToDHUc7RT8VhLlp8sWrLB2wz
	0ZiCX15HoG1l+igrrqS36JLkcIqlB2IvnPIFN3RyTD/Zblhvr+hQmDvz6sMPFHZI
	+l0i2oUzLgp3xnHLzM1QBWWMtXIUwRRK0CjzkOFQwKUu/4NgF1y3x7AEfWQ1NVhs
	AyzgJ8bouC+Y1D8TA2GrU+BvvCzKoMzp0Nj2buVE9SIkuw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u79mrk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:35:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4768f9fea35so64132661cf.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 15:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746225327; x=1746830127;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SuCVsDN6g4TFy2W7M3iJ3PlkT8Xwqrsi5URWt0X1wqI=;
        b=UP970nDFGWbd7MrDA8L05SxgyMDWJQBvI2TMXiuTI5ZiOgvgPzssOXxQvTJKQXrj0T
         qhgo0SNq/yXbNPFjnhaAz8X+Nfenmb1Gpks2L7GstBFyyo9mvF9p50bCkNm4xyPSOgQo
         sxSfK1pNsk/cXbCgRoDfcaBXFWbVya1rtD5Yv6jIMEgcIitV8Z7NO66iviqHr6JAgIQj
         bwnyHdeHG6nLt/vhS373C/XlbMGxPKr7iK44stA4tfw2E6UXVPr2uRXO+G2BYSGo7GP2
         MiWG++b0u9JAQp2olgJ+dit9Nw2UCD4h2EG3OfLKtTdP503iktN8RXTW6dYL3CQDrodd
         FDmA==
X-Forwarded-Encrypted: i=1; AJvYcCW0FHiPapUPzRhDQiZJ5PTjdUF78p2YTESgllcyYq9fEeJnEp2LorLtCo02zqaZrYiL8RIYYLNVrBkb@vger.kernel.org
X-Gm-Message-State: AOJu0YyLd+bozFizyLSR207OI8ynHFwc1k8gWi3lUhdrHXF8H85mycNJ
	hLO1TUtxryTCq+pl9QeyVpzaS4TPpoVRuTiV3BKu1zSe1Yovw8kyypm7gWR69pbBLzMQ/wkS2n9
	sk03mxHTarr69Rt9DPkYDzJwSj8+sWnQ0f9ZBN0y1bGYh+GV+4XuR2qoOs+F9
X-Gm-Gg: ASbGncsggA33ZCUlmKuhb2Z0xw/mU2G7m3dgARpMp9ZMkTxm2jA/9xMRl84Mx4L5mhw
	0b+w+WnenR3fjxavLOypnIhyaNFwDFNXzdCZdzdAnLssRHFcoaossvt0ZH5d0j0jGzzz2I8xWv4
	O6I79jXEbJ+AIOx/4TUvJxSrHf4iwQNfjRAjJtDCrjlm5t5/WBNR66nQKFSt+o/5j7CvSipekyB
	RY7tb4r5Ydm9IDHz2/6WCUUmisrDImbXHIx6lmmyzmVcote+rimjg3FUAdH7xG5StcEqbHLTxMQ
	jadMg4lqqBaaNYa1YzFdWImd0jDLHrduNrY6D4Aa3sfED2CV9Hau2nM3SFDrop1VtQ3wzHJVW98
	=
X-Received: by 2002:a05:622a:5516:b0:47a:fb28:8ef0 with SMTP id d75a77b69052e-48c31a23f65mr71764301cf.29.1746225326968;
        Fri, 02 May 2025 15:35:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCBMAjKkyCR6eC9CmEoV6+y+5w+kEc9kjQxO9VMh2wrtzgWX679IWlyC5ahNpaQha1KzNuUw==
X-Received: by 2002:a05:622a:5516:b0:47a:fb28:8ef0 with SMTP id d75a77b69052e-48c31a23f65mr71763981cf.29.1746225326656;
        Fri, 02 May 2025 15:35:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202901770csm4948771fa.37.2025.05.02.15.35.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 15:35:25 -0700 (PDT)
Date: Sat, 3 May 2025 01:35:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v2 3/4] clk: qcom: camcc-sc8180x: Add SC8180X camera
 clock controller driver
Message-ID: <xyvuctx5w2cr6pi2ddjd5m5xqnirloflwkewpg2bcfn2neipe3@mzkis6iklj7o>
References: <20250430-sc8180x-camcc-support-v2-0-6bbb514f467c@quicinc.com>
 <20250430-sc8180x-camcc-support-v2-3-6bbb514f467c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-sc8180x-camcc-support-v2-3-6bbb514f467c@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDE4NSBTYWx0ZWRfX0WWTwY6hEeod wT3oY2EHxjE2T4oi072ZaUz5gEViG+n/IgvHi1975muIsqAbN0nrBS4UsRehOhfhAcMsauNvE43 Gih6PNaz0OoRvJM3FRUeVvKtjFkXTvPdhcr7bUqtI4li41aYcZ0KWK4ckVjIQ6jzsxJu5z/7MAd
 kOP7fJKPou2YScZZhO3P+IfgmcqVLOL0q0Js/xwhrrIPDAekKb3330FIGYic68LtdT2p9w+8aNJ U9QP0YSM2hlPBKpA3QNmntf2ztNVaUMgBDL8uyq7zpk4gdfBEFHRh8+uHhhANBt1sbVndMYsAkJ xRp5KWV3BnyAAQpwTmy4Jz7HlOC44CNoPCBIoDib+KyyGSKtmdOTpQBg+ERhdCgnb8WZfelYW8L
 G+Nzt6aHe4wyLc30qGuo5qW2igrDTaTHG/LybFdfVGycoTvy0A4zKSDVmKWqcYkceodIDrz9
X-Proofpoint-GUID: ySYu-fm1W7irS_kuUOs_yBg8RIyxetuc
X-Authority-Analysis: v=2.4 cv=W404VQWk c=1 sm=1 tr=0 ts=681548b4 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=XyGygVz_FukL3ZPvZxcA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ySYu-fm1W7irS_kuUOs_yBg8RIyxetuc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 bulkscore=0 spamscore=0
 clxscore=1015 phishscore=0 impostorscore=0 mlxlogscore=803 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020185

On Wed, Apr 30, 2025 at 04:08:57PM +0530, Satya Priya Kakitapalli wrote:
> Add support for the camera clock controller for camera clients to
> be able to request for camcc clocks on SC8180X platform.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---

Would it make sense to merge this driver with the camcc-sm8150.c? It
seems that the blocks are pretty similar.

>  drivers/clk/qcom/Kconfig         |   10 +
>  drivers/clk/qcom/Makefile        |    1 +
>  drivers/clk/qcom/camcc-sc8180x.c | 2897 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 2908 insertions(+)
> 

-- 
With best wishes
Dmitry

