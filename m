Return-Path: <devicetree+bounces-38425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB456848FFD
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 19:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D79A2835D7
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 18:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F61224B2B;
	Sun,  4 Feb 2024 18:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TcLobck9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F6924A1D
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 18:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707073153; cv=none; b=DoG2njE82KksT8ObYQOFAunejGZBu/RKf0xchf43rK8mup92hS++4WNuUzQvhheY34Ydr7HeOhHpsTvwyF5Ur2gPwtA1Hi/jhLBbnMH31yg9P/T8FTE5Sn9TOvRncqvrI7cBE1Q2HT9vXaPwdfDLJMw0DhEhMa/QB7+aaGg2SOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707073153; c=relaxed/simple;
	bh=ThwihqpEmkYEH6ts2ZleGCKVjv2HQKJYQcUmGXzJeKU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rpLeQnMvc3sfo2OSqzuQBrqJpKBvGZW+zM+n8Qa89SWuH331f1F6puZFhQYSQM74RF0zI3C40Amf9OE4JDFDL1dbaN+23V5QdHBM4rLX7MolFJgw/m47IDSyN+nRmkBAcmxiQiS9VaIEpTCkJtO4QQE3ij8gX2kPHrm/XD6xzPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TcLobck9; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-598699c0f1eso2662020eaf.2
        for <devicetree@vger.kernel.org>; Sun, 04 Feb 2024 10:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707073151; x=1707677951; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ThwihqpEmkYEH6ts2ZleGCKVjv2HQKJYQcUmGXzJeKU=;
        b=TcLobck9QO/BvL2gm5h3mjwqRpAcvsmJjYvzB3ui89q8mfqyjR52mOTr8ZKRAWM2Gm
         Rr4eOfRZU/O72Iyy7HYhlvQIQJQydpIa+63hfkVz0Cjs0NFNkbgYCRzcepGark2tdyvh
         544jwxfia2h8svJ7DRT3gD91jyJmePhMeLrADdooEXfNKqEvMza5JtgXnt5ONdK6+FQ4
         z7rAHQWNKm+FoYlR5r6Q3AanTssXeErJKMEiB5Ygc6/vUu/1d137LtVgWGzLVncs2NSi
         p2R6fQeD37cDQHHsvu4iqgCCVH4+Xf1r53mG8ZkRbU1pmft1QWMwG4Rt53WaFxKxxvMo
         3odg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707073151; x=1707677951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ThwihqpEmkYEH6ts2ZleGCKVjv2HQKJYQcUmGXzJeKU=;
        b=ulbbXEXswp7rUCmMw4aaUZyTuaIJ4+5WZV3VafoTRy8BD5Z7M2lH8Twkqy1VBrk5ox
         Ex+yY32Ow16jMuTtFs+B4QPpZR5oUs7oM/3JU9vR7eGBQsfueP7Tp9Tmd2ZeSKrKPLyc
         UCWr5ik7aPIuqXV808EogKNmHcTgNpThHmvUZzc49D1xTpUAtFEUDjcj0V5zcw1Oby46
         LfGwJL68bZhN/fc7iqaNW2jSckNNQR4cBheUn2bcrsan/eiJMEBwK2GZm+UH3ul6AC/G
         3zFrWD3n95LPpDCVcNeAvL0c2LC/uUzm86urDsY/jCKkq3XM6XAaLCGaTmcNglcExd6V
         s3tQ==
X-Gm-Message-State: AOJu0YzlGVJzNe30U3b9pdqPaNqmdAeTbKpTdKw++t4xrjNMeb/LkAGZ
	EOd2P9sVzy/I6yRdWe1goZQtFcGD0Lvkylm086nL5i5oSsW8JivYJLJM19oKmzETnsBC6ZvolGD
	98HG/x0mAwtBe3heNvafPJzpsRGUy+8q17apMjQ==
X-Google-Smtp-Source: AGHT+IHZPu7JOhnW+WabPixZNvtP59ved/O5akA186CvDVtY1vrwCCE7jLzI4JXeMQbjH+avQ17YQs5oJxkTJaAnVyY=
X-Received: by 2002:a05:6358:721:b0:178:8cc8:4c7b with SMTP id
 e33-20020a056358072100b001788cc84c7bmr10710494rwj.24.1707073151246; Sun, 04
 Feb 2024 10:59:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240121-pinctrl-scmi-v3-0-8d94ba79dca8@nxp.com>
 <f88d07ef-83b2-4d14-976a-6dbbd71e036f@oss.nxp.com> <CACRpkdYV=qYQ9qDUWYTLDAV1niay30gYH5S=zjfi31GpeY5o-A@mail.gmail.com>
 <DU0PR04MB9417A9074C5DC49AE689E65288432@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <Zbt-QkWhz5d9P-v6@pluto> <DU0PR04MB9417CA6CF089B264112C32A088402@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB9417CA6CF089B264112C32A088402@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 4 Feb 2024 19:58:59 +0100
Message-ID: <CACRpkdYCrbNB8wu4rO3Yx0qomxR3kTt0P7YH7kc2HPCbrgt=tg@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
To: Peng Fan <peng.fan@nxp.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	"Peng Fan (OSS)" <peng.fan@oss.nxp.com>, 
	"souvik.chakravarty@arm.com" <Souvik.Chakravarty@arm.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 4, 2024 at 10:29=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:

> Using generic pinconf means the firmware needs exporting groups/functions=
/pins
> and etc, the firmware design will be complicated and code size enlarged.

This is very much to the core of the problem isn't it?

So the argument is to save code effort and size in the firmware.

This reflects some of the reasoning behind the device tree bindings
that encode "magic numbers" in the DT nodes to mux and configure
pins. Often the argument is that it saves space and effort.

When the i.MX driver was first discussed it used the standard scheme actual=
ly.
Look at i.MX 53 for example:
https://lore.kernel.org/linux-kernel/1322999384-7886-2-git-send-email-b2939=
6@freescale.com/

Groups and functions! As strings!

Then the DT bindings were discussed back and forth between Dong
Aisheng (the original driver author), Sasha Hauer and Shawn Guo
before arriving at the fsl,pins scheme.

Back in the day I was pretty much clueless about device tree and
relied on others to review the bindings, which ended up like this:
Documentation/devicetree/bindings/pinctrl/fsl,imx-pinctrl.txt

This was in 2011/2012 so many things were not considered. It is
clear that this scheme with a number of integers that get poked into
registers is convenient for some DT authors, also pinctrl-single uses
this as well as I think Mediatek and maybe a few others.

Over the years I have come to regret it a bit, I think insisting on
groups and functions as strings is better for abstraction. And the point
of firmware is to abstract things so they work the same on all systems.

Yours,
Linus Walleij

