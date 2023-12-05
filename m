Return-Path: <devicetree+bounces-21643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE877804C38
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E215B1C209B3
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423493C474;
	Tue,  5 Dec 2023 08:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gV3y8UgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D72410F
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 00:26:56 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40b397793aaso32871205e9.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 00:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701764814; x=1702369614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8z1G//lxs01T/5lt3W2SRfFFQQSfR5y5qtuiOgOqS8=;
        b=gV3y8UgZBIhUsKQs9gHG4Fooj8+llnpyKZ2iXe4gb0n2tDGjE81jzhc+DxNGyr4H+f
         iY9kkUq9P6quJGe97r99ImEp4iDKnxglXBcsVWUfhDce2TXHeTZUhDq3PFDNTtcdaPhn
         96Iyat5mbX50e9tBxmmz400L8GBAm+DEN2a57yCNY291En8a2SlQlBrfzIK8nWtpKvmE
         MCPQp2oyx4pwebRXP6j4LKRSqaLoqfffnWXGvQdsUBAQGzzWneKgGnhkHesUhqcM/oPk
         zVxFaAjtZw2k9cOkVdPmM3FciIih60wgnRtDoiOpGopLRa0oo6N9+3s6dIf91T/r1FgT
         YJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701764814; x=1702369614;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u8z1G//lxs01T/5lt3W2SRfFFQQSfR5y5qtuiOgOqS8=;
        b=n14wiGPZYleM4J633pKs//7vUiAn8S28uJ4z6VJKK2BzSOcG5Q6IdzdIcxdvGgbACJ
         Oe9gIDyZjPU7+DnX9RV7iWR9r6zAzS4IYHF97HwhDsqRV5yitkPrPrbTFDQocGwQGHDr
         mEQYapcQSN29kzC9jDXZ0m2s5K6el8lrDK0B2uBXq2b/875r085a5nW80+hdqZeuHVoU
         AHbIzP64fFldXhQMdMJqqU4KQrh4Yx4iIj7NohimFQdZnWDArLaiJKgpFW10ckpNs5l6
         jrpHpKhYdw+1VLAnMvr+P656/r0hhJYSBV9a16/bQY12F0bR5kgyz7nWvdp3p+cti/o7
         V5WA==
X-Gm-Message-State: AOJu0YyX9XKfrGh7mrYtTGaIfi99Dz6M7VLR94F5FIrYShiQJrHcNPw+
	zvlJ+vF+30e2EP/4ACqG6XX8dQ==
X-Google-Smtp-Source: AGHT+IFCMMvrABPHwS0NJdVCcXSdpuq3NACgGkVh6j9EYUzk74mmdJWxN4/71i9g2VB1GlznRsJr2w==
X-Received: by 2002:a05:600c:a02:b0:40b:5e56:7b6b with SMTP id z2-20020a05600c0a0200b0040b5e567b6bmr283025wmp.180.1701764814623;
        Tue, 05 Dec 2023 00:26:54 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id d4-20020a05600c3ac400b0040b538047b4sm21329282wms.3.2023.12.05.00.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 00:26:54 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>, 
 kernel@pengutronix.de
In-Reply-To: <20231123-drm-panel-ili9881c-am8001280g-v1-0-fdf4d624c211@pengutronix.de>
References: <20231123-drm-panel-ili9881c-am8001280g-v1-0-fdf4d624c211@pengutronix.de>
Subject: Re: [PATCH 0/3] drm/panel: ilitek-ili9881c: Support Ampire
 AM8001280G LCD panel
Message-Id: <170176481371.4073725.12586560786525230750.b4-ty@linaro.org>
Date: Tue, 05 Dec 2023 09:26:53 +0100
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

On Thu, 23 Nov 2023 18:08:04 +0100, Philipp Zabel wrote:
> Add support for Ampire AM8001280G LCD panels to the Ilitek ILI9881C
> driver.
> 
> Also set prepare_prev_first, to make sure that the DSI host controller
> is initialized to LP-11 before the panel is powered up. Tested to work
> with samsung-dsim on i.MX8MM after commit 0c14d3130654 ("drm: bridge:
> samsung-dsim: Fix i.MX8M enable flow to meet spec").
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/3] drm/panel: ilitek-ili9881c: make use of prepare_prev_first
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=68c193c8d4a403222ce51c8b08bd1715f8b74274
[2/3] dt-bindings: ili9881c: Add Ampire AM8001280G LCD panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=7ff02f82c3e9ddd5dd81957c8659d350261196ae
[3/3] drm/panel: ilitek-ili9881c: Add Ampire AM8001280G LCD panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=2748848ceaf32671927c3b19672ba3104a1dba7e

-- 
Neil


