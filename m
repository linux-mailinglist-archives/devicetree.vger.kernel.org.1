Return-Path: <devicetree+bounces-232302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF83C16550
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:55:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70F521A2732F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 502BD34CFD3;
	Tue, 28 Oct 2025 17:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k5RjJpfA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD1C34EEE1
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761674121; cv=none; b=gzKG7PCQF56jtU/Im/BNHLEsEf9B5Iw2us2GRbngHYrGHuPX8XOFXutAd8DxFQqu5EfDmMKtmZ1emDdAwRTly9V+Or/au1jvnsY2Z+pFiUUyXVtEifJ3IBm+3GLF63qblW3V1UaLcZklflREnEVFaaC0QnhWnMzJWnqxsS/BBGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761674121; c=relaxed/simple;
	bh=sk58oMsvqvthp8Sb3XNcmu+ux8iLDsOLB3U0EqxlW+M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dqLUCaxH7mpC+N2o+iMLkxbF/IqNpenipvBcul9U4RIqnr7rT2hhBBj1+JvC1e+jnHAlMBLJ7F05KbCe2o4yBVsj7Dx3HY6VvDZO4s6eOe/oWUQ48HPRF6g1gNxWgq8Q4bOdpjNk9qWkgB64EUTib1wY7dz/rnIKBs+SPQmOPV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k5RjJpfA; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b553412a19bso4105588a12.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761674119; x=1762278919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lHxfmdeCFW0aCq5x00keTOMAkOcoFT2JLV5G6kLYawM=;
        b=k5RjJpfAA+VrI0hnF5DzvOQEUm7po/aE93Ek+zjvQ8RAzuS+HOxl5nyN/EuBiYHH0j
         9Vxi++qffsTJjXm0FyAZ3K6nliJ42nB5fD9wzWnms/yEo6ZS71V/W3HV86Ockc5cRAlp
         0lxAcL9fd1AjYpl4e97PQQlrGtSgJNKgJmB4QISd4zHk8faGfeNFlIHOtxYTF8vo3hOL
         nUkV93urAV/swopsTePIAOehrKxrTU6s+GGX6NX0sFPi3Dr80LV71uvwxetSiA3mpvOZ
         CF0Z+2dD0pYe53ZWSS6ui7eVTnuuO5swTwhdksgMb1JtxaDAE5fbR7rPmD6UDt5kQ4jF
         Dr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761674119; x=1762278919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lHxfmdeCFW0aCq5x00keTOMAkOcoFT2JLV5G6kLYawM=;
        b=hk0L9tN2tsbQkidJnrzqN/4j5N6s3Q/HjZi7I33cmNl8pSWmSB2b9b6sNdswFR5WvA
         GdvGAlgygTKBz6VgEIXHqAqRCidkTgq3q2trf+b+4PYBreb9OSL+tYOYhL/MTiPY0ExE
         vIL/qYUfMpnZ90pugpNsBjuvmiCsgIj0NLkuKIuZLJvanRkg9atbOVkXA4H+AFXuLTbw
         3i/SY4uI3PH47yASGxnIeIWGv+lWOu8pxfyexG39QSpS+Nlt2iXD3AUj654ZTTStA/KY
         m8T0pJ+MxUwv701/VbLQGcOpPzJ1k2dcJN+vAaCQzJ58WtIH36Zn4KewAyOugKDNeqZc
         /V8A==
X-Forwarded-Encrypted: i=1; AJvYcCV/ZdxFNkwFrQvqAjW374SJOntsrt7TLCKbDArKkKnCqyzYAXPn65mFUwhQnfkMZ4Eh3LeaXOFaKXK+@vger.kernel.org
X-Gm-Message-State: AOJu0YyUSsRqm6PpIhjay1+sFZ9XcPHngSnUDmjTagsxtX1iMvelCrxk
	bPdhQNGoLZQwDmQ+SiFKgCKgiUiY4lcehgaRXbfUl5Nk+A5MOG41NGRDxTSlbQHp
X-Gm-Gg: ASbGncvI9fyPgYedrMUtXrUpJ1h1oOZRwF76aQ6RCIeQkN5L6d2s7jmMkA5xS+fkL6G
	EwIsmMi+GhuI0D+7un/dBHc/eyabAhic0t7+Hf+XIrbS5zSm80LGroy2NEYbquUGdCx9OEzR6mO
	o9Oyn41bZUNVpTl3vRm0Ru+A9NfzeIb0scVszw/xf64f2dkBiticjzL/UBZvWKVDpweHhUI3BkK
	h6uSNEkVMOygZcN7CVR8wSpDpd1PRcvvUAWJsMk8IZSSECjGujRpNedlDi4goImHeeHwGI/tKv3
	vRCo3/uYyaFNsfzyLS5hNMBSkS3fRWnmIpOasHZVS7YXsXfpdOixrDp2DUMK0QaA4mLGVNWtr+o
	gnuwPVqzSUTP96M867XlcpAVdBg2MSy9qARxgm56U9eDGEptn1MhNjt0xs/wufUxlsN5gxqiIEv
	/e6nLjJOcRMtzaboFJKMXFRg==
X-Google-Smtp-Source: AGHT+IE8fi7wgchyIC2rRpsiOwRv/Y9Zy79HUMma+Z/tBt8eFg9esKKv8OGA2Wlc6IDn+6DYsFdD+w==
X-Received: by 2002:a17:902:cf0e:b0:276:305b:14a7 with SMTP id d9443c01a7336-294deec896fmr406115ad.33.1761674118818;
        Tue, 28 Oct 2025 10:55:18 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:77f0:168f:479e:bf92:ce93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf3410sm125713005ad.8.2025.10.28.10.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 10:55:18 -0700 (PDT)
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
Subject: [PATCH v2 2/5] arm64: dts: renesas: r9a09g087: Add ETHSS node
Date: Tue, 28 Oct 2025 17:54:55 +0000
Message-ID: <20251028175458.1037397-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251028175458.1037397-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251028175458.1037397-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
v1->v2 changes:
- No changes.
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index 3ece794fb0a7..fe0087a7d4b4 100644
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


