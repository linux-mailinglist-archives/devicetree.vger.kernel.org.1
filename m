Return-Path: <devicetree+bounces-8923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 473B97CAA45
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:47:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8EAAB20D75
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6FEF28687;
	Mon, 16 Oct 2023 13:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4726628682
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:47:26 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96AFCD62;
	Mon, 16 Oct 2023 06:47:24 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6c4b9e09521so3039481a34.3;
        Mon, 16 Oct 2023 06:47:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697464044; x=1698068844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O8J3FpxO2HqS4HtrFeFm5xler6xn0S8cIXKoxTp6xD8=;
        b=VwBOZlDHojRFr68UfNIyw5hc8qTUQSgFfV5SrULiwgTgT6/g1ZxsMPhHkqA4CF8M2o
         hGL477cAmyJ+MXx/b3hh2lBJcJZUfKBU8CRE3qbrOhMVrMcRyDZ9qRxwIyP0YTLPP+aK
         DYzcvypvkkQYDUSHgBPYssncirMQ8SNzgA0VpMTd7OlZ7HqRLVZzeaGGLxuber7h/NtH
         1RZgDSEMet/6FcqcPa2svZ2P16pewOKY9XbKGO8RKS/NJFn0wgYyPjPKD5h+jHKGaoa9
         0ZbR2g4NqCwHqK6pBa05/smoT6R7xhB8Nvk5Oh8e5iyppZjugmy0d9QUIQtEkYyOBJ4e
         v+2g==
X-Gm-Message-State: AOJu0YxCrV+LWI/zMSOwB1AVOzOcW5CE1GneQy/iUm2C6jfbSHOgIv73
	hLxtVXKcPLFvgNQ/nN/TBQ==
X-Google-Smtp-Source: AGHT+IEMLuj6cIC5IYNUxia+6BuqsAM1XeiHkiVQDwTAWjg8MJ6wEHZthy49zvIVkcAPH0VtprmnuA==
X-Received: by 2002:a9d:674f:0:b0:6c0:edaa:58a1 with SMTP id w15-20020a9d674f000000b006c0edaa58a1mr35120210otm.36.1697464043802;
        Mon, 16 Oct 2023 06:47:23 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d7-20020a05683018e700b006b9a98b9659sm1703547otf.19.2023.10.16.06.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 06:47:22 -0700 (PDT)
Received: (nullmailer pid 2654785 invoked by uid 1000);
	Mon, 16 Oct 2023 13:47:20 -0000
Date: Mon, 16 Oct 2023 08:47:20 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, NXP Linux Team <linux-imx@nxp.com>, Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Jackson Lee <jackson.lee@chipsnmedia.com>, Hans Verkuil <hverkuil@xs4all.nl>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Nas Chung <nas.chung@chipsnmedia.com>, Fabio Estevam <festevam@gmail.com>, linux-media@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, Robert Beckett <bob.beckett@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Darren Etheridge <detheridge@ti.com>
Subject: Re: [PATCH v13 6/8] media: dt-bindings: wave5: add Chips&Media 521c
 codec IP support
Message-ID: <20231016134720.GA2650973-robh@kernel.org>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
 <20230929-wave5_v13_media_master-v13-6-5ac60ccbf2ce@collabora.com>
 <b94e3561-f5ef-443f-98c7-9b79a8bbceec@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b94e3561-f5ef-443f-98c7-9b79a8bbceec@linaro.org>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 12, 2023 at 03:24:12PM +0200, Krzysztof Kozlowski wrote:
> On 12/10/2023 13:01, Sebastian Fricke wrote:
> > From: Robert Beckett <bob.beckett@collabora.com>
> > 
> > Add bindings for the chips&media wave5 codec driver
> > 
> > Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> > ---
> >  .../devicetree/bindings/media/cnm,wave5.yaml       | 60 ++++++++++++++++++++++
> >  1 file changed, 60 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/media/cnm,wave5.yaml b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
> > new file mode 100644
> > index 000000000000..b31d34aec05b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
> > @@ -0,0 +1,60 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/cnm,wave5.yaml#
> 
> Filename matching compatible, so: cnm,cm521c-vpu.yaml
> 
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Chips&Media Wave 5 Series multi-standard codec IP
> > +
> > +maintainers:
> > +  - Nas Chung <nas.chung@chipsnmedia.com>
> > +  - Jackson Lee <jackson.lee@chipsnmedia.com>
> > +
> > +description:
> > +  The Chips&Media WAVE codec IP is a multi format video encoder/decoder
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - cnm,cm521c-vpu
> 
> Can this device be anything else? Why VPU suffix?

It needs an SoC specific compatible (TI something...) as well (or 
instead). Unless there's a public spec with details on how many 
clocks, resets, interrupts, etc. there are.

Rob

