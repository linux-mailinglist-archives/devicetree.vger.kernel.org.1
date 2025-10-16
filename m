Return-Path: <devicetree+bounces-227882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E247BE5627
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 009CB1AA0957
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736A32E06C9;
	Thu, 16 Oct 2025 20:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jakqgNWY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2330D2641C6
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760646356; cv=none; b=r6MRMlhwkx6zyG2V52StDf8rwCzwMPsOTjLMwZ2PpNRY2DrnmQ0xDR01NPrud4Vspys5b1arVIrS4B463yr9hTezKb+CvDYksMowfBZ1yGXD6XU4X8Bk8WROpbdodp5IPw+joWZ7580rXso/XFZKbDbji9QMfmcGMv7DNSmlx5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760646356; c=relaxed/simple;
	bh=KO/OF/yd4zXyKj31xoVGvcnH26x/3OY20T5UcmQHuto=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n93Xuh88CIpdPw1oaMjTmmsmN4dBOkaoiv+cJDvcrWR5U9bPS6Cr+dEjCW0jBbL2nmY9JBjHeBpM4GaBa+87yXyPqGPsoGoJujJ2SVn3dtpimh7s7YWW71yDtlnjt8iuGS8koH8KU5z8OTpwmtEg7qZiV350fVRYyYhlbDuj6a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jakqgNWY; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b4fb8d3a2dbso861769a12.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760646353; x=1761251153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4wttzWlbBbcXOKu22uHo1yP0Fp3HmGcEmEwEO06P/KE=;
        b=jakqgNWYrtMjPhWDL2bcdj43jCYSmAk2FRYfGyjy6BxH+/RVvjwgZFaS+c4++LbZyW
         4/+olxMjuFFTlMtHxvDfnIlqmSXRNHIaz8VDFk5XgiAhHHjRhJlV4TJPFJTjKvh0QcXt
         cHoCX50MQOysfLen7BdS/Zw0Fp8nJgUPiGGfl57e9sck32E3K7PPHaPt4ORhwfwUQFcj
         Mz9E2XFaP+OVyFSiVXLQSAkXn69r2k7hprGF4cGO+cA9ABgTo/mZpqQJ+1mgpo5SL4W8
         m5Gp5Cl5i/Lb+1oaUlE2RRVhDaA+h3EF2ImGuRuNPOa3qpXusVWl7tjZsNaRqFnNLBC+
         nyRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760646353; x=1761251153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4wttzWlbBbcXOKu22uHo1yP0Fp3HmGcEmEwEO06P/KE=;
        b=PbClrHZDN4WYZpVKzrafs4UTuHsFY2B++/09oxapH0pFg88PlWbMuIVbbTAlFOj4/Z
         kLVHlgpeSX+4aOUvReDXybFy9RIyagQZ4tpbC3JKzzhE70GdZGd91G0PjFSAkezh2V8E
         iaHIivZlKw1gffI3qLaGfBoQipvL507DUOwA3R9EfceML1aIcGEaGOWrY49nRfpsA81S
         PunulsKpsqGjDXbqHmws4VSKN9C+1ehkFygsblkRdH84W9V/Pn8rJT8hVv167hBg88vS
         qzDfemZANVejVsNxgVlA+zSP9b6q5SITuFRdu0asG4HzzIslCw8x4g4c42xG9V2XZAZF
         y+pw==
X-Forwarded-Encrypted: i=1; AJvYcCX7WbnlMa/PGw5pjlH0uPvmCqLcaTwAgcJrOR/8FJEHsitm2UJo1ZPHXniut9YEZmZx9dOo8sT3DFid@vger.kernel.org
X-Gm-Message-State: AOJu0YzUXANiDbuElF4xFfGj0kECPbxyVLJOGr3l8+wRN/SenlO6eplT
	+JorpJMdG9yBi9JQDd+xOc2Ts7IjYhfIBLko1gLeFVA6IEarSrXej/ax
X-Gm-Gg: ASbGncsqThsmE7nIWctOmpJ+cZNjvqOBihCEJaBnvBR8JqJ8VU2llxpmDvp7IWfTvZ5
	4p2YM450NnvowPOs9W2MXDKWYe7NI4XdkXWStdJgUFqpVcGsRgOk51miVHgWD8g87Cn1G5xGt28
	RWI3VgYiNiquX8xrcVfUfZNks8VWiafIgHY96pI3idA9ivlNAJu53kgXQSLq2kZFSx/PM0haUnY
	Yjw6rn1Crfi0jCcELVjDegG8LnUuc190QLUwnSj/ltkVAkr9mggG5s6xx7QULCxUdUyay9Hyw2/
	NaEg0KpiMp5roXGfNCR+l5Z47edeKaGb7M/j2o4teiYPnaujXU3CCatw7AB6gtTcjTWJt4KNsq1
	mgm4RVqUGBwsebNCY0nq6dhIr+cTDSP5TdYOqTNFX9bu0jEo3FJLVFASNX1XuWe5Qmjx7cFgrVe
	TjG2BUNQX+GCP2no3F9v8Y+g==
X-Google-Smtp-Source: AGHT+IEA2KqFqoK61jqqN2bdPvqxteC+UfFzMoBMorKHmALcj+3M/XVuPeuE+6pP40OhOBGgSdBthg==
X-Received: by 2002:a17:902:e743:b0:269:8059:83ab with SMTP id d9443c01a7336-290cb27f849mr8850205ad.51.1760646353370;
        Thu, 16 Oct 2025 13:25:53 -0700 (PDT)
Received: from iku.. ([2401:4900:1c07:c7d3:a396:54ac:a48f:c314])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099af9131sm39577735ad.103.2025.10.16.13.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:25:52 -0700 (PDT)
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
Subject: [PATCH 2/5] arm64: dts: renesas: r9a09g087: Add ETHSS node
Date: Thu, 16 Oct 2025 21:21:26 +0100
Message-ID: <20251016202129.157614-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251016202129.157614-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251016202129.157614-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add an Ethernet Switch Subsystem (ETHSS) device node to the RZ/N2H
(R9A09G087) SoC. The ETHSS IP block is responsible for handling MII
pass-through or conversion to RMII/RGMII.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index 2d2db858f48f..882570622486 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
@@ -270,6 +270,43 @@ i2c2: i2c@81008000 {
 			status = "disabled";
 		};
 
+		ethss: ethss@80110000 {
+			compatible = "renesas,r9a09g087-miic", "renesas,r9a09g077-miic";
+			reg =  <0 0x80110000 0 0x10000>;
+			clocks = <&cpg CPG_CORE R9A09G087_ETCLKE>,
+				 <&cpg CPG_CORE R9A09G087_ETCLKB>,
+				 <&cpg CPG_CORE R9A09G087_ETCLKD>,
+				 <&cpg CPG_MOD 403>;
+			clock-names = "mii_ref", "rgmii_ref", "rmii_ref", "hclk";
+			resets = <&cpg 405>, <&cpg 406>;
+			reset-names = "rst", "crst";
+			power-domains = <&cpg>;
+			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mii_conv0: mii-conv@0 {
+				reg = <0>;
+				status = "disabled";
+			};
+
+			mii_conv1: mii-conv@1 {
+				reg = <1>;
+				status = "disabled";
+			};
+
+			mii_conv2: mii-conv@2 {
+				reg = <2>;
+				status = "disabled";
+			};
+
+			mii_conv3: mii-conv@3 {
+				reg = <3>;
+				status = "disabled";
+			};
+		};
+
 		cpg: clock-controller@80280000 {
 			compatible = "renesas,r9a09g087-cpg-mssr";
 			reg = <0 0x80280000 0 0x1000>,
-- 
2.43.0


