Return-Path: <devicetree+bounces-3321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3287AE458
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 05:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 823B81C20805
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 03:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF8A1848;
	Tue, 26 Sep 2023 03:58:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5C87F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:58:58 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9FDAE6
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 20:58:56 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50300cb4776so12811142e87.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 20:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695700735; x=1696305535; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lV5ugLr1Y+ECdRI+pDpUWEKUXpx2iu59FhqsHyyCDrw=;
        b=TTCkOnXVfogWOXzpGEwjPLwPVfMaGm6hVtAdaFqXIGQ7PTiEZ1wr65Y2sg+250HNvb
         CJhD88bkZ5rugm0Gy98EsfuJmLPsjUJJgBJicobmrGGYxIXouVN3NPMYuZih0T16FeRw
         d+quLWEbPW3ddf8K+r2qlOmr8FGWT3AmbQoS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695700735; x=1696305535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lV5ugLr1Y+ECdRI+pDpUWEKUXpx2iu59FhqsHyyCDrw=;
        b=YvYuIZlzpZUQqccihKwylDU63wLY9aTWspNmu58N13QRzdk/Zg95NuuyrNJSVe+cyU
         wWnxn/WL1VHXOFfIRDzK6gZD4c48ZPCoRAYhwIlaxvyoRgTE/zMxIl9lCsslzZalvNPA
         a9vtx0O8D6WC5GTADtmui8ptVDOu3kypqj7UbhEsalwioRe0Z1+RdBSMxpfxCDHITTEz
         rQIkysFYrzEMLHKWFpDXtxdDv2Cye7Son+sMPu0yaqenxZfS5D07dgjaoWTq6fUg4TbC
         30mhIIx2Hz/DNUOZ2y0CRPYKrM2ewrlo20LfT/PVNbkVRasv/saYvgwvTIqAUtsjWEZl
         7qqg==
X-Gm-Message-State: AOJu0YxlQklehCSUawVYJyA5uobwRmVpD4XybDSsTe+Zkvr/JnPIPyJX
	v9yLtUvrB8f6oRR45vC3BpQDjgwuWhXxu9hY+6Baow==
X-Google-Smtp-Source: AGHT+IED84e7Z9ZvMCy6KD0tN48KamDFAPmMnsxp6Rme983CevnefjHgV4b4TUXf2SI7ZugBa8QooYdCYqDrJ5Jp4ts=
X-Received: by 2002:ac2:5e2c:0:b0:503:442:5957 with SMTP id
 o12-20020ac25e2c000000b0050304425957mr6838573lfg.41.1695700734958; Mon, 25
 Sep 2023 20:58:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919104357.3971512-1-wenst@chromium.org> <20230919104357.3971512-8-wenst@chromium.org>
 <ZRF6mbpswWoxdJsl@finisterre.sirena.org.uk>
In-Reply-To: <ZRF6mbpswWoxdJsl@finisterre.sirena.org.uk>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 26 Sep 2023 11:58:43 +0800
Message-ID: <CAGXv+5EeQupoWc880sCSOuGsdc24y6qPBaaypdV749oHi-XjSA@mail.gmail.com>
Subject: Re: [PATCH v3 07/12] regulator: mt6358: Add supply names for MT6358 regulators
To: Mark Brown <broonie@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 8:18=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Tue, Sep 19, 2023 at 06:43:50PM +0800, Chen-Yu Tsai wrote:
> > The DT bindings for MT6358 regulator now defines the supply names for t=
he
> > PMIC.
> >
> > Add support for them by adding .supply_name field settings for each
> > regulator.
>
> This doesn't apply against current code, please check and resend (I was
> using -rc3).

Which parts were you planning to merge? I believe we're still blocked on
the DT bindings. And I need to update the patches to fix a warning reported
by Rob's bot.

ChenYu

