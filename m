Return-Path: <devicetree+bounces-232442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A46EDC17FE8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 03:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 27752352032
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 02:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C382E8DE3;
	Wed, 29 Oct 2025 02:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gi7/LrHo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FXX6QzTN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803732E5D32
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761703531; cv=none; b=Ryp9VaYS0KuHt1DVObPiaSzPf07+B1GrTjZbSgzz3Th/YoDHE+RfYBz3Tey3irp8PHk8ksp7IxR+1TLokwuzD7TKvIMCuxpAjsZMnRWuQAMYzGDf/Ia/Rei54IWQ2peolNsxEDdEdQa1S196x29RR65sacf0Fd3npqvzlTxz9S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761703531; c=relaxed/simple;
	bh=6q2qqDVYKO5ZY58yg/N5whpHCFf46CzxMfbKry30Kag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A7ArE0FZuzjiKN62X80La/Qz7cPGgHiVbVaRLiscHQMo0jwEUsvTEP4O9l6CgOm6mddeftZXjRgVvGEbucc8eTC0mQdwrVnHovwOlnqJwnYmUWgiZ8kipbDvqbap8zIWtPQT4c6utG0mqsHl1ssCFqw9I/FM2BnWDsxtoOZasas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gi7/LrHo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FXX6QzTN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlMFH2523755
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:05:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oNYnTyhROEtSOeCA2ONPfk1z
	k2xXS0IqmDQAJE9y2I8=; b=gi7/LrHoeAiQsPm9Ov/wB6nY1FRSi/Il3LJHMdth
	McGeaav8atOxCK0TyTyVlqp/9x4KwHim/nqRAZzRj1HEv+oT8OW5pmm+P+sVcwrI
	VCGnfCW3XhaE0kQalC6q/eVgw2Rq9oC33yL8pdwI+BHj0y4fGEmlqkaF5Pw2cOxF
	gA+IkmL4zajq/2HU+SutIuFDEey8MeUy623VCPLohF+0DvyvFYwQVdvC3XbuK1dY
	U56uLcoOqhNCAZQXB7G4q57Van1eWJxVmn84MX/3bkLtHhUjrI3skKJvSCe6GxJG
	J6QtRqyk2+zNKfiiFtbxde2/VogKVKxNl8uWJJq6fAPvEA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1ru5t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:05:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87dfd03fb72so335372316d6.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761703527; x=1762308327; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oNYnTyhROEtSOeCA2ONPfk1zk2xXS0IqmDQAJE9y2I8=;
        b=FXX6QzTNI+W2QdYCBNlgIDiIB5kGMdNq+gnxRRndjNqQ8LT8k9ZryefXkCLKsWTsjn
         9Krrz7oTLLPqtUqgIQWQDURRUPv/8/jCM1t6pwVgKlleGFD7pNlZ4Zg5NJmy0JgfUt7o
         dYwT45rNiW3auTRmqWg3pW7cGR1TUP/1ez1YdgvpopG722QAgVM+ofcsG4uXqB3aNGsr
         JSwVEvW0aVFJEJ/TPWe5odjAOMjGOEgml2yfP9BSQoB+dTaPE0DLfGEx2Ah1DVxDqvXN
         Ji7x+oU64vmMCrzTdQVNPDWtim0LeoYZ+TYpPSFIPsGvEyWMiWQ7EbKEzltoXS1zeamy
         xrWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761703527; x=1762308327;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNYnTyhROEtSOeCA2ONPfk1zk2xXS0IqmDQAJE9y2I8=;
        b=QJbtoHC5G1yzksmWiZvQDFpIgMj26vTzPg+UiPwyfzLeJ9mYb3bjhAx4BtyVR2QfPh
         YaSHjMSBnh9SSEhrrufaAoLIuB6ZemnituHkWxkHVfqSloCGicXunQVowUiOPf4ZOg+l
         tJ0JOHxKRGQWYmP+3A7nwqaXUFsy+T/l+rVnaBeN3tORXdq6pDBXslIRXYMXDijaCu+0
         hJRmf94MV9MuEtsbFFjFyo86PSLB1XJ7Wvpx1HX+qcH1iVVwGdWxhLaViuBlxwjaJOEG
         ciKc2pCdVoeEdvkQNYxlqdDAglcMZhN0hwTMS1ICWyDnj7m8dZNLLVBTqTCi0bz7pm4f
         qA8A==
X-Forwarded-Encrypted: i=1; AJvYcCU/fDNoeLUnQg6V1P83DXWiuy2GJuvtkgLLuY4C4kXIqA0iHq5j4/A8gHvY9fNeQiM9PXvYPTPAjzYd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6HaOOXDAdzvHGCOeAUhToyixnwHSAQyunCivm+l6i3Zuu0c6Q
	pZF8ey2I6aGeeVZgHz4XtDZX94VeQveWPfLnB51il0P5tYe9peO5l64lcnOFMS9AmVWHinzUAMs
	eao3yjoIyAXKqHKS+NYSRUgAczKVlaxwxg+2WNDcC1gw6IZ3K85o3+YV9cupWPN35
X-Gm-Gg: ASbGncsbvjc7T9EglwB30pNZH1pWeFZHc6AGq14BpzjLm26WKYJ1XFjPgapEDzoLAYk
	KeENBIO5bb8umeeH6cjE8fNX7N+ohgG4y8h1WNoReT8niW2BlixcVwZcnsphqcDzMBdniCQ4rcT
	pVPk+0bYEN0hixNCYvtEVPb8jdVzjp/bRxJfzD6FPzRMLXSvkSiMIcI6iy60eXnTgdUs9wtLc2s
	bTfhka+w7jOtdqAn05xy2/7n15sAkr3QyNmCCIHt9VlAb/z8Ou0i2t/VAPDs4QMCli6owd+rB+R
	2F9SxGA3mWgRZf+2ooVmoko/vxGbQd2kbPtwrmiCnNWAUTqw/Lxo4KMjqYQmfbZ/fYT8Da8RNOM
	e3wl6g43KtpvWEzLoch8vg6RhOVsONhWP/07p9KmDFKPO5vFrA9SKsVrP1XIkhsno
X-Received: by 2002:a05:6214:1c47:b0:87d:c94a:17e1 with SMTP id 6a1803df08f44-88009c08041mr17921496d6.48.1761703527373;
        Tue, 28 Oct 2025 19:05:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGumAqyzy6p7G2g0/1nCG8Lfj49elpmE29lrS0JJixqIdFWH3Cdjr565IB/rUF7KuDDpYUNRA==
X-Received: by 2002:a05:6214:1c47:b0:87d:c94a:17e1 with SMTP id 6a1803df08f44-88009c08041mr17921186d6.48.1761703526864;
        Tue, 28 Oct 2025 19:05:26 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48a7467sm88752116d6.5.2025.10.28.19.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 19:05:26 -0700 (PDT)
Date: Wed, 29 Oct 2025 10:05:15 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Jessica Zhang <jesszhan0024@gmail.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 03/12] drm/msm/dpu: Compatible with Kaanapali interrupt
 register
Message-ID: <aQF2WwriXy2yFzkv@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
 <a4a7f1c9-1817-4092-9ab1-07209bb44125@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a4a7f1c9-1817-4092-9ab1-07209bb44125@gmail.com>
X-Proofpoint-GUID: oDcEEWSdO7k2lu3EfaGyRaKi63G2E9k1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDAxNCBTYWx0ZWRfX9MOe7eBe2627
 LOGh0cXuRW5+17VdjuieRfhXmq1Pa5W0kdGgBAG0uGwLafwuI7kPbEtUelWu02ejbVWhAtv+jfF
 Il8Q7Ua2o+GTzW5/pAzXzRXxpTqM4VvI1n5CtOTLs6yqf/RF4wMZD4d8Oh9Y9zH0aU9zANGcofQ
 yA4ULHIrsQVx+HryAjhcxCSsMds9onGn3vs0Z2ztioXDC+KDTEqm9OmiZoK4bytH6c6KjOZO1Ku
 nR/xuK5r+I6Oll9/q5cQR39eNjUssZoWvOymuikhYXnQ6Ct+85Y8OzOQQ+4lfhYW0RrDjg9pXum
 BwDIc6rpgARq1aAtEIb8eZIPAxboMKrRv/DFdbXgE8wK9vGR+qWWDQQqfH08VIxYm8bdUKInvz8
 IJBkTxCLPCV/lvGO8qAGg6ZQYMRMQA==
X-Proofpoint-ORIG-GUID: oDcEEWSdO7k2lu3EfaGyRaKi63G2E9k1
X-Authority-Analysis: v=2.4 cv=UObQ3Sfy c=1 sm=1 tr=0 ts=69017668 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=wkyyw-Wu4EUB7OuTH_AA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290014

On Mon, Oct 27, 2025 at 11:07:20PM -0700, Jessica Zhang wrote:
> On 10/23/2025 12:53 AM, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Hi Yuanjie,
> 
> Can you reword the commit message title to be more clear on what this patch
> *does*? "Compatible with Kaanapali interrupt register" is vague.
> 
> Something like "Add interrupt registers for DPU 13.x" is a complete sentence
> and makes it clear that you're adding interrupt registers.
>
Sure, will use "Add interrupt registers for DPU 13.x" for commit message.

Thanks,
Yuanjie
 
> Thanks,
> 
> Jessica Zhang
> 
> > 
> > DPU version 13 introduces changes to the interrupt register
> > layout. Update the driver to support these modifications for
> > proper interrupt handling.
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >   .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
> >   1 file changed, 88 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> > index 49bd77a755aa..8d265581f6ec 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> > @@ -40,6 +40,15 @@
> >   #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
> >   #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
> > +#define MDP_INTF_REV_13xx_OFF(intf)			(0x18D000 + 0x1000 * (intf))
> > +#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
> > +#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
> > +#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
> > +#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18D800 + 0x1000 * (intf))
> > +#define MDP_INTF_REV_13xx_INTR_TEAR_EN(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x000)
> > +#define MDP_INTF_REV_13xx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x004)
> > +#define MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x008)
> > +
> >   /**
> >    * struct dpu_intr_reg - array of DPU register sets
> >    * @clr_off:	offset to CLEAR reg
> > @@ -199,6 +208,82 @@ static const struct dpu_intr_reg dpu_intr_set_7xxx[] = {
> >   	},
> >   };
> > +/*
> > + * dpu_intr_set_13xx -  List of DPU interrupt registers for DPU >= 13.0
> > + */
> > +static const struct dpu_intr_reg dpu_intr_set_13xx[] = {
> > +	[MDP_SSPP_TOP0_INTR] = {
> > +		INTR_CLEAR,
> > +		INTR_EN,
> > +		INTR_STATUS
> > +	},
> > +	[MDP_SSPP_TOP0_INTR2] = {
> > +		INTR2_CLEAR,
> > +		INTR2_EN,
> > +		INTR2_STATUS
> > +	},
> > +	[MDP_SSPP_TOP0_HIST_INTR] = {
> > +		HIST_INTR_CLEAR,
> > +		HIST_INTR_EN,
> > +		HIST_INTR_STATUS
> > +	},
> > +	[MDP_INTF0_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(0),
> > +		MDP_INTF_REV_13xx_INTR_EN(0),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(0)
> > +	},
> > +	[MDP_INTF1_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(1),
> > +		MDP_INTF_REV_13xx_INTR_EN(1),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(1)
> > +	},
> > +	[MDP_INTF1_TEAR_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(1),
> > +		MDP_INTF_REV_13xx_INTR_TEAR_EN(1),
> > +		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(1)
> > +	},
> > +	[MDP_INTF2_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(2),
> > +		MDP_INTF_REV_13xx_INTR_EN(2),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(2)
> > +	},
> > +	[MDP_INTF2_TEAR_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(2),
> > +		MDP_INTF_REV_13xx_INTR_TEAR_EN(2),
> > +		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(2)
> > +	},
> > +	[MDP_INTF3_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(3),
> > +		MDP_INTF_REV_13xx_INTR_EN(3),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(3)
> > +	},
> > +	[MDP_INTF4_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(4),
> > +		MDP_INTF_REV_13xx_INTR_EN(4),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(4)
> > +	},
> > +	[MDP_INTF5_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(5),
> > +		MDP_INTF_REV_13xx_INTR_EN(5),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(5)
> > +	},
> > +	[MDP_INTF6_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(6),
> > +		MDP_INTF_REV_13xx_INTR_EN(6),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(6)
> > +	},
> > +	[MDP_INTF7_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(7),
> > +		MDP_INTF_REV_13xx_INTR_EN(7),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(7)
> > +	},
> > +	[MDP_INTF8_INTR] = {
> > +		MDP_INTF_REV_13xx_INTR_CLEAR(8),
> > +		MDP_INTF_REV_13xx_INTR_EN(8),
> > +		MDP_INTF_REV_13xx_INTR_STATUS(8)
> > +	},
> > +};
> > +
> >   #define DPU_IRQ_MASK(irq_idx)	(BIT(DPU_IRQ_BIT(irq_idx)))
> >   static inline bool dpu_core_irq_is_valid(unsigned int irq_idx)
> > @@ -507,7 +592,9 @@ struct dpu_hw_intr *dpu_hw_intr_init(struct drm_device *dev,
> >   	if (!intr)
> >   		return ERR_PTR(-ENOMEM);
> > -	if (m->mdss_ver->core_major_ver >= 7)
> > +	if (m->mdss_ver->core_major_ver >= 13)
> > +		intr->intr_set = dpu_intr_set_13xx;
> > +	else if (m->mdss_ver->core_major_ver >= 7)
> >   		intr->intr_set = dpu_intr_set_7xxx;
> >   	else
> >   		intr->intr_set = dpu_intr_set_legacy;

