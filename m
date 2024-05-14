Return-Path: <devicetree+bounces-66785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 672848C4B05
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 03:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D6851C21613
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 01:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1BE17FF;
	Tue, 14 May 2024 01:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BZsU32t7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36943469D
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 01:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715651613; cv=none; b=lxHX3YnyMCWG2kRMHQjpTsdeav1gy71dALouNBGzpYrD9uMcj3jSMpCUJ9kU3aMXsy+8jCTzg0AwBOc+QLu9n0qy66kA90TlmFVIkpMLdMjuLUP8ZSnchULqy2P4paRwBbGR7qDuLL9v4yKkyt27NaDgcrqUmIoPagITcWF1Avc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715651613; c=relaxed/simple;
	bh=u6DXltZoj/dPZLWsCn181L14iyBKdn7DrDGRDfjkIL0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qCYXCLephIrvGv76cWvvD1NHcwDUt0/KVW6Spg+BonG0lMzD5Uv2pXIiXT9vt3zmlbZqWpWgGzLlRihby6UiAt8JL7LDjo/c0RQxPfQJMqQnlV8Od/dTjX+nE/2ZVuqWHHDgMZwFYQva7bS5EhcCCYP87RIuEyilmYWTUDfZMYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BZsU32t7; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2e09138a2b1so70633761fa.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 18:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715651610; x=1716256410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MVvR14e2YIcHVGx8P2/Nr637H1Ups9lyNIyNluTcAKk=;
        b=BZsU32t7A4/RBzbFNhF2YAlpEVyO6uPXsX0u+eoX3LNo9E1p2BuWThuuZVbgnzT34F
         m0EEgq1P9WrHmRvO0whTUl6iCpEbN1M42KgFpin/0m03J+tbkEp6GUeyMzR1Y7IOra55
         ERSrdab0NWSqC7YY7/rMyQOKV61VPHaGhGU6RR8iU8t6cHTDnFPP8c32Gdo429h2wUfK
         YI6tDHs490vXQzbFAJyjqQwZAaqc97uUvUxKsXtWm6WE3S8JvAGMJl3FYUlQib6y0Lb/
         c0JuFqXNqGCIq1h8kamvFXGTWGxHpCX3EJFk58WkyyWMe+UfObNagZJR5CGdAgli1/K4
         XsSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715651610; x=1716256410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MVvR14e2YIcHVGx8P2/Nr637H1Ups9lyNIyNluTcAKk=;
        b=iKeSWLqf2CNX9kOseXW/v3Pgh4QBVNP1HWfPiX6AXUi9HJ06F6lLCZpaKqO3S5UBHG
         Ez+KswMbR76thw0HRn/+YdwCpQG9bTYacKLCVl43/0i9vlOgzpkVgmZ/c9g/EqHgo1cG
         MuAnEv8Ul31iZm10x/k57mctfGxN6YQVHtOE+oiHKF2ycMsyxc1Lf1R11Yn2wkrLHT5Y
         AGy1mm/Y+NW/gizo7/y3WLraRo111PQOtJKc0zfdVJ9iSSLZCygPjaPsXWEuYNJ8X1NY
         oIrChko3LJJ9iUMaRjMgA8Y1AXsT295vw7w5FmbvJo8soSYO1dtInQr1/rNJ7m+LweMx
         rLLg==
X-Forwarded-Encrypted: i=1; AJvYcCVFY3Cda8bDRqKEU7LPLMu0GKgGbU2uQ5iiNA5NX2CO8CiPLqhF5CLAM33eeUDkmTrPgvb4JQ6VY/Z7wfBpLealCU6GO4AT6d3IIw==
X-Gm-Message-State: AOJu0YxXm3ODTS0VhSz/Py8glUnVhO3gJDg6QJoxYiWI83JpfIiqUO+d
	D62Y18pnhJuCUmi9450ATbanCVLslsk93wHiCR4rRpEkd6rgJxZB
X-Google-Smtp-Source: AGHT+IG628Tr0HzAe2H27xxGQHH3lCtm+/5k8g0eCpFMPeojAvpUj8I4i4Gyp8aq7ZsTv1ryhPRvag==
X-Received: by 2002:ac2:5bc6:0:b0:51b:9254:91e2 with SMTP id 2adb3069b0e04-522100749bbmr6048672e87.55.1715651610138;
        Mon, 13 May 2024 18:53:30 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7ddfsm663377066b.121.2024.05.13.18.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 May 2024 18:53:29 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 2/2] arm64: dts: mediatek: mt7981: add efuse block
Date: Tue, 14 May 2024 03:51:54 +0200
Message-Id: <20240514015154.11206-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240514015154.11206-1-zajec5@gmail.com>
References: <20240514015154.11206-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

MT7981 (Filogic 820) uses efuse for storing calibration data.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Use new compatible instead of MT7986's one

 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 2d7f91196e64..31d323e84967 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -133,6 +133,13 @@ pio: pinctrl@11d00000 {
 			#interrupt-cells = <2>;
 		};
 
+		efuse@11f20000 {
+			compatible = "mediatek,mt7981-efuse", "mediatek,efuse";
+			reg = <0 0x11f20000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		clock-controller@15000000 {
 			compatible = "mediatek,mt7981-ethsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
-- 
2.35.3


