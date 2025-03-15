Return-Path: <devicetree+bounces-157777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1A6A62C53
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 13:11:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A0347AC856
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 12:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D071F4282;
	Sat, 15 Mar 2025 12:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fdhqxG8D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF441F4CBA
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 12:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742040665; cv=none; b=KmT58/YhsyExVr3eA1c5H6nqTSvewPoqKf6p2M3NIhkVOyTVcok2QvYhavrBPor+4gYYQAqPzU/Y5A+n9FXxOW21GGMN/tbCAi5K7h4M4l1qHJZuPy8BefghpFC0nvmcACqn+sqaO1y+dZKBQIXYCNdCgJU+ZCG/75emzmNBV3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742040665; c=relaxed/simple;
	bh=xPBmkzfMeMo1wV3Qr/a6jywIqtN3QsbaUd+TIgiO73s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qUwZfbo1TKu+zN7V06a+UFacw4cX21pEoupJlYUmwiBuAqSOtITpG7QD3Cuoy/LHqySz4E3wgk7gtPFrViAttFgZmCLqepc/oauoIrnlIwIH9WgqLnIHhKzEuTrbdayEHw/PkFSVJP/5T6x1H4fHDkOSU2e2AgiUoQ4eaxK9pkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fdhqxG8D; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-22435603572so48096245ad.1
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 05:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742040663; x=1742645463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G2IKgkMunXXR7TMdxbK3sY9zvfwwFTJHvRuEsUq2o28=;
        b=fdhqxG8DrtWMJHn3hv/g8aMxS2/kEHCVnHAlsloc1i/4H8IxYtKyM53kkV7AQe27X+
         qLiy6I2ZVfusAmQwOj7I4iywA3UNluYHjYWcGG5JdmKgWwdG/mugqBm3YiyxUebNIC1+
         kPSQ2b4eWXQL54ZfAfjjHDDiWTa1o6rVBSiGzlQEPoqC2kazYcwdxVCs3zTTnjSnBE/F
         2f2lc9d+n7t9D5WTk4WBt7bVnViLBIpz2k2jDPibgTDFcU2TycZaYBnxhNcGlU+vkKm6
         vOGVzEEKn5PLToIfNq/mg15jaeF5IOPpSzLt9R2BB/O7I8oqtW92oXxR/kWiXyqpoOrL
         uMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742040663; x=1742645463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G2IKgkMunXXR7TMdxbK3sY9zvfwwFTJHvRuEsUq2o28=;
        b=tABJ7GVjjhJdq4ECZQzk1TopuuWBzlEoBDNs/1B+BH5V6ATdDqaKFRpPYAmFTSnefj
         P0NSCE0NOg6KR1ialmGhFTQ9h4Oo5zV4Cu0It2ss2MYyBIOwN5RoPS8hXxiLetrqiau5
         0fgNXB3U+R/UcsR8l5eEQN9SlHemfdKmniVfImruYf2WFKIlfypxv2qvehh8wXepTu5e
         inG4urYk/yOVb/UfnxSXZ393tXK7Ctese4thdVGp7+bsZ5RwBKpNLBJJ4IfNLUQ+lZ1L
         zk2/GoRicuFqB9wWkGfx/RAUmFkXSMaK2gEno8cqyXe9uFB+ozeNWO7dUWaphAttjQ5P
         5XUw==
X-Forwarded-Encrypted: i=1; AJvYcCVtRlVnrA3t8Q1Wbr2IquiZp8uLvPsOwcRT5NmQzU1Z88dqGsZOt6uKM+GxMcgwLKdwQmSOyAszX59m@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5zZjvHU9/M1DBJU4NkRMIx6Ybas2+XSR48ZUq+ulgFUaD8dst
	/N/9vNuj9E5j8giBV9q0NkGcaaKPy9NtfYT/KYSAhkLlpgFz/0Bq
X-Gm-Gg: ASbGnct3ICtUz4yyquLh/IEMb9FoAERabZcVvi4qi8kAYUs6gLWWmd1yCtd22WVavKa
	HWibwdk/rnn51iosWCVDE3wCk8OEcn0MmbUpIxlhmAY4pNBejx5Z8sEr1R0wC9bEv0AXE85Wcnr
	Xc7B9oFvq13yKjYm/HqX8weW3H1hRlUcCX3UwFsaWjn8HWBvAWTXs/VeM1zjU9DVrNoZ5JOfeiI
	n8pfNgsYOvcaseKZRIsZhk8VFPGfXPyWO1C7MEyz6AYiY0HXzlcPvNgSlZyZCFvn+BPwuSOSLuc
	rxwsk38vNHc6V4chC484FfieDJzMLKzN+DhwDDq+wTrfafGIm9sY3A2RAuE=
X-Google-Smtp-Source: AGHT+IGE+xVI7k0GD4ELtarb/xQZutRjL9TN/A3q/gGjUNc5bXqV1cAMaJxT4xFpFbcyvwPEIQUQEw==
X-Received: by 2002:a05:6a21:62c8:b0:1f5:70d8:6a99 with SMTP id adf61e73a8af0-1f5c1132b10mr8367207637.4.1742040663347;
        Sat, 15 Mar 2025 05:11:03 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:bb6a:1a3e:36e4:cce7])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af56e9ca494sm3504140a12.5.2025.03.15.05.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 05:11:02 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] ARM: dts: imx51-digi-connectcore-som: Fix MMA7455 compatible
Date: Sat, 15 Mar 2025 09:10:54 -0300
Message-Id: <20250315121054.1836483-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,mma7455.yaml, the correct compatible string is
"fsl,mma7455".

Change it accordingly to fix the following dt-schema warning:

failed to match any schema with compatible: ['fsl,mma7455l']

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Fix MMA7455 typo in Subject.

 arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi
index dc72a2d14960..1980f751f161 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi
@@ -165,7 +165,7 @@ &i2c2 {
 	mma7455l@1d {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_mma7455l>;
-		compatible = "fsl,mma7455l";
+		compatible = "fsl,mma7455";
 		reg = <0x1d>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <7 IRQ_TYPE_LEVEL_HIGH>, <6 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


