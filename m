Return-Path: <devicetree+bounces-88788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A523493EF50
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 10:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5E341C21C45
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 08:01:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F54E13B58F;
	Mon, 29 Jul 2024 08:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rb3WXiVL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DE0139D07
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 08:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722240080; cv=none; b=peDKadjdvaUBKG1qwMB9BXrAXYmS6rc7UfXDofCJ3X140N9TY6ZCV1k6HefDbPeENDW1AiDlmVAu0YZ/BQfyCksCp2HTtgsPKifYL8urNT/PgrTHWtGEZLExOHd3SdCyeYjxl85MnIwJR4DHv3BQDrkAV8czzDa7M/SaXwo/JKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722240080; c=relaxed/simple;
	bh=20Wfk3w47c2eDHVGu9FwABnkA+VXPgQxsX/7uDKiMEU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ht1ZcH5Stau3Vx1ZUhd5i4S7hJtwK39nGb/hs1jS/AQLzDC/aRjPwcUDnbtXnv6Wx29PgykjFRz77mgw08CxaiOoFfihoknFSlXYIt4+VZYvu+vMkdhUNvyNKLxdZB8xFoKPK5PbCd3ZixvVYpiBVkjGWtZjox8k11x1Y7oBJ34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rb3WXiVL; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-368440b073bso906634f8f.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 01:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722240077; x=1722844877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lznQr0jMS1hTSLYpt3zZD9a+rnGG0mWFLbB4ZWDI+Vo=;
        b=rb3WXiVLUjitK8p1jEwKDtDpCHMKkt7AtC3R1z6rrg8oRCPzKdnRQM7GwXlgzoFyFW
         UbDcWjYvZYvsrZSdyYRZGSAJ9i8bJCfwA4adlSCXNPPwul19/MtvOXsAkdMvszh6IOtm
         FepBAvjMSuqR6c4P9wR/T1oIEDD10L2NhgRC3klcErkcvPxnJK71sFyuoo8uZxTshD3U
         nrLlPp9l4ojI3uG1u9g9IEbt8c/D/kj8sVRGm6mrTrBmhjU8M8WxK2GFS1OmHoIDFbM+
         ThtDxTTD88mu0YCUP8FJ3c2TgeM6URYWXnCCtxn3JM9W9CGI5LBWbbh6VPKRmQPoDAkz
         agOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722240077; x=1722844877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lznQr0jMS1hTSLYpt3zZD9a+rnGG0mWFLbB4ZWDI+Vo=;
        b=uP6Nt0jCNXmsyx0EsDncIyRxcKv8TvjtWp3Ss6H0FH0AptkLdMXG8h9UtdniIved4p
         3McujJxk3LcBYkzewD9PsUU5Nne000FM2kECqqYAvWEL28zocLyNY84rZkAopU0CNs6l
         nausRwn0okg/2YNaLmacA4NzXXiIQQ76zfk+vaGxwUz03gZ+xY2LJYfUqFgHR3Go3Yop
         rN63d9Pdw5OKQOaFFIGNMlmZOYHH261vNfsfSD93RL4BKaLZ4mkW71BiSOUu+oMESDKw
         fahOeGzmNO5nNqn3zvBn6/A6iXklIsM6tHJFSCCzm46znpr8XIjFWI5hHvE1J5mqsi0g
         iAoA==
X-Forwarded-Encrypted: i=1; AJvYcCVr9rGR5Wrrl/FkUhRAeYE/tsUrq+2AQCKZqLkM+OC4+3Iac+9G4HZK9dQFfiF7qVTRcRgbwl/GLfuopzGQ58+HItjS7RkFqzQrMg==
X-Gm-Message-State: AOJu0YyUVg0QDeeLTMdeYX6coplDfNw+f77YK2ePzWB3jBRDprPCmz3n
	exYLzsNow7MzqpMz9Kjhv6Q82gfqCgiF6892DuCH7+yL+94VrBiQXcIHIAlIweU=
X-Google-Smtp-Source: AGHT+IH/sKkBGs22dutys1BjvCqtKuAkAgjEZni/gmQywUyTEpKEfEuJOGjetR+NjIPAma/Q1+SuTA==
X-Received: by 2002:a05:6000:1101:b0:361:e909:60c3 with SMTP id ffacd0b85a97d-36b5d7c4bfamr3707368f8f.9.1722240076629;
        Mon, 29 Jul 2024 01:01:16 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42819d9a007sm45452635e9.1.2024.07.29.01.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 01:01:16 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v2 4/6] arm64: dts: ti: k3-am62: Add partial-io wakeup sources
Date: Mon, 29 Jul 2024 10:00:59 +0200
Message-ID: <20240729080101.3859701-5-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240729080101.3859701-1-msp@baylibre.com>
References: <20240729080101.3859701-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In Partial-IO mode there are a number of possible wakeup sources. Add
the list of phandles to these wakeup sources.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62.dtsi b/arch/arm64/boot/dts/ti/k3-am62.dtsi
index bfb55ca11323..2bae8550c900 100644
--- a/arch/arm64/boot/dts/ti/k3-am62.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62.dtsi
@@ -122,3 +122,7 @@ dss_vp1_clk: clock-divider-oldi {
 #include "k3-am62-main.dtsi"
 #include "k3-am62-mcu.dtsi"
 #include "k3-am62-wakeup.dtsi"
+
+&dmsc {
+	ti,partial-io-wakeup-sources = <&mcu_mcan0>, <&mcu_mcan1>, <&mcu_uart0>, <&wkup_uart0>;
+};
-- 
2.45.2


