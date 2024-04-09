Return-Path: <devicetree+bounces-57589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDA289DF82
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 17:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8DB61C20A7A
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71DC1369A4;
	Tue,  9 Apr 2024 15:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zBw1IUGt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43337136999
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 15:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712677552; cv=none; b=QuTWQTJ4oo1l5xwGmxqNO66D2BDp/SRT3js116B+MXrBdIKzr5YlOw5mlkeGmkse3u/d4+/BiFzcPYJR9WGQ55+vMY6nUcZkNXxlQ4NpNP5RfgwhFmXmpP/M8tQxCEMPZRbn/tSiG2VobX8ddfQNXX5Ppvhq0y/248Us9Bc1hVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712677552; c=relaxed/simple;
	bh=Js/2BXIRra/FHVv6CsCNlDO3xAx0z0yGlizmQ4Qvh50=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jY3fVOcmBACXumqSXIE9Qz79UT1cxzR2Wrsf5t88GDupRYH0cDz+RDC68+gkBjgNyClJs1IONSW59k8EsOJBV7kX0MO2XqVp18ES8tfMr86Ex3zADkDTjHYPfO4++tLlqO4ojftyD44ELf83cgku7jF9SZmPpg2z2PYW8gn1uKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zBw1IUGt; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6153d85053aso50108207b3.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 08:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712677550; x=1713282350; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=buNYP7p7u2SjN+B3Y9aoQObdwXquT6XXRaxxD1OD6hQ=;
        b=zBw1IUGtrGyzphbHO42j9oPNWsugNdc6EEIamFYdRse+bHLfJtAREhLkaL5A4x3CPB
         w6++Ua/kYXOFYhJ0e46Rqsmf4gPQ//jkZUwbg9ZVihh7trnlvIJ4NXU1w6QPd0tpePOS
         j5MBidsFKz0cjRALAf/3abw9auYS3lK3g1rQ9E9JtwrRnuw2B7gtdLCpAUesEXYswvxQ
         rK+EfkeJwSi/ZF+y0Ll8hBgQtqc4U00SmH6r7hKTuoIQcKbJI7u+TRE1KAcX/+ZP7WPp
         1Dbny88Tb+X0IoVo8xkw2Eqg2yQOCbsBFp4YFp6BCnjR6HO1H65ZAycf+raOLSm28zPz
         R4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712677550; x=1713282350;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=buNYP7p7u2SjN+B3Y9aoQObdwXquT6XXRaxxD1OD6hQ=;
        b=DKVDggy05Rn9RGK1G5ko0kB0tPqQGzfYpLmVXhZcEzKWLWNh++r9vNVINnKHSmhiql
         8ytIzirIC2iFm5BIMqEK7zdWvOyMyXx4ZYOD4dPWTMhFbySp4sYOMgzsnM2XmDsnCgPE
         Ej67WpDdKxtvCgSHFJAeX41HtNlSpMPEl1To4JFJlfEM+Ij6eC35iHFrqQ/8v3SthQYv
         4dt/yscwsimcTbEMKBymcmQyNQDq3NfCsN31FnZxjr4YP9whYEvU9T/56eEFg0sb0d+J
         mEttt7ojESg1zrmda5d9eRxmrytv7UbKnmCl+0RG/ttk1lfiYSiyOhtcm1XizjxMNYgl
         vHiA==
X-Forwarded-Encrypted: i=1; AJvYcCWbMku1mhz5HeL+TZycdvwzzIdnAs01ld6Rk95JMHdn9ZWq1dOBXk+i0FAm457ADLu4JCo1WlqhkEBCrWOXi6ry4qIv/KWeXW1eGw==
X-Gm-Message-State: AOJu0YyKSEO+uSM9WX4VeEt1CnInx6OjAz/JFZ4uVtrigcBRcEyRGdro
	3j4oParFymB9n99cNmngVKJ1uo9jmRUYWNOcyN+uxgQi54CiDObtEnUP9F6PVrdAg5PLn9oTn3j
	d4/tOmrGACuvwpl2K9AvCvBeLNGduUNPHwN33+g==
X-Google-Smtp-Source: AGHT+IFQASAOVayyeXCcdEPsB1W5n+ToWptOioZCwSqIVanbm2a6TPbaXGP3/tSGH/lVzMnrpwjM9UGuBvHRJ7f07U4=
X-Received: by 2002:a25:ce05:0:b0:dcc:1dc4:15e4 with SMTP id
 x5-20020a25ce05000000b00dcc1dc415e4mr122551ybe.47.1712677550216; Tue, 09 Apr
 2024 08:45:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240409120211.321153-1-angelogioacchino.delregno@collabora.com>
 <20240409120211.321153-2-angelogioacchino.delregno@collabora.com>
 <oe75tx35rd27r2a24ofdxfaqwr53tylfp5fwz3nrwc2uz6nmrs@vwc2krbpy3fh> <8600acf8-7b51-456b-8a81-4233cfd6f121@collabora.com>
In-Reply-To: <8600acf8-7b51-456b-8a81-4233cfd6f121@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 9 Apr 2024 18:45:39 +0300
Message-ID: <CAA8EJpo68f=9ZyNnVY=+q+drHu9xJMSGk1kNCBa=HM442Jth8g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: mediatek: Add OF graph
 support for board path
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com, 
	ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	wenst@chromium.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Apr 2024 at 18:41, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 09/04/24 17:20, Dmitry Baryshkov ha scritto:
> > On Tue, Apr 09, 2024 at 02:02:09PM +0200, AngeloGioacchino Del Regno wrote:
> >> The display IPs in MediaTek SoCs support being interconnected with
> >> different instances of DDP IPs (for example, merge0 or merge1) and/or
> >> with different DDP IPs (for example, rdma can be connected with either
> >> color, dpi, dsi, merge, etc), forming a full Display Data Path that
> >> ends with an actual display.
> >>
> >> The final display pipeline is effectively board specific, as it does
> >> depend on the display that is attached to it, and eventually on the
> >> sensors supported by the board (for example, Adaptive Ambient Light
> >> would need an Ambient Light Sensor, otherwise it's pointless!), other
> >> than the output type.
> >
> > With the color and gamma being in play, should the configuration be
> > board-driver or rather use-case driven with the driver being able to
> > reroute some of the blocks at runtime?
> >
>
> The driver can already set some blocks to "BYPASS MODE" at runtime, meaning
> that those will work as simple pass-through, performing *no* processing at
> all, so that's addressed from the very beginning.
>
> This doesn't mean that a specific pipeline must always support the "DISP_GAMMA"
> or the "DISP_CCOLOR" block(s) alone, or together, or in combination with another
> specific block.

I was thinking about slightly different case: do you have enough
colour blocks to drive all outputs or do you have to select them for
the particular output only?

(excuse me, I didn't check the platform details).

> For any other question, clarification, etc, I'm here :-)
>
> Cheers!
>
> >>
> >> Add support for OF graphs to most of the MediaTek DDP (display) bindings
> >> to add flexibility to build custom hardware paths, hence enabling board
> >> specific configuration of the display pipeline and allowing to finally
> >> migrate away from using hardcoded paths.
> >>
> >> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> >
>


-- 
With best wishes
Dmitry

