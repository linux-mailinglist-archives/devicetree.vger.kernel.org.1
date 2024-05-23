Return-Path: <devicetree+bounces-68599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 289B38CCDB2
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 10:03:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91EE7B221B9
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 08:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 585DE13D276;
	Thu, 23 May 2024 08:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MflyJX5G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB2813CA87
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 08:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451359; cv=none; b=qDLT9GUtJnpB2NF3uEmKvxxY5psSVR5jx05EoQXjR7VMH2TftKd3h44TQQ+dd3yiKMGFJozS31NNMjc/QGPlX06JET4v6FFPaEK3UHZaBV/4ms6GYcyZxag3WFpQLsGAzmrnqP7uVao9neaxPej0gjgqpKnapU1m5+32J3N4yeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451359; c=relaxed/simple;
	bh=C8sDWgMYMARKdYlzfVvMcP8JVf4fovQSAHLrQ/W78ME=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YQNI/OqXgMODSVCYf55QeWcBeQTvcvN0X+8qUuRTnqRYq9BpNQ0Q43UaHPPFZEz8bwKzKwD5eL7zVKQzGaY6qfLCL+nUdCZ9uaysQ+3HmhwiRJqTDApeL/8ZFnDPQZt/09eb9lYI/a2URAsbUzdJbdnaiuQc+vkMHjUhcHXQSJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MflyJX5G; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42011507a4eso14799495e9.0
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 01:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716451356; x=1717056156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0UTV4+P4H7+uVsIxGGCjRLk6NaFdUSwIupMLwjHFRwo=;
        b=MflyJX5GmdNEZOVx8gxV+s2BqWbL0AEKxWngPJRYW5bxm8c4Sgi4btVpm/mwGy8+Jm
         oYIu+227wy7VWszkgklDLB1+ISveGUq/k5y++2PrR5hN8wY3kVm+lO+GNl1fW0ABodiZ
         pHhJ/wFFNSCl49DcZNcKnQD5uG9fy2aYDa/ejXsh9cj67dTAX/mK8aAirb9S9cwdYPCN
         oH/5FNgJGlqTiMIrpVFhGAkclwN7UCYxrgEZMgFlSGg0AVRm11M5/AWUsjOTUhr33Au9
         3f/ziaRoY3CXvjB/rj/9gihFYMQ7LHVIdbirJJ8UfBSIb83JcRTVUqEa3vWRL7O5Xqgd
         Wy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451356; x=1717056156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0UTV4+P4H7+uVsIxGGCjRLk6NaFdUSwIupMLwjHFRwo=;
        b=qtCXhXNadczXTZzbT9tG5XwCk77Fh14KaPQdw880aH2/uqpiYhfIkubXJMEH0u4EVb
         pY8ntiV2TZfQyFNXy38kDbaFZDetbVW2etTt2d4tpZLQhZWc0VIv/vajdXbkBNWWWn49
         gw4M1or7izcW7EJs+LhIUFqFpD79DmpFz1wKwtg62xLynpfmPexulaJQ0rLDnMpL9x+t
         F+FKwim0fwiONjmuyH/Fj5bodu7rk1yBurobCMB+YMKZm59iRFivyRphP8q7slbHqB/9
         Neutz460BqhL/gnxscZs0OAQQGTF9rwFz7JiNolmzh2JhEcj5DkjR85QQo3xpalB6cU6
         eqEg==
X-Forwarded-Encrypted: i=1; AJvYcCW+VcF6PrzaF6q5IL0INytuUi1MU22Ate7m15cVa3lJdU7iUYCxP697OxPwwXmzbpjMpNmPiEEwMThLFtF8FjHhpU4Tjobyr5xGAw==
X-Gm-Message-State: AOJu0Yw+U/beWvX90kT93DlO5SZd82kCxSpRGCsrIDPKeCVLVInBe5xx
	jDEKf+/G5AeN4TPVhMOy3CA4jooVjlL4RGmG3eI+sQelJ5MH3Yo9Sc2SlP1cVos=
X-Google-Smtp-Source: AGHT+IF49vNHWfiYKOhW4GUh5UvdNVwkXdUWhLerjr6nku5L1GZw3HL0bskA3h4PrdU7ztVf/bakcw==
X-Received: by 2002:a7b:cc14:0:b0:41b:c024:8e88 with SMTP id 5b1f17b1804b1-420fd344e28mr30256415e9.33.1716451355819;
        Thu, 23 May 2024 01:02:35 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35501abfdddsm93637f8f.110.2024.05.23.01.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 01:02:34 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 4/6] arm64: dts: ti: k3-am62: Add partial-io wakeup sources
Date: Thu, 23 May 2024 10:02:23 +0200
Message-ID: <20240523080225.1288617-5-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240523080225.1288617-1-msp@baylibre.com>
References: <20240523080225.1288617-1-msp@baylibre.com>
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
index f0781f2bea29..9ffa6652492e 100644
--- a/arch/arm64/boot/dts/ti/k3-am62.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62.dtsi
@@ -120,3 +120,7 @@ dss_vp1_clk: clock-divider-oldi {
 #include "k3-am62-main.dtsi"
 #include "k3-am62-mcu.dtsi"
 #include "k3-am62-wakeup.dtsi"
+
+&dmsc {
+	ti,partial-io-wakeup-sources = <&mcu_mcan0>, <&mcu_mcan1>, <&mcu_uart0>, <&wkup_uart0>;
+};
-- 
2.43.0


