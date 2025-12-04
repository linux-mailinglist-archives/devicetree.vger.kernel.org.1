Return-Path: <devicetree+bounces-244358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B136CA40DB
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 15:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91507305886E
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 14:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FA822156C;
	Thu,  4 Dec 2025 14:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RAPvjm0e";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KT1Dg+kC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFC932A3DE
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 14:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764858883; cv=none; b=I2m0FoNHHmBtZ1aSpzqqFxlxrx06j2BTrWAjGU5zcA3ECo51OIdsH7fiKBBpPx9opsU6j+bt3oBAoF1MQUl8PD5bd6Lp3oqbopGxY+x622pBUPq45csMmQVIijAB+fARLO6ZPod5Y9Lr/HySCNkJ2ioiH+VrO+iJWq2bmQxFhyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764858883; c=relaxed/simple;
	bh=zaOXERID/R8NTYniJoHOhI0RsobC56BxP4/ToY8Hdp4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WDUh7maQkupQ1/Ry9eIwxka2CrKdbY90Ttxm+kVh8duTczTzRJ4QZgdOVeMHze0er/bM8U+n7qt1hleExj2ZFdCLf+m++VUE+ROpwe+DrEpqKHsqAbzscefPp88Xm9PTR2AVIlX37CsXtZTooEt5hL2wV08G+WWWJcaNldR7blU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RAPvjm0e; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KT1Dg+kC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4CA4JJ909707
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 14:34:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=zMo58q1hXcHsh9de7AT5NtCtg1jt8KXPUfxBKaXrnlM=; b=RA
	Pvjm0eIZ/Z2m1XEblDoSmPbwSyCg03lzSi1T1M/MtkoUGB8gSC/ebZ+W59du7tXJ
	f+IEZ0IKLxvcMk0wO5t+hPeBLavyvFfXtHzybITiQoqB1OfkvLhOrnofm/RyGrzQ
	WLEK6MMFgpEILukeeXQEDbo8Pz7ONbVuvL/7uV1rb9kPEsIMPbpnX6o40uIJNUm7
	25bHR12Rpn9B8axJp/taBzzKbEfAGk1TajgK3hwfCPaEKRVyQeYrCH5+IFJrGBn6
	ZMcEs4ZjL9tlJUyx670w+ovUchC3BtHeu/1EvMmEiAgj3ldUMk7Q+wM6ruMZsM5m
	2eAN15SxdcYtnY9jtp1A==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aua2erbsk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 14:34:41 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-4514cb26767so752428b6e.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 06:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764858880; x=1765463680; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zMo58q1hXcHsh9de7AT5NtCtg1jt8KXPUfxBKaXrnlM=;
        b=KT1Dg+kCzU/xgI4htzjidZjifziUBt1CusjxCsbSn1+xqL9BWnHAtY/PswNcjMCBCD
         vRuiztOydooSX7+LkejJJay2lreslCSN9MnnA5eXWtzmRAQ41HIsMcrXNn7KhpDlht5r
         BQCOsys4q4senyZQ1Bkg5aw+Toz8wZ87B0UjopB541+TGKYInWwjg29+4pZQh7Cyp/jc
         3wqjQygYneK4mfE+QZIgksaCVGBYJssJxiBPIck/IlxFxgLeR+nfkrirVTTDELD34zSu
         1iFHS2G7ERhrYzcET8Xf7N2VeQDIZ8eQ1cDpmaXXQP1gbab6tcVZiBDGuxHvxCiSWNGP
         Z/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764858880; x=1765463680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zMo58q1hXcHsh9de7AT5NtCtg1jt8KXPUfxBKaXrnlM=;
        b=hEKH88xek0wXSElYGOXSDxAlm/r+JZ2SyhkKYS4gNcmrS9jaquA4S651/4aqKEyGJV
         VVr64w92TPT1KHTxbdSK90fvsp6i7JguvfETJH1Q2UYEReYk4qZv4n0lEVN+2EbJUaXM
         +ffzjlrQSXCL7EOAURJiqZQ7pwj2o5S0WcOK8+A1FZeHDxd5cfFj+dCybnVUedh5L++V
         L41FlkmLANxl0WRnKgVXlYj8/giUpGDZ7bD3d/vj4/C52udrHMPgRwWnIFXy6UjRnfNm
         qjfZPGVBV9dZJWSFQ/yjWzDwmMYjdboxXTyRgFofqt+3f4juLQmgrACgYftPAJZPQFm9
         dbHg==
X-Forwarded-Encrypted: i=1; AJvYcCXBnVv/sd3jKKS4+IMoY3K++L0ho/59FhJ2uktRYccWGIja+8wejEtD5uT9LAxw4kN1OxX/M+HLmVRO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8BGSGFUipBcEwzLsBrj3KC0z+wHsSmn4KX5lZVVoqlMrUcBMk
	VEqFKB9d+lxXJzFFUfaIMfdCCRsMRq5a8ncbSm9mMvT4HeWlYdGjh8cTjVHMGNqUIzqG2K+WHlA
	2qscVC8E1ujwA7PI4NamsINaPbRTDTCAB/IqRezkz+9OdxfENp0Gj/otc7t0m+N3YhrV0hyXNIV
	cJAHqLGdwulquy1Fkj0fGNX2RQjL7yXfKYgJDr58k=
X-Gm-Gg: ASbGnctyV9zY/z86C+9c58ySiLUb/cZQAbJ9cV2dsVgw6l08784ixSiTcnrX7cFna9K
	xpKyVDNe7RpHUB8j5scKkKCm75/RQFOZlFwcd4Ag57YsroAbnVeON71928DFkkDakKvKiFe8MCY
	msX6I/wP+/YZUIKjA6vJMEu01W4/lPzJbCMLeOxgkjMuN0TySKRBz6ahQsu3LxYFNXDw==
X-Received: by 2002:a05:6808:f07:b0:441:8f74:f34 with SMTP id 5614622812f47-4536e5baaf4mr3829297b6e.62.1764858880571;
        Thu, 04 Dec 2025 06:34:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+0rUHt++eMGPmgb91GGQmUCxZnxzOfu4ye/49vp1JLfq2ba9oxHDbplRL+FsVsADDxBYLFTZFQ/V2ZQ5gRzk=
X-Received: by 2002:a05:6808:f07:b0:441:8f74:f34 with SMTP id
 5614622812f47-4536e5baaf4mr3829267b6e.62.1764858880177; Thu, 04 Dec 2025
 06:34:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-1-9f4d4c87f51d@oss.qualcomm.com>
 <9cc55934-6980-4673-8501-2d1efe2f816e@oss.qualcomm.com> <936b6a48-a5e5-4efb-be7c-215ac670677d@oss.qualcomm.com>
 <7b4bcb6e-fbb1-45f6-921e-dd1340a8cece@oss.qualcomm.com>
In-Reply-To: <7b4bcb6e-fbb1-45f6-921e-dd1340a8cece@oss.qualcomm.com>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 06:34:28 -0800
X-Gm-Features: AWmQ_bnTCiJGdMF-v40ymD8ufqsngGVM26REo7tOXu1SRLt8H3-DaxTDjnOqlTE
Message-ID: <CACSVV03buEzs9UyDaDpamyAXwM8vrkp2P_N67Wqt3oRjhdc-sw@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] drm/msm/a6xx: Retrieve gmu core range by index
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: buaguBDOfGIebVnLtVcPmgEAG5lLJt2L
X-Authority-Analysis: v=2.4 cv=Rv/I7SmK c=1 sm=1 tr=0 ts=69319c01 cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=eWtdQdNNt0tD2S8HvpoA:9 a=QEXdDO2ut3YA:10 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-GUID: buaguBDOfGIebVnLtVcPmgEAG5lLJt2L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDExOCBTYWx0ZWRfXyzFghoSR429o
 MTrIFCs/3vvLNsqRa+koObONvTnRo/vifKyt3UaFgpFFWc2mAPcjM2kqemoxoEcJzMPvwzg65I4
 rDJL0JBkin2iQuFluPX5uSKpAq4tA8S7NzZ07jT2SFmrPjxAtFInt6GBEF7Uxm4U1z4Pn4jEQ4x
 8WOtoNESzazpQFIbJ6y+2aKUmYhfOJFetu87p/ShKMM4WZSa1heFPZVaMce5T3TGzsGqPxlgwl4
 ynVYwTO8bWBzXz4ZG0NtJSn4Nq4Bcj+JMYCBI1RrAu4nyw3VkUYxS155xoXM8jI0zGhq2xYgacZ
 OMWEm4VTIN0ZLB6Dr6NazlQkr1n3T9C9WItLCVANEjh/xgDS3JMXwEBsXIEOCTMGZeo7wK36SfA
 Pk+2jM19FMnUMBeOdY4kejUg/MSGug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 adultscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040118

On Thu, Dec 4, 2025 at 5:30=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 12/4/25 2:10 PM, Akhil P Oommen wrote:
> > On 11/22/2025 7:08 PM, Konrad Dybcio wrote:
> >> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> >>> Some GPUs like A612 doesn't use a named register range resource. This
> >>> is because the reg-name property is discouraged when there is just a
> >>> single resource.
> >>>
> >>> To address this, retrieve the 'gmu' register range by its index. It i=
s
> >>> always guaranteed to be at index 0.
> >>>
> >>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>> ---
> >>>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 14 ++++++--------
> >>>  1 file changed, 6 insertions(+), 8 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/=
msm/adreno/a6xx_gmu.c
> >>> index 5903cd891b49..9662201cd2e9 100644
> >>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> >>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> >>> @@ -2029,21 +2029,19 @@ static int cxpd_notifier_cb(struct notifier_b=
lock *nb,
> >>>     return 0;
> >>>  }
> >>>
> >>> -static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev,
> >>> -           const char *name, resource_size_t *start)
> >>> +static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev,=
 resource_size_t *start)
> >>
> >> Can we drop this and just use devm_platform_get_and_ioremap_resource()=
?
> >
> > This API seems to lock the io region and fails with -EBUSY if the regio=
n
> > is already in use. I am worried it may regress other chipsets. So, I
> > dropped this idea at the last moment.
>
> Is there any specific platform where this would be an issue?

IIRC we've had this problem before and ended up reverting a similar
change, due to gpucc and gpu overlap

BR,
-R

