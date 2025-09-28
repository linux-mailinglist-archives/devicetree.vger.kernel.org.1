Return-Path: <devicetree+bounces-222221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE0BBA6EBA
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 12:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCD633B9246
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 10:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03D8A2DC331;
	Sun, 28 Sep 2025 10:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xn5uDOPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4768D2561B9
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 10:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759054181; cv=none; b=njHG/gOMv8QPO8nxtpod3SbK9SwmMdwQWTja00Nu8vp4vf/qR9euDurEnrtcnPcjFA95L1BmWraARjezqSrOt5nwlVaCEipoJ9wPVAknaYwr1wMo9a3k2AlgxRe7eR1xBeciWo30eRy41oaoHcEG+KrxkTf5JmSGDOsM9+hZVbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759054181; c=relaxed/simple;
	bh=S528ed603Na9//RdBtdQJmNS/xN0stJjC9pAXnzei94=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=fAa8MzHXIWREyMjSvGfY7hXA66wEehcOodwkNpb7GKClqXhbhwteO+3xZ7PsKXen8VIPATjY3H7Pvq2/YX0Wm/nlwZTnmb67nxk/nmInYvwb7SzmRZiQqEPOMH7po6MXJqsL3cESAb79ar7tP/RGJGbuDrfC1N1r536j73gDarE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xn5uDOPF; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e504975dbso1497555e9.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 03:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759054178; x=1759658978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=O7VH5GloSW9zlV5MKDiGfn6qUlpNBb/HaUQn6uAJYa0=;
        b=Xn5uDOPFKA6piUEanK357UNLj5UVlezdNh4STZ21ONDJWp5Bfzt3P0F3xOmTvgJq33
         fvTm2aLq4Qa9nQfpvbbmx9mKVvHdEmnoTTsjW12Q9qB6aVRV3fhcY1QZwO7wODI5UC2v
         OXKuk6CRBlALRFr+Cfutdvu6laSu2xAPx9Y3mRfdzMhlfOqzAYnGTqeQE3mSAGsWtZXS
         xgc8p+M7nYFjFNNmBfVK33WSDyIbvdoT4WfPXRYWCCx0HL0MmcU1X5dlLP/1vHOdAnrk
         wdkhSGYCY/w+4+uETkS5pgZrQC4w+1lh+GpMgYdWGWrDWPzPdgIjDlzdA3r8BMV8H/KN
         EVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759054178; x=1759658978;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O7VH5GloSW9zlV5MKDiGfn6qUlpNBb/HaUQn6uAJYa0=;
        b=tv1Cf5M5xlk2+7F1p+kTnG39FewTEkJ42xlglCgh4S/R3zUtmQm/iZy23fNe3rxBbw
         KsShaYoI/mehh0AYJ2pEe/Pi8mMYoEsGo+xw2JYnAfrxskZXQbPl/REQ/7F5k0uMFxX4
         RX/3aowq5aaFEHSpihOeTEVYlcWJBfgDN6FSi26TBOxXxlepwSuo9l/6CHxmoynzjIMA
         MYb5foR/HO7pww2p0HEbY+QaRJJgGdJvcG6YO76BnKGXf+eXRN/vRXYzUjxlC8saBbXg
         P3JI7Z8VcltYfcRJzSrkGCQ8kvIMc4X43Ek3+gmGH8moMBMBEkqcoxR2MwZVd/wYf6z/
         rP+g==
X-Forwarded-Encrypted: i=1; AJvYcCXtCldlDvVLoCkmMTxvcKVfzJuhKIh9xROrgCSKXU3iFuJhWEDaT28R/W83RKI+LhpwqBbzfrFr/78u@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2JvVQhrt06Rt79bRAGAIvGXBRS03nvgwSpy556/abaAu47KOR
	D2iaWXyFlXbhUZHsBXJuPN3oVik3VGq0tahpndG4djLkXXkHiXSxUCQl
X-Gm-Gg: ASbGnctgMOuTlcOrVhK9W1hMDwat/LQu88iliTX6G8nTJZiBgtJX3sKP+mcKS2lXHqY
	/1oBHK+Gn8E4SLEcQZhBme9WIiGNp3eFGj3gDKwLcrQl41IjCnkcmkAmFzZSt5pNymv1rEDTpkF
	ZsuwK/K/5muWtmqMroGovZEsdKa2OA4rpE1ViaQaeJJC/8uMPA00/phB8u/KCmY2dJD3LqOt/Rq
	Heow4ou70vsH4h5YjKMl6uiwtZKpXqFuxIfFd98qFHXPEirG0y1J3urmX1iyATBdA+0M7+jU5e6
	184SsRw9UrwzdtYCLHl7xKn8FbteJwsDddo3ovwhH2g5T9B/xklueRNSo3m+dqbngCXgdgea/pG
	Q9R1lkC7QhAzgKLEgERz5pV8jTRHCKefKT/MV0rs5C6Yh+Spme1ie27JnkjO5zb7PTdPGuzYu+Q
	MlNrU=
X-Google-Smtp-Source: AGHT+IEqCtc23uR91vJX1oENcguv3h+oXK5yd4n5mW5QIEhXCja0/eHYFgJA/f94YSrqA0IKGpmApQ==
X-Received: by 2002:a05:600c:1508:b0:458:c094:8ba5 with SMTP id 5b1f17b1804b1-46e329b62bcmr82520475e9.12.1759054178464;
        Sun, 28 Sep 2025 03:09:38 -0700 (PDT)
Received: from deskilmich.example.net (host-79-36-214-146.retail.telecomitalia.it. [79.36.214.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996bf1sm185811095e9.1.2025.09.28.03.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 03:09:38 -0700 (PDT)
Date: Sun, 28 Sep 2025 12:07:49 +0200
From: Michele Zuccala <ardutu@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Alex
 Bee <knaerzche@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: add hdmi simple-audio-card for RK322x
Message-ID: <20250928120749.36df6a8c@deskilmich.example.net>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Add "simple-audio-card" definition for hdmi-sound. While at
that also add the missing #sound-dai-cells for i2s0 and hdmi nodes.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Michele Zuccala <ardutu@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi
b/arch/arm/boot/dts/rockchip/rk322x.dtsi index
cd11a018105b..a6b3c934c8ab 100644 ---
a/arch/arm/boot/dts/rockchip/rk322x.dtsi +++
b/arch/arm/boot/dts/rockchip/rk322x.dtsi @@ -108,6 +108,22 @@ arm-pmu {
 		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>,
<&cpu3>; };
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "HDMI";
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
@@ -156,6 +172,7 @@ i2s0: i2s0@100c0000 {
 		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0_8CH>;
 		dmas = <&pdma 11>, <&pdma 12>;
 		dma-names = "tx", "rx";
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -732,6 +749,7 @@ hdmi: hdmi@200a0000 {
 		phys = <&hdmi_phy>;
 		phy-names = "hdmi";
 		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 
 		ports {
-- 
2.51.0



