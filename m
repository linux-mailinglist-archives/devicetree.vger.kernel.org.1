Return-Path: <devicetree+bounces-229709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11039BFAFAC
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF99119C44ED
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988D92FFDC9;
	Wed, 22 Oct 2025 08:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dRRREcwC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB90279918
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761123024; cv=none; b=PD4D5HF4upFcNes+4B5+Pzd4nQXeIFBulPi8kyLk9LiINnGWIzgSTn5j7jSrP28AZTn4SEC7/XD9U3dO8JX9lACJGKKuYXDddE8Vziu0cOJqShcEeNibLyBectUX75tiFTY4+7uELJfQSyMmcBLnLCu1xO/ShJykhRp58pYLpb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761123024; c=relaxed/simple;
	bh=JDm9N+ZZYfrAMtYqK4bg2YFnElswdFezxf3RSSNeCGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MPxsbtxSL7q1J3DFj7Nha0vxL2A4es/ybfIWy68kI+zW0kVh2XqqM6WYcOXG08ebNNQaWzBIQjK8rRuYvw0BMxK/Mi9Fh1cPP6G03MF0a3BpXQOSYVg0w9MDukHMAop677Ysc6f/QnWfxU0CjlCTXz8WOGhGP+GexXozlaXj2Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dRRREcwC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2qTi2026883
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:50:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TbaujdcrH9oIG7aCXpiE2nPE
	Oe67QDofbGAPoiaMp6w=; b=dRRREcwCY+vhWsr3Zsnn8PNPiod3OhjZVNNcJUiU
	ABEL/kVxcGm4CVbcthK9YQax3K4DBGA753brgCtgx2JPA+X7BS2J+zbJikeL/rWM
	RJgK6/4Rgo+YC3mw6grYmYzN5+mIqJNAiH1rhIHpNlTRLjw+aoIcNixsLz35kYaA
	+f9FKV+ANZN8y2Ti4S+n7ttsC/oy/xa7r/jHo5AoT9aA9td2votv89qqDc2AVbPL
	e7ACKmVzHCCEyInrH5McD5WemCjQgeFpfa26RQagy67pi2+DSi5G8Atu7SpVJmTo
	YtXADFp9QvyRGisTIMilRTyS1YdadzDIi7tX7a8oByBywA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pm6gq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:50:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8a2ef0249so29687761cf.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 01:50:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761123021; x=1761727821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TbaujdcrH9oIG7aCXpiE2nPEOe67QDofbGAPoiaMp6w=;
        b=BObqaIzf34tThSJtQTQgQMT40fiSFVYn2cJ1q5JmiB8Fn2XY2wjLqkw1J7l8txwTBc
         WZkTrV3CEusAikojB1gSaLIkHwprsV3QSYUJ6qgHtD2cnBLl27jt7wzSVn20+76PquQa
         lQ2i+a/YAI3xskNMitSqI3zrgySe2luu3jU8QPX87X+HsfHd5+b+ZSluPZgurq3RUsh1
         79yHVIn/1ON7QSuXBbjf672xM4b093QZBfXJvUU4hD+MQ5/2SAinAKPnyr6OKWtLJuLv
         Wk+cTE7qgIqokR/cwbAyPWjvXheyjUnQv75oFr4Wgn84Hh4L3n+0+rrA4HjQQqOzlsL9
         zWSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUg3rTcRF8qU0zIXhW4vOrC3OVF9Eh9BlJK7f7pnlUhgSaNd6CEIHFk9M/+I8S9qb8njLBIItohVisB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc19F4zciWjqSPTUJIzCIuL6ZNeXHsy7GFaLjuJz3yJ7NfKJ0d
	pdUcaagRHP0xwc+Tn15cvdwbFRDXGLdAwV5uY6dF+8e5nonBrrAwXoDk3qJAvv8LfvpDNpmRmk9
	MHa/Si0UE61dPY0OCNHJL8t71Pp4Gc/ueThCRk3JPNO2QfdB3Gg/P9F0zfO57Fd1x
X-Gm-Gg: ASbGncvIGgi6DqpqOfzktw2+rETbCRczqw7RzPX5eOlKPvnNrK7A/QjC4IU33Z5ou4D
	v3YzRDFBE7G6d+p0o7rn+Y+qpjFlhO5ilpMIhgzV15zGDWkhQY1wkkNvD7lvwqZkX4w4BmH2i7u
	rKccKZ5ynZl6CRwUQRh+KmLqdPGSw14xANcttc7KTeaVzS/xaHXAPi1jpFATeS0bDHjSbnOQsLJ
	F0qBq2ZL1D3GkoQOdj6X0jyJnYT2d9nk21YfAtyg3QytEvvUDXjugs+Wf/4OqPTX4/JOw1IBacQ
	zQdrLT9qZyBjuZ1MoIXO9HHJq68XlqDZ9UOrqHy+lfs648N9dqi+VjNTw7JatqeirB46x3HJhFf
	OsBx0oOyjeG2AUeDRQHmTu22fL7rq+hd/D3CrPRTqKcUY7FXdVY8uD7negFpl4Z2GG84q/5iapK
	AXEP+bZiijAx4=
X-Received: by 2002:a05:622a:310:b0:4d9:dea6:4ff0 with SMTP id d75a77b69052e-4e89d3d5924mr282823551cf.56.1761123021168;
        Wed, 22 Oct 2025 01:50:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTgZJr+cT8SYLBmVZl/Y7kdrpKwF6g2UFgH1obyMySI0IqzuVaSJtc+hYHspSX6Jc8FSJs+Q==
X-Received: by 2002:a05:622a:310:b0:4d9:dea6:4ff0 with SMTP id d75a77b69052e-4e89d3d5924mr282823311cf.56.1761123020589;
        Wed, 22 Oct 2025 01:50:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a950cb2bsm35458961fa.27.2025.10.22.01.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 01:50:19 -0700 (PDT)
Date: Wed, 22 Oct 2025 11:50:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eugen Hristev <eugen.hristev@linaro.org>
Subject: Re: [PATCH v2 3/4] dt-bindings: firmware: qcom,scm: Document SCM on
 Kaanapali SOC
Message-ID: <jqunb52dy2kyygpolf5ct72j3uktln47qppuhfczazowykatt5@3bg2c6umqw52>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-3-3cd3f390f3e2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251022-knp-soc-binding-v2-3-3cd3f390f3e2@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfX576K++Nf4oUM
 1MCqEr28bWP+Lx1FzukhsR/xEduT0etcwaIWmO14kwugWmFxL1gIpnAIC+MIvi/HgpNyf2cPUcP
 WOhNvBGWvc/I4sxSGh0HSXOgXQBpOX6OXAREK0f78m5iupiH1joYX7wnR+h1AQdIFz/5ooHKA3O
 U+f/xvohk/Wm5OAs9rz+YpdnmiZDY9Z5mi1I4Ll4rfkRnpl+8BwQfc3BIkEsrdxTeAuW//c7/js
 ogNUOiVrbYV29tQw+vgtkg0RIeDRPfWPJ1mFUiMc5owZ2/qUQEnclImdM3eXnUCl+RNGINGB2V9
 9CVVHspQU/hKAtG2SReny4bRl9BTnb1qZ4YJi9Iyt+sR6JIbeboamfSU8FVe4HMkeQaOl7d8IuZ
 bFJlny6oY08YtLwlRL7Z7CMvwqCqkg==
X-Proofpoint-GUID: Zel_1MMT3bg8zYIWfOL94GgAgZuuMYIw
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68f89ace cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=BJkMSRMYZAcFcGSszd4A:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Zel_1MMT3bg8zYIWfOL94GgAgZuuMYIw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On Wed, Oct 22, 2025 at 12:28:43AM -0700, Jingyi Wang wrote:
> Document scm compatible for the Qualcomm Kaanapali SoC.

SCM, not scm

> 
> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

-- 
With best wishes
Dmitry

