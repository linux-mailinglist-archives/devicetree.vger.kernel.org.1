Return-Path: <devicetree+bounces-186607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D87ADC84C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 12:31:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00E44178F88
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5325D2BEC3B;
	Tue, 17 Jun 2025 10:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="lpwi6DZs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF602192EA
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 10:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750156266; cv=none; b=p7OZaWS2sLRlQoyQtV/2tjDZS6hsT2aoNAZWST0JdPy3JVpJDsKUBUOrO0O5wNOksGtzkb4M/hkrsUpYL1CWeIJSpE+3OBpL5L1Lifqnf2a7Up8ALfAFnDh9mcvIphPd4FFSCfxQBF7A+u7icslLajVaHYn3NhgaefxTW8+Ojdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750156266; c=relaxed/simple;
	bh=MRktcHHE5wKe1jZB0TVIrWfJ6bF6zz5pS8h9jFrX2gs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L7zTYlY+p6PWBzxV0K7hXnj6YnMNQB+3L+YsTX8vqjpLeyKnhNO5aih3FGvQTm6jTOtlvnPDzqslLUnq/RDgl83OlVw+PvJpEhqBKrk2yAPbsF8+k63GqSiHXY+J6oNR5TL3SKRDV8dyVGO6GQUr0XVaeuu6cDzGPawFT7sxPOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=lpwi6DZs; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-451d54214adso42756045e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 03:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750156262; x=1750761062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmNwwFnf4rvDB+kei3WgHFlAgrsujTs+X07iVmmGktU=;
        b=lpwi6DZsWypgLKtWppK6ln/feYxTanwZdKrDZErTP7dCRtsCCglpHbv/cVmIMjxxFe
         ZEAHwGBGyPlgLm8wW3TpkvDUblTPI28Vtp5zXrxwHXe+wmhv/JuIx6kNW7FeMVJlqvZD
         RquXE4djvtxZni2v8VSm9DH446ou5LBtp6U0mG+z6DAWrvy+CADaakEdn5qZZtwQuxEp
         ceVDai68kwEwGEPwbHZ31/YojX5tc6MQLOMgm8DGG2m+AV52vjzLUMebrR81RHL/PEga
         IJLihngsLsEW9xao9evVTNXgw5HHDkYp4x2FnoDYBi26U2dKhuWBgH63ZQLznkgdXh0R
         NNtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750156262; x=1750761062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmNwwFnf4rvDB+kei3WgHFlAgrsujTs+X07iVmmGktU=;
        b=dFtcsAypMEn5PjKV/bcJySvVGLLFT966GPafpOdZ2+Qi3Xlk9xulaPMyOVJD56ZSpu
         K3KMtTpAD/aCLPWcPZ6t96vnGmfCxN93azubhsii9niTZwD/nCaYbV4BsfvtxhCAkhrd
         glxb159l16DVeL10ErV0PUo4VE2SaYSEDZ6fC2zR9kHhHqhpSeIEsx0hlpyymcHWnVg7
         XMElnb8XHFUyWtYq9bgHgRzO4z8hx54kkIJTVD/hBR8wA7s1dha8Nfxuvspd15K5TovI
         kZY7IcFYV8BTB0Z7lkAgr+5jkyz80O8Lm2bqgDgBz0nI/8qTE0Ent1eZUeq+p5LUYZ0S
         CMAw==
X-Forwarded-Encrypted: i=1; AJvYcCWxlvL+fzrnMiL+vojY4jIg56kmGLaKb5pysU9P3enHtGqcce+AmRunx7KEWCZitXEdZIz+m07MahP7@vger.kernel.org
X-Gm-Message-State: AOJu0YzwayUmMK/KQdcLlql+Qkn7spbNSq38GdmucYkVy9NZlW73fHgz
	f/ldVQMhAixf0Ejl6E+e6xeOcFpFYkwWzaw6beOcU7VqBEy/Yo8nNDEXvG9dQFUUVcQ=
X-Gm-Gg: ASbGncuf3zBWCkiilbY4fEMELuCTnvfSKFHyiCwS+Hj8tYAItAvFaFUKyJBqTSMmu4V
	ARbL+msS/5nJY7r2q47LXHaN0eeQ0oobMTxWgKuL2cggjyec3rREo8nQGm1W7EowMV/MIVYm0qU
	ZAhOEQBUf2B1VvhZF40k52XL/8zUnMx000tYY4GhwMJ41315hXyPIPIUZT0cibtJz+yZGXRSdwA
	N5nvf39WKCoo8GnWaKNIUAT2/jlC9PBmY58EIuNL7tDv71sn2qzgGq1Gfs5IRtdaxYsMR0a5zJp
	a2E5KUNVE1Kh0YiPm9cbl4EBf3f/3B/V5DpuSdhOzDO0+G3l5qAj2+FxfwOsvsThtIl/4w==
X-Google-Smtp-Source: AGHT+IErcBfFQKTQ8cJ59Qswbejq+S65j5wGZCmMhc8Be5vHHaKvya54mDzCAiVvaL2D0IBYhiyYYw==
X-Received: by 2002:a05:600c:350f:b0:441:ac58:ead5 with SMTP id 5b1f17b1804b1-4534f580000mr52297055e9.31.1750156262162;
        Tue, 17 Jun 2025 03:31:02 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:b1a7:bc8:262a:3102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e16a097sm176749215e9.33.2025.06.17.03.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 03:31:01 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v2 1/4] dt-bindings: clock: mediatek,mtmips-sysc: Adapt compatible for MT7688 boards
Date: Tue, 17 Jun 2025 12:30:55 +0200
Message-ID: <20250617103058.1125836-2-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250617103058.1125836-1-ezra@easyb.ch>
References: <20250617103058.1125836-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

As the MT7628 and MT7688 are identical in most respects, mt7628a.dtsi is
used for both SoCs. To prevent "Kernel panic - not syncing: unable to
get CPU clock, err=-2" and allow an MT7688-based board to boot, the
following must be allowed:

    compatible = "ralink,mt7628-sysc", "ralink,mt7688-sysc", "syscon";

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
 .../bindings/clock/mediatek,mtmips-sysc.yaml  | 29 +++++++++++--------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
index 83c1803ffd16..550807301fc5 100644
--- a/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
+++ b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
@@ -26,18 +26,23 @@ description: |
 
 properties:
   compatible:
-    items:
-      - enum:
-          - ralink,mt7620-sysc
-          - ralink,mt7628-sysc
-          - ralink,mt7688-sysc
-          - ralink,rt2880-sysc
-          - ralink,rt3050-sysc
-          - ralink,rt3052-sysc
-          - ralink,rt3352-sysc
-          - ralink,rt3883-sysc
-          - ralink,rt5350-sysc
-      - const: syscon
+    oneOf:
+      - items:
+          - enum:
+              - ralink,mt7620-sysc
+              - ralink,mt7628-sysc
+              - ralink,mt7688-sysc
+              - ralink,rt2880-sysc
+              - ralink,rt3050-sysc
+              - ralink,rt3052-sysc
+              - ralink,rt3352-sysc
+              - ralink,rt3883-sysc
+              - ralink,rt5350-sysc
+          - const: syscon
+      - items:
+          - const: ralink,mt7628-sysc
+          - const: ralink,mt7688-sysc
+          - const: syscon
 
   reg:
     maxItems: 1
-- 
2.43.0


