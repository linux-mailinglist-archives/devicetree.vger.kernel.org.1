Return-Path: <devicetree+bounces-79672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A9A916604
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 13:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 110861C2233D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 11:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D06C614A634;
	Tue, 25 Jun 2024 11:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dCwmKPgp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1A217BCC
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 11:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719314373; cv=none; b=DMvaspCDogyhn+EzxsZyEc9OFWdUP+FcxSTvBVp/VdaHYErMZKU5k4yy9BK/ESNR1qve4xRPfZxorErEYedUO2c0wYJ6jHmPQ6YHfGZbTR8myumzfo/AKlhCip3nEjMxJtBFOVQGWGCwdvdlO+sqAnEhElmuLpd5mZwWCJnqh5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719314373; c=relaxed/simple;
	bh=CDpmOqCWIRbeJ9b9NDvzccvmHkf6wYuoSpWeEPBE9D0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k7GiHTCimw45OLJH1Dosh1vC+mn5SsDVglJVAdxPZoBKlfavb6pPVl9TOVF8aCDLxgzApeaklQwhf1jBcqGhF1mXQwT70GWtBH4C9yBguxOdjak/vlOaA2FMsLSi7oMhmvKrHOaaSoS5UTK+xsctLSKVObPGjNWuZQQV2YI6Kso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dCwmKPgp; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-36532d177a0so3515034f8f.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 04:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719314369; x=1719919169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xo/YdeJtYas2lqY2ggRIqkSo6l044/lTXCgw0Xo9+1Y=;
        b=dCwmKPgpZxTmlZvcfJuw0fXB5JFcb5eIR5648CU/nBeBoDKe8Ebpcqj5Td96eYDv0q
         u80rt1ypzIVnaLs+ma4xZB930xF+z+NKCQNMKrrXd5vOE0dBoANb8GGhYHmL1bgKzEte
         HZUrmkntXqkOCM3U4nyeTgbAl43iSpF9fvdN/06YtRjLPod5fqE4VY4BcRoLm0ysNt0W
         ExLCFBMT0CgB5nxmqBrxfsLnO+mucXhNwBsmBwryrtfAmPbnNgzxQhUB0BHgJo3CZDWt
         JOLfFG7eeGHaFzlr+8/8Ru5dpMawvMuxFiHdctuyvfJRdQmx1+Ajl0p5JoXOOEMCbBCl
         Qzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719314369; x=1719919169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xo/YdeJtYas2lqY2ggRIqkSo6l044/lTXCgw0Xo9+1Y=;
        b=qGKm+kFc3mmcG+J4PebJn0kgmsaiWz6fji/usE9Ag626ctxdpw4wS9buUuh7Y2af7z
         CkoYO/7zhsXEXoWqRssCGGAbgfFL8sP6D1zOO+8CT/ke4LNXyTbn3h2xYLmYnR8k1WFN
         OwP3F9OdtDxAnbIxCbHC2A1u43rbZUb4oNE/T1wpNkRKq+VF4NreERadOEdH0KXC8Jt8
         HpvSznBUHRMyZ6oBINPnfG9BVV3GbnPtbCq40ZmOY4hdV6eYDQ3gJUwND230ofMBw1d9
         Y9nOaGqwJqk7zzdedU30fxULR4DS22QY5zYvwnC+kfcPhFgwXbzAEIpbwDVQfytzT3vw
         3i+g==
X-Forwarded-Encrypted: i=1; AJvYcCXCMg1qT4zVxQZf1Ih/CwN7EN0EZxYWgMZ2f9nxEWZLQPr3vJYmj1ZsO2eVBuUTx5oB/iaoPMVLsSaJD1FfhDcTqFSunfk0UIqhLQ==
X-Gm-Message-State: AOJu0YxSNp9q8vcZmV9pVDGfeQkqZwm6BiPw++Y+x7Ye0qY5gEAcuTdh
	lCKDVRbKXPFzgvebbUbQbLe6PvnHqhwNuIlueUZFnj5a2qgtWbRbMjVAYK8Rwb8=
X-Google-Smtp-Source: AGHT+IHia/dXcMfF56czcOAxmNTQqh1jTWwgjJHeOv+ujGlppvG6UAN+tlaLOohOVx9yKWBwzhmzOQ==
X-Received: by 2002:a5d:610c:0:b0:35f:261a:dd8f with SMTP id ffacd0b85a97d-366e4ed2eaamr5110021f8f.20.1719314368678;
        Tue, 25 Jun 2024 04:19:28 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:1b57:b4a1:3d50:32a2])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-366383f6717sm12807366f8f.9.2024.06.25.04.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 04:19:28 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH] arm64: dts: amlogic: sm1: fix spdif compatibles
Date: Tue, 25 Jun 2024 13:18:43 +0200
Message-ID: <20240625111845.928192-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

The spdif input and output of g12 and sm1 are compatible but
sm1 should use the related compatible since it exists.

Fixes: 86f2159468d5 ("arm64: dts: meson-sm1: add spdifin and pdifout nodes")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index d13cf5b4aac7..75c8aa815eff 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -335,7 +335,7 @@ tdmin_lb: audio-controller@3c0 {
 		};
 
 		spdifin: audio-controller@400 {
-			compatible = "amlogic,g12a-spdifin",
+			compatible = "amlogic,sm1-spdifin",
 				     "amlogic,axg-spdifin";
 			reg = <0x0 0x400 0x0 0x30>;
 			#sound-dai-cells = <0>;
@@ -349,7 +349,7 @@ spdifin: audio-controller@400 {
 		};
 
 		spdifout_a: audio-controller@480 {
-			compatible = "amlogic,g12a-spdifout",
+			compatible = "amlogic,sm1-spdifout",
 				     "amlogic,axg-spdifout";
 			reg = <0x0 0x480 0x0 0x50>;
 			#sound-dai-cells = <0>;
-- 
2.43.0


