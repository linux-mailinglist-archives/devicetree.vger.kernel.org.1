Return-Path: <devicetree+bounces-158162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D251A64EE2
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80DEC7A48B7
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 028C5238169;
	Mon, 17 Mar 2025 12:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IL/o/5qb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873D1238160
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742214677; cv=none; b=FDU4532wrVD7hEcUchCxDM65BsS1GcXZRe5G+OcY5p1GBJ0t9lJmCC2wWRmavr3YtucbOtCJLZuav0KgT6krAHc1YSUyh75Q0GSC4H4a2tJAYwl+CEqqdIRC/ZkhnjsfAaKKTsMUzJR6+ASDNepocf3hxLPLImVWp32IaBsq+Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742214677; c=relaxed/simple;
	bh=3Mfmn+l4UNJ0NtH/erzpTm8WD2666B6deEA6LGn7nyY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uKs5275XQYcPVR2SaowUn+TxuNOH9iL4mwv/b/u6kPdmwJlszm42Ca0uwXUMjmMMNG1HeyfLieMpNL1Wali1u87lhPttDpIB7zPPeJDs+H+mBE3n/b/1pG8KVXnbY9QsyLsi6KNl23xgOxppzqUqi/Z1ppUClkmpu8XDBjM3MjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IL/o/5qb; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-224341bbc1dso76668235ad.3
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 05:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742214676; x=1742819476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ayfAvjYeqJrgYUP6e8kHW/UxkKYEhMvbiKhityi9Os8=;
        b=IL/o/5qb1Sg1nHV1NJMtECm4ToE2js1kuqom4AKjLrIHaBMEFxSuwIIqVjf/8MOkSp
         /LwW17TBMnhCCfGCwf18h+bwjewXABfnQDf6q/8EEP/YMWaSBc0sAq1W+1BSji1J2Sah
         7BQQN1qpMQv6rFBINj2C6r3oz5UEuH1Txv9ZW0gzfNJsOKZKOtBiru0benAxbrYuFJJ7
         BORoGpnDMQkuxOT1hruPUgkwZTO0lo/uyV0/WYH/TzF8GgG3D1rMStvz6+jLlMs+je71
         B1aANHgkhZLpUK5rZZNeagMEdvvGA9Sbe0EU5z4rHeYNmtfOhOEUumWVLVSmbt5s6Qmo
         TjXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742214676; x=1742819476;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ayfAvjYeqJrgYUP6e8kHW/UxkKYEhMvbiKhityi9Os8=;
        b=XTiieP1i8umXkqg846gF53T+u54XuWngCWdh6nr7F/Aj/1j4dIJiNt0Wv3IKeFDFgr
         NRPXZTc6glJnCU1CyNBW/ER1kBwBIRwSML5w8Kb4tFwPCU5rIyVFqGVE7j+nkMhvcq9H
         DJB0U4Vq1CjmAs2ou8taQLdfMwyL/MTwrG6gPnlx53QfE++sHs0OVGV9xp5bKXuBSAsT
         ysXqMXfDO6AZmS7lGFhrrvCRCF9zRtg/y6d6dzMWxkBBYIg9uvWvKlzUprd6swV22QxQ
         KK0MxG37OuRuXhXCQxH3B/FVZNX1StHONctFSztpzznOoEv8jXw/QGc5VXdtQw61C86F
         si2A==
X-Forwarded-Encrypted: i=1; AJvYcCUzCpiYyjBhEYGAODLfC+i2ECqDz2MOz12Zw9+D9oMmqNOVeLT4NX0hJgU6p5luaXCClSjyl2wRV08M@vger.kernel.org
X-Gm-Message-State: AOJu0YwItuShjicDXl5Ubl3+v6I+hpyFpj/5Qe3URKW+jBYRSmrIbaJn
	Hf9I5AXkjCO2lU72MiJC4OVrOweS76W5PmnrhW6YABmpcUuIZLcz
X-Gm-Gg: ASbGncvVtCW6wVUK8wENlIOuNrhK/2FC8pGPuqs365cvcDLZ2wDZcYcnjs3AD3XkDyt
	2gCEvYVdxd9JfZF6l+tF3opGWbZpbVGAH1VDRQ4n//lFHLSwcV0bt5fWyPUrW+KG3KtdhLOJflq
	nQq/YRG+FQhWym4VnlN+A/ukbOFg6ILH10jUZ3FM6MZDYnYM3Ftugt2K7dDUh0xUZ1uilqvUlMj
	7MrDkuI0LXZFnY4iZFvqNOT0tpxdhomoAguOnzzz+LDsPlWorML8720rBpouH27zkH/QInOqpik
	bKAWvIDeln1718ngeSOCrOUmiyWfI1mTiznzD+sJq+Wyzlbwiz0jlF3/eKiFfPEBwKRSiQ==
X-Google-Smtp-Source: AGHT+IFBtkqKjbPIxs74ySsOilsqF1P2xvhpvPrvuUqdkVbilTl2fTrYL0Yhw+mVbxLGQg7+wV+loA==
X-Received: by 2002:a05:6a21:6002:b0:1ee:e785:a082 with SMTP id adf61e73a8af0-1f5c11275d7mr14213711637.1.1742214675611;
        Mon, 17 Mar 2025 05:31:15 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:93b8:613c:dd7d:1b25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af56e9e0f3esm5871892a12.22.2025.03.17.05.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 05:31:14 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	hector.palacios@digi.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3] ARM: dts: imx51-digi-connectcore-som: Fix MMA7455 compatible
Date: Mon, 17 Mar 2025 09:31:09 -0300
Message-Id: <20250317123109.2216509-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The "fsl,mma7455l" compatible string is not documented anywhere.

MMA7455L is the exact same device as the MMA7455, with the exception that
it is lead-free. Use the documented compatible string.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- Explain why it is safe to change the compatible string.

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


