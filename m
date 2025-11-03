Return-Path: <devicetree+bounces-234511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B9EC2DFBC
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 21:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3A2218975FC
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 20:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27E3245014;
	Mon,  3 Nov 2025 20:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ws1YN+3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E6C2BE64D
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 20:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762200269; cv=none; b=qPtB+G17kGdGo6BL2/b5Hd+R401jaeZwLgNkmHH9qwcvJOwHjhFWdWdBz5hEGRj1HcnryhE7DGa8wJPolks1PhWKOyZMNdw9+YJ8TkQ9R1KyxWPBeAqbY3cOAjCcqZkO935JtzfhG64hKuiVq/61ZDcEybdfyYoQerTWPiLFgEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762200269; c=relaxed/simple;
	bh=AJboJwtByjLt4BQm/5w//T60aiZanFwt55vZ/PQSnPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZVLzuhETT9i5T5c6jYt9OLzDAPC4rCn7eSESfsD9LP9O96aUNjVFlBLkNcWQWZx1wUbBQkfOkcfW5OUQF/ZWBw6/iz840U71OSjAzHzzwWPYLOgp3N+fisH+4os3Z0LXxF4U5Or0DDtxlC3E8DPzI1EWSk+5RlcrRBqecELDVZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ws1YN+3Z; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b9f1d0126e6so703796a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 12:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762200267; x=1762805067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yr180Wdqi+8Vuyntg0DHNHyNUxvxzmGgyEYsO9i4RzY=;
        b=Ws1YN+3ZjSXDoLTQ2es8Vk5xGxJWdWt4XfhMThBpYGKcoMyeEebUA6uISB/xhWZHpa
         v2224THxFTO3GQqo76GCj3IG/dneyXX91WFER1DDekHxEhQsj2RWCaeMPPbCDiTbxhsD
         PZuk1FAiVhETqNNnDUsq4sT/+5kM6QiuEV30okHX/4pe+O/QOErEs9D+J9B7GD1idccl
         7VORFGCQex9ylxfb5Pz9G0pQ3/s2kKxUWRZHg6rfGGWGa7+K79m2H8igTtpCQWYAr9sz
         SgOqGT2i8VFu5uDuTg1DX9gv/mjCwnf3we1s5nOlck6BAtEdoLrpMil8PxgaOCZQxYMW
         wpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762200267; x=1762805067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yr180Wdqi+8Vuyntg0DHNHyNUxvxzmGgyEYsO9i4RzY=;
        b=BQuTY7yljqiVhnfHltm93k4zX95qcTuccBGguYjDuvGAE4vJxNSXf0j5TEmVu4eowQ
         HHP7VhmP+n2qwXAa/NludVgihDKe+pERlF56HH/3E3blAWGMO4H+lrsJXlfaOVGCZKm+
         unShmliupvNbNoqk6XsWWqmiGtx5xqhA5aAc76ndMLTyGYN1uXbmf/zXE/IrBFCara2p
         PD8rdU7gzl8oEyaCBTcsBMfCZqS06zeQZvOIgeljzLeb7Qq0lwb+tXGkDKkFPn6muVfZ
         QKqanVab8srsifBX7voIrUtuf6Z41Fg1/mTyYTp4TIOjNI3pDx/cPyrxmGmYmZzQppog
         nFMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCzlnUAcmHMz3h+y+2Q7BEvGvxBjtvoPOl6rz7JcOSzaLzbIfyhoNWqeIORVmPo2Qcfnmildcc8qCD@vger.kernel.org
X-Gm-Message-State: AOJu0YxS53pHLNqgluz6DW0SN2zOe0Zpfd26F71YJTCmEBRYrk1snRX8
	zLsPz1470fcXhI/iZL1pKHkEluguSdl5l1qWDhoGrGdHjVkTxIhDXTDo
X-Gm-Gg: ASbGnct8dEfLkPt6cjN/29jT19xYAhFfoOjEZYT+fpvmeVDIc1lLqfu7rwzC4o4eO2E
	J+wTKqhuvUVVp9cmU78PJMyQznZDVzghiRunf1emc+Gm8VchgT/nB5zf90SX/AcP3CVK5CGjK59
	MMNKrmhN7grQ9n2Nf46gzEfWO/8SPktddco2ufDnupp3dRKLwtwotYnhNN2y4sda6KiWpqD4uMg
	Lz1vsBIoonRqVQn8xFVCAow3H47fuBcD+Y9OtZxP5h2K866I16rjJHpOzGqWl8AM4pQymiL6wc4
	Ls/jKKl2FDVVBEiU2AhvjC37IsrWj8sBNNhnBljkpiW/D/dfAoBAShh1Y79gQ2AskTvbg5apAWD
	d5XGgjBMJaXC1Ps+05lbzZw/OtN/aetKg05jNu3GBt/cKEjqTG/YEDHRAY33bqSBZ9FR4OIWp1S
	gb1dXHBL8LL/jXQWNdNns/YZFrA37Mv5k=
X-Google-Smtp-Source: AGHT+IEAb6DgkGpt7HMZI371Wrh493Iq+w/oAaPYUjvnbziHhj4A5xJ/gibEnwkSsAir4iS9cUOY8A==
X-Received: by 2002:a17:903:2b0f:b0:295:82d0:9baa with SMTP id d9443c01a7336-295f947fdd7mr6589485ad.17.1762200267134;
        Mon, 03 Nov 2025 12:04:27 -0800 (PST)
Received: from iku.. ([2401:4900:1c06:600d:df45:8e1:7a61:1482])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952774570bsm127494895ad.99.2025.11.03.12.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 12:04:26 -0800 (PST)
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
Subject: [PATCH 1/3] arm64: dts: renesas: r9a09g056: Add FCPV and VSPD nodes
Date: Mon,  3 Nov 2025 20:03:47 +0000
Message-ID: <20251103200349.62087-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add FCPV and VSPD nodes to RZ/V2N SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 33389592818d..32a8005058f8 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -957,6 +957,30 @@ queue3 {
 				};
 			};
 		};
+
+		fcpvd: fcp@16470000 {
+			compatible = "renesas,r9a09g056-fcpvd", "renesas,fcpv";
+			reg = <0 0x16470000 0 0x10000>;
+			clocks = <&cpg CPG_MOD 0xed>,
+				 <&cpg CPG_MOD 0xee>,
+				 <&cpg CPG_MOD 0xef>;
+			clock-names = "aclk", "pclk", "vclk";
+			power-domains = <&cpg>;
+			resets = <&cpg 0xdc>;
+		};
+
+		vspd: vsp@16480000 {
+			compatible = "renesas,r9a09g056-vsp2", "renesas,r9a07g044-vsp2";
+			reg = <0 0x16480000 0 0x10000>;
+			interrupts = <GIC_SPI 881 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 0xed>,
+				 <&cpg CPG_MOD 0xee>,
+				 <&cpg CPG_MOD 0xef>;
+			clock-names = "aclk", "pclk", "vclk";
+			power-domains = <&cpg>;
+			resets = <&cpg 0xdc>;
+			renesas,fcp = <&fcpvd>;
+		};
 	};
 
 	stmmac_axi_setup: stmmac-axi-config {
-- 
2.43.0


