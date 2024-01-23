Return-Path: <devicetree+bounces-34088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 679868389BE
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16A5128587C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE7157892;
	Tue, 23 Jan 2024 08:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b="lRH3PTy8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDB857306
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706000173; cv=none; b=gPfXJHEANPk5RcR3gbYL3jb1T5kUwOtMNv5H4MChnZz4++9P3QVSuRrtL4VgGsfCckIuH1zv0TSZU9bPnEIxNf0MueGsLZwtMYIS30bNwHjdBTz+nlMCIxyiX2R5SxhsiqANPNzqQqFkW2sHFkxb1egIEAD9kEOD3AoAh2LrqiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706000173; c=relaxed/simple;
	bh=UbZpuuG4uka77rC7oYur/G0F1HHDFkfKHzQhKOVf/Hs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bp/Ydk4nl2CWUfrGmvL2qKq9zIe9BTjsyT2AcHoaaSa8wuQ2G+hWlGX9AshHn4VL4iyeyIkzeGEC4GMOI7R0XuGM0jg6bnSFJ+AAwf7O6K2slgZFKnboUsn4fwZcigDCgCDzhCXi/fsES4Rszny6iQ2J6BGeKHKVsi2TyP/9knc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b=lRH3PTy8; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33921b95dddso1905477f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1706000169; x=1706604969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wFcIZVRBuGmI6oo+XAGNh6fVSdHoDJwDRRf+EtGPyVM=;
        b=lRH3PTy8k+l8l7gmFe/HCiJLIgzULXbVACc46ii06L+nrkO2eaU+oJyTBVyBsRFjoM
         hmTn4NMdeg5+W3Pe2MEI4rE3it5Niv7Kuy/6ILf2NXH1wEFEXe+AjYtXS7lSXhP9/p1o
         q7xT4OpmCPt5YZlGxOsgtZQaU6m3Uhi/5CdGsv4GBLCIbxc79Z8V8jIN/2WJfnxZaBqM
         BNGVN/SJ5QJmtLOKnuMMKlyakdtwYEXV8tlSlUHpuS10TjahuFBvT2thXQSEVXTOcHaz
         kqoTF+stlfd+DqxlUxk1TU0rm8XwY5yAbD8AmDbkWJ1p7eU0Ekay7YlfADYpnZ2lxRoD
         m6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706000169; x=1706604969;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wFcIZVRBuGmI6oo+XAGNh6fVSdHoDJwDRRf+EtGPyVM=;
        b=pUMRbWIYsvk/wMLBrmN8cRZcc67pKBJHbmrhOqhsDqiZF4FJ14D+Vr2o18b1HpIGg5
         IpbKuWB7+ZjYrZj3wPGk/LBFxRZXkRD6K9AxCnB7AUbLJfHcx8dM8s27RYHg0cVM6mnn
         xxEfqF0N99m7Mo2qupNAStl2GW0ig/0D6jsxNL8vbKRziNvNtHrU6ScH6CuWKcXSsO4O
         KtnbM9QJha8pbpgaCMIIPTE0alX1TQbZAMoWWnR9NHCLY7nWs6ZB2kIu3acvWqOGTk2N
         h1TUgpulYGZoD5aqt5BVL/E1XSrWvjoB5qjm6wdHFQQgXP42ZwxFOpFypYXgyRdani0C
         5hHw==
X-Gm-Message-State: AOJu0YyEBe/bz7zowmJdvHUXttABWL5RX2lDzoTYTP7WdttnC1z90/pG
	xl7WtYHmxDXnpv83RATiRULp6Pkrt5XcHHwI0HKQeeMTmCr2T0z6ghuU2ItEuiE=
X-Google-Smtp-Source: AGHT+IFpjN1wc+0DKy9J5c6zDOYRsqHh1e9XHuY73Fg02jNGapVorBgxhWZTdv4ZjWjTdGL5rQ7OEA==
X-Received: by 2002:a05:600c:5247:b0:40c:269c:518f with SMTP id fc7-20020a05600c524700b0040c269c518fmr271293wmb.115.1706000169666;
        Tue, 23 Jan 2024 00:56:09 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05945b7e009bdc688723a24f31.ipv6.abo.wanadoo.fr. [2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31])
        by smtp.gmail.com with ESMTPSA id t18-20020a05600c199200b0040e5951f199sm41404795wmq.34.2024.01.23.00.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 00:56:09 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Romain Naour <romain.naour@skf.com>
Subject: [PATCH v2 1/3] ARM: dts: ti: omap: add missing phy_gmii_sel unit address for dra7 SoC
Date: Tue, 23 Jan 2024 09:55:49 +0100
Message-ID: <20240123085551.733155-1-romain.naour@smile.fr>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

phy_gmii_sel node have 'reg' so it must have unit address to fix dtc
W=1 warnings:

  Warning (unit_address_vs_reg): /ocp/interconnect@4a000000/segment@0/target-module@2000/scm@0/scm_conf@0/phy-gmii-sel: node has a reg or ranges property, but no unit name

Signed-off-by: Romain Naour <romain.naour@skf.com>
---
v2: update commit log
---
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
index 5733e3a4ea8e..6e67d99832ac 100644
--- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
@@ -80,7 +80,7 @@ pbias_mmc_reg: pbias_mmc_omap5 {
 						};
 					};
 
-					phy_gmii_sel: phy-gmii-sel {
+					phy_gmii_sel: phy-gmii-sel@554 {
 						compatible = "ti,dra7xx-phy-gmii-sel";
 						reg = <0x554 0x4>;
 						#phy-cells = <1>;
-- 
2.43.0


