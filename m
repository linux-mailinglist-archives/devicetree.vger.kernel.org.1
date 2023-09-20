Return-Path: <devicetree+bounces-1651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 880777A7409
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42783281CA6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3701F8BEB;
	Wed, 20 Sep 2023 07:27:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF068484
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:27:36 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17E3494;
	Wed, 20 Sep 2023 00:27:34 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-405082a8c77so33177535e9.0;
        Wed, 20 Sep 2023 00:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695194852; x=1695799652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5+GDwghWtCGnjwtUkaeguB7fJuXzmOmAvKOJYz0ylF0=;
        b=VVdpI3m2KUUs5z2r8pD0bVzluy5dTIfMsIlu5OIoFgNzR2gzdh8pL/wn2iSOLp7t2r
         qrLI/kVGP3T9R2M6P/LYYFNzjehDAMTAYdAbB9F1WetvJ/c7RMk9N7vdutMHwykITt2e
         J1qpZCNs8kHSk3zW4bnXKzDKOeEAdE0RNzTYnI0tkGWNentlVjihefYK5OTEjxNHXlpY
         0tRZtvPglBGZ54n83Edsersq38a9adJ+/EBrDssuMSMShPzH/I9ukJKD3fsIPeGgMTrh
         J7lIbOaYvUAi1dIxHQ+LNmGQXp45MpyC5Bbv/ik1LmZkNCv9IXHM4YbfUut5gt11kbHT
         /+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695194852; x=1695799652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5+GDwghWtCGnjwtUkaeguB7fJuXzmOmAvKOJYz0ylF0=;
        b=Y8X/pY8HEJNM0wkKu+NzJ6mnFJaTHxUIBC/4U5Lpiji+ufeYKSf4a0mGBBr3aa9mhp
         Dko2OHQAX/HcPXXe+Wec/zHX8+d++ToaQKeB2sYJZ1UlRQaOBaPSH9CqCeKCw/kdhDhK
         TpMIFPLlikEWmLNVUcDw362eDWGkmBe16U8HnCaKeB2QXz7OuzZVZvJ77bEbbJpZbWxs
         UHdsCX0Rput0wVM1jP5jzbIq0PAQRKoGMTdQi++uf9+7ogjhlRcoClZ8bgKAnNr9MRFw
         8oaBZ0R5wMwpy2WdkfzRJYLgVqBFws0mmVHML0auZRU9GyEZYXF3z9L9QWbFzJrdrO/P
         F8Qg==
X-Gm-Message-State: AOJu0YwsaeO7RI29P5YA+LjqKzO3wZh/1tYyO36NpvxmJxhZZqAgQUK+
	60PjgpHOJnMRDTng7p4aWkk=
X-Google-Smtp-Source: AGHT+IE36bbZ9tr6wEPLTb1Q/Lecmhd89mTYG9E4C6kcf04nY3dThV6ualRnEDrtvqfseFpx7wB9pw==
X-Received: by 2002:a1c:740f:0:b0:402:cc9a:31a7 with SMTP id p15-20020a1c740f000000b00402cc9a31a7mr1978915wmc.19.1695194852167;
        Wed, 20 Sep 2023 00:27:32 -0700 (PDT)
Received: from PCBABN.skidata.net ([91.230.2.244])
        by smtp.gmail.com with ESMTPSA id u1-20020a05600c00c100b003fe0a0e03fcsm1141898wmm.12.2023.09.20.00.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 00:27:31 -0700 (PDT)
From: Benjamin Bara <bbara93@gmail.com>
To: mripard@kernel.org
Cc: abelvesa@kernel.org,
	bbara93@gmail.com,
	benjamin.bara@skidata.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	festevam@gmail.com,
	frank@oltmanns.dev,
	kernel@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-imx@nxp.com,
	linux-kernel@vger.kernel.org,
	linux@armlinux.org.uk,
	mturquette@baylibre.com,
	peng.fan@nxp.com,
	robh+dt@kernel.org,
	s.hauer@pengutronix.de,
	sboyd@kernel.org,
	shawnguo@kernel.org
Subject: Re: [PATCH 01/13] arm64: dts: imx8mp: lvds_bridge: use root instead of composite
Date: Wed, 20 Sep 2023 09:27:25 +0200
Message-Id: <20230920072726.1737684-1-bbara93@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <sam7p4hwzgzzicacmbie3o7izedgun7eyxwdyn2zszmvwbtfvv@7lnpxiscu3kr>
References: <sam7p4hwzgzzicacmbie3o7izedgun7eyxwdyn2zszmvwbtfvv@7lnpxiscu3kr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi!

On Tue, 19 Sept 2023 at 08:47, Maxime Ripard <mripard@kernel.org> wrote:
> On Mon, Sep 18, 2023 at 12:39:57AM +0200, Benjamin Bara wrote:
> > From: Benjamin Bara <benjamin.bara@skidata.com>
> >
> > Use the actual root node of the media_ldb clock for the lvds_bridge.
> >
> > Signed-off-by: Benjamin Bara <benjamin.bara@skidata.com>
>
> DT is supposed to be hardware description, so an explanation about what
> has changed or was wrong in that description to make that patch needed
> would be welcome here

Sure, sorry for that. In the imx8mp context, the _ROOT is the "leaf", so
the actual clock that is connected to the bridge. I will adapt and
clarify for V2.

Thanks

