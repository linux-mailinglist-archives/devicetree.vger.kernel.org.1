Return-Path: <devicetree+bounces-115406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF459AF66A
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 03:09:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FCCE1C2173B
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 01:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95511171D;
	Fri, 25 Oct 2024 01:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ikrewvn/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFB111711
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729818570; cv=none; b=GvyI0nFYHhOO59ZFWVJrs1nD9fyzbz+ahJldZlkes9dipLhk486PZzH/h73sybcb7oa7SCogR7NO3qBQkiTLJqvh7RopfSEMwRDqOE/irnsCT86Qs+6X7j+1hGnabmwtwPn6fc85UHFcvfymMcDnc1cZR33Dex4eUmV9Bh+SrqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729818570; c=relaxed/simple;
	bh=kwpQFCul6ljSc988E5zCOYCV2xunq5crF6fjEdTWrw8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RJOi78o+4EpGAc5zZSvuNyuz8509lCcMVHaF7D8AKiGQY9Lh2iOkI9/mYmdxf+AH7zdITZiL8fYauG8GxPfY+988AvthyG6DPhbhFBPVU+ZT4XF2+87mhssDSYyr7NLtQ6eIyA3MbW0EuGchsBjFYUdncw8WqpY93DYzUlwHW54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ikrewvn/; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7ea68af2f62so1090362a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 18:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729818567; x=1730423367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A2I/3Lu6OBvOC4tuDnDafL3hhaN2i1Q4Fcz+C2/JdxM=;
        b=Ikrewvn/OmUwC3Wr7vEG0gA0GcTkOHSc/B7X6FXl9RNQ6HuZVXVLQB3Kyu/3+xsOtK
         OK4XuOIGNRlbrr7jbvs65jTnYKnSxDNlEVMjgYvKRrikp+9+Xf6dw5Y+0v1A3Up5QZb6
         U3RspdWwyDcMYZ/hyBxd7RY/6HTjBL/Mir6wb3KDHCfCsKRKtVJPWckjsR8sjNQY4cId
         ayZ5ItIGOIyhpJteHbxdRyC8H3X0Fk8xF1BddIaJybC3jLLTfmDeDqDYb2JyLK7gkHNq
         0uDEX6+6YBMxXU3I+Y9wzHjV89zk2JaqY2yu5SnaADyo0Yamf3nxcjB7u+TxXSItmREU
         ixZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729818567; x=1730423367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A2I/3Lu6OBvOC4tuDnDafL3hhaN2i1Q4Fcz+C2/JdxM=;
        b=C6osp8qlOupp9ueR5JrlKjwHo3vLvsIPuZMwG+cDLYFdtRWiXdu5vKVT2EHQzN7wAP
         o4CHLulbKyhUaWUUwi0OfCalUcfBzIY9VoaiKrv5XIFYK+W5vI6RfLkP2cut5HeJOgsZ
         zeQG88qSc86z96he4pbkIciVihkL6Z8VsVgbQ4YN772KJ2wcfExdBDA6e9d1VDlO5TBm
         d4KOr5IySGRXHPrURg3eOHrX+Saxn5grl/BbHyrZU97ihCUpBJWOhCajC90vY6AQc/5p
         oyEJKl4qk6MNjKZoeoJPBs7aDS21udDZUKzZR5Z8b0z6+Lb5g8geZDlijIsVhCOcvuMe
         ajIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVn9VK/2iw59nrlrhAHjLp8TxU1j8iPQXtDn3kvb/9xTxoxuxAxN8StI8nOXxIEI2Qn1ltpzZIpXSpL@vger.kernel.org
X-Gm-Message-State: AOJu0YxfXgIREo1xKxqYsfEu7KTS8ad8bYyiPbo4DfzkiMlCjb6aObNr
	45zQRIJypzU4PEknQWbaDu3XTd8vn7y1qtGIvdaMIckZ3Xz2X7en
X-Google-Smtp-Source: AGHT+IG0dZYus0dKlZXhILQCNo4QWnAtvU9O1prTfWjP1IqAIAetcVP41UgZHVHhX+1lDBk4WUiuGA==
X-Received: by 2002:a05:6a20:c997:b0:1d9:1dcd:b22c with SMTP id adf61e73a8af0-1d978bd014amr9387766637.47.1729818567100;
        Thu, 24 Oct 2024 18:09:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b160:3edf:6e5d:8d4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0b93csm52875b3a.137.2024.10.24.18.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 18:09:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] ARM: dts: imx6sx: Fix tempmon description
Date: Thu, 24 Oct 2024 22:08:54 -0300
Message-Id: <20241025010855.1593365-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241025010855.1593365-1-festevam@gmail.com>
References: <20241025010855.1593365-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to imx-thermal.yaml, the valid compatible string
for i.MX6SX is just: compatible = "fsl,imx6sx-tempmon".

Also pass #thermal-sensor-cells = <0> as it is a required property.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sx.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
index b386448486df..a4abaee771eb 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
@@ -715,13 +715,14 @@ reg_soc: regulator-vddsoc {
 				};
 
 				tempmon: tempmon {
-					compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
+					compatible = "fsl,imx6sx-tempmon";
 					interrupt-parent = <&gpc>;
 					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 					fsl,tempmon = <&anatop>;
 					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
 					nvmem-cell-names = "calib", "temp_grade";
 					clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
+					#thermal-sensor-cells = <0>;
 				};
 			};
 
-- 
2.34.1


