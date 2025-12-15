Return-Path: <devicetree+bounces-246669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5395FCBED1B
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72EC4305CF3C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EBA30F812;
	Mon, 15 Dec 2025 15:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RdSQ/fU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6421A2F0C45
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765814264; cv=none; b=VAnFdYwuDAJvDN2OZ+/4/DSC7/+OE2yUTBARFMPAHCCLIwzbv/jfRsmvXIn/MX0Ph+xbaOjcTxv13JjprAGxSwcZ0+dj2EqkY7cMSPAPG83eVi1N2Eo9Hr+BulsIRlGlKHscs6ReOKJs8msWeEGeS9MrSUq96/b3Nn+NguqacQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765814264; c=relaxed/simple;
	bh=wWPC/2Smq4jtjLX5cNQnH721pExURZn2+t/Lpx8wgiY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AGN3lDa75i9iiNtU1A5Qd/9Mr5FSKZKUNrCAfVUBqrdSX0l9bgN5lcdRlcYRbZyZNaO+dlXIpgxlA3im9eUIlCYusbbHJ4k3TvWYuFv1VT4d6N4PcOOtRQGismbxNUWBZW6vWpf+PCFWDC+crn3vEmS0tbj4qKGzdCsBW+9v5kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RdSQ/fU/; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-64470c64c1bso4992523d50.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765814261; x=1766419061; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jD2gSrbwz8qwRcQAUIoCa/YtmLX1qZ3zgXWUCARLWUM=;
        b=RdSQ/fU/1PDz3di3Ks5pKKDb8xLXR7WdRNI/1j/0Od0eUew+mRRpGtc49Yc9hTleWE
         GNd4sWCXVWZ8vvW/SnTb/SEXsdKHBVfQcQeWPUP63rPFcRrOThlyhKkWvme74lWsZdg2
         Z/FOWHJSzw1CVwIXQo7alxZhy0ioHiBUb92sdbaH45WZqsYcA9eFgxcl9TL6QnSq359m
         P+ussN5KRMqTaw3dQ076/tslENmEl4Lp0IsMe8XjCeNHy+FUFRNRhy2ocHx8XF0+1m7K
         9I7XFpVA7yJPstSVNt5ntk83PRH031iQkpmI6mDOEbZCyICiwXFCYBLpEYDVMCTyOjpc
         NAOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765814261; x=1766419061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jD2gSrbwz8qwRcQAUIoCa/YtmLX1qZ3zgXWUCARLWUM=;
        b=KAPGCE4HG2ZX5Ng/ulpTp/apMsj6G0fr552yLKYlbHaP5mvGfAYto41Cj0JAQ0WsKG
         hX/sIo6ojD7/BC+d+idbbMZUTOSuQA5nRouzZriKr1fabM1966NijmiYX4aCjnkSNyKD
         P6ELkV3NvFzeeHMcBCDr7J6g8oc25swC8yJVi/oPcXGwY0GFvuwDajzyJBmwttTSuz85
         LE8TXgudIvky99zNA63GJpBweX1yE+FZofEmtuQAaNBOPoh9aqJS8e8v4h7EHgdwfFU8
         YJF8inl0DoGxFKFVBtRQeyaHuW/UlIx7DpaCpxPsGRl07k4vm0RcuEC+6n2N+Km+t2J7
         k7eA==
X-Forwarded-Encrypted: i=1; AJvYcCXOOM7CMvTJL9tZI0bZVvF9lphGkIG6uTAYrMbJnSQI4LmS1pHSM3zZU+z28bimk7vnIr6G2I83hI9H@vger.kernel.org
X-Gm-Message-State: AOJu0Yx85xDmVUULtc91ppwzCzFh2HvqlWm7nqJrNraltbiIDtaDW+Hy
	VPv0h6LRVpYVnoyztPweyPk7FO8bKsSWowfDRBo9Rv7Lm53fcPhrPaKElCe5QeasSAMf5CZpQTS
	okMh5d9W9f1nWYrVAyW6XGFfiPJBp1/pOqFNrnqqSOQ==
X-Gm-Gg: AY/fxX45vzOgU879Gx8KQN3veLsoF09Q5h/K1DVNCbZjqlPDmFg1g6AIzh7Hga+9aUy
	cQv1P68PlzMH98py6RGgNxvTMjUMrJREgIa4svLpRH1j2r/1ppHaGcBYRaAVZsxbFCe59LrLSix
	bkIQBGD0eG9UxvS0gxnpKCSUD1YSRXU4ujdMSgA1EJPF2inoHc15PPig2/detZo0W6zxuc8KFT2
	oQnHt9TCa8Z3jw6hZ0WwHIREm9nCICd2YNGovoNNehKPi/86xAgMFxy1Si58jsFt3CUZvG+
X-Google-Smtp-Source: AGHT+IHnzK21TfrVLiBrKEfsBY0yy3nNModkqTwvqLIVjQPjpPnPxA37IWTaMsN5LsanoFGI3JzdpIiVMlmjMLIYn+0=
X-Received: by 2002:a53:acc2:0:20b0:63f:af94:79d2 with SMTP id
 956f58d0204a3-6447a58f4a3mr9014275d50.34.1765814261319; Mon, 15 Dec 2025
 07:57:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215034944.2973003-1-irving-ch.lin@mediatek.com>
In-Reply-To: <20251215034944.2973003-1-irving-ch.lin@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 15 Dec 2025 16:57:03 +0100
X-Gm-Features: AQt7F2pOE88ysP1TXeUkBFRRwGo0OeDBvPna4LwWc08y3UTdwUmGokrHz2XyogY
Message-ID: <CAPDyKFrsRTmvc4JmFAT_mCEEaG9yGkZn_JJqqyqCnB-AmpZgsQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/21] Add support for MT8189 clock/power controller
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Richard Cochran <richardcochran@gmail.com>, Qiqi Wang <qiqi.wang@mediatek.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
	netdev@vger.kernel.org, Project_Global_Chrome_Upstream_Group@mediatek.com, 
	sirius.wang@mediatek.com, vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:50, irving.ch.lin <irving-ch.lin@mediatek.com> wrote:
>
> From: Irving-CH Lin <irving-ch.lin@mediatek.com>
>
> Changes since v4:
> - Fix dt_binding_check warning.
> - Check prepare_enable before set_parent to ensure our reference clock is ready.
> - Enable fhctl in apmixed driver.
> - Refine clock drivers:
>   - Change subsys name, regs base/size (clock related part, instead of whole subsys).
>   - Simply code with GATE_MTK macro.
>   - Add MODULE_DEVICE_TABLE, MODULE_DESCRIPTION
>   - Register remove callback mtk_clk_simple_remove.
>   - Remove most of CLK_OPS_PARENT_ENABLE and CLK_IGNORE_UNUSED which may block bringup,
>       but some subsys will power off before we disable unused clocks, so still need here.

I assume I can pick the pmdomain related changes (patch2, patch20 and
patch21) from this series, as they are independent from the clock
changes, right?

Kind regards
Uffe


>
> changes since v3:
> - Add power-controller dt-schema to mediatek,power-controller.yaml.
> - Separates clock commit to small parts (by sub-system).
> - Change to mtk-pm-domains for new MTK pm framework.
>
> changes since v2:
> - Fix dt-schema checking fails
> - Merge dt-binding files and dt-schema files into one patch.
> - Add vendor information to dt-binding file name.
> - Remove NR define in dt-binding header.
> - Add struct member description.
>
>   This series add support for the clock and power controllers
> of MediaTek's new SoC, MT8189. With these changes,
> other modules can easily manage clock and power resources
> using standard Linux APIs, such as the Common Clock Framework (CCF)
> and pm_runtime on MT8189 platform.
>
> Irving-CH Lin (21):
>   dt-bindings: clock: mediatek: Add MT8189 clock definitions
>   dt-bindings: power: mediatek: Add MT8189 power domain definitions
>   clk: mediatek: clk-mux: Make sure bypass clk enabled while setting MFG
>     rate
>   clk: mediatek: Add MT8189 apmixedsys clock support
>   clk: mediatek: Add MT8189 topckgen clock support
>   clk: mediatek: Add MT8189 vlpckgen clock support
>   clk: mediatek: Add MT8189 vlpcfg clock support
>   clk: mediatek: Add MT8189 bus clock support
>   clk: mediatek: Add MT8189 cam clock support
>   clk: mediatek: Add MT8189 dbgao clock support
>   clk: mediatek: Add MT8189 dvfsrc clock support
>   clk: mediatek: Add MT8189 i2c clock support
>   clk: mediatek: Add MT8189 img clock support
>   clk: mediatek: Add MT8189 mdp clock support
>   clk: mediatek: Add MT8189 mfg clock support
>   clk: mediatek: Add MT8189 dispsys clock support
>   clk: mediatek: Add MT8189 scp clock support
>   clk: mediatek: Add MT8189 ufs clock support
>   clk: mediatek: Add MT8189 vcodec clock support
>   pmdomain: mediatek: Add bus protect control flow for MT8189
>   pmdomain: mediatek: Add power domain driver for MT8189 SoC
>
>  .../bindings/clock/mediatek,mt8189-clock.yaml |   90 ++
>  .../clock/mediatek,mt8189-sys-clock.yaml      |   58 +
>  .../power/mediatek,power-controller.yaml      |    1 +
>  drivers/clk/mediatek/Kconfig                  |  146 +++
>  drivers/clk/mediatek/Makefile                 |   14 +
>  drivers/clk/mediatek/clk-mt8189-apmixedsys.c  |  192 ++++
>  drivers/clk/mediatek/clk-mt8189-bus.c         |  196 ++++
>  drivers/clk/mediatek/clk-mt8189-cam.c         |  108 ++
>  drivers/clk/mediatek/clk-mt8189-dbgao.c       |   94 ++
>  drivers/clk/mediatek/clk-mt8189-dispsys.c     |  172 +++
>  drivers/clk/mediatek/clk-mt8189-dvfsrc.c      |   54 +
>  drivers/clk/mediatek/clk-mt8189-iic.c         |  118 ++
>  drivers/clk/mediatek/clk-mt8189-img.c         |  107 ++
>  drivers/clk/mediatek/clk-mt8189-mdpsys.c      |   91 ++
>  drivers/clk/mediatek/clk-mt8189-mfg.c         |   53 +
>  drivers/clk/mediatek/clk-mt8189-scp.c         |   73 ++
>  drivers/clk/mediatek/clk-mt8189-topckgen.c    | 1020 +++++++++++++++++
>  drivers/clk/mediatek/clk-mt8189-ufs.c         |   89 ++
>  drivers/clk/mediatek/clk-mt8189-vcodec.c      |   93 ++
>  drivers/clk/mediatek/clk-mt8189-vlpcfg.c      |  111 ++
>  drivers/clk/mediatek/clk-mt8189-vlpckgen.c    |  280 +++++
>  drivers/clk/mediatek/clk-mux.c                |    9 +-
>  drivers/pmdomain/mediatek/mt8189-pm-domains.h |  485 ++++++++
>  drivers/pmdomain/mediatek/mtk-pm-domains.c    |   36 +-
>  drivers/pmdomain/mediatek/mtk-pm-domains.h    |    5 +
>  .../dt-bindings/clock/mediatek,mt8189-clk.h   |  580 ++++++++++
>  .../dt-bindings/power/mediatek,mt8189-power.h |   38 +
>  27 files changed, 4306 insertions(+), 7 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt8189-clock.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt8189-sys-clock.yaml
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-apmixedsys.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-bus.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-cam.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-dbgao.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-dispsys.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-dvfsrc.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-iic.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-img.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-mdpsys.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-mfg.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-scp.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-topckgen.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-ufs.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-vcodec.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-vlpcfg.c
>  create mode 100644 drivers/clk/mediatek/clk-mt8189-vlpckgen.c
>  create mode 100644 drivers/pmdomain/mediatek/mt8189-pm-domains.h
>  create mode 100644 include/dt-bindings/clock/mediatek,mt8189-clk.h
>  create mode 100644 include/dt-bindings/power/mediatek,mt8189-power.h
>
> --
> 2.45.2
>

