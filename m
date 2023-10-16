Return-Path: <devicetree+bounces-8989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2177CB121
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 19:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95DFB281617
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AA7130FB9;
	Mon, 16 Oct 2023 17:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IQ38Sl4I"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE96C168DE
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 17:12:33 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78DB7EE
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 10:12:31 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bff776fe0bso61570421fa.0
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 10:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697476349; x=1698081149; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fR2mIVGSF7TnFNx625C974mkPtvhKRG+fj3NHxRdBic=;
        b=IQ38Sl4IxMh8inhRGCJyf7OgdWua/+R5OeFSIVDWGhTAZbx4CU25k9GArKVc/GH2ZA
         Tn/T3jruJAyDN/dm0i59a4VDQ7LK+evi2tKwNKbyiFHZmwXokmgI7O+5cMlnjggIuv+n
         rlItrHdA636ABz3btjFRLLCRTHlYQWKmap5+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697476349; x=1698081149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fR2mIVGSF7TnFNx625C974mkPtvhKRG+fj3NHxRdBic=;
        b=DuXxOFEtK1y2UFXU/WC/7E9HudsghQW7N2qbNkzdioo0j7772Vummgnc6QhAOZIzaD
         hQhDi9mqfODdmq9oNo8kqGLjfg9EZ7lea1hdwRJOG1h/d4hIa7o3SfTkVbIgZJ7BnKy/
         nPr6bBezBz9qPiLiE1Upjk4qJXvcLhxkQmrWehegOYSfKt2YtQrcBT0qPmnbALt7TXcq
         PJyDgAbgwIxnBl1TFhrQDGWBfPGDDlVl/16sjVjGxSk9qT0nckdebsTW7jStL5ytMdSe
         vicQRU5AJeweW6eaSfLUJDbdesaZ8YU19lR/n/w93Q3POqmgdbJv3VMYGJSslgdC+EQ4
         254g==
X-Gm-Message-State: AOJu0Yzf2MDqE7D08XurRRsT9u6r62YFHB+yu0L9st20qtCmh+RiXjcl
	4lJ3XycwBbJgyaPyVR/En7Ko7BoofqlSUekp87Fd+gPKzk5E2aCxE7k=
X-Google-Smtp-Source: AGHT+IFYEwS3GmFPfDnVyPpFl2TGjAr5jpeeRbFDZPrVa7iXPThSJ5Gw1GMmajv1hPud7RpmMQRMCt7PWljX+01yQ3A=
X-Received: by 2002:a2e:a98e:0:b0:2c5:1c4:9005 with SMTP id
 x14-20020a2ea98e000000b002c501c49005mr8458352ljq.32.1697476349608; Mon, 16
 Oct 2023 10:12:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012230237.2676469-1-wenst@chromium.org> <20231012230237.2676469-7-wenst@chromium.org>
 <318016c7-8ceb-4c96-8784-597fac8d194b@collabora.com>
In-Reply-To: <318016c7-8ceb-4c96-8784-597fac8d194b@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 16 Oct 2023 10:12:18 -0700
Message-ID: <CAGXv+5EY_vfX+cNZ4QH++fH0uRBJ_hEK5mQpRAJbbsisXWBaNQ@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 2:21=E2=80=AFAM Eugen Hristev
<eugen.hristev@collabora.com> wrote:
>
> On 10/13/23 02:02, Chen-Yu Tsai wrote:
> > Tentacruel and Tentacool are MT8186 based Chromebooks based on the
> > Krabby design.
> >
> > Tentacruel, also known as the ASUS Chromebook CM14 Flip CM1402F, is a
> > convertible device with touchscreen and stylus.
> >
> > Tentacool, also known as the ASUS Chromebook CM14 CM1402C, is a laptop
> > device. It does not have a touchscreen or stylus.
> >
>
> Hi Chen-Yu,
>
> The Krabby design has the touchscreen ? if the touchscreen is for
> Tentacruel ,then the touchscreen should be described in the tentacruel
> dtsi, not in the Krabby and then deleted for tentacool.

Yes. The Krabby design is the reference design and has all the bells and
whistles. Vendors can choose to drop features for their market segmenting
purposes.

In essence the vendors are taking a Google design and tweaking it to suite
their needs. Sometimes things get deleted. Deleting the node seems like
a proper way to describe it.

ChenYu

> Or is there any reason for describing the touchscreen for Krabby ?
> One additional way to solve this is to have the touchsreen as separate
> dtsi and only include it for the boards that have it, e.g. tentacruel .
> Eugen
> > The two devices both have two variants. The difference is a second
> > source touchpad controller that shares the same address as the original=
,
> > but is incompatible.
> >
> > The extra SKU IDs for the Tentacruel devices map to different sensor
> > components attached to the Embedded Controller. These are not visible
> > to the main processor.
> >
> [...]
>

