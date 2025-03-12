Return-Path: <devicetree+bounces-156845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 690D0A5DAB7
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:45:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E97183B34F5
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980FB24290D;
	Wed, 12 Mar 2025 10:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="obB0xole"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA57241116
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741776243; cv=none; b=jECU/9kdP7k6eDsllmqx/XsVOjI7f8j9yyynVsHP0bZfS5Ffz4IcXNJjnWPVmVa6A64xs97btKqMSwnCCZtQsljtMY2c60RkptLxF41MWYPiIT1QUrmcQ6vacQfjgjB3dY/XBqDrFdMaE2hL+2EDp3wMGsOSMcK1zyGc4gzhC1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741776243; c=relaxed/simple;
	bh=2Anzpiobt5eRAIZfWn0A1phCfsIccv3FOHc5jmzOe4I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P8HPvLOh0GGFKhH2AZ4CirqXzijjh/JH/hnf1a9NUvy5GnvQjgBBoYXBPANBPH558ZbNpA07vH6CK8OP3XAay03/ENnffz8yhJBiLr5WK/9DALXC/5XAALLyKs4knOR9cMFqbl88GgMZINFIbDPchM+gO4e0xdPMUzMWCR2nhPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=obB0xole; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2ff615a114bso1318675a91.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741776241; x=1742381041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mxzmWWsaWRiq45r0L/zxKeyJjU9fd3lt4WjlEGIOB28=;
        b=obB0xolej3q3Xl2hLQmRbvu5/zWhe1+4enfkPmcbmqfDV6mxpbUftoyu5CawohnZ/x
         zOnh32blbJDQY2AecgtLMmOhqDBamBNleepavgTQfod+C4d5r6bQoJz4ki1RTrKJUZeZ
         6WyHbtogzsUUxfPOwdQB2heHF9LzLFLvtW/tA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741776241; x=1742381041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mxzmWWsaWRiq45r0L/zxKeyJjU9fd3lt4WjlEGIOB28=;
        b=sJSlX8S3fO8vlXQIUELBe669gwJG0t5X/FS22sRn8sY9/G61+LLPfySvIWaIRkgoml
         fULfUCTET95LoCMBpLhXsHYiIpDXL4ZNyiczOnmBf6EP96HfT0bfBUQVByHMfy+0FPEd
         0+EdckXyQ1F8DJtA0uBWi/o5Wi2TrXxcMu2HLij+Wlp7WgHhGFxGO21Kne2hzvBeSz2X
         Ya+eMMDrC9n/xpkj5j9LAOBulgcJ8yi5jdsSU+EKqyriOwDMf8USpS3b+ZAeZX6ENQAC
         NVfzHbqoGxkOi75WcvXkloynbKgRMVoLduQYOxqK585huUBHd4gcbkFEk6olaGmsOA/U
         xZkg==
X-Forwarded-Encrypted: i=1; AJvYcCUJHo6W5ygyLfm5thkTliuFXsjyOcTHaWD1Ak/90WWWUJhm4iVIg1iVnHqLg3u4OiaWksVl55eYnaUA@vger.kernel.org
X-Gm-Message-State: AOJu0YyFc3DgfqULwl5PWKXg2ILeQKQNA5LTXT5ousfUq+/pftje3vEQ
	uC6agzyGd8A+eGF/Vqhz+JAwgw7b3KP2edwEHrxFy+kurE4+Cwx7IIAiUxbIIA==
X-Gm-Gg: ASbGncuFkIiP3XqNP9phwAQNn9l46DSsL8aIbmM8sw8TJKk1iifxnOtSBd8GdFuEsoS
	n7iWx+AX0ayfoxuqwe9ASQqcVlwICI7WPK2nxCmlaybgYxUbr2XuMDFNlfBHcok7bnDumt46qDa
	9uqFk/pUZnoZHO4JDJL081wFWsinPKHyN0RpHMN8gub+W33CZBS/oE3yX5rbAyrmkB9VT4T2tmb
	GjfCiqMe6FSUIW3x2D4xt3gSYJ0rVJzwpNprQRMQK7T7JARRNUOzsC1y7ouBHmwHXRu4Q3NzAad
	y0CyE4KTsXLT7SO+eOBO8L2is9eNn35RIGTsYcMhGhwNyi1+wzPyDnf6wJhrOqY=
X-Google-Smtp-Source: AGHT+IFVcVkyWzasFzgLcXK9na9pqX5Q0hBXH6KQUhneK1y88uS9e76oMaG5HptT/l+HGn/E0FP3lQ==
X-Received: by 2002:a17:90b:384a:b0:2ee:9661:eafb with SMTP id 98e67ed59e1d1-30100546828mr9403835a91.12.1741776241373;
        Wed, 12 Mar 2025 03:44:01 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:b5ed:b71c:fb14:a696])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3011926599csm1405675a91.35.2025.03.12.03.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:44:00 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 3/8] dt-bindings: arm: mediatek: Add MT8186 Squirtle Chromebooks
Date: Wed, 12 Mar 2025 18:43:37 +0800
Message-ID: <20250312104344.3084425-4-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
In-Reply-To: <20250312104344.3084425-1-wenst@chromium.org>
References: <20250312104344.3084425-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Squirtle Chromebooks, also known as the
Acer Chromebook Spin 311 (R724T). The device is a 2-in-1 convertible.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 49ddc504c160..f0b4ccd81c4d 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -291,6 +291,10 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Squirtle (Acer Chromebook Spin 311 (R724T)
+        items:
+          - const: google,squirtle
+          - const: mediatek,mt8186
       - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
         items:
           - const: google,starmie-sku0
-- 
2.49.0.rc0.332.g42c0ae87b1-goog


