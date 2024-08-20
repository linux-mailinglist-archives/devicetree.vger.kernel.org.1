Return-Path: <devicetree+bounces-95091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2EA958087
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:07:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3AB72854B5
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F17189F39;
	Tue, 20 Aug 2024 08:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UQpb6kz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913021C6A1
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724141236; cv=none; b=PrvvKNXJPlFHhY8UIPD34bAxKP5GZKGFOk2WkCpk1E9RNMUR/AJsQr6OMe+E5LUiAzfMxMBjD/sLdFv2uhWQmXR+21pcnnPLExFH86AI62eA7b3wz0hi/Sg8W/VcbpVgkCV0OQcG14GqxR5Jq8P6Dq4KuADJl3CTO0uzxaCd4LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724141236; c=relaxed/simple;
	bh=HU2Z0RdQeN0837JM1G3eVaCWsVPXe1UtVEJhTaUaX58=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WSO6Z3Vi0LW3ZjoCH4t8s3cqaJqrmVM+GOPJrzCJc74yZEdf0UUgB5PWjFya4aMarBzRDsWUucdVycots5SYPMpydePPvJG5WAEHT2Eq0XPv9gT3OlPpGtqHpkcBkBuPCsWRXO2rGnHkdTLIbdiwVcThCAOTeOO/OCszZ/XrXFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UQpb6kz1; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-713dc00cf67so2579846b3a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 01:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724141235; x=1724746035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KkKGSAKuHmkOcXhq4rTBRZZbsedAQGMKKV0Dw3RFXH8=;
        b=UQpb6kz1xjkM3R8ypK2gRd2plOAAr0NOZUP0gd6yb8NiMK3h5l+1aRuf3vw0eyDSYA
         eX5Wzfn8wpfYwJfc81MyNIWq33wEyD3/DlwnAZxFOJ8G++yQgES/w//ibkgYheiF0610
         sfZpGdXgRSbnHn8qW4WUnEEkAuhTHTxBOIgCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724141235; x=1724746035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KkKGSAKuHmkOcXhq4rTBRZZbsedAQGMKKV0Dw3RFXH8=;
        b=q6HR3wk2NqDp/TcvXcsIZV0edgCDID9MdJJexD8dt6mGLz2kn6s1qK+mrey9ytAjSP
         WUunxfhdgRZ0C74IF2WucKw+RhQSBc9iOo512rxLFjBkoX6dT7+VIFtlFCsFUn50ZxMv
         UGb6uAoJdcQCkhMDMtbnxgg2IuGMihqGvJjsk1V3aL/LLEFQFKaOBcp6NO3EhKBRcr3L
         IlSKsAV1Az4edNtBOhOtzHQKd0vu3a+PIQp5bLPPu0TMPRUjYfh33Li/Si7vA4tQ6xGR
         9A6zPvEN4MDETEbecngep7A+5T9RqPGcEl5U1mNmbfvQRd8zUrT9uub9W1xX/kb0FVwN
         Xnog==
X-Forwarded-Encrypted: i=1; AJvYcCWkvL4B/b0C6yWJG6O0kjCMzcFKymcyuMaqU7g/P3sx7JSqclmgAl7Bifsj9AVH2khmNE78zSvySTg1@vger.kernel.org
X-Gm-Message-State: AOJu0YzzACq6w205dTlRWYlemwBokisZkhYCAkJXOiYIdl3YFYkgvPfZ
	JzLOY3wWB2PGvsfxUWfK4IV+caTQLHaAhocJvU9LqeyyFhkvGR8e2lv6HOXs5A==
X-Google-Smtp-Source: AGHT+IHwKaoQ6zqgeUDaUr0M0mia8HrEnOi0MHVVZtaxLErdruMh0fQ5zoE5wSNwv2WofQFKlv2X/w==
X-Received: by 2002:a05:6a00:2e1c:b0:710:5a64:30d5 with SMTP id d2e1a72fcca58-713c4da0349mr17959374b3a.6.1724141234688;
        Tue, 20 Aug 2024 01:07:14 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-7c6b61c7202sm8829978a12.31.2024.08.20.01.07.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 01:07:14 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH 1/3] dt-bindings: display: mediatek: dpi: Add power domains
Date: Tue, 20 Aug 2024 08:06:57 +0000
Message-ID: <20240820080659.2136906-2-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
In-Reply-To: <20240820080659.2136906-1-rohiagar@chromium.org>
References: <20240820080659.2136906-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain binding to the mediatek DPI controller.

Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 5ca7679d5427..10b8572dd922 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -62,6 +62,9 @@ properties:
       - const: default
       - const: sleep
 
+  power-domains:
+    maxItems: 1
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description:
-- 
2.46.0.295.g3b9ea8a38a-goog


