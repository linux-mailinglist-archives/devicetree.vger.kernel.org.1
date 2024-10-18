Return-Path: <devicetree+bounces-112790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CDC9A385B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78F97285BEC
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367A118C92D;
	Fri, 18 Oct 2024 08:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZSdVSchv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2CF18C902
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729239608; cv=none; b=sd1/74wN+0cgDdnm/w3C48YzXtP2hyV6ls3kHa5d9z+iS9ZF2n/sKXWfnqJvOUHJLB/R0S1xD+RW7+ASuvvha6gkCFITVJVX5kj5p0pe5gZT1rtCf3y8xaK2cd3zjtlEn8wtWhvna1/NTNW7ksD7S/SbzTKCzEhhALiuqC5jGpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729239608; c=relaxed/simple;
	bh=nUeYxjFSTj5Ewg8DTNGbjcYFtI/FRFxM2OjqUh2NBF8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XCIwHfsOY0WZthtES/+a1K7bPfiFsrbbGHpvKwgGhE6iYgMFhhLS0aqCRwfUvNInSMIZRFeG1nNWhY1Z7GwYDWKD/khTHkT3MiOP3BnirJ+K0WHUGxHjvjLcFOVv7BB7vScW/cm3woHr/znpl++aEexTw1pw8P1GqPBQF1BlYsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZSdVSchv; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7ea80863f12so880227a12.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729239606; x=1729844406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YD/BrAcHdAIIMXA1jUzknbvHmeKtjxe69u37Q8I7CtU=;
        b=ZSdVSchvO76yqw0xXlMT3KheBo4SGJyQ4jkyDIpnV8Y0KQmNYnlzYEoV81l27fGdlW
         MnMgWw/0i/LUNAPf6cab6FPLocfdwz+di3OPRUXSST0zpswIjGNcqqu2AMhlitJjCoTr
         D0K/3wFSFq+uvAgGhLz+MwX8/UvnZx6kdZhjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729239606; x=1729844406;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YD/BrAcHdAIIMXA1jUzknbvHmeKtjxe69u37Q8I7CtU=;
        b=R3uNf2oTUjTUYwHtH8Z/0crtTssQy3JUH0w0wEZCbLKk5GznJXpVB8nml1k9bJL5Vb
         dlE+WcAQYKkSihkbgRndaBlEEESodWyXl/r1VeK07KS0CIKARc8cqIHUV14hJeC7tk4P
         /EbacR6rKOgGch/ivTS0PdDpipWIOIPehynKQglZ1mWN2810msVFB27rH2ICu2Ui2sIP
         gIQ3BEwkJoXLpUMqzQNZa0NMRLMYa7t2EmQr4mygL3IfNYX/64Oc35z/bnzSMaHWag4F
         4g9mk+EhBNs0ZZr/oxN9GE6mFPxS3xNv0aJ7SXdDkn1m9EEhMRfuTDczW8XvcQjx8ujy
         nrUg==
X-Forwarded-Encrypted: i=1; AJvYcCX5bKuv7OiXWk4zIN2FxFJ/c0kWF4ICTB3ahDy8wq1RnxFHp3nbyWyXXqypRolS9PMKZGtZeAW2UhS9@vger.kernel.org
X-Gm-Message-State: AOJu0YxQImC6TvzkWgZkkBCEn0Qc15xLCk6y+/wY++w57jPzAj5qlh24
	zp0X/k/z2cWQDsFEa7NZt8ePRwsGB7wuIbwZDCcA+V2ykrNtkrXwirNeLecOLg==
X-Google-Smtp-Source: AGHT+IFwfYN5qZ6/UTJrq9b9zMKrlE4sxFnfRkL/+LlT9NlUwm0QDBK5n84qYUmrvBAFwk3vL771Fw==
X-Received: by 2002:a05:6a20:e605:b0:1d8:ae07:c06 with SMTP id adf61e73a8af0-1d92c583d4dmr2151480637.48.1729239606136;
        Fri, 18 Oct 2024 01:20:06 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5e77:354e:2385:7baa])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ea3459348sm900418b3a.155.2024.10.18.01.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:20:05 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: mediatek: mt8173-elm-hana: Add vdd-supply to second source trackpad
Date: Fri, 18 Oct 2024 16:20:00 +0800
Message-ID: <20241018082001.1296963-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Hana device has a second source option trackpad, but it is missing
its regulator supply. It only works because the regulator is marked as
always-on.

Add the regulator supply, but leave out the post-power-on delay. Instead,
document the post-power-on delay along with the reason for not adding
it in a comment.

Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Drop the commented post-power-on-delay-ms property
- Document the delay in a comment
---
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
index 8d1cbc92bce3..ae0379fd42a9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -49,6 +49,14 @@ trackpad2: trackpad@2c {
 		interrupts-extended = <&pio 117 IRQ_TYPE_LEVEL_LOW>;
 		reg = <0x2c>;
 		hid-descr-addr = <0x0020>;
+		/*
+		 * The trackpad needs a post-power-on delay of 100ms,
+		 * but at time of writing, the power supply for it on
+		 * this board is always on. The delay is therefore not
+		 * added to avoid impacting the readiness of the
+		 * trackpad.
+		 */
+		vdd-supply = <&mt6397_vgp6_reg>;
 		wakeup-source;
 	};
 };
-- 
2.47.0.rc1.288.g06298d1525-goog


