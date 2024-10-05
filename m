Return-Path: <devicetree+bounces-108057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF39916E8
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 14:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC066282D69
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 12:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0779414C5BF;
	Sat,  5 Oct 2024 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yam9i+tG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 991AEBE6C
	for <devicetree@vger.kernel.org>; Sat,  5 Oct 2024 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728133113; cv=none; b=TwwL9Q0OKXDE1EFis8nsHI6mZJylV32VbJ6SpjMzqKVKpC3Ql1NspqYHHoX3RaOhpZWdM8lgmb0Z/032PCQpv3C5DAo9LGDE9WBKz89Qtv9Fac+r9rZQN55CRLzHW9kVZ0fsS7Ay0Qc/fGjAoirfHB5y578UiUGSjVJQFCVkcYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728133113; c=relaxed/simple;
	bh=j27zRbN0gy386qTQWqliLoGM4L0ldkwaeE1YLCPjbok=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nopLuGVsyJSJcmbN+l+cCk2u5VG0yA1pP99t7V3u8JIVknIvy5Uv/J5D+R9/V3fpHB+/hFL6F3qdl9WUPOpGpzOUYP40dIiHFF8CB4rLb2J7ZJ2cpPFQq9Ni0eK8ZHX38bUu9B5YmZTyexRM95g8aGUDrAkAsN2AMA+ze15Tmcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yam9i+tG; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20b8be13cb1so32210675ad.1
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2024 05:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728133112; x=1728737912; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e46bTucmHqUClR83XU0x7MYD1tVJjql8NqBZhxSUUAs=;
        b=Yam9i+tG4brjghTCx2byb2IzKgC1yovEoS0Fq4xOXn7yf1+Cbr6/GHGidp0NXi0u+u
         ZGHjBcQrjxRjK80cCZ0LmWRA1tFMI6jNxciILyLQlZ/qbj4dVVVSHFN7NGWCxxwByoaB
         eT+0PhwZLj7cT2iM4oPQe1OEIj8WwORq/T1uAvhevK01by0tr+68t3UQ1/S6EbzZOymh
         dTLETZ+nNbD402IBXjg42pqUl9LLj/rQMnasDXf/tuDpXv20Mkie1a8bHIDMjiGWMo3r
         3sHuanwzui768Xj8Z0YqfAoChWth/ExpuQgNPr2yqVpYOaXaLs3o7aMXbUWYhrMeojfo
         q3eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728133112; x=1728737912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e46bTucmHqUClR83XU0x7MYD1tVJjql8NqBZhxSUUAs=;
        b=q/J0vTGaJyL661VQt6U06bkITU02IALz1J45rk9K/oLlIZGfki4JJ3rZV6QlPfnQ9s
         5jPH3sWUMtWukXlPYkSeo5cpQtrREfl/iCKMG3soCL1203JTFqQ6ZRQ/Sn4yD1M1tkgn
         qGg+DYA1T9KyPXs9pN8rFf1igMMvjMhevRe7kUQYxfrQuuIWvDo4XNBlkL7nLzVxU/jD
         /MFQ9IWRSw66nE5CnRHFd4IRprCuUK8abT0rN3Avf7AkiM57tnnJ2Y10Ot0BVi/GLvVC
         N5y4IVbaMtSspHDuJgVbOqjmFdjJL8TG0e66j4ycFwTFHOpw54mkwyG+WHBzZwZsCIXq
         nZfg==
X-Forwarded-Encrypted: i=1; AJvYcCVFep4FwoQp5+6GUTwbG9G0KxwXDjZvqOnfLW85742wluU9Dbk+oQ6g/p9ZGg83+IinwBCMER3qjXpN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw63yTuF5laUuvOLHepYKFlryprcVCGMh4EDsbtMgi2NcpjmKyx
	4EnkZTTgcTg17xCDntVBSKdid/yttXSyvoRGQSSha6D5Epc0V+kHvkPxPA==
X-Google-Smtp-Source: AGHT+IHBiCV/vC02CAoNaGajByGAo04X0lmBfbTNEIB4gPWRk80Efy7+dJy7iIUlblJSQmPt+p2d6g==
X-Received: by 2002:a17:902:e80c:b0:205:8407:6321 with SMTP id d9443c01a7336-20bfdf6d357mr91878375ad.9.1728133111817;
        Sat, 05 Oct 2024 05:58:31 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:a990:ca6c:4a16:562b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c138d0d3csm12886905ad.110.2024.10.05.05.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2024 05:58:30 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	LW@karo-electronics.de,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6qdl-tx6: Fix 'fixed-clock' description
Date: Sat,  5 Oct 2024 09:58:24 -0300
Message-Id: <20241005125824.2037222-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Per fixed-clock.yaml, it is not correct to pass unit address and
reg to represent 'fixed-clock'.

Remove it to fix the following dt-schema warning:

clock@0: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/linux-arm-kernel/172808887941.121658.5039774358299826312.robh@kernel.org/
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
index 5a194f4c0cb9..2fa37d1b16cc 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
@@ -70,9 +70,8 @@ clocks {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		mclk: clock@0 {
+		mclk: clock {
 			compatible = "fixed-clock";
-			reg = <0>;
 			#clock-cells = <0>;
 			clock-frequency = <26000000>;
 		};
-- 
2.34.1


