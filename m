Return-Path: <devicetree+bounces-34090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DCA8389C3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C669B2220A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A095788D;
	Tue, 23 Jan 2024 08:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b="V6EQi5y7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA625787A
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706000175; cv=none; b=rg8akFf9fjZpWvyuz/cO3C0PWYo+H1t0uos3qxn7ZPQz5p9f1yO8gmGVK3EflkUgxr6KSp32f7EQYwiPdBcA4l4VoioESB6+2Ixj9z8cN0bA/fWqG5QB810Ddad0R3Jy+0uYaHW10qhoHvbT9qYQJHMnec52Bo1PsLWuyfO+OiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706000175; c=relaxed/simple;
	bh=5mdtElKdVFQoFen50OHRyreRzKTFw2Cm0eLZ9H4kIfc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UgKm10B38Y9J7bbOluwUgCgcWMBdP2Szw3KPgYmgJUYDLnWOkLlEX0yVdxnC3BM2cVAegBiE8/lboFp02Qht7VL79Lk/zWDy0JS9dxm44rdp/ax/qgVt4gPfWirX5tzQ85anZMtYl40jkV+tbZCdCM7W17UZJW+KMZ3lLREEw4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b=V6EQi5y7; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40e9d4ab5f3so43879785e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1706000170; x=1706604970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Amf8mEO4b8VyDyU6stduNSx5N7dkX1J86NVw9OgzZjw=;
        b=V6EQi5y70VTw1hGVl9FeCYNVihd/qjvt2pLt4eq2qxPdZ3zLIWOVt65Fpgc3d1g1qC
         /ZO6kLkdEpl8Qpx1NxIFv9tnmG3QByx4sfT4QsaRS4vDwf8eHL69e6vmylq1dDL/dfUf
         +Nq/KiVej1n0RgoddB5Rl16qY7kJozY/UqJhKFXjXYSH2/p8MZRw0mV9ES8LGfxh412/
         TT8zU/Lcxg1s0jtD/MwhG0T7LbvD4lIOvGqY4E6CjaaN0FLLXhQRSQbvSlhXNxEDe8/t
         XShbe2c7yDN9WSFlVoEQyyYMmv8gJ9clnbQTYrojhU0x6PmvkQ5TC1/21XQJtP99Wfjx
         xY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706000170; x=1706604970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Amf8mEO4b8VyDyU6stduNSx5N7dkX1J86NVw9OgzZjw=;
        b=NU7fvppE4y6jFpjcRfJAA6dhA3PzJtjkDcLBkF46pUfTDdvEjDLCVtBCAOFpx4Sah1
         1P+i+oeZ1bJyhaR3z9+hykFjlXRJFFFQlxlhZqIsQ8TjxRWzbQN06MegJoFyZH7uRDyq
         AgXOpqsdH/AUmKaIPgr35OMh/acv0ukuelPFuwhBzV6cqhMl1rAu42KDWF2XF5sDxvHo
         uMqmGTnwsl58KUInabL7gkqvkfwodNx/c2N37U9/h/mqLMD4HthELHdGiJFK3d3O2z/M
         Vr2MtkVYLOi9VSVKCTqbeDGGPJ1mMDxrJlZZllJ89IgQ3PeA2j2XD32AL1stPSQr0rF3
         6oWw==
X-Gm-Message-State: AOJu0YzMMReqKICjGo2gfN3o0qZCuIkW8/+2oeDs/zp4OeOgInPTHU4q
	DZsHXPMekoiBGdzYd3eiYeKN8SFSRnWv5fcR88MKsltPsTpXQsab0IcZujaW/SQ6U3dMA4jUwsL
	5
X-Google-Smtp-Source: AGHT+IFi9fLpOwZ6Ck/kFCp8gKNbNlkiSjPvgGZDfpvFQPyEWiQZjc6duwvOMf9JwML7y+8T0KW3bw==
X-Received: by 2002:a05:600c:3ba2:b0:40e:5f54:b909 with SMTP id n34-20020a05600c3ba200b0040e5f54b909mr318143wms.88.1706000170210;
        Tue, 23 Jan 2024 00:56:10 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05945b7e009bdc688723a24f31.ipv6.abo.wanadoo.fr. [2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31])
        by smtp.gmail.com with ESMTPSA id t18-20020a05600c199200b0040e5951f199sm41404795wmq.34.2024.01.23.00.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 00:56:10 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Romain Naour <romain.naour@skf.com>
Subject: [PATCH v2 2/3] ARM: dts: ti: omap: add missing sys_32k_ck unit address for dra7 SoC
Date: Tue, 23 Jan 2024 09:55:50 +0100
Message-ID: <20240123085551.733155-2-romain.naour@smile.fr>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240123085551.733155-1-romain.naour@smile.fr>
References: <20240123085551.733155-1-romain.naour@smile.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

sys_32k_ck node have 'reg' so it must have unit address to fix dtc
W=1 warnings:

  Warning (unit_address_vs_reg): /ocp/interconnect@4a000000/segment@0/target-module@2000/scm@0/scm_conf@0/clocks/clock-sys-32k: node has a reg or ranges property, but no unit name

Signed-off-by: Romain Naour <romain.naour@skf.com>
---
v2: update commit log
---
 arch/arm/boot/dts/ti/omap/dra7xx-clocks.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/dra7xx-clocks.dtsi b/arch/arm/boot/dts/ti/omap/dra7xx-clocks.dtsi
index 04a7a6d1d529..06466d36caa9 100644
--- a/arch/arm/boot/dts/ti/omap/dra7xx-clocks.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dra7xx-clocks.dtsi
@@ -1685,7 +1685,7 @@ ehrpwm2_tbclk: clock-ehrpwm2-tbclk-22@558 {
 		reg = <0x0558>;
 	};
 
-	sys_32k_ck: clock-sys-32k {
+	sys_32k_ck: clock-sys-32k@6c4 {
 		#clock-cells = <0>;
 		compatible = "ti,mux-clock";
 		clock-output-names = "sys_32k_ck";
-- 
2.43.0


