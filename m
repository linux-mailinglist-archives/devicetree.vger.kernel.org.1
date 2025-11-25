Return-Path: <devicetree+bounces-242160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD0EC87635
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:46:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A16CC3AF5ED
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A332F28FA;
	Tue, 25 Nov 2025 22:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j8CjuZNY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AED82F0676
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764110755; cv=none; b=cwN7mRgnR6RuNnV7E0fAEyY+I3jXxbmq5NizzO5Fy+1Y8uVnRg6BmsXgGvKDBEPQUf1ovhc8j0nxcJcvxBAAlaxnsPmMUOknUQjF378U0O3RA5jz+UlXZfdjBewg+3wd0hW1vJ44FngicO9cEE2tr5TEFQPWF/vRfPE8N+egfgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764110755; c=relaxed/simple;
	bh=ZPRzn3gD/aFE6HQ4133fMgEMvbKe3TYcxS8Ff/8Hlh0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tOj25xC5stHAOgDWyygClbmfoWrFMCfdI+hFdSEYYSt+rcvo4PK7f3OcRr7ZEvoMX6CTLt+NPOIYG+l3h/fAHn/e44IZG0vzc7F9vLHyaIVmGCueGbSbt4bpfIjfInclQ149gqqHAck8ibAZbU6JtdDVq0o0Jjcpo9GHyLIYK+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j8CjuZNY; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso40014785e9.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 14:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764110752; x=1764715552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHK8ddgvZb3H+Bq9jL12FG8XWljfqUPDn97ztaG4RDo=;
        b=j8CjuZNYNh4Kyl/rVaYWTCYTuLHTht3GbkOveCEXJrEKR6FmCCD5Yy9KPbXZWp/nb/
         4cLvx1jrRqJki98DCjpX6vTK+rbZBYl9rdpWXwlXAfkWIBW2TWHxP0AoOzH8HWT4Pipu
         yWYZzPliCFzD6vfm3KaS+PTgPBSoTK63NPZpMh6C5CkTpmpaMN81KCuaPeTjzHLQitpN
         XpEinoZjrEasiBJSK+wVmsOv4Id6QNNhabdl3B16zkq2VVc2gG+739gz8d9QWxMk/+Qh
         1dX1kCgJToNGg17KILY5EXwCJtmquFUVLak9cv2xwkfZUjI9enFTHF7JgvQFmpR5N5hz
         0wCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764110752; x=1764715552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UHK8ddgvZb3H+Bq9jL12FG8XWljfqUPDn97ztaG4RDo=;
        b=EJO0OxoEZAvabp+wKFJiljitT6qHam/A3ncHbPsct4vHZGWYnVLjOgnAegayxSTacX
         gqecVdFUUaOUfNcHnY6XEK0nHCFAW3a/BvUHIyn1IpQxQGCHG6+YnkAVGsusneKssdWR
         xbSwT3LbcfgT57z9rHNTUyu9g1v0/GsEe3RM1sw8xeFP7pi6MiMiI9FqOlu3bXJ+rFse
         54RLsVtnM0wU9BRe4gkqfdcmI73AQd7xM4yftxOIi5vEeePfMNy5k33zsqOpOF1FF5O9
         PuB1I9oe3bCO8Izm6Ny0UdWhvjn9+f60oDJ3/jNXfno3sW9rd5O/PKM9OAJCP5JuLXFH
         yhfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwRJLgzItP2vQzUs/KEQaP/S5GafvHdNBrQJRYiJ11yykSOX2rM/v84sqYK+QZbWliYziYQfANJusn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+1LKDvXdueYGjXBfTAEXAWAs/BCHfzoosr+v0YzAW+k1hWspW
	95ap+7jqbVUMxWt50v6XXSc+aWegAjv9TYDjSmhTWOGe27/10cRKdmx7
X-Gm-Gg: ASbGncuLSrPNM4yxbHxQnBehQCGsPBgAr2yMAlR1yZLr5IOFEcG7AddHRucjA2i9HUW
	SjFydakI9qMCM2dQyqymxJNFByGKSmOPth7aRBefu0q2N6L1slxWDq+CGn91/X843b3WNuSMxI7
	fWbOd9o3xm3qTcOvYOfha8/W0bkHw/KqhCcIX5NCOwEhB1ynnLQ5rMD/pARj1AX/OoFWP+6YkfY
	iTWw2ayjFjy0p97HPKIVTVl3HoTp5iRdTaS6jLYTc385hcAqWlmJVF8tahZ9V80tptxvaLtSTjo
	6HscpSACtr3yNYaC4l9G5ZpYcGdYxnlGeCT0ftzhk4E5NHmkc7Y1ZdFP4XnTEDRt7UBmqQ6ykh6
	r0aIPKJ4V2HOm4cwJVbZNw4Cr/Ui/bzQ956dJ0udC8m8pXDTiSsFcM2i3NHz38ImGWzEg4ZHuMj
	j7JSPJkvmEI7z8+BNfNYnAor7OeeJYICCkmw==
X-Google-Smtp-Source: AGHT+IEB8fzZElo52pTo77c3JPHBGNRmlQIYKSdjwREiw53TO6TBEvCAe881/WnvYpNLCQfnkaAoSg==
X-Received: by 2002:a05:600c:1913:b0:477:a977:b8c5 with SMTP id 5b1f17b1804b1-477c01e92f0mr195860575e9.31.1764110751676;
        Tue, 25 Nov 2025 14:45:51 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:325:d7d3:d337:f08b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790adc5ea6sm11683045e9.3.2025.11.25.14.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 14:45:50 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/4] arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Add NMI wakeup button support
Date: Tue, 25 Nov 2025 22:45:33 +0000
Message-ID: <20251125224533.294235-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251125224533.294235-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251125224533.294235-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add support for the NMI connected user pushbutton on the RZ/V2N EVK.
The button is wired to the SoC NMI input and can be used to wake the
system from low-power states.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts     | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
index 62bac7416fd1..e0d8e8d10386 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include "r9a09g056.dtsi"
 
 / {
@@ -44,6 +45,18 @@ hdmi_con_out: endpoint {
 		};
 	};
 
+	keys: keys {
+		compatible = "gpio-keys";
+
+		key-wakeup {
+			interrupts-extended = <&icu 0 IRQ_TYPE_EDGE_FALLING>;
+			linux,code = <KEY_WAKEUP>;
+			label = "NMI_SW";
+			debounce-interval = <20>;
+			wakeup-source;
+		};
+	};
+
 	memory@48000000 {
 		device_type = "memory";
 		/* first 128MB is reserved for secure area. */
-- 
2.52.0


