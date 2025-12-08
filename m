Return-Path: <devicetree+bounces-245118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 558DDCAC5D9
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 08:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD39E304B01E
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 07:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851CD2BDC04;
	Mon,  8 Dec 2025 07:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XS8dBtCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DBF259CBF
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765179205; cv=none; b=FtANwEe3u+vWMMZheL/Td95kRNyjPn1lkGlgwiW+NdEoTJFUkiIPHS8h2u5dmAR1anIx+vLvfdYgzLWlXE63ShKseaf6d9gMj5ZaKxFFaliDm6RYfvBLYc/wadpYkI76RH3hJVj6w1JOCwldehrFiuF4w0Lw/CmiujOdPCXVusU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765179205; c=relaxed/simple;
	bh=zaBVlGUKrSTynVz6thrUWTQuG6E2PWBzYqGUjsmTIZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PMNRuE5kpGzOtOE70q3NbMvr3qLBIi7dWzIcH4XLpow3rkG/qEqn//IsADOX6tCjRE1lXQunmicgzpTd7Vf5rm08AM8QpI/Ya/yHSwM/DBwPJq15ic5QvVXT0Qw52NhOnnyGgdKV//woqU4ozg+JWpXwbAfoQtYkr0N8UatTV3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XS8dBtCj; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7b9387df58cso6362016b3a.3
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 23:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765179203; x=1765784003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=86b9GUNfdvttDCRCuxugZUht31CVbPRSKA3vMkwcp9w=;
        b=XS8dBtCjz+UizleYj8kVcOWc4A4ztmgUOz3U1jpJsV8/cFDBfdoz3D8EHMlvomWw/P
         bUwvGTfUxKR4W2AOP9JpBeVU1UXIodN397jwKfJBrInT5OUfa6uHpeANkbMUHEx1wu03
         K+1GJuBcLbOZK9ihd6gohf8STwPJE2LSVxgM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765179203; x=1765784003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=86b9GUNfdvttDCRCuxugZUht31CVbPRSKA3vMkwcp9w=;
        b=oFl+3Ix5v340eIBC2BqMFnscldjSPEh+Q+UZHS1VyquOiwdJ4Xankr61YlYExGZCDP
         fi6kfefMp1EkrP5te2wqWIhI1K5ZFvBb+TpDev3G0j21BdpPzWhMIPpAoxTpIYedisMJ
         jqDvR7TrGINAFGXmJz45pPReUArU68/dHH/blvGzPmJrMBHxt6laPVA5jrHRZkRS2IFs
         qDMWzeBFizo7yHDGAJHiCXX7o5D1bNYpvFTiE2svN2CbZrTfwGWhlEtQ6oZM6jsUFwxI
         YQKO2fi11rDQpck+szMNiXy5oG/8jUQhickyYp/4tuHb77jOdAWvZm0amdCLo4j5tLwD
         Uwmg==
X-Forwarded-Encrypted: i=1; AJvYcCWMuzMZ/XhZEdpz59Y68e13wMs+vfF2EwcynYrBoPXAgjxsPOLrKCRoeAc7vWDQ64tZFQTZ3PY3bDWE@vger.kernel.org
X-Gm-Message-State: AOJu0YzFgPMZKx5s9WnFM3PjEeszDGfjTq+UO+Uximo+BAZSU2LhTHDs
	ocoW6l8Uwyk60+xz1x2NNpi+RujRL++f7BfxBXwIIymObTzsMIO0yTAv9ZlM5HSqlCsgkFlmQeV
	iaIA9sw==
X-Gm-Gg: ASbGncs2zI9WAxMEFP+S7YzIF0YeFrvBbeUWzsky5wkid4uZyPSJYG8VAmXSMduD5z8
	ikYKaPZL8tZXLSapmUEIscO29FlCDIC6lHOLay0TuScDnVZsUb5mnXdVABdPCRJelVZYVCjLlW8
	9E2avotHQCx3yejbAqXEJNYjfUfO25sbHNpxT+nYM5GqhVOjRAUB2qvkxZpFSjCNC5a8/wFw3+V
	Ffycob5C2uB8C6GqJhZVJ5q58RJbdnayYLaSkslsWJIREP6MsQH4ylke6ll60vfwB4IvtM1zZsH
	c5f6qZIYiieoEHXytkaZP95npVYyMJDYmKVPWIO8khp2K9mHyGsg50BNzt1v/6x9x4Zy4T2XH6A
	dk1vfjPUCBJA8s+mIMEZny+373wWH1sN0V+o/jinCtnpOxW3T2/pg5H29s34JVv94lrx62K8S9F
	++BRR6dKzTkKbufDRxZ3mPHNb3kYCbojj0hDEwhPSIxH7wnp4FgCKFzJXtbjT1Kj1xeBAb
X-Google-Smtp-Source: AGHT+IG+bsvH7N1bapcW1PPpLCcGsoW9Tvo9GMseHgeyoI6qRL9+qatTD69qLryiAHY5E8s1TajC4g==
X-Received: by 2002:a05:6a00:852:b0:7e8:450c:61aa with SMTP id d2e1a72fcca58-7e8c960087cmr4519854b3a.65.1765179203211;
        Sun, 07 Dec 2025 23:33:23 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:d31e:c84f:5cc1:d554])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e29ff6b56esm12127686b3a.20.2025.12.07.23.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 23:33:22 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/3] dt-bindings: arm: mediatek: Add generic Ciri "base" board
Date: Mon,  8 Dec 2025 15:33:02 +0800
Message-ID: <20251208073306.75279-2-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
In-Reply-To: <20251208073306.75279-1-wenst@chromium.org>
References: <20251208073306.75279-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To reorganize all the Ciri SKUs into device tree overlays, there needs
to be a base device tree with its own compatible string.

Add a new entry for the generic Ciri "base" with just the fallback
generic "google,ciri" compatible string.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 718d732174b9..9cff861c6e38 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -372,6 +372,10 @@ properties:
           - enum:
               - mediatek,mt8186-evb
           - const: mediatek,mt8186
+      - description: Google Ciri (Lenovo Chromebook Duet (11", 9))
+        items:
+          - const: google,ciri
+          - const: mediatek,mt8188
       - description: Google Ciri (Lenovo Chromebook Duet (11", 9))
         items:
           - enum:
-- 
2.52.0.223.gf5cc29aaa4-goog


