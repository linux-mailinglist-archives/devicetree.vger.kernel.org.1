Return-Path: <devicetree+bounces-129585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD99F9EC3C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 04:54:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 944D61679F3
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 03:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 846FD20C026;
	Wed, 11 Dec 2024 03:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="E5dqKNY5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE0F33993
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 03:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733889249; cv=none; b=lcP6YIJmOSVwOgJuG3yGBZ+IVhF8dukdpOwO2j82EBPsYHMA7TGSPddMewsbK8x+69OBh7Cxv1Y3X7enabW17bLWbfWXtLQLHybpDnq+LoqwJ0TwtwFEgqsb5p2+czolhiQ3lOU7BGrDT3WcCr74ds2f3mwTAREh8SPluGkLb1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733889249; c=relaxed/simple;
	bh=I3XtbIlImj1IOMYUD+gy6ZO5yDL5zDoJrK625xtEw6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TwrhSeqPPZPlro/bEWwgzrgOMYw2F+3T8xwYEg+n3nCMqeBdH2n5IBOhWPIUfXeXA6HcnycKkX5KmDWpFjboArpqojI1uOQvfduQ4zGaPTSm/6jUn8QpBhlMPMbSe0ucVVAL40RupdRmBPZpFvNmouGoe4pbfZHosKdvZi/etjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=E5dqKNY5; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7fcfb7db9bfso4843632a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 19:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733889247; x=1734494047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Hj85AA7d7cYe2L08PxTXiU5BhO3GZ67bD+np6NHRbRI=;
        b=E5dqKNY5EE0KuHd+RgOe7PVkh2IysOtTdbiZkR0Tml82zI7A3wShmraH/Ey0ssibNI
         RYsHinnNdCOkt2Ypliev/EmZBwbATaDZFckuJQbs5RrtmaOGWoLCNVehxzbCCaw97KWf
         yJV/CgkX1pF54VLndk0BYSTFkI3dV9dZDr8Lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733889247; x=1734494047;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hj85AA7d7cYe2L08PxTXiU5BhO3GZ67bD+np6NHRbRI=;
        b=i8iVfOiFJFBErgghZR28FXdlPaXMN7TbFtVvoJRiZFX8rAy5qspFMOUhHw8r8CMpl7
         4ELHA/phWP/5AVhBHt8MQaSt817ArmNgzqvkkZAjUej0DpVBIy1ZEI1VIi0ftw41sgsz
         9Mu2P+r5KrUQs5YO1oFDYjOusbp1eawQdH7BsQ7MOWW7I3xHKGJqVGChq62zw6Yf9KED
         d/jd6X/pctNAxRQmyvKIV0912WMJ/3QEvQWyxOzcKyvjuj9kGeuAGaxQhmgCo4jzzdBa
         vQRSJ/rVpAEkjFV86aZHss5+Pq7eFLgKMp22L09JIu/2GBtiZ4kOAkAkEPJSxJTC1vG3
         wSTA==
X-Forwarded-Encrypted: i=1; AJvYcCW2ha1Iv53TlGvhdg0UjGZJEw7cRSXnX/tzvq3UUTPhUWialptYPP6GDSMzrbPCmXZiIBr0tX/THbcI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb2/cmJJBCsmWXuB27RTn0IKRzWRkYFKW6JTmnS5zFbmuRdeFo
	+uZq1fXm6sYY2MR/94BK744yh8F5qWRmUe1Xjsmb2XRK0vI6AlqDcQSPVrv+0w==
X-Gm-Gg: ASbGncv6VeRFGxyOVlOMurNvDUJtNwIJLtj3KKvztOAd3l2leKpCul+SWGKxTHQhQh3
	cD4MoY3oWZobbPxYUlp/hly2WjeeQKlfg49WdhKa14wyVecYhAoEvjwXQlOcXjCMkrG8nKcDe8o
	t4UZzHi3jfsjBefhCqKfROpiFEJ03Q+15DlhycqL2KePOzZhQ3YjAdmSLXXJzAP7LAEAtTdH8+i
	+5FhE2kNGHaCwMVtXjKvR+qK5mUEWxJ3WT/7xRHvOVCafqSMGCOzLdSX04iPD1Q/xAGFUj1
X-Google-Smtp-Source: AGHT+IFmL9D+O3T4O8t006Hn2rBO12sN8OA0ya8GF7SZU8FDufxRpciGgm+45zKRIGHZl+ZeYHa8mA==
X-Received: by 2002:a17:902:db04:b0:215:44fe:163e with SMTP id d9443c01a7336-21778397514mr27904715ad.1.1733889247375;
        Tue, 10 Dec 2024 19:54:07 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-215f8f3189asm97532965ad.248.2024.12.10.19.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 19:54:06 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Animesh Agarwal <animeshagarwal28@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] ASoC: dt-bindings: realtek,rt5645: Fix CPVDD voltage comment
Date: Wed, 11 Dec 2024 11:54:02 +0800
Message-ID: <20241211035403.4157760-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Both the ALC5645 and ALC5650 datasheets specify a recommended voltage of
1.8V for CPVDD, not 3.5V.

Fix the comment.

Cc: Matthias Brugger <matthias.bgg@gmail.com>
Fixes: 26aa19174f0d ("ASoC: dt-bindings: rt5645: add suppliers")
Fixes: 83d43ab0a1cb ("ASoC: dt-bindings: realtek,rt5645: Convert to dtschema")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/sound/realtek,rt5645.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5645.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5645.yaml
index 13f09f1bc800..0a698798c22b 100644
--- a/Documentation/devicetree/bindings/sound/realtek,rt5645.yaml
+++ b/Documentation/devicetree/bindings/sound/realtek,rt5645.yaml
@@ -51,7 +51,7 @@ properties:
     description: Power supply for AVDD, providing 1.8V.
 
   cpvdd-supply:
-    description: Power supply for CPVDD, providing 3.5V.
+    description: Power supply for CPVDD, providing 1.8V.
 
   hp-detect-gpios:
     description: 
-- 
2.47.0.338.g60cca15819-goog


