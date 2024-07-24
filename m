Return-Path: <devicetree+bounces-87734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF5C93AD11
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 09:14:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6344E2836D8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 07:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74ACD137772;
	Wed, 24 Jul 2024 07:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wZJhcyce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A181212D214
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 07:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721805218; cv=none; b=qnXDKlFJbzQpF5LMPNPveSuq3y6215iWHB1Dk58BWt5pVIiVs6zklgk/C8naBi/RtcteAfRlhv6RL/Pe7pysiDZ8go2ThRe+kHBwkunlXLbFy3U4XFG3Waf3PRyeBmxuLLFPz305TS72PZFj54YhT2yNehdWfp2BGQbtFoZJyX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721805218; c=relaxed/simple;
	bh=uwyZFwSs4zyRVcD6GNu+z1tt0btijTTHCaceFk9BSDo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Cg+1+ZYYJVj20Hkt9kPDcF831Td9zypaNIzWI4C7MZQm0NFaafYCI/ztZqY4MagsRdIBxGQ90xwv5BegTA/pGGloZHXrxzS1PqGo8WFJIIY7IsXWQu1pDfQ7LeuUAj+Eso/S+WvIE44DxIwFNHQuYbOWmZSQ4ZAg2DyYvOj7S2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wZJhcyce; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-664b4589b1aso4560737b3.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 00:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721805215; x=1722410015; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+a1tPg3HOKKRtQ+H1Jww0GEhJ0d9bDqysfDZw/250x0=;
        b=wZJhcyceCLvqdj41AmHl6BSJWrbVGR5EJU9+lZHLvK8pAuzDotD58d3HLvX+WmCh1p
         u9M+S3zqPuG1d/5nif5pRQSuKVfkGycZQqu/m9gBGgHRjlliK1jrckAbJW7/Q+kIdNdX
         G/nqzIraJJ9WZpEo2huEdxucw/EPsFDQCA1b3Dw4qOcn4+PdBUWp9gcP0/El6t24vl9h
         ByDU6qChUcpFh6eBjRMOF6IWuov6xdswoXsf13JqNI3fl+PIIOP+AYebfAREeOLFRJBp
         tWxdYz/g/CdDxJxw5n8VNVXKlKdAnD7YHT55+atYQgepW8977MGPR/2/YJf4N2wvldc/
         y5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721805215; x=1722410015;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+a1tPg3HOKKRtQ+H1Jww0GEhJ0d9bDqysfDZw/250x0=;
        b=Wj0hqzTsLKMRAugcJ+8TiDpDw7X4m8xnjD9mLg3zb8DhFXZCiEZR2wz4/IuUdl5vKl
         UOLJmfOzJvyXJR1H3oPJ993gRUApama3t6nVMymkC/D7x7myreoA88ygrBZhmPEP4otV
         7lthScIppRvg2uPmL3iwxcHl4k6+0agbhFNTI4WWrXH3lfndceOtu6jS3Oh16tfsx7Sz
         G6j89NAzVVvacHzvofjvmwROp1i4G4KJhQwNxFpogvP8lR9vECxe8Sxt0r9nC44p8jWq
         rgQoD82ckILs262NU/ejpVQSGw7zTOxpJ8j+uECih1a28IA7qGHt7ntQkaYdeGWtH9zP
         mkVw==
X-Forwarded-Encrypted: i=1; AJvYcCVxt5WKVty5yVE+laTIr/YAK7QMWS08Zuzg7ncq1iSrljRr4erJBgTwC/pt6EAx/85b2JVBq62DcEDPw1wQMenNy/RzT8kKp06Aqw==
X-Gm-Message-State: AOJu0YxOHiVAR0GFN5RwYjT0/H7S7k/TMYid2Pbl1HCdvmvQnATTPEh2
	6tna8eVoXuyStf1Y2JlweFt6TXx9VhzB6i4QxOtlnUDVlWJQtRFh2pFRKFmSKUz9pkXND5Ldkz6
	SLMydoXJ8uaTjTP2uYwhkJmCsFCh7rpGDTz1NKQ==
X-Google-Smtp-Source: AGHT+IEPG1bHq5OcfqednTsQJ647G2YbNdaFkAv2JHjQWuG+H9RUFpS0NlqBBVg0Uc/Z02sFUMoTU5E5IsQ01hU01b4=
X-Received: by 2002:a05:690c:2e0f:b0:65f:96e9:42f4 with SMTP id
 00721157ae682-672bdaa5cd0mr5792037b3.15.1721805214701; Wed, 24 Jul 2024
 00:13:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240703091651.2820236-1-quic_varada@quicinc.com>
 <20240703091651.2820236-6-quic_varada@quicinc.com> <57dadb35-5dde-4127-87aa-962613730336@linaro.org>
 <ZqCCpf1FwLWulSgr@hu-varada-blr.qualcomm.com>
In-Reply-To: <ZqCCpf1FwLWulSgr@hu-varada-blr.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Jul 2024 10:13:23 +0300
Message-ID: <CAA8EJpq5XLQ8WXVxr+3=DZ58URpfqM2phcWVhukpmc_HnRsRfQ@mail.gmail.com>
Subject: Re: [PATCH v4 05/10] pmdomain: qcom: rpmpd: Add IPQ9574 power domains
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, vireshk@kernel.org, nm@ti.com, 
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, andersson@kernel.org, 
	mturquette@baylibre.com, ilia.lin@kernel.org, rafael@kernel.org, 
	ulf.hansson@linaro.org, quic_sibis@quicinc.com, quic_rjendra@quicinc.com, 
	quic_rohiagar@quicinc.com, abel.vesa@linaro.org, otto.pflueger@abscue.de, 
	danila@jiaxyga.com, quic_ipkumar@quicinc.com, luca@z3ntu.xyz, 
	stephan.gerhold@kernkonzept.com, nks@flawful.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Jul 2024 at 07:27, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> On Tue, Jul 09, 2024 at 11:52:19AM +0200, Konrad Dybcio wrote:
> > On 3.07.2024 11:16 AM, Varadarajan Narayanan wrote:
> > > From: Praveenkumar I <quic_ipkumar@quicinc.com>
> > >
> > > Add the APC power domain definitions used in IPQ9574.
> > >
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > > v4: Add Reviewed-by: Dmitry Baryshkov
> > > v3: Fix patch author
> > > v2: Fix Signed-off-by order
> > > ---
> > >  drivers/pmdomain/qcom/rpmpd.c | 19 +++++++++++++++++++
> > >  1 file changed, 19 insertions(+)
> > >
> > > diff --git a/drivers/pmdomain/qcom/rpmpd.c b/drivers/pmdomain/qcom/rpmpd.c
> > > index 5e6280b4cf70..947d6a9c3897 100644
> > > --- a/drivers/pmdomain/qcom/rpmpd.c
> > > +++ b/drivers/pmdomain/qcom/rpmpd.c
> > > @@ -38,6 +38,7 @@ static struct qcom_smd_rpm *rpmpd_smd_rpm;
> > >  #define KEY_FLOOR_CORNER   0x636676   /* vfc */
> > >  #define KEY_FLOOR_LEVEL            0x6c6676   /* vfl */
> > >  #define KEY_LEVEL          0x6c766c76 /* vlvl */
> > > +#define RPM_KEY_UV         0x00007675 /* "uv" */
> >
> > The "uv" key is handled in qcom_smd-regulator.c.. I'm assuming on this
> > platform, it accepts level idx instead of the regulator properties
> > and this is intentional?
>
> IPQ9574 RPM accepts regulator properties (uv) and not the level idx.
> Hence added the "uv" key in the rpmpd.c

Does it expect the actual voltage? If so, then it is not a power
domain and it should be modelled as a regulator instead.


-- 
With best wishes
Dmitry

