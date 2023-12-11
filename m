Return-Path: <devicetree+bounces-23761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFAB80C435
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:16:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 294931F21334
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7AD21116;
	Mon, 11 Dec 2023 09:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="unCM+QCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22766FF
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:19 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3333a3a599fso2711228f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702286177; x=1702890977; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i92w0H7T5cIJREEPTTsPXzjdkkN3FCVq9uA4lCfv1LA=;
        b=unCM+QCjThdnQ32XOZSTfoyq6ktVic0r/YbdcBxFAKaHcDfpKXLaDZWqDYlmzV1emn
         LG7pBTOjtal1qC0BmLjMRXPmhwyfXx7U70PX84IH7DPb/NM0KxtYXUhSW+ocgPWqjxuH
         8Vj+GzmC5iJDHHsYul2yeFFT6ZX+XS+kUUnf25MGv2M/rN7V7J7XokjnfxwYOUGFmKGt
         EJeQPDJTSsgIc50wMIMcYVzzHWVyLiEY2k4yuemwsBFC7Ambm90D5dZuB78mcIGuUXJY
         QMh/u2whabTcfdfy7TGzgVtAwBwNaSrj45tIuWyNBXMaiS7fEzg4Hv4SO3nOWpwxNRMw
         NOAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702286177; x=1702890977;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i92w0H7T5cIJREEPTTsPXzjdkkN3FCVq9uA4lCfv1LA=;
        b=KEBQvvLKMcW+SG0tJFvCKdQ5MIhdStXx64kgEq7qfFz18GXNkSJFirRlpDdzzKG1Qh
         sjU+6r7l514D7Tic9yriR0rFRZ4r1ZWGj2fXfSRmppvKtMnil3KpezRsDK6ZbV54ZOHf
         eBqs2O0RJK5EQKmGPN7H+BOuLxVxFBEtyWBxXCarWY8a5oYdX73l96B0Y6j8Bz+v+sfc
         Vs4Ce8Q2Xunw7EcnJMwJfHRJNjD1AjWJQh8FgytXxdiUMcYSsNd9m/CIH3S7Q0VTjV7L
         T7BpeH4RE47On+cqX0L/BmLe3VQXih882di95amSVDdDxtmUbgVX1xw0Fbiz6sCqAtd5
         ECAg==
X-Gm-Message-State: AOJu0YxzrYqzNC+8BGycUyWrO5uT5jqPZXZmrkREu/p4+k2fGwC6MyLn
	J/ZMGKRduPXMzGJVIaQ8glG2PA==
X-Google-Smtp-Source: AGHT+IE1Y3s47FyeYwxBMhMeqlNT8+HKhqIsiKFRswD7iG2IJiOPDvdZF+8n1xssCubPjCtjT+n+5A==
X-Received: by 2002:a05:600c:11c8:b0:40b:5e56:7b51 with SMTP id b8-20020a05600c11c800b0040b5e567b51mr2033425wmi.154.1702286177549;
        Mon, 11 Dec 2023 01:16:17 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id bd19-20020a05600c1f1300b0040839fcb217sm12398470wmb.8.2023.12.11.01.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 01:16:17 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-kernel@vger.kernel.org, 
 Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: Amarula patchwork <linux-amarula@amarulasolutions.com>, 
 michael@amarulasolutions.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 David Airlie <airlied@gmail.com>, Fabio Estevam <festevam@gmail.com>, 
 Frieder Schrempf <frieder.schrempf@kontron.de>, 
 Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Jonas Karlman <jonas@kwiboo.se>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Maxime Ripard <mripard@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, 
 Peng Fan <peng.fan@nxp.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Rob Herring <robh+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20231207141723.108004-1-dario.binacchi@amarulasolutions.com>
References: <20231207141723.108004-1-dario.binacchi@amarulasolutions.com>
Subject: Re: (subset) [PATCH v5 00/10] Add displays support for
 bsh-smm-s2/pro boards
Message-Id: <170228617622.2409693.12899768447819855539.b4-ty@linaro.org>
Date: Mon, 11 Dec 2023 10:16:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3

Hi,

On Thu, 07 Dec 2023 15:16:29 +0100, Dario Binacchi wrote:
> The series adds drivers for the displays used by bsh-smm-s2/pro boards.
> This required applying some patches to the samsung-dsim driver and the
> drm_bridge.c module.
> 
> Changes in v5:
> - Replace a 'return ret' with a 'goto fail' in the r63353_panel_activate()
> - Add 'Reviewed-by' tag of Krzysztof Kozlowski
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[06/10] drm/panel: Add Synaptics R63353 panel driver
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=2e87bad7cd339882cf26b7101a1c87dab71962c9
[07/10] dt-bindings: display: panel: Add Ilitek ili9805 panel controller
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=549240c98e50207244bc1ac182622b8daba89a89
[08/10] drm/panel: Add Ilitek ILI9805 panel driver
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=edbf1d506ebe8c0857c406bd5d5b81d46ffd8437
[09/10] drm/panel: ilitek-ili9805: add support for Tianma TM041XDHG01 panel
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=b1fcb7ee3707290466b2cc4956325fb91f09f13b

-- 
Neil


