Return-Path: <devicetree+bounces-18962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DAE7F937E
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 16:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D818A1C204AB
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 15:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD06D313;
	Sun, 26 Nov 2023 15:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qCjEHyBN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C4610E4
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 07:46:57 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-543456dbd7bso8472242a12.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 07:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1701013615; x=1701618415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J9ZptptuvFLM3UckOpdhtM6b2Gb9AhuhmBdl+FUGxy4=;
        b=qCjEHyBNCRjaooKgEnWoctUnHXgMYZn79Rnauk2Yqesv3GG2CE9CzlZhZKIhjc/2kN
         +0CV9OYADwLTSAteBoVq3qTh5l0mbSYZuUdTWoJyIrK8mHHbYfkBzoniTFaW3vLFH9Tv
         O+DwrmtANk8jW8n5tsp5ArcsK2W/oGXk1k9t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701013615; x=1701618415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J9ZptptuvFLM3UckOpdhtM6b2Gb9AhuhmBdl+FUGxy4=;
        b=WQG68nSEd21YBjiEw90OhNephViPuDOOWKlY5GYYt8+et4tKwiaWjjMkrnmn9S879Q
         4xk5fmQyDK7CdcTbIwAVqQQ1a3VfOJ7wCNchF9mFQxAgffuuNxWLmFX5FqztGQ4grJr4
         9nhD2JlnfcVDBYH+SGzQKyI2G2kI6HOiE16d7cM4rT6PTqPpR8q3sVA3K9awOC2i4LVm
         bm+0bBX8ibb7VM3gaTipiih64pDN3ilMlp19FN1sN2M5MGKhtfjmNOzBy4L1e2fhhBWt
         Y07H9GAaKCTPrGj2N+HhbcNdnMsSXCa03lF7mcOfNvbtPQYJXzhwinpB0+05+OrrF3kR
         qdWQ==
X-Gm-Message-State: AOJu0YxKGq1plWKG/fBA149VR89tSujxMtAIBV2Y08BV88JsMX57Pafa
	GcAhQ0LSGfl4vuUlWnGmsDVRIw==
X-Google-Smtp-Source: AGHT+IEfT4doHnOsbz6gudgEBQhP/ws0s3F9AB/JOga8mqtwKh+rmACr2W6jdNBb1rt3mTUHfeVG4Q==
X-Received: by 2002:a17:907:7b94:b0:9b2:be2f:e31a with SMTP id ne20-20020a1709077b9400b009b2be2fe31amr9616483ejc.31.1701013615439;
        Sun, 26 Nov 2023 07:46:55 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-244-100-54.retail.telecomitalia.it. [95.244.100.54])
        by smtp.gmail.com with ESMTPSA id h24-20020a170906591800b009fdc684a79esm4656158ejq.124.2023.11.26.07.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 07:46:54 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Amarula patchwork <linux-amarula@amarulasolutions.com>,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 09/11] dt-bindings: ili9805: add compatible string for Tianma TM041XDHG01
Date: Sun, 26 Nov 2023 16:45:01 +0100
Message-ID: <20231126154605.15767-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231126154605.15767-1-dario.binacchi@amarulasolutions.com>
References: <20231126154605.15767-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Trimarchi <michael@amarulasolutions.com>

Add Tianma TM041XDHG01 that utilizes an Ilitek ILI9805 controller chip,
so its compatible string should be added to ilitek,ili9805 file.

Add the compatible string for it.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 .../devicetree/bindings/display/panel/ilitek,ili9805.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
index e08af5f0b2e9..1b5bf42df7d6 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - giantplus,gpm1790a0
+          - tianma,tm041xdhg01
       - const: ilitek,ili9805
 
   avdd-supply: true
-- 
2.42.0


