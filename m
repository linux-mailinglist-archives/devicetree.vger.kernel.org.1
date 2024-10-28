Return-Path: <devicetree+bounces-116416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B90369B2CC7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:26:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DC3E282AF8
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600F71D4337;
	Mon, 28 Oct 2024 10:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="T0Fd6yjB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8E61BDABF
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730111175; cv=none; b=hNj8R4x+4H+7KV+rKYHu6HYhL/Vc2KAtAaFfeM0VyK1Zx5HFan1aBA44J7cmOwxk9drEGGwHYLhgpK96jCqoRh45JF7+nGMun8yk9cOsXCcrcOjJEuPDxdCFO+Y8wwCiTHbVct95RFeT0Fq57750/mi1ERKYEeoRH10ULK+XQ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730111175; c=relaxed/simple;
	bh=R93VMLohkk+JmS520PXpYqfQBg15NGWIzpjAwA+J2Kw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IDGQiUjfImUG4TDbA41bMuKnhbzHESiPrOgvXqLDww247ca3QPAl69UhwuY81B0XJMQ8eqkTCbV0CcK+nZBmoQz5CcaiObSCiSFy7p7VoBDXxlOH8mre3nn1432yONQxcxrUJ81VArbt1JQNuWtP2pg/NzW2EyX4dGPSU3TF3KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=T0Fd6yjB; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-539e63c8678so4047257e87.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1730111171; x=1730715971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vYexXqsopB/TorltyWtW3DQvmZVEoLO13n0GfiFkuag=;
        b=T0Fd6yjBYEgaZb3zDq1s5h/LV2LLRVDrIggdpQqSuJBtWs+/Ecd395woqs512paGqG
         xm54xRsDTAko01E/OdqIbwHLAboe3l44XDazR8QlAtOSMvkls9yVHhC/3pG+3fI5qhIp
         AHZTdlgJs1LqETco2MRl6O/kgWaD/WHHW7f5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730111171; x=1730715971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vYexXqsopB/TorltyWtW3DQvmZVEoLO13n0GfiFkuag=;
        b=D/9Dxy2ELij4u8e3ujZFveQwD7ehNXNahwN5Ce2YZiz2bNH7AdfqM5cCVapvGL7GHA
         fSrS6s6+7KrgH4yxWqMgdEZSWlIft0wgzJDXG7Q2KOTgYnzuVLw7c5lv5gDbYvmxK7Hf
         jdKPHffeBfNA/9IknOOVSmrygrZM94q/L42TY6XdvURqJ2o9wY9LdIn7THhYKpvhOfLr
         JkhFdzI7qOYv8sUn96T7Z6xXZoEQ95lMLuXdBoymg39tecdisJItZP6Quz7eeRNCxpZb
         C1+26ikp6DYEqughpHGMgHhFesjs4mIuFy/HFm///HDPOXmCpCF0AzVQMcc+djPgkhRL
         +UIQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+xFBwl1BvbvOO0MPXT37I2MrWRupp62QtrYKWtzcXeeXgk+JA3h5fsmeOgc9Plx+twTU22XnOADT+@vger.kernel.org
X-Gm-Message-State: AOJu0YyTaB2L50STN7L4Kz+Hb75NPRBdenPbmeKVC75ZLpLzYn7hjTC/
	dUFwSKG6gVaXvV8JfS9OlpMAEgvsfOvT//yvKyHibsnLsacMbseIeZz+1cj0HJg=
X-Google-Smtp-Source: AGHT+IFPiWSMUJsvLDsFUQKEPXeJtOq9dyzWbF9cm4SlPeUZQ8cIi4gauJvX3gywzP7yEJIBk1InHA==
X-Received: by 2002:ac2:4c46:0:b0:535:82eb:21d1 with SMTP id 2adb3069b0e04-53b34a3516cmr2517575e87.57.1730111171159;
        Mon, 28 Oct 2024 03:26:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.121])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f297b04sm363613966b.134.2024.10.28.03.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 03:26:10 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 01/10] dt-bindings: soc: imx-blk-ctrl: add 'fsl,power-domains-boot-on' property
Date: Mon, 28 Oct 2024 11:25:24 +0100
Message-ID: <20241028102559.1451383-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
References: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This property lists the state of the power domains, indicating whether
they have been left on or off by the bootloader/firmware.
This information becomes relevant, for example, in the case of supporting
the simple framebuffer.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
index eeec9965b091..00aa0b8d8ea9 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
@@ -56,6 +56,15 @@ properties:
       - const: csi-aclk
       - const: csi-pclk
 
+  fsl,power-domains-boot-on:
+    description: |
+      Provide the on/off (1/0) status of the power domains. It allows
+      specifying whether one or more power domains have already been
+      initialized and left powered on by the bootloader.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 5
+    maxItems: 5
+
 required:
   - compatible
   - reg
-- 
2.43.0


