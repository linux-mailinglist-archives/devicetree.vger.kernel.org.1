Return-Path: <devicetree+bounces-71577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1014A8D7528
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:04:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B82D3281DC6
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE2A39FD0;
	Sun,  2 Jun 2024 12:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BSPRVzmG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FC7381B9
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329892; cv=none; b=Rz3fJ+si/6GR++N9NjYRwa8J4g81D3yZ20BynMIK99JoRIMhaMCZ5ZhzemaXJ8DZN8/CLGN2Tz+KyhKRl8EPQEgoShEQeI6V/X6dMSRoH3EpCSUbcfML1QeeFb7gcQJvexpkGFSJK1doR8aFwqWqDVqHq8qOAGceT5Xpkq4rTug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329892; c=relaxed/simple;
	bh=3Nz5IHmPVWRwHFsw4a2c0uKZtmM9s7xJPi4nSL2SZJE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EMgeUDRCpw9R7Ld6jTu7zCS9w/hnAXKZ+8SjiZFnuyzkSmcNQ9bIkC3vPxjw6GuNi3PnQtGAvFuyoMV4lRQAyL9AREE2DnEZG3QbnnM/CHihhuwxst2XJ3f6KlcVVjY5FzIEf3xB7RndupBww383o3Hvivc0QPovY2KcjNz5JOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BSPRVzmG; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52b8bb0c059so2517977e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329888; x=1717934688; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BGWVh/Zr3LGFqNC/PDJ+t+m+rq2p7BOWG0ebyvpQons=;
        b=BSPRVzmGdNWc3NSYE5MJjGj2/2pMOmhuAmlyRWUX50BYOVhlGIiFtCWbRf304rk5O0
         MvEijnEkTaquIckiCT4D6hJZXFmItSsPJhkRlTewxCbj7rVP/F3dR/wfrsD9+JLbNBul
         iNrsq2TAOWlUvsWEwoTMsAKdQNyg3QXlRC0f3WKJwQLpofM2v2gxG6AV8mQl6LmTlNVT
         rVtIk5djW5X/xqv6JRyLAWteUHjTltqHJCYmSI5lojSOU4K6VPFMvjFRpjWWMUH2WWvQ
         c0tDTLbi3/zw5T1FmjfwklPfTzjNOvUlpixPu9qlPshicEn6mR/RH1gmoUiSnLB8hBoF
         eAaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329888; x=1717934688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BGWVh/Zr3LGFqNC/PDJ+t+m+rq2p7BOWG0ebyvpQons=;
        b=DWlX/F4wxFL6/TzJcOcGG3vEOjGiWFz7qfiaGFWt+nhCKISt1fGHKV/mRN/YT7+iZJ
         iWXrMhPrfxzyPjLjINGIOx5aYoJTZ/MMT+V2IPMSKu2IzPfYfbSEmMHBrpeOn/4J7BEZ
         TiwlQqNLQboeMal/8U6E2uh/G3Na7LrrjM7HrKB+JA6YY/K6CqU3c7NT7VSdT5jq8DVi
         hi04biTSwio1x9H+AcCIRs6f2wWdZSySy9H9W0/e36NbUEbduCxkTRixIE7QOs7jli3O
         boElTzV3/7CeJRem6RsZY11et7q8E808WV4KiKbKG+nQ8HtcwzrTHnF/935zZGeaXMrY
         O2FQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvaobjobwDLEde+/c+m3V7mOAxp4urz5uZaYC3X7a6rlDZuks25MjcTV/0bnqE4vukv7diYKLdNez99t8g/S4Dh0DFHfgwivAgTw==
X-Gm-Message-State: AOJu0YzXHmFmm9agCZMZsvStgkDXfg9szdUar9JF2NJdO74CQg8zpTd0
	BDE6uPVovpj7WiVBRCsbjPilaKdv1YySNRn/zJegUnHMxXB1dgygg9HQDUkR4iQ=
X-Google-Smtp-Source: AGHT+IFioojHdR8Li3FtAUmWNxJNZSvKgoMY/dETwt1uCPkRs8JMSzzF/VAu/d9Aejv8BYFZwW5OPw==
X-Received: by 2002:ac2:4e94:0:b0:52b:7f00:5695 with SMTP id 2adb3069b0e04-52b896d26a1mr3567965e87.59.1717329888558;
        Sun, 02 Jun 2024 05:04:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:42 +0300
Subject: [PATCH v3 02/12] dt-bindings: display: imx/ldb: drop ddc-i2c-bus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-2-e549e2a43100@linaro.org>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
In-Reply-To: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1144;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=3Nz5IHmPVWRwHFsw4a2c0uKZtmM9s7xJPi4nSL2SZJE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/cS9DynlRGL/q+FhwSBFBcGFVl4UCT9geOY
 UOhOg3+BfuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3AAKCRCLPIo+Aiko
 1dStB/9ur7o0ZT1BGSJZP85LBwNFyha0XzFbawRG0NkoKwEt/qs9Ss23XuP64+H0Cgyv/lVZjih
 EIYQvrftDLxdSueWB7OoHv+r853IRqJFX5s/L3FwrhUoWR4NxzSmt+dwf5i/uyMTsq00ulQE5cn
 bZEqh0UlBGShgZQEb8KmODQEGST0F5Y1hIct+TfuXs13DQYdkp02ie1uKCpXSeBRPqWG27zz+K4
 +1/03y1P7Nh61Dh/a0EX9L9v4YVhfWy/URMe2TNrE2Lt9GPP9AZjKCGZc6sPeAnsig6dVr6e1bd
 LvZnaiOQHvUe+FMP8pELJ2COAaNjL9n+YQrHqNflOdiRBK+b
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The in-kernel DT files do not use ddc-i2c-bus property with the iMX LVDS
Display Bridge. If in future a need arises to support such usecase, the
panel-simple should be used, which is able to handle the DDC bus.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/imx/ldb.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/imx/ldb.txt b/Documentation/devicetree/bindings/display/imx/ldb.txt
index 8e6e7d797943..03653a291b54 100644
--- a/Documentation/devicetree/bindings/display/imx/ldb.txt
+++ b/Documentation/devicetree/bindings/display/imx/ldb.txt
@@ -62,7 +62,6 @@ Required properties:
    display-timings are used instead.
 
 Optional properties (required if display-timings are used):
- - ddc-i2c-bus: phandle of an I2C controller used for DDC EDID probing
  - display-timings : A node that describes the display timings as defined in
    Documentation/devicetree/bindings/display/panel/display-timing.txt.
  - fsl,data-mapping : should be "spwg" or "jeida"

-- 
2.39.2


