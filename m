Return-Path: <devicetree+bounces-2116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F697A9AB3
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:47:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 073271C210B2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D3118C1C;
	Thu, 21 Sep 2023 17:49:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A0B18AEB
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:15 +0000 (UTC)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6003A8BD2F
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:41:56 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-7950fac19f2so47612439f.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695318115; x=1695922915; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g7keM3Y6fMhMfFMuWtMa5jx/7Kzyqu5FnvjTMxZXwko=;
        b=bVXKWnoEj1iIjbIC4RCT1Xr/n5P8UTYYf/q1vjHtqU1o7oDByVltaJonhXtD2038t1
         zVeyvQI3HxXpXsRoX76kuEHDx7XQn6+0udWy0D3yI+GWQQMRSAijYCnpOOdb7CBWZlEr
         DIDJYe+YHgq0v7KjNbMk4TfD7ZZFgLAtYhMQ72I7idPQNGzx/KldN63ickAixlcSm8Jy
         HC/gwVmkx1oyyz2VHUJjIIe/jNKBQXLNDlHxc6sRkp+18lmCyIzujDrolxxebKKWUoSj
         P6JKNV8G48yPUd9Qhw4skZZKkVHyctX/FYRxHZmoIyfAlGSSclEAfSNg/J07MEa1kDIm
         FHnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318115; x=1695922915;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g7keM3Y6fMhMfFMuWtMa5jx/7Kzyqu5FnvjTMxZXwko=;
        b=EaJDO5XVI0VdFmDtfyue2ddIv2PbLueR+PUx7ncxbUn9b1cxFLtzoSxTH7L6Lj4CNY
         RUEPrfjt5gslLkiEy6VvBXhGn5ewodRzB+xgTggJCg70w3EOSukCs6d1V/7Z7kHNi0H0
         ZFH/0uo4ADvRKjtKEj8qUTmJDSkhS7xnGdHIvvpLfdC1gl/DOXSEx6eX7NefdF60WGYE
         a3VeapcM4/3y5y3ndTjqE/KYMzpTQbwef1uSBCYIAT0Guj5FqIT6d0rhBzsYdmjXeqta
         Ll7zcV3oFacJcvQ30S/6wvB3s9jy3pBk/VIcE5H3NDnQqJNWP8LSI3T7r19pkbJhbqS2
         2M7g==
X-Gm-Message-State: AOJu0YzB5wxaT2LQpk9lEVyGEMQ/JKWipiWTN+BIR50BHbCH5RYHxb9t
	TpEsw/9ycC/MQXcLEXm3ESnn+3LJNkFuKcY4Alsr0rVFOFeDkPaDhLg=
X-Google-Smtp-Source: AGHT+IGFiuq2yAavaGohC3doXrEfCSrTTz4ql7Ccof0B/BskF92xcU/mBMfs+tpyTmR+iHwFXILbeDL6YKk4w7qSnnY=
X-Received: by 2002:a25:8201:0:b0:d78:20d6:6f4e with SMTP id
 q1-20020a258201000000b00d7820d66f4emr5008759ybk.38.1695302610815; Thu, 21 Sep
 2023 06:23:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230825112633.236607-1-ulf.hansson@linaro.org>
 <20230825112633.236607-9-ulf.hansson@linaro.org> <20230921111110.tbffr5sik3ycw7gf@bogus>
In-Reply-To: <20230921111110.tbffr5sik3ycw7gf@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 21 Sep 2023 15:22:54 +0200
Message-ID: <CAPDyKFrSkgSee=8zruR65TALvAj+hcWw1CaUOUwD3EpdxymtBg@mail.gmail.com>
Subject: Re: [PATCH v3 08/13] dt-bindings: arm: cpus: Add a power-domain-name
 for a performance-domain
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, Nikunj Kela <nkela@quicinc.com>, 
	Prasad Sodagudi <psodagud@quicinc.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 21 Sept 2023 at 13:11, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, Aug 25, 2023 at 01:26:28PM +0200, Ulf Hansson wrote:
> > When an CPU's performance domain is managed through the SCMI firmware,
> > let's enable us describe this as a consumer of a power-domain provider,
> > which is the de-facto standard to use for performance domains. In this
> > case, let's specify a corresponding power-domain-name, to point out the
> > corresponding index for it.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v3:
> >       - New patch.
>
> This patch and 10/13 are quite generic. I am happy to take it as part of
> this series but just thought of checking again if that is what you prefer ?

Yes please, go ahead and pick this up through your scmi tree.

Kind regards
Uffe

