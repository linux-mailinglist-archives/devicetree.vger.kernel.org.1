Return-Path: <devicetree+bounces-124604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B209D95A8
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF0B2285126
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7664E1CDFBE;
	Tue, 26 Nov 2024 10:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UAOJt8hK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A521B4F0C
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 10:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732617400; cv=none; b=exZzgHIzxaDB+6m+wUNlgwI6T4f2xGWp/EvkmUEwE6x2oPe8UE1ZUGhaB/sZOSy0GM27wUmLUg1PnTyO1byHm6goXjOa5DefsY9gfMtJpjj6dHyhggEtxH9e22gRb15kWlwhUmhMPLkJxdNbjsfNY7aLMcpOEtzPBWHa35YHg9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732617400; c=relaxed/simple;
	bh=BsqWy7SH6fBo4JUWOSufZPC3a0rKIB/JoNnTL7sZ67Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DcwqyG4dkNGhasGnx1/I4t61h+eAO55VgsdSdTVdHl3cvLBoHkZcgXWfGFe38sbmKUaOQcUXx2pIjkI55PUpRCggl0GVCtjipIg4GlQRgGhT9uD9+cYqbYeO4EicnJLf12B2qcONSEmg5t4mzyy/XkgPXNDb9mzBI+p0njq1+3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UAOJt8hK; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa549f2fa32so324467966b.0
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 02:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732617397; x=1733222197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iX8xzwbYhyoqhIB2hSc4QZ8h9QtVSz/pkj+4ftY5rkE=;
        b=UAOJt8hKUakmDywUi+o49mNA3FLX7zbDboj517kqHIGoQr2JSiglEYj9dvJe1cjN0b
         /fSo4uBF3zPKPhtsX0y1uF/c+JN/zoMAeo0yphoI9/s3YBeL/wl9PK7XYVPqUdErwZ+r
         +ebCiOFqD67VLbTkZoDhD4Q2uIk/e0P18cqWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732617397; x=1733222197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iX8xzwbYhyoqhIB2hSc4QZ8h9QtVSz/pkj+4ftY5rkE=;
        b=GJpDuWgvkC3Q38lIS/IBJ9Bf7pw/TIoWPqdEWIkC7lrH/cck5ndxSnAXVq1RI6zGV5
         QiLwl01AI+q3Fw7YOVkv1hvjWTEetp2cWEdeIKCB+1mtjZkwjk8qOrrIRUTCK4uNng4p
         SRdrEQMTysoJedywzAbR4bAYXbSufZMw9C/9I7na6TJrrDOCM9/c1plGOJn1okevlHO/
         s7W/pqsocS7wZ3PwUorNStbcdr5a/f3p4O3C/jLS1uKzqcSR6byuMFGZkV7sfM3n9N6G
         fvgJ2TUffR1QL2LukCBe7lNcOsebI+EitbtnW039CBGEGN0IOzOx2DN43cDKOnoLeSKb
         7DHA==
X-Forwarded-Encrypted: i=1; AJvYcCXBc5uFHhA//j8c1R9glAFiq2KQ0eOIw3p50XS0e+Zo6nvomPkvncgBWlq5Ay80l7OXfSsCW0jWGE2C@vger.kernel.org
X-Gm-Message-State: AOJu0YznmCnLb0qHr2zKufEn5/cajEF5F9hQemwHO56JwadHRmfnONBL
	yM3JCQnTA/HFM2wZQBUULLKEzqc4+VpGYc8QIU6ZFtiUeUF/x0SWp+DDntXxjGg3QAlc6ABB3o4
	=
X-Gm-Gg: ASbGnctKVJE16NLE16eoTzTxLMUPc9sqYCpGIPM5H8VivTAU7sCdz1rwXMC0kdAoTSS
	528bkUcq+Iz66cxf+jEH4yIAUZbItT5y6ZEsWdQ5GkdTqdsilRMxy6Gz9MMNNcAgLSZKIBtGrOJ
	KOX7AG0u3D8QddyRMn28CzuL3QEOo+sgNTEqjet1Vyw4ih++sCmascZBGWqsnERKAuo0GUjU13O
	inHTt4RDoM79QIoOpssiRlHuidYwA3mdILD4yF99qekrJcX5l4QicN7WXfU2RPDNtP31mO6s886
	xAEqT6Hi
X-Google-Smtp-Source: AGHT+IH7pzt4uagb2/yHSWvl5yYjrOK0GvCI0T39Co0MwSq5iX+PgtgIfkrdFxk3mxGtBSslu+TfUg==
X-Received: by 2002:a17:906:308d:b0:aa5:4b7f:e705 with SMTP id a640c23a62f3a-aa54b7fe8bfmr702146366b.1.1732617396904;
        Tue, 26 Nov 2024 02:36:36 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa54afde284sm292271266b.17.2024.11.26.02.36.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 02:36:36 -0800 (PST)
From: Wojciech Macek <wmacek@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Rafal Milecki <rafal@milecki.pl>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Wojciech Macek <wmacek@chromium.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
Date: Tue, 26 Nov 2024 10:36:31 +0000
Message-ID: <20241126103632.419469-2-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241126103632.419469-1-wmacek@chromium.org>
References: <20241126103632.419469-1-wmacek@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Starmie Chromebooks, also known as the
ASUS Chromebook Enterprise CM30 Detachable (CM3001). The device is
a tablet style chromebook.

Signed-off-by: Wojciech Macek <wmacek@chromium.org>
---
Changelog v3-v2:
 - No changes
Changelog v2-v1:
 - Fixed items/const bidings description in mediatek.yaml

 Documentation/devicetree/bindings/arm/mediatek.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..6191a5320c14 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -263,6 +263,19 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
+        items:
+          - const: google,starmie-sku0
+          - const: google,starmie-sku2
+          - const: google,starmie-sku3
+          - const: google,starmie
+          - const: mediatek,mt8186
+      - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
+        items:
+          - const: google,starmie-sku1
+          - const: google,starmie-sku4
+          - const: google,starmie
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:
-- 
2.47.0.338.g60cca15819-goog


