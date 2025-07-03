Return-Path: <devicetree+bounces-192848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C921AF8310
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 00:00:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E03721C85AAF
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 22:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2259E298CA4;
	Thu,  3 Jul 2025 22:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B499p7Y8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0DB184
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 22:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751580044; cv=none; b=HvV84woiQsZ371Xx5t3E2+9WSzLvs1lV7T7eYNYkN1Lvn4/iq8fYChvUZM8X8Ei/5FONKH2elcd43KNf2zb/j7XeXEuURX8Kth3K56SIY3N8kZ+DY+4vN0UVSNd2On5kbbLS9AO6WO3koa1w8oNgMh9UmwnUa5X+s2GuCY8GH6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751580044; c=relaxed/simple;
	bh=QM2hfhKy3jhksca8jVMMVVgPl4y67/QsYQzpDbu/sTE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M7Xj93x1sciLWa4JHUEtHN/Eyo6ahGSQUlY/h57jY1h331gGBEap9Fak5ZSkCZaNDBLeNlxoVr+ZqxBOJprtpQYMDa4ABj3r20SdvW2rxdRpzsmWc6Pnt4QR9GKqnkXdbzalQ1YNRI5kJ0wY3xpSLIw6ItymERGzCWTj5OLm4+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B499p7Y8; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-32cd0dfbdb8so3118781fa.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 15:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751580040; x=1752184840; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QM2hfhKy3jhksca8jVMMVVgPl4y67/QsYQzpDbu/sTE=;
        b=B499p7Y8cO8MO11Kk4wVEiUQd39Zw6vdFHuzkxwsIMTMwC42xfdfBFVojJnJAysE6r
         4VMsxAQRRcIjENMz5qtcJ1tJV61to36xZfpg2Q2dyg0k8USQLtDEaDbCHFduCMa3ELJG
         Y4dbEV/lwuE7Lz26UYYDMt3a6zMTOj5/xajZiVUJeAqGCNkJzIp9IrIhWNPjfRbpRnoS
         5UL16+AmFVoexihnQVkwLLUg855Rl48E2K9RLF3Q/j60YF13seyBLHde0pHnImQzpyyD
         zv5dKp7FuV1tcKV2yE2aC5v+ePTQsQsJ7Ft3k8Ki5eNFp/R+/4g2af27A1giyctW2C5R
         fiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751580040; x=1752184840;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QM2hfhKy3jhksca8jVMMVVgPl4y67/QsYQzpDbu/sTE=;
        b=dMWHnBnCA/q5BZSA2WLFkFq9UElIVS5I0QJxp923NIS4ifbmEeuvHk7yshAbIMxLAh
         rOjpLAtUeFv1DdQmV0GbpTpHuw2ZbZTXmdFLV7O9YI7OUw0Gwnq/QigUqEa6apOKEUSE
         hhV/X59ua5GP/h2AdXW7HYcURnfqidY4gmUnz72KxAwntLWopAV5FGCPRQj4pNQYoK7h
         hLk9J+zHfHPS0KRXB63VIGqK+yOPnaW/1mjRi6r/w60obfrgMEzaMk84FfguVUS5TVsZ
         TVMIaVzbHkRlFTEWd8r/H4cUqZdVR4M/WHN2zKTGFeMSLGRMBCIUG7eQdos+8/Uk0gFt
         t+og==
X-Forwarded-Encrypted: i=1; AJvYcCW975LYIqlh/EPkU+4jsCSreqbbEDJCAWB1PNaflrI8lvoBf6zqrS4wF6q6ehp8/bhRcVpIEMbJSLC4@vger.kernel.org
X-Gm-Message-State: AOJu0YxN8LvOGsViB7spOVEW1WhgAq0W56tN9NbLEHv32k5EZ9v2ZsmF
	RedZS4KVes0cJLqFhiZMkc8NfhJacoHXfwutecY7Ea/wVmjRPvgZIO7gRsH9kgbvllIYuAOs/SL
	ONLxTP4/GvI7jlZvcqqvn1aQWqqlqYipzZk6JKwFvkA==
X-Gm-Gg: ASbGncvXtp1IHzQRvQ6ZmRgsbaDCeOs+SKq6JVEgdBds6ER9jfnXHjFgRJyx9L9Z/io
	EpYuTo8ogAS3HkBvhmtR5qfu63pFhMdsw3ZBnyQXKdi7R79S9Ucepk94ORZoBC3YmtMrYUlqZlU
	9f/v+atGKEYJO85/LN7LBl3DptBNedfN6cesha83GFoZJ3Yu4mIkicLw==
X-Google-Smtp-Source: AGHT+IFOg19UiUE3TiCmES8XgOiPoWe7IXHAEBmzFu74XNzMO6mLnJFytBrmkTs0o5+cmuS3yBGZJGpr3iPUNTe0hDI=
X-Received: by 2002:a05:651c:2149:b0:32b:7ddd:279e with SMTP id
 38308e7fff4ca-32e5a501965mr343691fa.14.1751580040326; Thu, 03 Jul 2025
 15:00:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250606160359.1356555-1-Frank.Li@nxp.com>
In-Reply-To: <20250606160359.1356555-1-Frank.Li@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Jul 2025 00:00:29 +0200
X-Gm-Features: Ac12FXzt-R2yT2p2gdap6KBqFivqmoQqCjxQv9f3OTqOhOSRfpfG-x99NP7EpuQ
Message-ID: <CACRpkdYD7eC49n7pxvjvrPE_Z-5MgOZ+VdESPD7AH5CeneVojQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: pinctrl: convert nxp,lpc1850-scu.txt
 to yaml format
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	"open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 6, 2025 at 6:04=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> Convert nxp,lpc1850-scu.txt to yaml format.
>
> Additional changes:
> - keep child name *_cfg to align legancy very old platform dts file.
> - remove label in examples.
> - just keep one examples.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Patch applied, thanks Frank!

Yours,
Linus Walleij

