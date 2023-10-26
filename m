Return-Path: <devicetree+bounces-12103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E82BD7D7F1D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70772B211CE
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 08:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0142419BCD;
	Thu, 26 Oct 2023 08:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VGdVAsYl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B36A3D78
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 08:57:39 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE0B91AC
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 01:57:34 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d9c66e70ebdso441566276.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 01:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698310654; x=1698915454; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d15OUBlXoCJoUgZsOraHwb/V6/eE2WDwET5ZkyPx89I=;
        b=VGdVAsYlb1hiv6kYyLytVrbDKNuOdBKi4pUjHe7VTA0caJu5yvrVqPQRJ4t1D1W3eM
         KrRqxJbEzYlDOjvyawUifn1SAELQ0MzA1CNT+qdG7F41T8pZVVHyzMF4EK0XNDog02Kr
         yHB54LgJiZAn+ymc813OAcm6xilxRpqujqgyvNY9llbMF81w10IFXKTJRjE9yAWpaIQp
         XiAymVmXqElSI3X0gDuKN48mBnzthQxStmQ2YMj2TjTUKeV3NnqwTILbYfZzqCdtp4GB
         ZEEU7F4ZK3yoFqKZPb4f9IUKM/OBhoKizEliZRLh0UwVOXP48ehxQWuWMdY5PNFq7M18
         JyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698310654; x=1698915454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d15OUBlXoCJoUgZsOraHwb/V6/eE2WDwET5ZkyPx89I=;
        b=ORrewZ/TMrIVn1tas6bjYmTgBQnbJlkssdMsC87zQCjqg/05haQdCzRnKewoy9zMpB
         NY7sVt4ssk9zC/71jlh1EMMwgUyRsmpOlHrcHkNEZDNIs/4HWMfck3HqSU3LFWDmoH5Q
         ynWljrCHhSI3QfS3FOZXaGZsrm1AVTbk/pJBUzfJUi67ha9V+KRhzLoX3+zwYobgQy97
         s7nWheyaeswZZGyLr73OATJYGUFVkq6g/Ktf+DwgNB79oGOIVHvZdR58xzayZXXkEIDK
         v3CTFCaivIn9uei1jX9FtCeArdusirGfzVOxR8YFjSzV55A/tjC0S3ixSP/56++GeXNT
         UAxw==
X-Gm-Message-State: AOJu0Yx/iXhdTNdufYkaOwvuvRgEMq8zuVDBENi9p5lk9ESLxqCan2l9
	dMnEHjBOi5jfdrQNafcbgqi4sZrWlwQi1JKJ1PC9pQ==
X-Google-Smtp-Source: AGHT+IFhzh3jp3HfNlJ8La8+jINi5sy551LrNDFQM80H3MVmgkxMCbioFraPFHdJrZNwGJJzriw+6D047YqUbWdNHEc=
X-Received: by 2002:a25:fb01:0:b0:da0:9735:b012 with SMTP id
 j1-20020a25fb01000000b00da09735b012mr2234616ybe.11.1698310654073; Thu, 26 Oct
 2023 01:57:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-7-keith.zhao@starfivetech.com> <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
 <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
In-Reply-To: <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 26 Oct 2023 11:57:22 +0300
Message-ID: <CAA8EJppxQ7J8DEDFsWzPL8bDpNW-KY0nhUA++zDBRpMCpP-bkA@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] drm/vs: Add hdmi driver
To: Maxime Ripard <mripard@kernel.org>
Cc: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, 
	Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, 
	Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 26 Oct 2023 at 11:07, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Oct 26, 2023 at 01:23:53AM +0300, Dmitry Baryshkov wrote:
> > > +static int starfive_hdmi_register(struct drm_device *drm, struct starfive_hdmi *hdmi)
> > > +{
> > > +   struct drm_encoder *encoder = &hdmi->encoder;
> > > +   struct device *dev = hdmi->dev;
> > > +
> > > +   encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
> > > +
> > > +   /*
> > > +    * If we failed to find the CRTC(s) which this encoder is
> > > +    * supposed to be connected to, it's because the CRTC has
> > > +    * not been registered yet.  Defer probing, and hope that
> > > +    * the required CRTC is added later.
> > > +    */
> > > +   if (encoder->possible_crtcs == 0)
> > > +           return -EPROBE_DEFER;
> > > +
> > > +   drm_encoder_helper_add(encoder, &starfive_hdmi_encoder_helper_funcs);
> > > +
> > > +   hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
> > > +
> > > +   drm_connector_helper_add(&hdmi->connector,
> > > +                            &starfive_hdmi_connector_helper_funcs);
> > > +   drmm_connector_init(drm, &hdmi->connector,
> > > +                       &starfive_hdmi_connector_funcs,
> > > +                       DRM_MODE_CONNECTOR_HDMIA,
> >
> > On an embedded device one can not be so sure. There can be MHL or HDMI
> > Alternative Mode. Usually we use drm_bridge here and drm_bridge_connector.
>
> On an HDMI driver, it's far from being a requirement, especially given
> the limitations bridges have.

It's a blessing that things like MHL / HDMI-in-USB-C / HDMI-to-MyDP
are not widely used in the wild and are mostly non-existing except
several phones that preate wide DP usage.
Using drm_connector directly prevents one from handling possible
modifications on the board level. For example, with the DRM connector
in place, handling a separate HPD GPIO will result in code duplication
from the hdmi-connector driver. Handling any other variations in the
board design (which are pretty common in the embedded world) will also
require changing the driver itself. drm_bridge / drm_bridge_connector
save us from those issues.

BTW: what are the limitations of the drm_bridge wrt. HDMI output? I'm
asking because we heavily depend on the bridge infrastructure for HDMI
output. Maybe we are missing something there, which went unnoticed to
me and my colleagues.

-- 
With best wishes
Dmitry

