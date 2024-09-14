Return-Path: <devicetree+bounces-102970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9543D9790B7
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 14:05:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DB141F22D3A
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 12:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7130E1CF2B0;
	Sat, 14 Sep 2024 12:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w/LXDgmM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB72168DC
	for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 12:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726315502; cv=none; b=HfDiY1TyzIbteCUOpj4uE51j4CRdcciTIuwDT4VcvwBYkE+CuMpqALzkeZjIhInijqyY+o/Ger9tpcB+OYA8M7wy5SyqPGjvUlYE77Q9kBNs4bdjLFTVYWnNwsQWaKQIUukG8PBTfcNjxqElf+majLGvUiuSCpOqf0tHR+HsYVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726315502; c=relaxed/simple;
	bh=hLDbBiO0lIXw7qQZoLddPPxgRLyxCa9AMIv188JWSqA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ATDl72qbGTALU/emJYbnOS2xv1/uHPS0GOOmLQZr7XrsNb00g+dzUvQfwp1AhQvDpZQtYIwyOyHqR6n6fYAEJQzV+ARB92uMYv5qrn9QeDfP/Y3CF5m0xpughjNuJiqT59QpuBxbNQrm/fDLJB08xUX25dTQo1/g6k01tpvfVuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w/LXDgmM; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6dbc5db8a31so16623757b3.1
        for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 05:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726315499; x=1726920299; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v/BwEPPxE9nFO1CcsZ05pg5b/eN2UhsgUftUMF1y+k0=;
        b=w/LXDgmM6S1e7UKwN1Pwl/+ipX6WhawuVtH2vTWfpbmolOLPVaG83hQjklqndueKO8
         2BZGIaGUS3lNvkp7exLZVx7E9AqkLjspbdq9QuzyGOHPXOBgjvFLnLCnRpglnJvKM0Mj
         kC9P32XvI7U4DniGzkxYvOwpYBmyCSTrYFGMF2z1KsnFQVGODaKKj6NQaZi3bSOi5czb
         ByLTycCdzHdYPY1NBcLbIYuWusQiDq2lOzU7eYEvo/dphjJdUSIMy8mF42YshpHyms7o
         yZ/LlMMIkBicSh6FipWAVo+6asF+3UUhH5q2YEthwoVJtYN3qfpF0V0fi3Blxls1NPTu
         jWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726315499; x=1726920299;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v/BwEPPxE9nFO1CcsZ05pg5b/eN2UhsgUftUMF1y+k0=;
        b=CxcLcfojbu1nI0mgNTY88m2lZ6VcLvXRy4QydtVilBgU2Lm98KAUd2NMCY7LUp3f9d
         GNI4baqsAK0fxMmC8TraIiX/PbD3KQpIAgFEQ0iRMw0s1k/+34JJu2x0ymJj1W/z7TWn
         ePI+fOaPKtbfo4i6UYxgGp2h/oJ8PSYBQDYjWTE4qh2bIzGTwjLk0RWPQJOaVG0fqAMX
         4mQN4sUSAPlq78IpaaNrPm4EzrLebDmJ4gSuKQMejPIdSd0MgRtYJ39zfz1QNzV85JQc
         3s5IeSIw9ZC5ha4EQUGBnO88ZNtmvwnYKnrU71QpP5SC1+FkfSOBkQL3eOfRGn4LqQ+D
         sy5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUSVMZpu/PfIquwpQWU3r6BMMQ7sHWLNT8BKqeACX0kHWQyPesh3h8iZrByfj/39nRLNbc/adG2HP5l@vger.kernel.org
X-Gm-Message-State: AOJu0YzSqAYEmL+Bjl+8ghgcp/mh+I2Ij3l0f5ljSohuWnLLSXa3Dt0m
	FYYawu4lWkbT4Mzso+pSVqIrNbOG9qqitfGhVhAaKrHRTFLdj38H/wzLQqatS0kJALxxceOeu20
	utkRRHIwZ2rDP/ir1DkO01xrDSkys13wqfVE9xw==
X-Google-Smtp-Source: AGHT+IFr6ztHkdXR12yHJt9BqfgF+oj8X/upMI/MFEq0hVIM1jdcxlJa5xJkzkTkMIDH+Ri6BPcsmXHfSOGUlyxg2dU=
X-Received: by 2002:a05:690c:660c:b0:6d0:f91e:2ffa with SMTP id
 00721157ae682-6dbb7015a8cmr71152697b3.3.1726315498811; Sat, 14 Sep 2024
 05:04:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-3-quic_mukhopad@quicinc.com> <9fee28de-24eb-46b1-aa5b-6febc2972a3c@kernel.org>
In-Reply-To: <9fee28de-24eb-46b1-aa5b-6febc2972a3c@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 14 Sep 2024 15:04:48 +0300
Message-ID: <CAA8EJpquBih8jO_Tv8RFLVYN0c+N7KC45VztGSJHV87x22tdcA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] phy: qcom: edp: Introduce aux_cfg array for
 version specific aux settings
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, vkoul@kernel.org, kishon@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, 
	robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, quic_parellan@quicinc.com, 
	quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Sat, 14 Sept 2024 at 14:29, Konrad Dybcio <konradybcio@kernel.org> wrote:
>
> On 13.09.2024 12:37 PM, Soutrik Mukhopadhyay wrote:
> > In order to support different HW versions, introduce aux_cfg array
> > to move v4 specific aux configuration settings.
> >
> > Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> > ---
> > v2: Fixed review comments from Bjorn and Dmitry
> >       - Made aux_cfg array as const.
> >
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 37 ++++++++++++++++++-----------
> >  1 file changed, 23 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index da2b32fb5b45..bcd5aced9e06 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -90,6 +90,7 @@ struct phy_ver_ops {
> >
> >  struct qcom_edp_phy_cfg {
> >       bool is_edp;
> > +     const u8 *aux_cfg;
> >       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> >       const struct phy_ver_ops *ver_ops;
> >  };
> > @@ -186,11 +187,15 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
> >       .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
> >  };
> >
> > +static const u8 edp_phy_aux_cfg_v4[10] = {
> > +     0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> > +};
>
> How about we only abstract the values that differ? It would seem like more
> platforms reuse about half of these magic bytes

I think it's easier to review and compare the whole sequence rather
than numbers here and then numbers there.


-- 
With best wishes
Dmitry

