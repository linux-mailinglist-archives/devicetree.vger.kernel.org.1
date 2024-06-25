Return-Path: <devicetree+bounces-79755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4CC916AFD
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:50:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6D2928977E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9A816F28A;
	Tue, 25 Jun 2024 14:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c3KWucx/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36F616DEA4
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719327036; cv=none; b=N1m69d1QapSIc6ZDAzoWbJVKh3iPI6LMVFHFMiU62a3Ey/5fA0aVuYZq3Ue60sI1m+Tgb6a/qDL24weMzhH6AyzJoiNUhjjksqJPCFYGxuV7T2/VfbW6oWoNwKbaM4YM+u+6qbq4T+hHqUuyJ1+11oK9k0XMYAPcD4DoI0Wc2XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719327036; c=relaxed/simple;
	bh=9PRTUjhEWIG+xp1wbJ1El3maAsca2SWuQSv7OULoMfE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hvhb/16wr5MwjkhOj/ezKHqnu6q0Pm4A2DSnb6cRkZ3JrRapcI8pkBZx6/u9qEq2DVKV7kHIBYJC+uWVkMySdGNl6xMvKaP8saCtVs/eO4FwknSXHQga/5LPkDgId/99oB4hAB9upWB0jcKpLJoXLfyX5OOjtSX/oy7LZCCehGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c3KWucx/; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a72517e6225so325385566b.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719327033; x=1719931833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8FO99+jOTZQ4oml/X5Fq9PsFL65v7oiJC3yeWK0G1A=;
        b=c3KWucx/P7sEvrufJmO80YqbnPYBs1MLkSKHl7QOLC62+9PhJu0ep8SYJDn6ogEzSE
         xH1Z0SW/YlC3dS/sP/opJX5JCRGDOH2YkBOhqcFlLl2k9eHde6LkXMZ2ZFkVKTHRIVrd
         6i6Pb8RC9RQMfFMZH4J/06pjhCMfgWnnhoKX0uLKQRwcDiiUayH0Xam+p6aXWi2Uw8rF
         HWvvL5+z8UIGjsyPb6xu9NESeVCI6BUQuGwJNtmr2jJS0IlJoPPiz+efZsb1w5yyVN6c
         ATgl99I7rWbDjLjI/32kgxIc1zJSmi0ltYF+JeSpP1+/JhQ04wz4Sn3oSbGchiqGuE2P
         oe5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719327033; x=1719931833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y8FO99+jOTZQ4oml/X5Fq9PsFL65v7oiJC3yeWK0G1A=;
        b=e+e0BB6DVCl1Pv3XfkWa5hJeg8ei8aBvCkLy69iLOqJDv6ivmgTLYXzJfSVfTn5GZq
         wTRwTXTpxDvVK6EN+Dx352zVhPSmiECyTrrpwLeXbPb3nQ4DOAZ4C6uNpNq85dbvhopN
         +XYCPGC3wQEdzNtsjQP5Jt4gZWiQjVaBf5fZGWbvLu4DfnlqbrOO7hsu9s8DIGAB0M9X
         Jljqjt6y0q0k/7hvZPcSpPGpuPm2apoVu0vLehqZqSb5b+wbz2FbF2YLyqXJsZuTqG8h
         SS4fcEY86zVgAdVRPa4EZMXc3XxfCeeyPbUXL/7/ZPrLJ7K8a5PxVejRsgPF3rS38JZe
         triw==
X-Forwarded-Encrypted: i=1; AJvYcCWkIXizO3lEc42qoxgfvOF+YUe8kB//4ssMOGL6eLxXBCgl1dmXjA2fRDP8n3S+ppS4vxQgIOaH2lOuHDczRiQDXRJNy2EPNVwH9Q==
X-Gm-Message-State: AOJu0Ywg1fgugr8N4CMSPwiphXQIztnAGQH1CPUr2QXlp3YPqzU51kCO
	y1fMJ7d3wLq1Ve2+DKZ7ggmqdlgCTc8Oh95g4/t4VAQGiotnaxAcGvzyqpNeNkw=
X-Google-Smtp-Source: AGHT+IHxhm8K+90t51Ou7UOGxTWXFK96sTe4GE9XHvjFI8vmoRSsxXRqZgmnKIRXFcaKJp4IiVaRvA==
X-Received: by 2002:a17:907:a681:b0:a72:80b8:ba64 with SMTP id a640c23a62f3a-a7280b8bdf7mr21897566b.25.1719327033159;
        Tue, 25 Jun 2024 07:50:33 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:b30c:4c5e:f49e:ab33])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a724162f037sm355945066b.194.2024.06.25.07.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 07:50:32 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 1/2] dt-bindings: display: meson-dw-hdmi: add missing power-domain
Date: Tue, 25 Jun 2024 16:50:14 +0200
Message-ID: <20240625145017.1003346-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240625145017.1003346-1-jbrunet@baylibre.com>
References: <20240625145017.1003346-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

All Amlogic instances of the Synopsys HDMI controller need a power domain
enabled. This is currently missing because the Amlogic HDMI driver directly
pokes the power domain controller registers, which it should not do.

Instead The HDMI controller should use the power controller.
Fix the bindings accordingly.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml   | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
index 0c85894648d8..84d68b8cfccc 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
@@ -71,6 +71,10 @@ properties:
       - const: iahb
       - const: venci
 
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
   resets:
     minItems: 3
 
@@ -129,6 +133,7 @@ examples:
         reset-names = "hdmitx_apb", "hdmitx", "hdmitx_phy";
         clocks = <&clk_isfr>, <&clk_iahb>, <&clk_venci>;
         clock-names = "isfr", "iahb", "venci";
+        power-domains = <&pd_vpu>;
         #address-cells = <1>;
         #size-cells = <0>;
 
-- 
2.43.0


