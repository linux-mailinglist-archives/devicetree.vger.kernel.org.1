Return-Path: <devicetree+bounces-113119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3919A4B4C
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 07:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C3502844AD
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 05:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67B21D63CD;
	Sat, 19 Oct 2024 05:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="h9YJIla7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D93187848
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 05:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729315811; cv=none; b=i+ZXAFnWVQF/rPpDh0iq1glV5rOBGjvpLgEaIYHH+4imAStFUMZBBeITPOQFnMd28wkLAivbjPqiC2nTV3BStxkqpTGpMCbZhiHbDK3pKanMvdYWNTbktZqUX9noiitM9vJFzrg91mTFliASY3b1iG2cVTsz24WUUahA9eGRslQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729315811; c=relaxed/simple;
	bh=2rABYizdoNQ/oKIRusin4/uvQCSNqBZYhvbp98Qmdd8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ctBSKmUXROUdagZSH1P79TfZ9ePi/hb5YxCzGyU1wLanP02xYXVyU9uwJuN2DMflLui+hVbaOz++JJsTf3Cl3gkT56ktMyFLRqrwhl5l+jT8lllxiiX9pYxM8s28jCaCfzAWNgS3hIxbpNk/D/9sZD2iz38lF6GjAQ9Yoq5gwxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=h9YJIla7; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7ea8de14848so2073273a12.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 22:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729315809; x=1729920609; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cJNuS83mrwWL8W8iH3SFWUNmmnjimhgt4bHtgaT67XI=;
        b=h9YJIla7KViGmD1a4TTR1+wdAMewo/FRAlQze81FHNheXcqccKBqWoWvOCmSWsx3Nc
         OOX0SSDljo1VpEzTRLI+mugkLaK+7ztvm4Lj+WcSyF5OPskOVyNtD1Dtx8FEF6BvLvxk
         A5z0AgrdYFwQrFi53yDLAROOjrS+3TjCRc6kg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729315809; x=1729920609;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cJNuS83mrwWL8W8iH3SFWUNmmnjimhgt4bHtgaT67XI=;
        b=VFD7EagmnLyVNNd5ukIXWTEgamnThktjs0BluwLQeHsTjoRRNgt4XdWwe7xR8IZNjv
         9SehpzpBiy7GGJ+gUpRtg+M4tZ9vvaISjbvc3tR/K57Yv1ZiGL0r9lAqvgG4yhi1mQWE
         nEczXDpurVRVl73hRaNb4k25CfxKsRewR4G/C0/7HAowTYqC6gGqoTOpTTLx55zfGGSx
         3rWTNezGNu9KD9qrOQqTt2olI4PG2EtnYOOMgOvtZB+gbWskvVPqLCDXiUS5kxmhDB01
         YmrKa57hSyidXnQdyfLoLliWAgzxqu5NjUJFD5T0r6Etg7It/4LVDGaNYdZ0Db+DNJud
         8UiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfly6fkDBcDRuOjexYzW0n7EDOVrDpwv5/bcbVh+eFRmYqpZp0WVAgeueqSZZ7PG9VOQ+7J11uiWbe@vger.kernel.org
X-Gm-Message-State: AOJu0YxCdrVoei9rDxbHFwxqjSnW0FvA6RTyObHTRxlj9oaWANVs9UdC
	TV8odiWJVf4jl6OF51IbmvYJ3LJpiFRWs0z/1VSXsR1sNIN9PTYnamRahnEu2A==
X-Google-Smtp-Source: AGHT+IH7n9UXYo5nlALMpZiRBbTQ8pp4m9cx7aacSoU54soAc/R6mjW8EzAU5xHiakUlodnb2D1f8Q==
X-Received: by 2002:a05:6a21:458a:b0:1d7:118a:327b with SMTP id adf61e73a8af0-1d92c4a1d2emr6720501637.9.1729315808788;
        Fri, 18 Oct 2024 22:30:08 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:baba:fa50:ff3b:337])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ea333bea3sm2370438b3a.57.2024.10.18.22.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 22:30:08 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Fei Shao <fshao@chromium.org>,
	CK Hu <ck.hu@mediatek.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] dt-bindings: display: mediatek: dpi: Update device list with power-domains
Date: Sat, 19 Oct 2024 13:26:56 +0800
Message-ID: <20241019052935.553886-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are two kinds of MediaTek DPI devices in the tree: the ones with a
power domain and those without (or missing). The former are the majority
and are more common in newer DTs. Only three older DTs fall into the
latter category: MT2701, MT7623 and MT8192.

However, the current binding only allows particular DPI devices to have
power domains, which results in spurious binding check errors against
existing and new DTs.

Instead of diligently maintaining the allowed list, let's do it the
other way around - create an exception list for devices that are fine
not specifying a power domain. This list is expected to be fixed, and it
encourages new MTK DPI devices to describe their power domain whenever
possible; if not, those should be listed with proper rationale.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 .../bindings/display/mediatek/mediatek,dpi.yaml   | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 3a82aec9021c..c464642bbfb6 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -81,14 +81,13 @@ required:
 
 allOf:
   - if:
-      not:
-        properties:
-          compatible:
-            contains:
-              enum:
-                - mediatek,mt6795-dpi
-                - mediatek,mt8173-dpi
-                - mediatek,mt8186-dpi
+      properties:
+        compatible:
+          contains:
+            enum:
+              - mediatek,mt2701-dpi
+              - mediatek,mt7623-dpi
+              - mediatek,mt8192-dpi
     then:
       properties:
         power-domains: false
-- 
2.47.0.rc1.288.g06298d1525-goog


