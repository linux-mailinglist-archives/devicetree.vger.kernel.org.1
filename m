Return-Path: <devicetree+bounces-198582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1DBB0D76E
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 12:37:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84D121C2511C
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 10:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16AC82E2F0F;
	Tue, 22 Jul 2025 10:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Um0vZbyW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733D52E11BF
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 10:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753180641; cv=none; b=P9UTOarG7WnKyyw/F/Ng+5A0qOx8OarHC5rZzqQzt5F8/qZbreQQqZq0SHOugF95B8lZfDDukhh8dqSfJcfbfuEIg2xM6vixuCL/4jKe3K7LD/3Gsb0UExpBcsiDtqrywrT2C3awuMc/8wU1IMnUPjcVCX3/DllTOXgTo1SxcxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753180641; c=relaxed/simple;
	bh=6DM9dMZAtcwlDKvhQvsmdFJDn+355Evyd4COdeLDukI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A6HzVW4JKf6I4wOdU9Eb4MEqqwgC/zDhVTc5AczolEZ2g75c0sJltdYHFELGpyWS+QW58IArRZoMDashnfqvr3vX0u8T+sCQ7YpOZdxvaPGwmMbj2DOIha/16zNJNwYzWKqxQC7yVn5bRwJkUhXeneTCL/F3QkyeXpb06HJC2cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Um0vZbyW; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ae0bc7aa21bso1047329666b.2
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 03:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1753180637; x=1753785437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GtY6xQODciaFQXT13QEjMt2xFfxEtt0WYueluTMBhAE=;
        b=Um0vZbyWwagJoJVoyvzt10dufXbWiL9BGSf+gyy83x4GxniBv0Oh/KyASUkabJNAUv
         yqKz8yorgGOLhv3OffBbkgUhnovWOstmmvFbET8yAwMMQmzo3YJ9Am9WfQDFuHX1GGOj
         yG3YRxoz4ZeHiLmsNaqE9EDhg1eVta4sUyq4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753180637; x=1753785437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GtY6xQODciaFQXT13QEjMt2xFfxEtt0WYueluTMBhAE=;
        b=HZI4TKXwJmErhlXm1Tr4n0PIZ3fFvMXVexxXAbbFHypFSWzbCBZh5Bk3wqPZoo57wg
         2EeQBZTgE2nwIqoU3KqyemXy2EZHOWaQpm5hP3Nu84LUUJ7wiifXqQOtNgFR7kxIE8hj
         GhR/Vn4xXnXg1nyxLCt+K/V6iOvkZ7Rbnkbo6J33/3roFpBKwmsQjfrvndZbq9bJhHOy
         csXW/wiPbsDfca6J1bUawPc9+vatstPPrCi350LUOH2EAkWOT+iuI/Cu+27HOMaxEiZj
         HucamXJffJjSLN2yXkV0SlDfrGnsWuOVEttm1EzS+KvNTkNP4L+N58qvgqMfJ6SHUkq5
         GLww==
X-Forwarded-Encrypted: i=1; AJvYcCXEQy8tNF02WgHcVeeLR94wZSMt4yHbzcyAzEqzSJQG9WnzO7NgltYCK9SeI0eUjgs6xyUo7OxVECDr@vger.kernel.org
X-Gm-Message-State: AOJu0YymOSiv5ovQ8Gu73CmwD1BiqjFrpqMGs85xMux86yBkeMrkCp1y
	So6KxTL4CMTnqWXBUcv+YTewBcJWOjNSUGbuKanCYZB/T3y9aGiUlIm61wlbTmteB4E=
X-Gm-Gg: ASbGncsRTMEQLQzV39P9TTYKaGC3M2tpQENH9+2wmizVjtvEh7JHRjsh5s7G9kutMwg
	bZ3TfJgRGJM9a2Q8Lk7i2Y47h9wxoOQ1V3R7gd/HG3dd/DnsXldjM04voWYQdl4jdW+PS0R88lK
	MwbEINulyO8gKf8EGCtY6+KCH+e09b0hgAqVZ1CTqJRikX74oJZtgI4tDvCkJBigXtj+yb7duh4
	g7vsA8fryWd2CVUFHPY5qZvanfGcxMCFu2FpLalY3h+uwjBK/27u2J6oJ2AO5pL/SdVqFtlNFZs
	l5wZVT97sknvEHWhNISeMbj56e69ZdP+nq5J8mSbgm4+5ikTgd757egWBT2p84zlSdSAnYHvocA
	EaTcLAEzVRfpsBZYTUb5TBV/qHHm9nwRsukgpZWmg9g4d7KhkeFK2h2UeDHw=
X-Google-Smtp-Source: AGHT+IGaHOYHJrE7/OlnHeCdJT7X6M+1OGRNxK7Jx2o38iPchbY1YGECx/VXRXtQUdO2o2c/K0RoAQ==
X-Received: by 2002:a17:906:9fc9:b0:ae3:cd73:e95a with SMTP id a640c23a62f3a-ae9ce0d2aedmr2549138266b.36.1753180636628;
        Tue, 22 Jul 2025 03:37:16 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:2bba:d7b0:8e79:c982])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca310e2sm844568766b.79.2025.07.22.03.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 03:37:16 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
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
Subject: [PATCH 2/4] dt-bindings: input: touchscreen: fsl,imx6ul-tsc: add fsl,glitch-threshold
Date: Tue, 22 Jul 2025 12:36:16 +0200
Message-ID: <20250722103706.3440777-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722103706.3440777-1-dario.binacchi@amarulasolutions.com>
References: <20250722103706.3440777-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for glitch threshold configuration. A detected signal is valid
only if it lasts longer than the set threshold; otherwise, it is regarded
as a glitch.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../input/touchscreen/fsl,imx6ul-tsc.yaml      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
index 678756ad0f92..2fee2940213f 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
@@ -62,6 +62,23 @@ properties:
     description: Number of data samples which are averaged for each read.
     enum: [ 1, 4, 8, 16, 32 ]
 
+  fsl,glitch-threshold:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    enum: [ 0, 1, 2, 3 ]
+    description: |
+      Indicates the glitch threshold. The threshold is defined by number
+      of clock cycles. A detect signal is only valid if it is exist longer
+      than threshold; otherwise, it is regarded as a glitch.
+      0: Normal function: 8191 clock cycles
+         Low power mode: 9 clock cycles
+      1: Normal function: 4095 clock cycles
+         Low power mode: 7 clock cycles
+      2: Normal function: 2047 clock cycles
+         Low power mode: 5 clock cycles
+      3: Normal function: 1023 clock cycles
+         Low power mode: 3 clock cycles
+
 required:
   - compatible
   - reg
@@ -94,4 +111,5 @@ examples:
         measure-delay-time = <0xfff>;
         pre-charge-time = <0xffff>;
         touchscreen-average-samples = <32>;
+        fsl,glitch-threshold = <2>;
     };
-- 
2.43.0


