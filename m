Return-Path: <devicetree+bounces-104455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D3997E750
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 10:14:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC7A0B208F7
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 08:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D48436A8D2;
	Mon, 23 Sep 2024 08:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=compal-corp-partner-google-com.20230601.gappssmtp.com header.i=@compal-corp-partner-google-com.20230601.gappssmtp.com header.b="I712QI/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502322C9D
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 08:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727079237; cv=none; b=s1H2062Y5ZqW2Kb84dDefHLG9MmQWJRQ57gvexsjrSjm67ovHovG4dnbZhKPuQdbimLeWV/vIy8mbmtKecI+WklOiJQYtg/jUA01mnV7nDfV/dFE5y9esKtmOozIBgaGdrKX75Rqo9LsOdPEkv+zndIEBQkwV7ORYnbuz+7bCRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727079237; c=relaxed/simple;
	bh=zl+VItl9QxENvndSaLeMfmluf1i154fUFaBkvmqNL9A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ckXxMyG4KCUxNwS7uYfpRQ4urNWEhRzMCEvnXVSFCs6Pc3kGhn5JnYhjHiMcn/Ra6ljGxA0TZSV/sZ77zUkvmxbpJuAccaJLGxUqWHq3aXBD3dRoa5TcO0te5MI0cgudWF55jZ2SpuA52YG3xc0qmM0H6wEQR+bisqG6DnnVnAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=compal.corp-partner.google.com; spf=pass smtp.mailfrom=compal.corp-partner.google.com; dkim=pass (2048-bit key) header.d=compal-corp-partner-google-com.20230601.gappssmtp.com header.i=@compal-corp-partner-google-com.20230601.gappssmtp.com header.b=I712QI/p; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=compal.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=compal.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2059112f0a7so35238385ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 01:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1727079235; x=1727684035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pQy8Dxfmu7fap2VOihFGL73YkwS/WJ5DNXUiPdnsd/I=;
        b=I712QI/pZzQVoMtMQonAXO4spOU5GXyC8ZCfd+c/TpzBYhYqWnadk/7CpaPdwKOtJq
         pGvugjO0FyAlM1y2F5saJ/15f8mB2SAUitRer1HUZTDtDTRrdRiSQkm815LXriAYPmtD
         tExUVgc4BFAqXOPudrwWvLNbRWlPXyotJCqN6TnSM7ewnII/h2zGBzETneA9o2+9IThw
         tB/4XdXRxz3Q01TMjDhW+RvKsepSoB2fzjV4H3pSY7iIid6i7Ke9FGo/nuy+XkEFKtNH
         aOL2TTW0JiDK+ymDXPPJbn+n0YbwtgihWbl1W82I3VzKaOK2FAXs+gIQ/EjMcWjsf9ur
         Ou0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727079235; x=1727684035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pQy8Dxfmu7fap2VOihFGL73YkwS/WJ5DNXUiPdnsd/I=;
        b=ASLDnEynK2c0pvIQEKBjRAbhdFsWVztV/K8H/qApGurK6k0e1rww0eJTo1SmHMgxej
         6irhCH6Vp0QkTZF0bFHdozJLt/2IHjXdFQSlize7rZcn2g25/q10A5mZtPgskWvfkpRo
         aawQnwz0Jw0N3vEPl6eUv2AVuZtuywKtAmyDhBnihQmXsazq78D999Ycn1FcNcy55roY
         nrHGoZX4WYnJRRUNigWuvXPZZ4gPViLkxmuYr11Jpj0fcH9yOqNFAzSS4JQMb3hUhN8E
         l7zm3pYZUEB+rRSKMG7z04FJ3477wvTvj9MaO22vVtRrSPkjrSlSDXbwC44Gpi/bYDKU
         PHfg==
X-Forwarded-Encrypted: i=1; AJvYcCUg39+uyDC0ee9LfY3TEeXDD7W6iOwXKyUtyuvkPC2jnM7kmlIFXwJMXXJUT8WD38xAsPE1GODgzzha@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0YRPl9nJPlLJrNuvQM4oLYpz8XCgUHc4pN7uAx6hoIQfBNgKE
	9HOjnIVgjke7TRFR+N0DEAHc2cGTsB3hntNc0Hr1gI4lG3zEK3IP6RfhaCqsFaM=
X-Google-Smtp-Source: AGHT+IE26gx2jgT7LO3ISI0SJ9dTEoWLtDfoJJBXr1rZ4bhzlohyJeU/p7j2+b//vCf8oO67DUUqNw==
X-Received: by 2002:a17:902:da85:b0:205:5427:2231 with SMTP id d9443c01a7336-208d840d687mr139802545ad.47.1727079235519;
        Mon, 23 Sep 2024 01:13:55 -0700 (PDT)
Received: from maxweng-Latitude-7410.. (2001-b030-0251-0200-ae0b-14c1-5918-69cd.hinet-ip6.hinet.net. [2001:b030:251:200:ae0b:14c1:5918:69cd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2079470f38csm128256985ad.205.2024.09.23.01.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 01:13:54 -0700 (PDT)
From: Max Weng <max_weng@compal.corp-partner.google.com>
To: linux-kernel@vger.kernel.org
Cc: max_weng@compal.corp-partner.google.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v1] arm64: dts: mediatek: mt8186: add FHCTL node
Date: Mon, 23 Sep 2024 16:13:40 +0800
Message-Id: <20240923081340.860715-1-max_weng@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: max_weng <max_weng@compal.corp-partner.google.com>

add fhctl device node.

Signed-off-by: max_weng <max_weng@compal.corp-partner.google.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 148c332018b0..d3c3c2a40adc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -29,6 +29,13 @@ aliases {
 		rdma1 = &rdma1;
 	};
 
+	fhctl: fhctl@1000ce00 {
+		compatible = "mediatek,mt8186-fhctl";
+		clocks = <&apmixedsys CLK_APMIXED_TVDPLL>;
+		reg = <0 0x1000ce00 0 0x200>;
+		status = "disabled";
+	};
+
 	cci: cci {
 		compatible = "mediatek,mt8186-cci";
 		clocks = <&mcusys CLK_MCU_ARMPLL_BUS_SEL>,
-- 
2.34.1


