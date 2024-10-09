Return-Path: <devicetree+bounces-109352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC8199618F
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57E64283C52
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5120D187843;
	Wed,  9 Oct 2024 07:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FQLRa4fm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE551865F3
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460560; cv=none; b=pwMCVcl0iYSZyzjIfZvtR/9QjKiVrPMEYx6jPQT5X9D7ijrNyymQzEQTA4nmha2BMvysbhGxNhhH8DRbtm4uQshq/WKs7FZkYM9vO3QCNLVQsi+cOM8I+iBrcDrTrF1Trw9sZBdiDUrIzvXw0tXgQrDBJqk1hqmn2UaGm0h3/EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460560; c=relaxed/simple;
	bh=A4lSNrRXaEkXG8jgMnUAfOsb+5/EvFkHHsoQooCyPwU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EBqcQ3hu1ORxI+BqWvK3u4C+JXXuL9fcJocm5qQcTWHyG0J1JLzMP0WBOva85Mu8SSBEbMade37UDE7ew3DAc8KMtQN6ptgg1mAluji7xdoWISwNxXNI9CCL3dTF9ZqS6wtPFnlSKe0ao4iXVW/8PzIO9R6xnCkusvL6NTBjgzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FQLRa4fm; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-37cc9aeb01dso4286285f8f.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 00:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728460557; x=1729065357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vF+bwgt5K0DxX6gVjgMOFqltEB1h2u/fKc87de81MiQ=;
        b=FQLRa4fmHguUUoqdTx/shRjAP3gQgpkB5X7qMPff1ucRxmdwe9va93Af5lbzJywBfT
         AjuY9K89lxUUX3Ls/cgkX5J/yec0FwS6azpg5YhsqudoG/Okn+W4xoPv54ngNO7DcyJq
         KN4HOQ3eN7N2w78n8tfiStQk/1jvnk7qbHBC0L/S9/2ZtPU1HpWULnCmABWIXwuxga1O
         2R/VJD/Jeg+U7hlpaPxOvTnZ4EtMycFzK05/LGbalg+VFi3Iwz1StKmw5h8AqVmNHuls
         9Ar2dMtRt6COCWYGmkLuWvvqgcXjZ+EHgCM5StLJRmT8jMDgwmqkWxvbfvKr8NEW9kcG
         6YAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728460557; x=1729065357;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vF+bwgt5K0DxX6gVjgMOFqltEB1h2u/fKc87de81MiQ=;
        b=tRi1BUsJegckTOSouPNDe8l1ZTGS64hK2zRbWWW2WVuBZTB++Fyd7ZJ6Ez3wKKwks0
         Hj7Y8fdmA59DEmC+/n5WoFvbn0ePsjdwKI0rH6OxC1gjYixGF8DhCJ/6SawDT+F+6Rjv
         dkfvWQTrifjcMVi1YLPMv32Pmgb1vKQ0OlwmkimEMhBnii8aR+8OuvP3GCkuWllAJ4H/
         01asC3LPfcTw1r1tO3JzFLKXSUd5Qlmuc/2R0wT8WFzzNyL7MLfwjgjbCQOOFCiKEGh8
         W14vO3UOO6CC8fsrqUczjBdMq0Z7FoZ9osIBZoJDSxfzso6c9sTv4HkfdzLvQbJ5NboB
         deBA==
X-Forwarded-Encrypted: i=1; AJvYcCWMm4On1upCF+mkWLKJ4dUT9Q7BSY3Gui2X+zKK4uGNwAxUtj7PJV2CI0dlRanFM0nM2tGct86VTwyW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf+cJSgqJh7KvFrQWwXtgYI6lFrBjJEzJe++kYlSOXmvV/tuga
	agp8xKAUBB2QXDmD3+f5LrfXezTBvnVGcgCRvv9B2LPZwAZU4ZUm66IarvGx/fU=
X-Google-Smtp-Source: AGHT+IHLlUU3NnG9hXwulDxBDdXbtdhESRXfgH6ae8spTgJdMsE262PfGzNXfp3eWmSSA9CE1JyGgA==
X-Received: by 2002:adf:fa82:0:b0:37c:cd71:2b96 with SMTP id ffacd0b85a97d-37d3aa84533mr951060f8f.36.1728460556864;
        Wed, 09 Oct 2024 00:55:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d16972fd9sm9660342f8f.104.2024.10.09.00.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 00:55:56 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 imx@lists.linux.dev, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Simona Vetter <simona.vetter@ffwll.ch>, Frieder Schrempf <frieder@fris.de>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Fabio Estevam <festevam@gmail.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 Gregor Herburger <gregor.herburger@ew.tq-group.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>, 
 Hugo Villeneuve <hvilleneuve@dimonoff.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Joao Paulo Goncalves <joao.goncalves@toradex.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Parthiban Nallathambi <parthiban@linumiz.com>, Peng Fan <peng.fan@nxp.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
In-Reply-To: <20240828074753.25401-1-frieder@fris.de>
References: <20240828074753.25401-1-frieder@fris.de>
Subject: Re: (subset) [PATCH v2 0/4] arm64: dts: imx8mm-kontron: Add HDMI
 and LVDS display support
Message-Id: <172846055533.3028267.13306014745754490027.b4-ty@linaro.org>
Date: Wed, 09 Oct 2024 09:55:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Hi,

On Wed, 28 Aug 2024 09:46:52 +0200, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> This add support for the display bridges (DSI->LVDS and DSI->HDMI)
> on the BL i.MX8MM and the 7" LVDS panel in a separate overlay.
> 
> Only one of the interfaces (HDMI or LVDS) is supported at the same
> time. Enabling the LVDS overlay will disable the HDMI interface.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/4] dt-bindings: vendor-prefixes: Add Jenson Display
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/763dc2cdeb2ac5a5067972b614f9f0603f716f9b
[2/4] dt-bindings: display: panel-lvds: Add compatible for Jenson BL-JT60050-01A
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/15bda06bc93fca828e5f11ca6b773fed19e45b8e

-- 
Neil


