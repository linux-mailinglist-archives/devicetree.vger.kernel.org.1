Return-Path: <devicetree+bounces-218964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DC7B85D75
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:59:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EAE856467C
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A7C3191BC;
	Thu, 18 Sep 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Uefhcdmo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D4B316904
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758210773; cv=none; b=gWcKv22FlUKjlSjAJvGr1OWw903ClppTudJ/C+SPfOZszN05nnoVBxr//KKY07s6TW/rNVdhAOwXKfcHun8Tj9cF8o6422GRd6qtfcN/w0+3FLT2N5wr/eCVcSSuIav18DQH84x5Hjntkyk5hHER9SJc6VmtR1G1zEov2wVn00A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758210773; c=relaxed/simple;
	bh=bKYvTL8MbcZirvGbcTLtImf+31bpwxjEuwrssdUZtAo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bNBavlBUX5lgHkqOCrI/PZj4oQlNFPBS+i33QbK3fESUqxG2cVKLcQw5c/IbWZdkfzkquRvevhQIrs2zt+1gVBMk40EFTOpEffiHc/IyIzawxZpbywEeHzIBchcXzhgalTFe4/ZXMCBr6bv8d8/THzrUQnWsi/lOgVdXOgjQHVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Uefhcdmo; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b07e3a77b72so319878866b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758210769; x=1758815569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lcdJmzD84uDfab79lyqxcqnmMvBiautmvBU6m3EhEI=;
        b=UefhcdmoBtjBwTbpcnAf2ErmCwikynF09gDihaFdzPqKJ0v2Mzm8yS3yV96nujBc6I
         PstEwlyp2ljv5LlCQGlPSujTgyxGC2bSltrJOGUuOUhPkp8wsmSAhWqBSlAYWOUgH/Mo
         ENwSameNP8fNnt84kP+QLOAhwQkiaEWAQ71J0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758210769; x=1758815569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9lcdJmzD84uDfab79lyqxcqnmMvBiautmvBU6m3EhEI=;
        b=IoIPKjqCogpMVeAbtztBp6+F8dTsFdkoUOBfhm9tZiRi1AjuvniZAko50M31UYw0LW
         u3obqMebV85vRtNBM/5ih7VTlIGmkW0c8HpPT12cjhE42gdsabGrWAbS/mSpbhJFArgR
         0e+sUfJNgDt8rlUiNZPzPnzQ5yBC4ziBjwVQtKK/AAM7BEFQvcgVTqErA++/ybAqBtNj
         TJlObN1FVS7dRs4cE3UZmhwcqDqmHZEKKDR5prtfaOLhcq1QQsevUdlDnuDuo+FLJujO
         cwurusKQhUmgpnL029+Ot/kSG2dmOLFMANEmKUNDjeyI15FMMwITyTZqg1TMBJAmNNdM
         JjbA==
X-Forwarded-Encrypted: i=1; AJvYcCUqppuQ9xWooDP5h3P0Phcg2NJrWkMf5TobQu+AIad4ukiLrd5vcbmO+/v5E3AwCNuPBRDfQW9r98DU@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjy/Gyh2Bie+t0+gyrb5Sg4ZezDzrlB0xBH64oX0Z8rQ2JvnlL
	fm+nvWyzCs55+EpXdXNjTbQMl+aoHLsEvJ+56Gce72CCkKCyIRlFh406R6ywCCt9u2E=
X-Gm-Gg: ASbGncthnH9ot3RpXrUN9Kl0dmoJNIIvRvZhP5pmLuVQNKOKsO7xq2+DXEeJbbRJVXi
	PJPru/a8wuZpXqjybwBHiqkbVXRcql853TKJNheGPzs50hINf1T1vyHd5Mf1LDZzW14ba7fgJ+q
	NpL8tokdHy2XsFp7lmaSUWVeGV0J6ABTo3d68XT9JqoYnUKmjjybtNVUnirpiYqsow3mWB71EvM
	0B43nWM6O7XoRwvEMq3s+WBsp+5YP4T7T263dSdBfwQOmMEwlgmEf60WOH1oop8bgVAcN5zh32+
	cbcxIw93MhZOUIA/m2SCJCdYJkdikl8HvGNaRnmtj0cCY6BpjH4MqjTslcFGqmei/3UcmtbRL49
	kNb7Os+pV7NmxheUKOdZlyoSQGGlL/XqrXALOqy18X8OIOtg4m64Y/zDGcBjYVZodOohhAinUgw
	u0KsFwd5Gnwf2NCw/M+0qVh1QWTxkGQ7vBcfXFAZIOz2d0gi390TRHBOOH7ai+pVOrgb5Z6C7ol
	beph0b36jc=
X-Google-Smtp-Source: AGHT+IErelZCb4Ng2hNIph4lDPD33ehWDH5J7iXux+fMT/vxxySG4ibwfi79WajSIooQhiHJCIIbVw==
X-Received: by 2002:a17:907:934e:b0:afe:ef8a:a48b with SMTP id a640c23a62f3a-b1fae7a9b82mr410713866b.30.1758210768899;
        Thu, 18 Sep 2025 08:52:48 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b23a1227bacsm60449766b.41.2025.09.18.08.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:52:48 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v5 4/6] dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch thresold
Date: Thu, 18 Sep 2025 17:52:32 +0200
Message-ID: <20250918155240.2536852-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
References: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support the touchscreen-glitch-threshold-ns property.

Drivers must convert this value to IPG clock cycles and map it to one of
the four discrete thresholds exposed by the TSC_DEBUG_MODE2 register:

  0: 8191 IPG cycles
  1: 4095 IPG cycles
  2: 2047 IPG cycles
  3: 1023 IPG cycles

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

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
index 678756ad0f92..1975f741cf3d 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
@@ -62,6 +62,20 @@ properties:
     description: Number of data samples which are averaged for each read.
     enum: [ 1, 4, 8, 16, 32 ]
 
+  touchscreen-glitch-threshold-ns:
+    description: |
+      Minimum duration in nanoseconds a signal must remain stable
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


