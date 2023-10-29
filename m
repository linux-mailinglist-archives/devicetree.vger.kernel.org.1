Return-Path: <devicetree+bounces-12628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE20B7DAA67
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 02:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BAAC281046
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 01:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8036139C;
	Sun, 29 Oct 2023 01:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fvgkKTjA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F034338B
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 01:51:42 +0000 (UTC)
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B1ADD6
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 18:51:41 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-66d0252578aso23090166d6.0
        for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 18:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698544300; x=1699149100; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qPY6WSv8wVjPU4NNmR9eMz73HUS4Lqu5N1yqhlyxvCg=;
        b=fvgkKTjAwUisJvD7ZsuCO4f0A3Zj0gIzHZcG3jhP6Ze6UwmVzilUm9wKmvzGg3BJ4K
         Rw0ne7p7CCP5tCxiI2PiUY5p/9JQ2KVrUiywJBR8NB2MEh0dbWb6X81jRvpvvaXsM4GR
         d53JZlfRtv52ay6bsGFP63wn1jjNk3WeI6SPEd5l56sUqmCwsy4wfASAZRWsGflFphfU
         BG8KM96sAHCuWClRrPwuh2QdzTyou2Fbn5Etiv680cAJRNNJjYQq7j1iATaG+nCxGDs6
         6EBTLVwIwFjExc66gOY4PGWwp8BOJP4ZUMxTln1A4Axx6pKaqTpuScE0ZCe5jNY9NFMI
         wyow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698544300; x=1699149100;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qPY6WSv8wVjPU4NNmR9eMz73HUS4Lqu5N1yqhlyxvCg=;
        b=VmbBqzpb5hxViPoJPASsnLw5mdihH4Rn3PKG/jVy0PHl5mU3KH21KvF7750GpzJt6K
         lpLgJU8XhNqYMT3074qeTWlMBMiH88p/e19IlO4tl7PitvBPHT2xhoaFwv/GmyaIqsco
         56mGYJupr2kjS6AFFCkwj2TFfvVMBaseXnbiNXZwUvrzcNl/m2mZO0RaiiDo1fJ8rRzu
         ODQJzfL0qrF+KCBkxX28ctdZ0mqD9cPtw59F8X6gWUMg5CGzY3lQv9O8K/s/bBOZxWmV
         fy4iVLoI7Ea83BmFXMBOn9prWM+BnOQlpxAUG/+MiJBVeNT+10/QOC97jW94ubiX4dRJ
         waQw==
X-Gm-Message-State: AOJu0YygevgK2RZZx5+asx+0zhVKADRFdjYhXNd62JBM2fF+3MVoVCdb
	XECO9lqbqha4PKpzLJZBdY8=
X-Google-Smtp-Source: AGHT+IGAcZykAFE7+tFHdjrEQmnujYcDPANslXfb4hrPPTz/kAXhUvSJiySrfWOGzZcyXmQhZ+t4xw==
X-Received: by 2002:a05:6214:4103:b0:66d:1624:2200 with SMTP id kc3-20020a056214410300b0066d16242200mr9342924qvb.13.1698544300314;
        Sat, 28 Oct 2023 18:51:40 -0700 (PDT)
Received: from google.com ([205.220.129.30])
        by smtp.gmail.com with ESMTPSA id ep12-20020a05621418ec00b0065b08bb01afsm2099420qvb.124.2023.10.28.18.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 18:51:39 -0700 (PDT)
Date: Sun, 29 Oct 2023 01:51:06 +0000
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Fabio Estevam <festevam@denx.de>,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-imx@nxp.com, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: input: fsl,scu-key: Document
 wakeup-source
Message-ID: <ZT26iscyHBkpEGlw@google.com>
References: <20230926122957.341094-1-festevam@gmail.com>
 <169591967800.835622.10464359202188248969.robh@kernel.org>
 <CAOMZO5Adr+au1em1cAR3E_irErXM3qd2FPiG0DJiU-Hskwgekg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5Adr+au1em1cAR3E_irErXM3qd2FPiG0DJiU-Hskwgekg@mail.gmail.com>

Hi Fabio,

On Wed, Oct 25, 2023 at 05:07:39PM -0300, Fabio Estevam wrote:
> Hi Dmitry,
> 
> On Thu, Sep 28, 2023 at 1:48 PM Rob Herring <robh@kernel.org> wrote:
> >
> >
> > On Tue, 26 Sep 2023 09:29:50 -0300, Fabio Estevam wrote:
> > > From: Fabio Estevam <festevam@denx.de>
> > >
> > > The SCU Key controller can be used as a system wakeup source.
> > >
> > > Document the 'wakeup-source' property.
> > >
> > > This fixes the following schema warning:
> > >
> > > system-controller: keys: 'wakeup-source' does not match any of the regexes: 'pinctrl-[0-9]+'
> > >       from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#
> > >
> > > Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > > ---
> > >  Documentation/devicetree/bindings/input/fsl,scu-key.yaml | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> >
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> Could you please take this one?

Applied, thank you.

-- 
Dmitry

