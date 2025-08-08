Return-Path: <devicetree+bounces-202846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A74A3B1F0A9
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 00:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 680676228EA
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 22:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A195289825;
	Fri,  8 Aug 2025 22:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QOEOtT19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E81289811
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 22:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754692118; cv=none; b=Az4jqRhzYylqjwg3nwah9HgI6r+hOzPfa2C6hFKDtzRSWnHws4v60JkCHrMOFXVQxXZ2V53OfEoA82bkT5JmeSV1PaoBJANZQQoNJ0hQv8xfL3jTaz58zqDQ+rzVUpsqTkbbUvz6xjHO7z0htNrSSkASWr5IcliAzH+vxaiWOPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754692118; c=relaxed/simple;
	bh=uaHfEqDd/Vc7Vg2XZAn7x4HzGyqtpzws6/5+aFC7Elo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B5tr6wISke5pWqogsjKTtGvfhAJdvIP88juIgK6T1InHgGABCBnBsc+4d+O9tg3KnXc0hoQCdENYj4yG8nnh8EjTJkceagJ08GnkbcPov3EQOoQt7eroCuaTqmLW9sSIN3oPR84dlnuG2UnI3m/d7tjnpmu6dB2Sw3+x3vB9dCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QOEOtT19; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3b78b2c6ecfso1464419f8f.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 15:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754692115; x=1755296915; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bk4Z92vldvgPQRm+g46xxvwEKtrsTK5zc7BqRXD51dg=;
        b=QOEOtT19wKrtBOYLQiPirGTfz1xxJcBfhoCP26yr/MkvhnKh1CGZY8AL9DmQ8z8yT4
         4MMrULA87CTsCnzS3J0e1Afu298Vx7AqVavTkwKkMGZewRvCXK5mMxyvv1x5uVAL8Jdw
         K48LVWcDfO8GEYDvlgFEMRadmRKWWIv5zEj+rY4o4syq80JMSL6DTL3K6myTywXAX/SH
         3MXDJS8Bui6mzMcJLgdRYtYwowTlchSCa0FuQgBNiQFrCdmuKF4BFXP6XG9A2iRpAJvq
         TXFS2VkP8jBSjb1VyzBmwWxbQLnyAYBHbX/qKVroP3FaO1ZeBDh2kXUX8OAniTvLvTlM
         n4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754692115; x=1755296915;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bk4Z92vldvgPQRm+g46xxvwEKtrsTK5zc7BqRXD51dg=;
        b=BhN0qpbPzjzrmn8hhIyKzqzrkpWvabkHvnWtnABdRltuWLbRRFkVn6gTXCRGNRPEfW
         aUfB4a0OGVqZgrg0MS9o5Ax7rY3XUZkB8YeAlc3Lpm//U1Diz7fSGiiIDzNFHLKfwW/K
         ONWGZt96ARFnI9MGjgCcyELRhNA48p6iq5DJxyoXGPRMyo2r7vkLYRXNc2itUt+8nFQD
         Bk2ztSXXg9wMgjdTg8/Cga3GD4hQXg3ZGrqizdnrl0wAp4efIaSVH/etF2X0EH5isvlP
         I4DSQgOEby8YFdVwoIxdXLQM7WwZyEyA4KWTR0gdvUzLgh6lmSqrCtmzTwMUlX54vdDr
         rKNw==
X-Forwarded-Encrypted: i=1; AJvYcCUPZKZwNqWytPNtWea6mybGMOGI9b9/a1pxnDAC7+QiqTRmim3HvFn3HIeP5yDIDhKtl90Mkj36pcuR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Ib+poZuehflhrvCafuGIXo14dq/9UgMdpbPYzZk/axPtuvGf
	E0Bwg6ZdSSXXFcouE+iee9R1uahmS0W2YCXml94vg8mBWIQdkyXHzprtRcLmFM4zgBjWToc5lDh
	KYPOfOc97r57ssJfq0cKSFZHxFdEUvV7t3NlOqx2gng==
X-Gm-Gg: ASbGnctEgaNjw+pCGzi8BPFq/F6e0OEifIFQBoNJu4WoyJcK4tQVsBceSQ+qWjhoRI0
	jbaU0LIXpGj5Am+NKyi+fiOL5uTtbWCm3QNugnyL1fwSeQNv3wZvRFRxg7jTKs9hKnGKTQOr07t
	vD03bKU+B1FCQ4jS+G/F136/qz+YezVCkrqBBfZEPL9ynGTsycLnUvsWTevhrQwZhmbGXe14bix
	r7JNyDANQ==
X-Google-Smtp-Source: AGHT+IGy+JfWioN1EZvauRq8fNVKD77kq7pV11eEmcSqXqQw+Ty2x4MuKZfeT7+cYgy3zueauhd1kIbBdcArMua29PY=
X-Received: by 2002:a05:6000:2f85:b0:3b7:8d70:e0ad with SMTP id
 ffacd0b85a97d-3b900b4d8c1mr3401099f8f.32.1754692114271; Fri, 08 Aug 2025
 15:28:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
 <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org> <aJCyBbwNjZvTHnjT@hovoldconsulting.com>
In-Reply-To: <aJCyBbwNjZvTHnjT@hovoldconsulting.com>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Fri, 8 Aug 2025 23:28:23 +0100
X-Gm-Features: Ac12FXwR4FUrET6jv0_EOtK5Bc-B0SWbGu_iG6JN5BJKVMzOvOl3cxeCMpqOk-Q
Message-ID: <CACr-zFCq08Pu2=eLfe5=sYdGWEHmy7w+=Eo++9AjP96uCLCNcQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 dp controller
To: Johan Hovold <johan@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Johan,


On Mon, 4 Aug 2025 at 14:13, Johan Hovold <johan@kernel.org> wrote:
>
> On Thu, Jul 31, 2025 at 09:51:26PM +0100, Christopher Obbard wrote:
> > The eDP controller has an HPD GPIO. Describe it in the device tree
> > for the generic T14s model, as the HPD GPIO is used in both the
> > OLED and LCD models which inherit this device tree.
>
> > @@ -5779,6 +5779,11 @@ tlmm: pinctrl@f100000 {
> >                       gpio-ranges = <&tlmm 0 0 239>;
> >                       wakeup-parent = <&pdc>;
> >
> > +                     edp_hpd_active: edp-hpd-active-state {
>
> The node name and label needs an index as this SoC has two edp hpd pins
> as I already pointed out.

Sure. After looking at the schematics this should be called
edp0_hpd_active. I will fix this in the next revision.


> > +                             pins = "gpio119";
> > +                             function = "edp0_hot";
>
> And you also need to configure the bias somewhere as you should not rely
> on the firmware having configured things for you (as I also pointed out
> before).
>
> On my T14s the internal pull-up has been disabled.

I am still unsure of what else needs to be set here. Can you help me
with the correct settings?

Thanks,
Chris

