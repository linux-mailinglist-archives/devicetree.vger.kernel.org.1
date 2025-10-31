Return-Path: <devicetree+bounces-233612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F166CC23FC2
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:03:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 104D5563A2D
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B35329367;
	Fri, 31 Oct 2025 08:59:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472A42D23BC
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761901183; cv=none; b=oFH7VPEC3e1ZFiyl3s1ok4pFIuwVkB6DK0TwLls4u9in6VkFdQ4gd3D7dhDelqATmL8G48sWwQ6bZSBeQFY1/Ibm+GTMaUONe5G7W0ohHwigyjTcYoOONhdP41aptAHjoMTykXLdazyWGM6mW/8QS6jf8wRpuB18RoEZ6sqGyW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761901183; c=relaxed/simple;
	bh=NYbl8HJcgb3R5SVJ9GXGI/Jq2+mOIag8w0HzHBPHPoY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BPmo5Kk1t/iV0ReUws6PGUStld66j0RakDYlKxy5sO7eC6YFOynYAeOUSec3B5jSNMHVppwOpwVdMmlKV+a1qFfXkW3NFJqMzyXsQBrQIcY/287RFlWOq0ixeZSWng70bu+Kmag8bmCCO0XTXtYkEpulnn0xiihrwK6wXAFMySE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-89ec7919c71so220821885a.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:59:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761901181; x=1762505981;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lQVVX5c2GB+a2QgL3UYe6DKU+bmVaydohzEFkpxq/1c=;
        b=J34Qb3EKKDThokd/L3/iidmdnblIvXUhwrKHOzpR1ViR9WdwEKHdcSbhObG5VmaNn3
         K7DwDRHDqgTzlOuZOiMXgxDLDA3O3OUuIsbHzRX37b07bQk7XhLbdQaGDrcOeRVh1goq
         7/JZ+dQ/fmZKigmLz8yyPVbmO4YYSZHWrzqzpjamw4GjcApvYaSiylkX7CkWI1/UZA3d
         IDJC3hY+Gtlc7RgnYlv+bk4AtsTzROz3ZV16B8JK3i3oPPV+WYvL2YEbpvVQznqYlHxa
         5e6KpiB4cvnYZs77hpOBNJ5IWS/ddq0tSaYj2QYki/afI/93COvU+M40AH0YZoJXC0Yj
         pzFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuuLfU3TkNMC4+sL9X5+TCDMWGSucPrfB4ca4hHfWHu/wDHwFoZctiJwwO4M/baqi1Ue9B5g5mhmnU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+Kxn7sdikC7YiKzJigzwgDd05iwDmEF2eYuBDWWp6bYWzwTJM
	uJlGJmtASRqiZnt1EdNDr5USdEohtziDobLGcSNJS4NRX67ORnCuXQbS3pmx6iaV
X-Gm-Gg: ASbGncv2ArYN3zGh+1wMzcSD1+IFzL7rBawLN/pjOKSHM3BDmb60SKDGorIQwVUku6G
	qLiNehz4p3dzh9L4Sqqz0oktdL3m+ZIZj15k5ln+LRB8LKnJk5g9sIWaHfsHLqDvzpS87ReBNl5
	L7HdrX/17TBsco460c46Lnyg5fuQqMMHQWZBNHucy3GP0qNAspQPcHFaVhzwEiyT62nYSItuIM3
	csKITcHmapcEAmNyreHqVwWWw7LzfgcdgO50lMNUBToDZ2mFEV81NdJWcFxKOqpSnAf/4+bW0tt
	8tvKUjRHnm5rogGt3zzu2M19ciHSf1ODCzdRt3s8KVmUGJ7BxVY+Ghpq+eeBYFMEC4aO3ziwrBa
	Esqt5wn5s7WSSq9aw2ePs2CK8PpW/GVeXMIn+aJStEGo8oLljTJG7gq80DBZI5t2DeHZSNhHAoM
	zvnNRLuit4YYEmterV272yy56DTczCl1wqiV9rcekA/XM8O0H6X3ELyBhb/CY=
X-Google-Smtp-Source: AGHT+IESvfKxXIX7kd9QAlLJHHNohSuR0EXobk64Q3AOXm7LkBz9lDGsdVHzjsh+OFUQ33OLYANLiA==
X-Received: by 2002:a05:620a:3724:b0:89f:3bd5:cadb with SMTP id af79cd13be357-8ab9b0c9072mr304388685a.49.1761901180834;
        Fri, 31 Oct 2025 01:59:40 -0700 (PDT)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com. [209.85.219.43])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ac03581871sm73985985a.42.2025.10.31.01.59.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 01:59:40 -0700 (PDT)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-880255e7e4aso13985576d6.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:59:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUZhw4vJ9ThKIN3jEJfvCblMXIKvBrFBPwv99jzMCCaJM5nKYbJpqk7NYMXciGxrOYdYoMB2ljh3HMz@vger.kernel.org
X-Received: by 2002:a05:6102:c13:b0:5d5:f6ae:38c6 with SMTP id
 ada2fe7eead31-5dbb136ecc7mr717064137.37.1761900747573; Fri, 31 Oct 2025
 01:52:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015071420.1173068-1-herve.codina@bootlin.com> <20251015071420.1173068-6-herve.codina@bootlin.com>
In-Reply-To: <20251015071420.1173068-6-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 31 Oct 2025 09:52:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVnsWMB24BTFKwggEXKOtqJ96GWZh2Xz+ogocQHM+=+6Q@mail.gmail.com>
X-Gm-Features: AWmQ_bm5vGlc5XXZic8RvnXrZNNcCRnf0-7M9Km7uh4sqx0Aign1FjKoX2MZmow
Message-ID: <CAMuHMdVnsWMB24BTFKwggEXKOtqJ96GWZh2Xz+ogocQHM+=+6Q@mail.gmail.com>
Subject: Re: [PATCH v4 05/29] dt-bindings: bus: Add simple-platform-bus
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Peter Rosin <peda@axentia.se>, 
	Arnd Bergmann <arnd@arndb.de>, Saravana Kannan <saravanak@google.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, David Rhodes <david.rhodes@cirrus.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Mark Brown <broonie@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Daniel Scally <djrscally@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Jonathan Cameron <jonathan.cameron@huawei.com>, 
	Dave Jiang <dave.jiang@intel.com>, Alison Schofield <alison.schofield@intel.com>, 
	Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Dan Williams <dan.j.williams@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Wolfram Sang <wsa@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-sound@vger.kernel.org, 
	patches@opensource.cirrus.com, linux-gpio@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-cxl@vger.kernel.org, 
	Allan Nielsen <allan.nielsen@microchip.com>, Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Wed, 15 Oct 2025 at 09:17, Herve Codina <herve.codina@bootlin.com> wrote=
:
> A Simple Platform Bus is a transparent bus that doesn't need a specific
> driver to perform operations at bus level.
>
> Similar to simple-bus, a Simple Platform Bus allows to automatically
> instantiate devices connected to this bus.
>
> Those devices are instantiated only by the Simple Platform Bus probe
> function itself.
>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/simple-platform-bus.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/simple-platform-bus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Simple Platform Bus
> +
> +maintainers:
> +  - Herve Codina <herve.codina@bootlin.com>
> +
> +description: |
> +  A Simple Platform Bus is a transparent bus that doesn't need a specifi=
c
> +  driver to perform operations at bus level.
> +
> +  Similar to simple-bus, a Simple Platform Bus allows to automatically
> +  instantiate devices connected to this bus. Those devices are instantia=
ted
> +  only by the Simple Platform Bus probe function itself.

So what are the differences with simple-bus? That its children are
instantiated "only by the Simple Platform Bus probe function itself"?
If that is the case, in which other places are simple-bus children
instantiated?

Do we need properties related to power-management (clocks, power-domains),
or will we need a "simple-pm-platform-bus" later? ;-)

FTR, I still think we wouldn't have needed the distinction between
"simple-bus" and "simple-pm-bus"...

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

