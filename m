Return-Path: <devicetree+bounces-206581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C46B2CD16
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 21:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23C967A366E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 19:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20F4D338F29;
	Tue, 19 Aug 2025 19:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AuMiTvRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0C32773C1
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 19:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755632429; cv=none; b=UwvjZFic7CV8dPK/N/ywPwKPZGtEDcbg+78Bcvcr7dIfhHeP4AOKLhy+7gHYFkAZfCXknQAoDBH3I1ckY6oTPmzQFdqpQvTv2jRcs8BirN930S79UStBgKM2V+1STneoFEQOmx1jrveeK1OhcXL/x1m93hl7nJ7tG+6d1BjUJG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755632429; c=relaxed/simple;
	bh=hro6fRgqRkjcASX+aCkl13l0IBhHtKM581LP2TeynhU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aZz9koCnPD30JmiGWlYfbHRiuRzhPlPdp+rKCwXOSUpDErKqBT8PsDrBClosi0ImMGSPLWuEAlDq+syT3XfBYkkDsd1FtU+97DstfOm+SapiNpH5F712z8liSl0Dp9V1UsfuNGrBRSVXEmPPfOKRmEocphL5SmAScP788qErv0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AuMiTvRS; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-32326789e06so4722114a91.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 12:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755632427; x=1756237227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RB3RsnkAhGDVxAfCO51F476H5OL8bM1IWI5ovyN1KYY=;
        b=AuMiTvRS8S6OFk4uk0eutx4tPfd8cbcZh/Aw2p2qVNakbMm1agMQ9LaHGhw/zkOg3R
         rDDAQMhO8t15nzRhhF9UNh9bcPCTr8hLx23jitxwK9EWUCfe9KBMkpOB7dqLd8eLTUWZ
         l2SlFOg9uxJtDkm/qgnJFmOvMZXkkrry7L80iwVOF3QpohtPrQzaFT2SZ7Jar+KAr4v7
         grJCZ7zNf3gXijlhcC/pxAMoYHGgrGaQd2nAZKSiFhfp0yurUDsQ1sLAQlQEI/IYJli9
         EquEkZF/qzX5me0mO6q1c5NciPIaMzJAPAtC4TdAjDUcyVu9TUvM1r0JMlabdzs5p4/a
         ccJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755632427; x=1756237227;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RB3RsnkAhGDVxAfCO51F476H5OL8bM1IWI5ovyN1KYY=;
        b=RJLxITJGuPTxym+dLmOHKdM1FZJMgsGdOuVT5mRmW5vRRCpA9UbiB34rfTfbfQTrgq
         mD3jhfe6toAJxwC9X3I64miIsgrBUEFiwnLxUb3VlOdv+c0v7Q9+8Ojqk7XUDIS5FPWW
         Ers4dGHs6NBL/0g9S97ztWeWjjRUwdwIthdDy45+U95MNuZWyUz/akfdyZ5F4R15KS3h
         RqkV88ugcfooqUYCk4eoEh0rdkaGEi7GgtoYQYDR9IXcZ9N3KfmkGJybX3STCZQ6ywUl
         v7FePTugM+Epb60605mZ7J89Qbq94xlNlQekXSMPUxgx+Q0YPvMyMYJkUGl1J4pEZlyj
         YBeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWi2duqosJuNKmUZvQEHCwkuHn07oq7/+LreVJlrybWeQ3WuhdpKDLIFWxL/2bVy1GTjYzQxY7Gm2wn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu03aQ1u1vOHDoj8OLdXF9dZAf5989B5YcsxPppcVJgbaISUYT
	SHOSsXkKM/T09HutjIbIftJPfv5X1IHduHbDoEkFoIi0/2tBSJFr+DhV
X-Gm-Gg: ASbGncueKS0Xl2+LTGNe2qoo56XKKYIMlDGrzAcfip31/r1/Kd43E06bFn5iUs7sfE1
	uzgtJ1T1ANTnnreSrOSIhj2gYGTOv07Icmep4bMqN4DWZjFJDsITouqKg2CDw/LRNms6Ta70ikf
	Or/npu46LxpGtYgDIWBX2wW8ZEkKa+uwwf/ISvoT0RguGcz6CyViPduQGq4riRhimHm0vpirWLn
	7KPeqhQwBbGNojbhtikxPBKvcIWxQUT6K9eu6oIIhgLo7z0yWldnm3MqHyebcI676ssb7ASh+nT
	btLml+Zyh04rIr9FG5LkB1r0me4n+XPGppCn5qQ8JV+TzlW1fYtF2xS71fPZaSOuyFNXD827RGM
	aHoPMqqf/jCcqZfec4tqL/fMzrxa976csoWdrBE30zS5VMVo=
X-Google-Smtp-Source: AGHT+IEVuqqQppFjXblqA04RSvxGPKxaiU6rrBBZfJ8Qs0HzVs63ejkFYfjytKyUbdGzCQMWet8gQA==
X-Received: by 2002:a17:90b:3f44:b0:31c:bfb9:fca0 with SMTP id 98e67ed59e1d1-324e12e4f68mr501193a91.4.1755632426996;
        Tue, 19 Aug 2025 12:40:26 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3ce6:43aa:f6b8:33fd])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47640b2d37sm399383a12.46.2025.08.19.12.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 12:40:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: stefan@agner.ch,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: vf: Change the NAND controller node name
Date: Tue, 19 Aug 2025 16:40:18 -0300
Message-Id: <20250819194018.2850727-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fsl,vf610-nfc.yaml references nand-controller.yaml, which only allows the
node to be 'nand-controller'.

Change it accordingly to fix the following dt-schema warning: 

$nodename:0: 'nand@400e0000' does not match '^nand-controller(@.*)?'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/nxp/vf/vfxxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
index 19de9506e0c8..568d81807c81 100644
--- a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
+++ b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
@@ -682,7 +682,7 @@ can1: can@400d4000 {
 				status = "disabled";
 			};
 
-			nfc: nand@400e0000 {
+			nfc: nand-controller@400e0000 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				compatible = "fsl,vf610-nfc";
-- 
2.34.1


