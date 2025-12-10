Return-Path: <devicetree+bounces-245649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6D0CB3B32
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 18:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54F1F310562E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 17:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C275528725D;
	Wed, 10 Dec 2025 17:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TIQfC9mX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S9RqGACl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BF21F09A5
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765389088; cv=none; b=KmXux5mDZdao8sUlLNiVHv0zwcT3hYcOEWEbQF4XUR4rTG5k9ppteCUjNC6HiYxxJzwZvOkLcF/AV6VpwCJ6ZzGHauZl2WOEQG5zKa0Hs+sfUm54OgIzl1MnGRdqAwvCK7E+Y0KWBkc19zvg73NP09tONrgZIYEMa+8jBZhHbjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765389088; c=relaxed/simple;
	bh=hqxLe5wDqnsYvlp23QTWqd8JEec/XyT1t+QccVqor7g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G7VGT00rV966KHxmcgSn88AetZLAcQhLxMNHmshbT83D3d0Ys9fTEektcEeLyXEIIoSHUu6tlRns3SOad1xz2V0Vz+jIkkEbBTYrfZn53m1IeLwlKtizVja2O4RlXViZBi42D1UPuzNTnqo5Bx/IZm67LKdfGIeT97lD7KKqpE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TIQfC9mX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S9RqGACl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAH2LNe1817911
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:51:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BeSQQNCY7n3ICAefy9Ece8ch
	se8u8sQw7ZSYOSvx66w=; b=TIQfC9mXoDdJvk4a9oHqwyMn1jgTT5pNgliPChck
	ygFL6I/FJkGztwY9KfZ9OXoujBCFkPjdSr6mkAmc7rhAzaFGbRhRm8XhEVCwkGnF
	SDWDSx4RGoEIVKcXjiMYib9iAP5c00TwaqV5Tzt69cLHyXRUyKpz70SUiCwHpYKU
	T8VwysJJmeupjVDoL6jHYRIiIQAUUHMHt7TWQ/7a7irIPzeO1rfwZaeAf/vY1aI5
	7s8fJ9X0vM2Qq1w10uCp7nO3NvJUhUEmhWfQus+e29X5jS7KlQ6dNuop8HfafOLX
	wvMAshfL8B2Z5QRkxyZSMvezRYJRIlno8hotxj5Qa5FLVQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay2e0j8eq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:51:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed782d4c7dso837371cf.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765389085; x=1765993885; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BeSQQNCY7n3ICAefy9Ece8chse8u8sQw7ZSYOSvx66w=;
        b=S9RqGAClm6yU58l8FPwP105v0neO0Bxc8xIcmGhN08XKeIv5lvTHpoHaNrtqTIzVrb
         RK4bnWeUM640Og9ZXmb5kGt/4lf/i5pnWbwisnXHr8wuJVvlDMUTvOc9GsLfeepC1sWm
         FOriWrhJx7rzOlLGbFfPJfdPCOEoY+2ue2ULMg+G8hCX6OGJaarNcRn8nBEX5/Hl4Z2A
         fnXykgyhwgvml3nSnODp5o+yuScLXqtJHxDaPz5KIUUjbbUsf7nhsY+bRk4zG7k+2aUH
         zaP4h4TZ5QakuTvcM4y3d5/F+iB67+vy4yid1dpYFnSfdcRYqxxL3Z2P04teazZ87MlI
         4OZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765389085; x=1765993885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BeSQQNCY7n3ICAefy9Ece8chse8u8sQw7ZSYOSvx66w=;
        b=t/4gH9egIE73Q4GrTc5Hv9CypwDVl75YsEN24krph4TrmdV5TbYQO34kNhkdzqKkbg
         HlI3qsG2l2lfB8OfnCYMU/EfxX069l69Y7rhFCEdGpSTV9rw39lv2EEnHIN8ERjo35VE
         xjIvj5tprLeUM0EkYu/E621s1yB4X0pDe1x9v8yXA1LMuDVH7Li0rXhfg2lbauPP98RZ
         rZSm+hdSDuBMWzo5qp4y7Z9xV9Hpodg5RzdYNHJvUQunxLoEA57BXxJAYabhHgLubzfN
         1euyys2buw9B3I/A06ITLr3jDxeArUK7AuoepAbRgjx2jpPvafZ1rkFfkW3px17Tf497
         MYjw==
X-Forwarded-Encrypted: i=1; AJvYcCWJYGwfUQRd0y1/Evxf0qvTZZJFyPNXamfGeljvWexZmL136mpLXeDDk2dXyuCJUBVvMTbtgP+rC61f@vger.kernel.org
X-Gm-Message-State: AOJu0YxNj4uaRWjtZ0cIERVk8hAxcBS182D2C1Lf4rDWP9foiyIdeREa
	bocKyYOP5TTsY6h42TcY6Up23LJ9WtKfEgulrZkvgGsUBgI+LA6GvGMwOiIP6c8k9Q0fUeJezxz
	doUicsJuSjKeXnkOqPuAUZmzX3laPlJg7l4Oq7FU3VO0LRKHjM2hNr7SsmmECgVGy
X-Gm-Gg: ASbGncvtQmuOgRiPxmpE1zQXvaGOOSpgMKnGefHwuWvRVWGx/ezlra51Y7aD/PJUbz4
	cEHeWNseNgKesjhNcUzIzUh/26/mV42cMYwjskt7VqFHGrdgRnCmZLZs7ho4X/+VgVZZPN/1vBI
	XT/1/mRt8IhBcgPaMVsK++FBM7G897qGTcqD7RLJyyOr0TKZeLPn6o/MJqcmkhkeb2aVfm3R2ST
	Z/KYC0hJ7y2Zm0KrZ1jQjVAh/wOyTzScnEIAN9zx/eFYap4FTfeXQ3/kSskn6lvHKQ2hp07ssWM
	t8NVrlaV77tJMldKT8QQK7gUHXMh4fbFLpVMhLywkoCcpPsKEorOKoJGxKW4sgYgP6nDLeTpC/W
	ZApxyY5bR1UPDQ0ADCaElTwy9g4BIN7orEjC43wLZozvIBJXXCchSVru74YY2GdrzX7dzMANiHr
	3LAErLky5Tdu77KI8rHceB4Ao=
X-Received: by 2002:a05:622a:6089:b0:4ee:2bfb:1658 with SMTP id d75a77b69052e-4f1b1b0b1d6mr38135821cf.45.1765389085300;
        Wed, 10 Dec 2025 09:51:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFuloF8EWYgTNimNJfZde6kWgxvxaGZZr+YBsiejZFJFGZe+iFpq3QoI+oYylCx2XnCAFrI6g==
X-Received: by 2002:a05:622a:6089:b0:4ee:2bfb:1658 with SMTP id d75a77b69052e-4f1b1b0b1d6mr38135421cf.45.1765389084815;
        Wed, 10 Dec 2025 09:51:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f379f5sm37713e87.11.2025.12.10.09.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 09:51:24 -0800 (PST)
Date: Wed, 10 Dec 2025 19:51:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v5 4/4] phy: qcom: edp: Add Glymur platform support
Message-ID: <mao4pyywje5x526ggasodx2hpmrgrw3yhq7a4v2lxtj2m3p6ii@6mtei6u7jbuc>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
 <q7iguwi6uxkzl3ogk2jidfncc3guuaqzszvemvqita6t3mlnvz@6e2vxnu4li46>
 <e22cqybvhlfv6mvmbr6tlaz4zousxcyo475g67yjerxw6xks64@6zzg6tj33kxa>
 <ef6gkmgy4n6ipdam2nbm3no2ew3mga6dt45xpf6ykv3is2nkjh@gvz6pzg6dk7e>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef6gkmgy4n6ipdam2nbm3no2ew3mga6dt45xpf6ykv3is2nkjh@gvz6pzg6dk7e>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE0NiBTYWx0ZWRfX/SyjYv4WBbyu
 5YjibuNxMs3NmRObznuucrKhqK9EhbnNDk0eCBumPPu46FTwGUkgdmE/hhhzJNs8/vOm52oms+n
 oxCiMbz+3NZhOKnBA3y5Q2VGGYlhvGxt0Sy5gRe1o1EwHXhJY1NLreMc5ZkX/btS13Jei9FCZVj
 thwpbtmQiiJNfo8nGxZca7PsbMyEhHlGfKpMijEnIlE5wmQX9ioaUNIPUd0uCMwOUESH1IMggIF
 DdYxSDNZnFED4lh6Fx2ksn5DwdI4vAuEGDgnveId+sDO1781yHkuI9SvVkYBA8bBQ+myDn0VJuu
 t7x7dyb67vX0UVGE2NFiGbqUwYTiq79BxseDj3FSuhdWNOAySRLzuQmu4vrGF5/3xcT02H8/rKj
 Y3juDf8NDVeWKsf0MIKP33wGnlQxnQ==
X-Proofpoint-ORIG-GUID: gXtDsiRgc34A_pJdcJmL-yOJQVnTKH-N
X-Authority-Analysis: v=2.4 cv=G5oR0tk5 c=1 sm=1 tr=0 ts=6939b31d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=x1iXGeQro2BAPSpZQGcA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gXtDsiRgc34A_pJdcJmL-yOJQVnTKH-N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_02,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100146

On Wed, Dec 10, 2025 at 01:26:38PM +0200, Abel Vesa wrote:
> On 25-12-08 16:16:31, Abel Vesa wrote:
> > On 25-12-05 22:26:35, Dmitry Baryshkov wrote:
> > > On Fri, Dec 05, 2025 at 04:23:23PM +0200, Abel Vesa wrote:
> > > > From: Abel Vesa <abel.vesa@linaro.org>
> > > > 
> > > > The Qualcomm Glymur platform has the new v8 version
> > > > of the eDP/DP PHY. So rework the driver to support this
> > > > new version and add the platform specific configuration data.
> > > > 
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++++-
> > > >  1 file changed, 224 insertions(+), 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > index f98fe83de42e..052b7782b3d4 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > @@ -26,6 +26,8 @@
> > > >  #include "phy-qcom-qmp-qserdes-com-v4.h"
> > > >  #include "phy-qcom-qmp-qserdes-com-v6.h"
> > > >  
> > > > +#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
> > > > +
> > > >  /* EDP_PHY registers */
> > > >  #define DP_PHY_CFG                              0x0010
> > > >  #define DP_PHY_CFG_1                            0x0014
> > > > @@ -76,6 +78,7 @@ struct phy_ver_ops {
> > > >  	int (*com_power_on)(const struct qcom_edp *edp);
> > > >  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
> > > >  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> > > > +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
> > > >  	int (*com_configure_pll)(const struct qcom_edp *edp);
> > > >  	int (*com_configure_ssc)(const struct qcom_edp *edp);
> > > >  };
> > > > @@ -83,6 +86,8 @@ struct phy_ver_ops {
> > > >  struct qcom_edp_phy_cfg {
> > > >  	bool is_edp;
> > > >  	const u8 *aux_cfg;
> > > > +	int aux_cfg_size;
> > > 
> > > Can we always write DP_AUX_CFG_SIZE values?
> > > 
> > 
> > Sure, I could check what are the values for the rest of the regs for platforms
> > with v4 and v5.
> > 
> 
> So, after checking the docs, it seems we could write the reset values for the
> v4 and v5 as they always are the same between all platforms: 0x03, 0x02, 0x02, 0x00.
> At least on the platforms I was able to check.
> 
> Should we risk it and add these extra values to the array even though they are
> the reset values, just to make the driver more clean by having single sized arrays
> for AUX_CFGx between all platforms ?

as far as I can see, yet, please. I don't see a risk in it.

> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

