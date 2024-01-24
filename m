Return-Path: <devicetree+bounces-34579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D291483A38C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 733ED1F2B450
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DE0F168DF;
	Wed, 24 Jan 2024 07:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oG4VYGwG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52F217721
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706082724; cv=none; b=SdF9cuEYNDptQZX6eahJv+wS+/s6RUH2goX+CxoX63sXOPfEwiAXR2/4y0QH5tKSPiV4sZrQASSM14gNJHBIRKea2ju78+CZ0Dy3qhtJXgrVPudumGU+gC+ADBt8/3VAQohdSw5bh0H4OG/h3W+I3Mnm9O4J5kWBT5x4w0mHsMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706082724; c=relaxed/simple;
	bh=x5Asvmkq7qcjnNf7UFAguGURx9f6MZ/P9bw7U/kJkgs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=E8q6wn8RdrNVcyMVYUBUrYqLn0V8pHU2ThMu31+56CnHIFAKQMlWf6UHaknCSfjL6fC/tJRi4WveUYsvTgoYNMdZqAWNfP73Gv5Q+ZHZLBzlSJZCmzkIiNhne1gj0PVWq7WPnIU62U6okXtdescjq6rCMdjoOQALx8cGQFsJSkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=oG4VYGwG; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2142c746270so2355195fac.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706082722; x=1706687522; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1PwaNNHoovr1XsO2ShyI+BpkXh2zlE7frt/xlHXVHJM=;
        b=oG4VYGwGI39QDpVW4tJcp/Cf8fwFqPkTECJGGTu/Fpnw/eE1OE1clGuNHqdWSx2uVK
         QLxD4kor0CJJSe+/51ghs1DQryMsaUgpTzYT51tY7+aV6B3tjkRij8I4Wxlvdy3H8Ijw
         KYFpDxbaiAzJ3hzaO37L1jWn9rHd4iyoE5yJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706082722; x=1706687522;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1PwaNNHoovr1XsO2ShyI+BpkXh2zlE7frt/xlHXVHJM=;
        b=csZpNZOO4hpjTLtTZtitLzBpYYmKL8YYc99QJDwxBdBI9lIvpObTPK8cn6PEOYEVSh
         lsh9S6VThm+UjoQU4vRfb8TYCBlvCZdLuqPRUYXj+rszW2Up8oD/UYkjdJ3unAgUna+h
         TZCT6OZ7OtI2Jiz0zjJ6ToY6jGh7yEqbUCeNI0KSK++YOd7NVzjEl9NUip+i6uWF+jsV
         Lc6i/xJsZ3cyaZcxot6p2jQpJSD1G/hd/7hrFaGZmVCh8gAsXWTM/qjFb58w2R6y2quj
         XNTYsKWqz2/6wAI2bXtwpgJHaDzSDfSlvpEpZ2PHuIqGN52hosO+lNUVJKWybXCra+Ej
         Wriw==
X-Gm-Message-State: AOJu0Yw6cVLlfR7134/vYrJq+YGQhjG59yB03uwt0XqVKtYaaKyL4p49
	IWZCDXZOUSzfbNjlFcEx7LfFb8XN5/RL/Muxz3SJAJ1ocxGLWlv6nxAqoU1iOw==
X-Google-Smtp-Source: AGHT+IG51W3Vw6LcYiGmpG5C4lnBiPbggs+k9JuCPpd6ZqebtU/7ymkKXYOcNSQBcqXN1xFPTlfzEA==
X-Received: by 2002:a05:6870:e40d:b0:214:807e:8a05 with SMTP id n13-20020a056870e40d00b00214807e8a05mr2978568oag.2.1706082721789;
        Tue, 23 Jan 2024 23:52:01 -0800 (PST)
Received: from yuanhsinte1.c.googlers.com (2.210.143.34.bc.googleusercontent.com. [34.143.210.2])
        by smtp.gmail.com with ESMTPSA id r21-20020a635155000000b005c1ce3c960bsm10941238pgl.50.2024.01.23.23.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:52:01 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 24 Jan 2024 07:51:57 +0000
Subject: [PATCH v3] arm64: dts: mt8195-cherry-tomato: change watchdog reset
 boot flow
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240124-send-upstream-v3-1-5097c9862a73@chromium.org>
X-B4-Tracking: v=1; b=H4sIAJzBsGUC/x2NQQrCQAwAv1JyNtDtomz9inhIt9EGaixJK0Lp3
 w0eZ2CYHZxN2OHa7GD8EZe3BuRTA3UifTLKGAxd2+W2pILOOuK2+GpML+Q+8SWdqfS5QjQDOeN
 gpHWKSrd5DrkYP+T7n9zux/EDW1ZYVnQAAAA=
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@google.com>, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.12.3

From: Hsin-Te Yuan <yuanhsinte@google.com>

The external output reset signal was originally disabled and sent from
firmware. However, an unfixed bug in the firmware on tomato prevents
the signal from being sent, causing the device to fail to boot. To fix
this, enable external output reset signal to allow the device to reboot
normally.

Fixes: 5eb2e303ec6b ("arm64: dts: mediatek: Introduce MT8195 Cherry platform's Tomato")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v3:
- Add Fixes tag

Changes in v2:
- Limit the effect only on tomato.
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
index 2d5e8f371b6de..a82d716f10d44 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
@@ -23,3 +23,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
index 2586c32ce6e6f..2fe20e0dad836 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
@@ -43,3 +43,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
index f54f9477b99da..dd294ca98194c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
@@ -44,3 +44,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};

---
base-commit: 64b50fcb03649ca7f0d762a50e7a3484cfc1d586
change-id: 20230818-send-upstream-e91e615a893c

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


