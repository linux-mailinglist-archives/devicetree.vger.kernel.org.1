Return-Path: <devicetree+bounces-2179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EAC7A9CE0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:25:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07BC02857FB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C20269899;
	Thu, 21 Sep 2023 18:35:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F97D691EC
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:35:10 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CABC042C3A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:34:59 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-532aaba8747so1599900a12.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695321298; x=1695926098; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A3ymofUjZ6cvdicUv/Ni45W5/10AGo0Wvy6M/7t0Upc=;
        b=gKfQ/UdlzbwE3s2ufFC7HTPpRFYFtLj6tBW+y/TPi4GuyqweTXMGCrC5fApZVCTUP+
         k2TxCZzOvGxa5KpafD0yvnOfCkmszR8WwNMtV+55eVGlYt58KKmPoxTMGPjZgoKfMWZS
         DA9GIHfLK/luJl5CXnufdVeNgOJ/rQLt9+Qns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695321298; x=1695926098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A3ymofUjZ6cvdicUv/Ni45W5/10AGo0Wvy6M/7t0Upc=;
        b=MefCmS9V97B3kS/VBBC0//wiNmEcPtTpPxv12l0QOf4vTcEbJnLYSPrXMgTLhZeXn+
         Npa6DPFh07WYpJJOApepvTiZs+0CE2WKwgs7jXRxTYCRG8BGUobaKwhennBAfuvi/sIS
         yjxMINPUrxNfGcp/BVxlyy5boJMrqgzdRLh90wWWoGVJeUEtlk2GttjjQaRouoKnYICz
         F6/39ByYa3igBRmClj9//u54iYE03HMskSH0WCy3Zj8LdUMpcYmgQAd2gbJvezBa32X2
         g1foRZ7MNFFdN0AYj2m42y4fsWehOsYmz+iKLGOerhcDYWSDzEpx24iccwT21rno97aX
         JFtg==
X-Gm-Message-State: AOJu0YxZjB8YLG/c8pTwHt0mNhwzA0a9GawzaXCPy63E8Evm90Q61cLx
	kIG0YUVU8rfQdcGVSrXx1mVnfg8OzQ2JAv7ooYpn8elVJJSwf1Y1vuc=
X-Google-Smtp-Source: AGHT+IF3ii8PU45QNcqpM+SUljh3J8nnca5RjE0Bdy00FFg9bpSg7BruQWeTpjsLBswRiqH04f9GvW1W1YDy9f62+c0=
X-Received: by 2002:ac2:5288:0:b0:504:3093:1fad with SMTP id
 q8-20020ac25288000000b0050430931fadmr691593lfm.20.1695287357186; Thu, 21 Sep
 2023 02:09:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919104357.3971512-1-wenst@chromium.org> <20230919104357.3971512-11-wenst@chromium.org>
 <20230919135539.GR13143@google.com>
In-Reply-To: <20230919135539.GR13143@google.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 21 Sep 2023 17:09:06 +0800
Message-ID: <CAGXv+5G6fYh8wULmERrxbJyXmdDJjthnUEqT+_3nTTTndLf15Q@mail.gmail.com>
Subject: Re: [PATCH v3 10/12] regulator: mt6358: Add missing regulators for MT6366
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Mark Brown <broonie@kernel.org>, 
	Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 9:55=E2=80=AFPM Lee Jones <lee@kernel.org> wrote:
>
> On Tue, 19 Sep 2023, Chen-Yu Tsai wrote:
>
> > When support for the MT6366 PMIC regulators was added, it was assumed
> > that it had the same functionality as MT6358. In reality there are
> > differences. A few regulators have different ranges, or were renamed
> > and repurposed, or removed altogether.
> >
> > Add the 3 regulators that were missing from the original submission.
> > These are added for completeness. VSRAM_CORE is not used in existing
> > projects. VM18 and VMDDR feed DRAM related consumers, and are not used
> > in-kernel.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> > Changes since v2:
> > - Linear range selector values fixed
> >
> > Angelo's reviewed-by was dropped.
> >
> >  drivers/regulator/mt6358-regulator.c       | 20 ++++++++++++++++++++
>
> >  include/linux/mfd/mt6358/registers.h       | 17 +++++++++++++++++
>
> Acked-by: Lee Jones <lee@kernel.org>

Thanks! Could you also take a look at another patch this series is
based on and ack that one?

It's "regulator: mt6358: Add output voltage fine tuning to fixed regulators=
",
with message ID "20230913082919.1631287-3-wenst@chromium.org" [1].


ChenYu

[1] https://lore.kernel.org/linux-arm-kernel/20230913082919.1631287-4-wenst=
@chromium.org/

>
> >  include/linux/regulator/mt6358-regulator.h |  3 +++
> >  3 files changed, 40 insertions(+)
>
> [...]
>
> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]

