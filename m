Return-Path: <devicetree+bounces-127964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A5F9E6D12
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:16:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E149A166DA0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC85A202F98;
	Fri,  6 Dec 2024 11:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RxSNxfTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA294202F66
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483658; cv=none; b=Ng2+H/zysTFz1IyBkBBzGYSVV1LJAfB3phDkzvQEeL1OTl/bHQ7Xr0EodXh4+BZxly+sns+aHV7Jl7m8BcRLYT7X5J1owKzbe5GQsTn4rPY06RT+Frx5kUkBgE5hCA8V/JZu82bVILPvfN+Vz7dsXm40F+1huGe0+ukWbpLd0J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483658; c=relaxed/simple;
	bh=yHXEczmr3zgBN9Y5LQq53zyVDIkVuwqZazKuyqw+yEw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OF0QpmUR6jmUoSMyQFGyjJV6euLPnbBYhkeGQyZOAkL8nZV/cm9I57JHGZOylr9Awh9sdC557hz6OKQRmVyXRvz+YmnkpvK5UL+UAQT0H5Quth0lkOQv5ETNoNdl/sDASTRz9FAGZ8lHDXLCt+s2A/7WzJgh6gov+wTDomafxVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RxSNxfTk; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d122cf8e52so3043145a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483655; x=1734088455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ztquiO5zqo8/ypj6kpM7FV/n638PGdmNV83SwxwWZys=;
        b=RxSNxfTkdhKEMGKm1wiBlmyaeKNCwrVugZWsDZ8efNvBqvnpEiTOVOQY0zoKqVUspG
         pgEmNRfFfZQx20TO5Sk4w6ECbuKTUtLzWP+hwITACcHbvH8rPj6DpQ3UnYXdI+o5b7i3
         DHS5Ad/SxxExKECRJoq2hyGX+HOw3FXbJNiYGTSH+y/8Yua2nNcxVu0I/u4nVLkQiF2K
         y9pNfhZvB5avNXkVneN5RWM4ypD3aIRDIJm1nX2KHYal5GCjWTn5rCboa5HquZ3sZkRC
         ORekgKAQd6oSVSzarRQpCLs74579Pylv1tLDYrYG8aNbi9o4S2NIK4MKQnD2DN9GxYfv
         cS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483655; x=1734088455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztquiO5zqo8/ypj6kpM7FV/n638PGdmNV83SwxwWZys=;
        b=NCC3sAU+fq+/Wk3x1mFlBYhlrom+l6Yr7jjNzJxRngj97BsnrorOEB8rifW/d39KLD
         2z8BgaBykr5JcNWSnOUXBQIafOEGmQQvTF4s5dMpCCn0DUZrCPHeMaHMWowNcr3m0WS0
         X0U/gRp2WiFPi2OSBQHTAany0/J2Sbj2oKaAdsAMuvPxwybVkvn1FjVNrhECp1XH8z/J
         iwI804jTzcIgq+q/9dQEOdAO/yZ70mbF3VvROj6vzsv00y1+gxkXdnp9hhGJjyEqqiEZ
         MsINtC8TWy5e+lPAJfPbj0dUIs9DWg3+mIkHsSaZra+reQqmek20vT7G0ixfJU4lyvAq
         zEKA==
X-Forwarded-Encrypted: i=1; AJvYcCWcQ0xw1nPqmiOoj8lyM7Sis1KgNjKCrr5SBEPuGehhQO90MkH+Lu5EVPiBocYo8MlVK4/DBwV12orb@vger.kernel.org
X-Gm-Message-State: AOJu0YyDKqzJXdusVWa40KMv+LYJATXdRSS/YXsOX18DhuuGYa3Yjh+B
	iFUsYwck8z+hTV1fz49yOd2d7NKrqSj0OqXKr7flxSCxMDT0R6ezfwPl254GRUU=
X-Gm-Gg: ASbGnctGecjmXX5lvKrgivYc/rlR02Kfdoi59KNMS4LZm8yLF5CTSrCo9IA4456ZRoC
	D6TeM8jTfJSg/bc134bAhf6GiVQdtvB2mCFmbcCzJelq0GFVRCPDos5r8+jUCZpf4A/KMBBTPWI
	4RrfzEDQ4gyOhDSNL/itRW+rDRCBymmCG7QP9HbIome2R79mLjNm6K17YaUouQnoMuFsrkiAGhQ
	/MlGWh/EOsBERBv4V0dRjitgLAfaP8S+r1rLBQe0FHMwJht8kq53pfwXJtp6jsImTJnszsqoFCX
	Lgk0pvPy
X-Google-Smtp-Source: AGHT+IEvXec05NePap0xg2+L8yTjn/PbPq51j1Lf2h7n3v46RbGZ/jBjPtqf7h5Sg7tKTHnIWh1xJA==
X-Received: by 2002:a17:906:30cc:b0:aa6:2018:8741 with SMTP id a640c23a62f3a-aa639fa2ce9mr196485666b.7.1733483655271;
        Fri, 06 Dec 2024 03:14:15 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:14 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 12/15] dt-bindings: iio: adc: renesas,rzg2l-adc: Document RZ/G3S SoC
Date: Fri,  6 Dec 2024 13:13:34 +0200
Message-Id: <20241206111337.726244-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the ADC IP available on the RZ/G3S SoC. The ADC IP on the RZ/G3S
differs slightly from the one found on the RZ/G2L. The identified
differences are as follows:
- different number of channels (one being used for temperature conversion);
  consequently, various registers differ; the temperature channel
  support was not available for the RZ/G2L variant; the #io-channel-cells
  property was added to be able to request the temperature channel from
  the thermal driver
- different default sampling periods
- the RZ/G3S variant lacks the ADVIC register.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

 .../bindings/iio/adc/renesas,rzg2l-adc.yaml   | 37 +++++++++++++------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/renesas,rzg2l-adc.yaml b/Documentation/devicetree/bindings/iio/adc/renesas,rzg2l-adc.yaml
index ba86c7b7d622..40341d541726 100644
--- a/Documentation/devicetree/bindings/iio/adc/renesas,rzg2l-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/renesas,rzg2l-adc.yaml
@@ -17,12 +17,15 @@ description: |
 
 properties:
   compatible:
-    items:
-      - enum:
-          - renesas,r9a07g043-adc   # RZ/G2UL and RZ/Five
-          - renesas,r9a07g044-adc   # RZ/G2L
-          - renesas,r9a07g054-adc   # RZ/V2L
-      - const: renesas,rzg2l-adc
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a07g043-adc   # RZ/G2UL and RZ/Five
+              - renesas,r9a07g044-adc   # RZ/G2L
+              - renesas,r9a07g054-adc   # RZ/V2L
+          - const: renesas,rzg2l-adc
+      - items:
+          - const: renesas,r9a08g045-adc  # RZ/G3S
 
   reg:
     maxItems: 1
@@ -57,6 +60,9 @@ properties:
   '#size-cells':
     const: 0
 
+  "#io-channel-cells":
+    const: 1
+
 required:
   - compatible
   - reg
@@ -68,7 +74,7 @@ required:
   - reset-names
 
 patternProperties:
-  "^channel@[0-7]$":
+  "^channel@[0-8]$":
     $ref: adc.yaml
     type: object
     description: |
@@ -78,6 +84,8 @@ patternProperties:
       reg:
         description: |
           The channel number.
+        minimum: 0
+        maximum: 8
 
     required:
       - reg
@@ -92,18 +100,25 @@ allOf:
             const: renesas,r9a07g043-adc
     then:
       patternProperties:
-        "^channel@[2-7]$": false
+        "^channel@[2-8]$": false
         "^channel@[0-1]$":
           properties:
             reg:
-              minimum: 0
               maximum: 1
-    else:
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,r9a07g044-adc
+              - renesas,r9a07g054-adc
+    then:
       patternProperties:
+        "^channel@[8]$": false
         "^channel@[0-7]$":
           properties:
             reg:
-              minimum: 0
               maximum: 7
 
 additionalProperties: false
-- 
2.39.2


