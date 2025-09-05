Return-Path: <devicetree+bounces-213511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02114B4597B
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 978A37C0AAB
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 13:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828BC2D0C9B;
	Fri,  5 Sep 2025 13:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d8bULyHx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53E4288524
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 13:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757080024; cv=none; b=bHmA6klvAQdpFtrEFzo4+gSLhsZXXUC1avw9iJh4olW6YZL7Zqpa7QwCCwCTtsaXlGAG+4IhhCqmgEuRNCJJhlldAhCd9hSvH2T4NDnh+ot5W5EzmJi6dsug/SlmiNjU8gLz4YgZbbdly1fM44zYZcMtxBsNwObYARMZY+66DJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757080024; c=relaxed/simple;
	bh=h0O09iRsf9dHfeMthnJk999pMS5aMUcInRudkzUILkY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uw+DJZ6M0lPoDTtwppLsXsZxsVnfO86MeW5Sv5sGkWmTDI8Pp25ScF/IrTGtQ2xIeu3bt07WbHXxk4EDKkRVwiurJjHVdj1IEeMZUCnnvV7e69gY45TUoiWeoskC51hHW01iT8xT2pnHYUQaJuJCWF8YVTZHFGF0edtGx+qoZTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d8bULyHx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5857kjLt003803
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 13:47:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LEqUXc5cbwTjOkkBL1dldf4G
	sxuKtt2JT9JVdaymvUY=; b=d8bULyHxtMyy4qKNiXFY3gFBjl+3oJl1y6bSpPD/
	QcfaJvpSj4Fsoa2XWuNo3HoorvWL+qCd7f/DVfvWB6pE7hh7zQ8WEeCIfQ+wwT6S
	w5Al1qefwhoV0WxtQWY5pqjLdtiureWuFqmAKyXstBrp2dp1qDJYhvSyTuReedqR
	QPzK1VztV7pciEa4bzqorSv3m0fhDnmusvYtD39dgKuA9Eu0yslelaT9KamiRY2Y
	SIEvqfeULowexsIbINxuoiJzfvNrMaTGFAgaCPcsN3DI3U3+cMuWVOgZCZntgp34
	MUxKXsh8yERd3uqUR3OgyO4ifCxgEnyjP5MZ00gIhdlQfg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8sbdb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 13:47:02 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-718c2590e94so58297826d6.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:47:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757080021; x=1757684821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LEqUXc5cbwTjOkkBL1dldf4GsxuKtt2JT9JVdaymvUY=;
        b=uo4ZuTT/XTZDcmhgLhxwitUe8XNVJ4ryvSEjhaB6ywevEZpFJ1rlz1MKs+SIdHlLdT
         7EqNkUr2WruvoBwquarbU2HIZBEVwoyLSTWM6JrleaEetVoNAFZX4T926DK+P1uOBWmx
         mWb32/Ec01qBQLrFNZl/QJMruLOOp7an/XRCj+R498rhf+AEwVjTfZUADqb97tPK8eGu
         X7Qw1kUuGYrWum0m/gRlNiXHyb+O/kNsMPupgw7M75+nc2BXuMz9/Z3COTJoBHSO6nMD
         1nPg1edMjDLojiesYhAmnjfOGHswB7JrrSHe5GNnUSnuQgF+68DSYQ/AfSmjCpJ5Ivf1
         KE3A==
X-Forwarded-Encrypted: i=1; AJvYcCUnB/wKsv7CteVRP9fyBfsyuRDVJ8BMBVWzPjdI1jmiNmy+J1ttI/bx0VBem9+scVxLT4Wyu1rWS2Vf@vger.kernel.org
X-Gm-Message-State: AOJu0YwVNHU1hn1thLGQAtMbFy208uUQ8jVyeHTTGpnnk3esFOOsnoEo
	oQEYLnQjN62TM8vav3xjnMgRVKmqHHCK99jGKEy+zWXlOJnvlR/Kg64cA39Qy86Ms70aRHJ4KEi
	NKVUpmAAHBslua3x9hlmkSdbUYGZk05ii4GxPUuoX9CVHX5Uo3i12eHE1N8HZ4xE9
X-Gm-Gg: ASbGncvs3AhYJPlcRAWVdEWThbTXLoNeRig377QaOJSZzGveFp0388Mr4K8+97tERlM
	F/HKt+oaOXc8N+wDXJezyAQgONsLiQHhMLslf/g4REQcjs/uscaUo9tR54Y1R9/Q6aVmUs2zmAl
	eOx+kdbGjqnDJy7OkMQLIzPCKh/PT686dDZjQTfjjiB3PoW7laAcEtfevGYAotXVojPs1dIKAx9
	DK5Wk19msZulY1/Hqu2AzpjMvel46LTEAbdVlOmBfuiiKVLG4hvdLXbKRXZPn7WsQQEfr2I0wPh
	jeVQy5xdTofkAZ2ewmhaOzlfLQVBCTV5LpvNh6KKZJ+Xgrbn8kL+EVeG8Ck8k87+H4bz0C2a3Ru
	AqTIEnKhu7/i5YEm03TA718tvoj5YBd80BShYq4+RXmpP4jWvHwpw
X-Received: by 2002:a05:6214:1948:b0:716:fdea:db16 with SMTP id 6a1803df08f44-72bbf3fb1eamr41244656d6.12.1757080020544;
        Fri, 05 Sep 2025 06:47:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF99i4+ZgNHpEENrXMMJgwJoCqpA1mmRHdqXIu/OPhQnChIfbPSAVcT15ZOYrUVmX+skG5VYQ==
X-Received: by 2002:a05:6214:1948:b0:716:fdea:db16 with SMTP id 6a1803df08f44-72bbf3fb1eamr41244306d6.12.1757080019748;
        Fri, 05 Sep 2025 06:46:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abc63c8sm1812504e87.61.2025.09.05.06.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 06:46:58 -0700 (PDT)
Date: Fri, 5 Sep 2025 16:46:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/2] remoteproc: qcom: pas: Add Milos remoteproc
 support
Message-ID: <nxhx4ocjpeeyyttqqbzwfax2kf3qd27cbfurvggzgds5utplyr@zt3vk4zpmy6g>
References: <20250905-sm7635-remoteprocs-v4-0-9e24febcb246@fairphone.com>
 <20250905-sm7635-remoteprocs-v4-2-9e24febcb246@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250905-sm7635-remoteprocs-v4-2-9e24febcb246@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX4wHjXExz8oUl
 RCiYnf7k8cvNiCjEvUvCCT7ini1WKJCdgA1IEL5cYbvT0jLbjAugHXjbMV1zV5Wd6Ux7qbc8aUP
 y0iim4t5ZIMSa1LfMEeE5+NAyI2gdxmnB2jXZjUYJ5LF/rQkRXPxe/kld3Tf0WtKI2LR3VW5ZPF
 VXKwKsA+Gw1ug+PphNtL6G0V72dRMyj7f9r3H93xM4Qfn9RFmG6FPZOlTcwLbWAXkYg6vGNX+73
 RpJthS7e4pnTX9RahLdQGCw1uZP5qcKXgdB6bSvEjPIHys5K0iPCQFU54TE3eJQUpHyleVNzi0Q
 +dugcHXUUE+8AhL+4nCsh3cFnW3vl5y+jjiFSmlc/Nweeu6IgUA2AceVli12Sf209kS3mqYsEmV
 WmbesGeF
X-Proofpoint-GUID: h_mEcYGBiI3g8D6WWFkdolY0dP2QFd4a
X-Proofpoint-ORIG-GUID: h_mEcYGBiI3g8D6WWFkdolY0dP2QFd4a
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68bae9d6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8 a=ENn5GrddmNxYPxOGv5YA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Fri, Sep 05, 2025 at 11:37:05AM +0200, Luca Weiss wrote:
> Add the different remoteprocs found on the Milos SoC: ADSP, CDSP, MPSS
> and WPSS.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

