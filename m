Return-Path: <devicetree+bounces-18329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BAB7F6240
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 16:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 023E61C20D97
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 15:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5080033CD3;
	Thu, 23 Nov 2023 15:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tjM/+7QH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F461D41
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 07:02:10 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3b84e328327so242692b6e.2
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 07:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700751729; x=1701356529; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mEar30uGhaLDv42Tg2oK/HJ39S4ZlMcOxp8lB7y+TU4=;
        b=tjM/+7QHkQHxSS+7QWM/SyS2UD2UsZfYMW2+MTTG8vAPqHctw0kcurybYJLVN4rB8q
         Af2TK8hIJDtSgZPv6WQ6khWKlFTWqg5R59800A9cSGrG2nwd8RdAXKiC3pv2CEKIJyj1
         4CFDO+sCVpjM6os7WQeKUUVRX2JYQl+9k7c9REygCByUasup8JYd0MeUmOIzMobT7bBw
         kAQK+CRNdgArNAlM71DrFyF0ceKx/tBzrWA0v83NVDxIeL2ki2KLLeuRuZG8hdz8+OE8
         wrYafSgYDOw226nuVtzFnaT0Ywf7RX1p4tDLdUDey21JGzY2AeF+ufwDl7ct3yV/CLKE
         Tk4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700751729; x=1701356529;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mEar30uGhaLDv42Tg2oK/HJ39S4ZlMcOxp8lB7y+TU4=;
        b=SNrPPCfrxNBp1OOfNrvtsGb9el3Ql44/MPFB77UQxw7ORybFqkmpLnb+SRt5t0LhWv
         xPr1pp3CMMOGHWp+EfRVyjlCNtvEcEIK0OBmIgHaOhul2aq0KzeUifsDFefrzq1AXBzd
         QEzOzBvNUsgPQlxikY8igrkqOPMP7kSU/GR1XJNUElggbu+mwDpddrgT0mweauFsQr/L
         HOGytC3sV19e4i65z6AhG1NpvYIBxSRJNAJIuFhh8yPeupDBhWpSiLlR38BsWsSg6hdV
         e4lRYQWHCktc6Pns+a/nov26qoJuMixLc9tWCjj3CGlDA5WitXJ48tfmje8kcv7TmqMY
         x34w==
X-Gm-Message-State: AOJu0YyVO+WyCJRGSZs7qUdZITN7YiX0bNTKTsCMbpDTKqtCfR3/qL92
	dJG46msPR9bhLHheZoBQtSMahl1T6pUSFwWMYCYNgg==
X-Google-Smtp-Source: AGHT+IEPs85TdkXFOx395LjHkoWLEotqTEDJgWg3E9vX18ND53JbjdHMu/2FDtEoR/uEbkEfShXDjs81ygSKZRO/XFs=
X-Received: by 2002:a05:6808:d48:b0:3b8:43b6:1e34 with SMTP id
 w8-20020a0568080d4800b003b843b61e34mr5319331oik.30.1700751729501; Thu, 23 Nov
 2023 07:02:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Nov 2023 16:01:58 +0100
Message-ID: <CACRpkdYr6+1hYnGUStTjG6BjEXXbtAAZMSkcOeuBZ3hF6Fn81w@mail.gmail.com>
Subject: Re: [PATCH 00/14] renesas: rzg3s: Add support for Ethernet
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: s.shtylyov@omp.ru, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux@armlinux.org.uk, 
	geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com, 
	sboyd@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, 
	m.szyprowski@samsung.com, alexandre.torgue@foss.st.com, afd@ti.com, 
	broonie@kernel.org, alexander.stein@ew.tq-group.com, 
	eugen.hristev@collabora.com, sergei.shtylyov@gmail.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, biju.das.jz@bp.renesas.com, 
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 20, 2023 at 8:00=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:

> Patches 5-8 are pinctrl specific.

I expect Geert to pick these once he's happy with them and merge them
into his tree for pull request to my pinctrl tree.

If you want some other merging approach then inform us!

Yours,
Linus Walleij

