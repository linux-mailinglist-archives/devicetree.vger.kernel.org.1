Return-Path: <devicetree+bounces-220451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC825B9658E
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:42:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0834C16ECA9
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516EF26A0BD;
	Tue, 23 Sep 2025 14:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="O8TbWdkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A8E199FAB
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638279; cv=none; b=dYTJk2niy2rLIKhDRkSh0CCA8S+l4fT0IiTj3IkPSe6G6x3odliyl9SHFF76JIvnASDZ9KATGMREzxr9rbKFteCj3emh016SYyE5i+GLUBj3XK5EGk6HTMRfCIcU7DIpNLhcQ3lTcVTWvotloLsDe4sWbp28h98r3gHfHqEmPeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638279; c=relaxed/simple;
	bh=IAi/8O8/rULM+WO/P3gj9Rt/deukKZIeTgVaOnY7B+0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YESGkbjMErg05y5n/O1f+9fOhthq/pnZL52TW/kbhdlngrtNQm0iP85mui2p7MwlYFBNTlxIl9A4rQQvCn8ALh9J1USzW+Xdv6jOkGUfVTg4FIGtkOgNLoWqPX0DEtGbHkHTNyoNrg1NYWGrcKAVyHl+lMHPv8BAbxXRzub9XXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=O8TbWdkV; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-62fbfeb097eso6749220a12.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758638276; x=1759243076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUcTQ2up2eOa5np9juHes8kBZBD61IeSVgwAmot8YUQ=;
        b=O8TbWdkV7XA9I12YiAcfwvbRarhww+y0EKzGH1gqzy2lyynkFi5ckxJ+Bn6bUTP5MV
         tOtaPawLMgAnYO+31lC/XpfNwyNhJV4M04b7wa3pwUOj5IcWDiWgCfJbvi+y/3/j33QL
         7jWyufzgkCEEz1pGociINjv5egzsHShdH2DzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758638276; x=1759243076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OUcTQ2up2eOa5np9juHes8kBZBD61IeSVgwAmot8YUQ=;
        b=f1keSFx4ZQSbl+XgG8tyhM8SDmBZ1fKQUpMa8M7Ka2eOpNw2Axbfi0w6hjgebCZAER
         V+fYmH6REzfQOcDMTNVZOuayPFCvUph8QlaFsfBx3NUMNgTv2PPkoMmO1THU3B9uPlXr
         Fp1qf0nySP8iHsNgYNS/zt6wAXcSBhIVLh0z41QxS1Qh0U7u1J2M/Z8T2dQwIYEj5V6l
         ChUbqZXJgiH3VpiJtHwWXDj6gApzMVTmP65Zm4pTUkNgvseqSG3D1AhaHnH0lu5mwixI
         h2q64uOh99Aqsb1vGJ25m/wR0050hwwVLdb1uRb5crP/FcpyJEg1hHqm4YcGrjW97wwo
         mp6w==
X-Forwarded-Encrypted: i=1; AJvYcCW0MjQ7zilGKJnh83OhHD9FGiclHny35SmOKE1fYirDSma+Oxey1Yg5aIZgdkOtRA0eyWVSOiu95dDu@vger.kernel.org
X-Gm-Message-State: AOJu0YxMsNWM3Zu/RoMlmol92vEboaVkTDwBvCtaLLkVcjlIwrpUpQ07
	NdQAiEfmyOQQYouQv+8gqxACyQfl76mwq0+V3XiMe7sH+/nRRYLwPEYbyxhpUuReigc=
X-Gm-Gg: ASbGncvlnrcvdks55xPw6bW6STI/qFUFPkGX7ib/lOKHuYTmO7j5H+cTShjrnL7avSY
	nfWMRUABT81mNt5snJf4ZnzznTnuX3sAE47uJJ5WhCtdeOIhZ9a+tmkZ1oewNKMcyJAhyQM+kIZ
	YMJv5c4WCmYHyinATT82MiKa8on2ZKyIyGKsuOv/aKwvCk1+/3ta8hEI74ze30d/y8ue3g+9GCk
	jAAWhDZ3N7N/cvF3ePpcU1YFGxJaSrmchXjGymRfcihGF/87TvwFwOVao+RvdOzn9JPr/VmfZNo
	HhX76SNNKYSV9GiPUV1Az4AMSMNAav0F1UMOyTY7pbWfRNRoh/yTgB/vdIBB+kNXAtQv5J4gvT1
	hEU0t/ay4kR6Hcs1DkKY6MK62E1ZdCBGJ3k2jRCXO+WpiYSk1EnZVp4jbGnKe2BlUePnXJslXzn
	lNJ6fsEFJG23lQoRYMrieoU924dLQ5Z9EJa/jY/UJWqmL7L7OvGvBgDVlC9dgYFZiK
X-Google-Smtp-Source: AGHT+IGDPnG7HtZZOzHzDzOnTvQCbphPIOssxaWdLijuYXdOKqbHAb1gXG6TbG+I7cy+yOigXJi2Ww==
X-Received: by 2002:a17:906:f58a:b0:b2a:dc08:5914 with SMTP id a640c23a62f3a-b302ad3922bmr273199066b.45.1758638275808;
        Tue, 23 Sep 2025 07:37:55 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2a2a5f6c7asm665204666b.28.2025.09.23.07.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:37:55 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 4/6] dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch thresold
Date: Tue, 23 Sep 2025 16:37:35 +0200
Message-ID: <20250923143746.2857292-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250923143746.2857292-1-dario.binacchi@amarulasolutions.com>
References: <20250923143746.2857292-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support the debounce-delay-us property.

Drivers must convert this value to IPG clock cycles and map it to one of
the four discrete thresholds exposed by the TSC_DEBUG_MODE2 register:

  0: 8191 IPG cycles
  1: 4095 IPG cycles
  2: 2047 IPG cycles
  3: 1023 IPG cycles

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v6:
- Rename the property to debounce-delay-us.
- Update the commit message

Changes in v4:
- Adjust property description following the suggestions of
  Conor Dooley and Frank Li.
- Update the commit description.

Changes in v3:
- Remove the final part of the description that refers to
  implementation details.

 .../bindings/input/touchscreen/fsl,imx6ul-tsc.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
index 678756ad0f92..a99280aefcbe 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
@@ -62,6 +62,20 @@ properties:
     description: Number of data samples which are averaged for each read.
     enum: [ 1, 4, 8, 16, 32 ]
 
+  debounce-delay-us:
+    description: |
+      Minimum duration in microseconds a signal must remain stable
+      to be considered valid.
+
+      Drivers must convert this value to IPG clock cycles and map
+      it to one of the four discrete thresholds exposed by the
+      TSC_DEBUG_MODE2 register:
+
+        0: 8191 IPG cycles
+        1: 4095 IPG cycles
+        2: 2047 IPG cycles
+        3: 1023 IPG cycles
+
 required:
   - compatible
   - reg
-- 
2.43.0


