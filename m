Return-Path: <devicetree+bounces-181336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D6AAC6F92
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 19:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22F617B399D
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 17:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6BF28E566;
	Wed, 28 May 2025 17:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LwSquHgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7377828DF29
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 17:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748454172; cv=none; b=borxEm16GL//5b2VW36tZGWunpXFjZRPIO1kmO1CIuPYBDHeGv1pYOuXnMdSZOjay6QJlMazvAtWUM8MhBRG3PcCITdY25UhpO6XpXcEIfTXspU4u8VL8eomCo25+l/0gLGleY12FstQYVqtM0uBIavkIL2NZsFCoSRICu4XEQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748454172; c=relaxed/simple;
	bh=xHB11S55vbBCSjXZFfgzt/20X/DoOIfaYi1A/IhnDBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EJ2iQpJ7Ab2HJaf82/CIdHuAp6yeiT3aKgOenIWbik+oAIaEcDUsIFtUUvd4pSGCRlYQ6SyE5+pKFKjguCoH+MKv4q0llCsgwFTXF02dQvjhix9BkbVA4/seMYv2NJYaFHa6/M1FrY+OnO54p2S7nN5SmNYFkcYvr05mb0Aa1XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LwSquHgZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S8fLON026761
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 17:42:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gkJ+K1owqVTCltsNXWWOly4cngF2CqphP5rA+v7Jo/A=; b=LwSquHgZC2/RHb/4
	f1cy9txM9mcVsCwWdlKRR3CVQVmYcuqpJORPRS6oAUI4QXntAruTqmzUW7vqCYna
	MQqPv5mUk6eFQh5d3o27J+rxHU/dYR5B/Hu5QY5ntkcfYKLMd0QCHqkX3MmNpjeo
	HygR5ajbfWZp3jot5dmydi+9TPKqPkc89HgeoigAhrMrMn4gR1bHpMj/R9OqWc3Z
	u8bODXgnDX3eWj6UfO3hlSPZ7W6VNR3LPlC991gdInW8ReJmMutagn5GNGUvxkxw
	lyXCQ+RdfEqSRFsB/JLK0iTWevxXZwdLGe7qQjjSaCdSwyQu6UaNVEtIzEi/9ZSf
	CEaQcA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcyh4x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 17:42:49 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31215090074so47359a91.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 10:42:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748454168; x=1749058968;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gkJ+K1owqVTCltsNXWWOly4cngF2CqphP5rA+v7Jo/A=;
        b=bklJZkqt/n3wzJhxXBayQ1+xYz5JrmhzycKbe+yz1O3VMzQK0s0NMsG8JEMvzIZ6fN
         Qj+4HT7OwNiYd4vwzxYSVqLoHxsTKxMVCe/4WxdZYXGv52mfs2Z8HQfa3ISOB0TTH/wj
         5aG96z4JRUsAIAFbO/ekDKoR9ced+55kp9cfVpWVdeTy8DLe6bi51YS2VlOhZkKxGgD6
         ivb55XC92jqe/ZTzRU3eQLzBK6PTSVWIl5B6HvVSXC8fX0IDjTS/s7BO2AYYrVitZ8H4
         hBs6hP4QaEz8/0BPBxJi5jc3m5OyC6PzS+VD/LyTwneGYcZdCyxdL4Z3ceJazWApmu1N
         d6Tw==
X-Forwarded-Encrypted: i=1; AJvYcCUc9vF5eSGR2B2vIc2vqeFQ07bPtaYyI+qBQcKf/712WKCzZz5k7tSkDZNa65Ye216zL4S4R1+GpKpj@vger.kernel.org
X-Gm-Message-State: AOJu0YzAG4UKi6NG0hdM6THVgGuhBP3B54tx4MlybDjUEy/iVUpBYSIu
	YzbPyxJpDG72C1D8oz92gWxfhN3n+JyuL6Fk/qmvrWIbZHzj3TxqXOceiZDfHsDxP/eL0crnu/j
	Lki/jpO2mA7YrmXOAVVgX/V7DBIvrFYHTQheQKWkRWGvkq8sFL8QXoH9aZvgqHKLZD5RcsyOi8c
	DQ7RbYOwQncvMj8sMF5AoPg80Ocv+AdanKRQShhUs=
X-Gm-Gg: ASbGncs9ykhNBsjSw6JSDUI8cDZFOHcmVTXmoF2wgPhLchKc2dMaAZOm2/7iKiuZg7a
	vyFTW5D7u9WRmWxOZ34RAAweXTTst9GsmY9xp6s+r/xRV/xI8nWlyn9yEjlcT8TtawBEVJTNYYA
	4ed7eauE6olMlfARnGHRKr3KsH
X-Received: by 2002:a17:90b:1b0f:b0:30c:52c5:3dc4 with SMTP id 98e67ed59e1d1-31111c49d25mr29158169a91.24.1748454167783;
        Wed, 28 May 2025 10:42:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElJOznSIDBxQNtBqnZZvLZ0mXq7SapcvIwfl9dqbmTLqAGbsjluuJN1LIxWmG/4IMkLD9QesITMfYmRatftoQ=
X-Received: by 2002:a17:90b:1b0f:b0:30c:52c5:3dc4 with SMTP id
 98e67ed59e1d1-31111c49d25mr29158130a91.24.1748454167347; Wed, 28 May 2025
 10:42:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250524-tb16-dt-v4-0-2c1e6018d3f0@oldschoolsolutions.biz>
 <20250524-tb16-dt-v4-5-2c1e6018d3f0@oldschoolsolutions.biz>
 <g7vlyqma6ow6tdsaqt2rfwvblxqwbqlwmoueio7i4vqvjy76kw@5bz4g33pq4t7>
 <CAMcHhXoYkQru_0n5siMGGkTcHu8yWRZWfT4ByiD8D0ieZHF+wQ@mail.gmail.com>
 <vwoixgdyjjzcjlv4muwrzv7wztnqyidtj7ghacgkjg6hgkkyl7@ji53bhiltaef>
 <CAMcHhXqDFuo+x99KOK0pQFj-FyTdQoZS_JvehNE2AC_JSoQ2gQ@mail.gmail.com>
 <rvyfkow43atquc64p6slck6lpfsot67v47ngvfnuhxqo222h6k@kdvbsmf3fwsr>
 <CAF6AEGvr_foMVwaE_VSVWLT50cbGi8i3UGwo2e=rORD-1JmTmA@mail.gmail.com>
 <152f5150-30b0-400c-9816-13e4710a4156@oss.qualcomm.com> <kbmqr7gjkd72hgorbhbwb7ttvmecfbb6pg72st7zwt5ogxju6p@itycxk6vriy5>
 <CAF6AEGsTtEA=So1CDhvg8H5+Z-RJ9OnhgSzDoa+zkWSPO3cvnA@mail.gmail.com>
In-Reply-To: <CAF6AEGsTtEA=So1CDhvg8H5+Z-RJ9OnhgSzDoa+zkWSPO3cvnA@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 28 May 2025 20:42:36 +0300
X-Gm-Features: AX0GCFvWYL_b4RjTkVuHpDMO4jnqnz8wYBbed_Z--BZyI6lmIjmBVVwjVONW_Uc
Message-ID: <CAO9ioeWk1-dUQYDS1oQNc-QaRu5MG_C=JRx6RPiFE-OQjB7g3g@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: Add Lenovo ThinkBook 16 G7 QOY
 device tree
To: Rob Clark <robdclark@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: wSGHz98B7_mHhKd3LDc4_QWgLy64PlY-
X-Proofpoint-GUID: wSGHz98B7_mHhKd3LDc4_QWgLy64PlY-
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=68374b19 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=yeHvZfB8xrJCexBfAjMA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE1MyBTYWx0ZWRfX/piV0L4Q5/aH
 hAMV6aLOh4E13j9aR020PXT5544NwM+rgdYrTv4HuJ7GUPu7dTaWw62or50pFxGBn5YVOkl7m+a
 pUDkjhPlmT8uuw/Tt4UEgaDsk1KF16NWdA1/gJnCb1usslegUH/ROk5IwJy/hVCC8Ww53aelTOb
 5dCn2U/yvUv+EhczKuzHT2QoAm3SVQg1CMLU9ks/r9X68MkgzU95y2rwmNCyjBoBwBGWDyV8lLW
 geKdlriqUi4horwPgr8zZxCa4MUB50jhWUc13SXxzaGmFdiVTVqkgTFnR+kWnC84EqAjRjfIP1g
 SMrJZ7Z/ZEPZRkCxqZ0dsTFwAWORGrNIp9y3ZFvEMRPHN7Xpo7pROmWYTH+RiD1UeBbcMch8SPu
 8HArx4AIX+5SG9fmkEzOEe32J7wlJhSoEqhxJrUMrSZjIFOMbXMkps17tOWufXc13TSBtGrJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_08,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=864 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505280153

On Wed, 28 May 2025 at 19:50, Rob Clark <robdclark@gmail.com> wrote:
>
> On Tue, May 27, 2025 at 11:18=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Tue, May 27, 2025 at 12:55:06PM +0200, Konrad Dybcio wrote:
> > > On 5/26/25 5:28 PM, Rob Clark wrote:
> > > > On Mon, May 26, 2025 at 1:36=E2=80=AFAM Dmitry Baryshkov
> > > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > >>
> > > >> On Sun, May 25, 2025 at 09:43:36PM +0200, Aleksandrs Vinarskis wro=
te:
> > > >>> On Sun, 25 May 2025 at 15:33, Dmitry Baryshkov
> > > >>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > >>>>
> > >
> > > [...]
> > >
> > > >> Yes, please. Don't set okay status for the GPU until it gets enabl=
ed.
> > > >
> > > > Drive-by: Shouldn't the dtb describe the hw and not the state of th=
e
> > > > linux kernel's support for the hw?  Ie. if bad things happen if we
> > > > describe hw which is missing driver support, shouldn't we fix that =
in
> > > > the driver.
> > > >
> > > > (In the case of the GPU there is the slight wrinkle that we don't h=
ave
> > > > a gpu-id yet so there is no compatible in the dtb yet.)
> > >
> > > My two cents are that it's okay to enable it, at least in this case..
> >
> > That would most likely make display unavailable as DPU driver uses GPU
> > as one of the components.
>
> Hmm, perhaps we should allow the gpu to probe, but just fail to create
> priv->gpu, similarly to how we handle missing firmware?

Ack from my side. I'd also like to remind you about my split-GPU-from
display series.

>
> BR,
> -R



--=20
With best wishes
Dmitry

