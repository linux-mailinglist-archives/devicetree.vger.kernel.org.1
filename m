Return-Path: <devicetree+bounces-137780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C404A0A93C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 13:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E9CA1666FB
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 12:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF3E1B393D;
	Sun, 12 Jan 2025 12:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SBya4IFL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9901B3921
	for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 12:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736685702; cv=none; b=jqdJB3+ab9TyVwpS6yGzY2IvdoYxEYv+Uf6eQlgnern61njz7ZgOsIUtKctO+QXbu2RTuBo6Bt4VzxXvXy/RmOO3fmGZJZuDPW869jbq4tfdOqwd0rWJCU5/LWnmu1LkQ9NxfdPc1ozoc9MuuzWTrOhz1hyf/RCg0o41C8AisUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736685702; c=relaxed/simple;
	bh=ud/rqWRzKS8SRsdYmZI+BU/HuEG7B2MYPUTZALmGjcI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tG0OielvW3gjLcOLEUzsUhJAnQ6+vwNrJD98L5Ur9wyecn4QkZdF4jhoZAVEmWppaSeej1grGKlv2tsQ4xr5s3PGbOov1y2vw4l/DbkjYfIUxVdCbYVlarGbqdk8zSkzUxdi/WD8CavbJKmdfT+3u+yxaukmtDKZjLK7DKm9CoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SBya4IFL; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2a9ef75a20dso1708468fac.2
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 04:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736685700; x=1737290500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yK8Ib4fw8NsyzmJDMSwKub58WZSMVWEX4G9CGBONcqc=;
        b=SBya4IFLHMWs5WWXIBdEdlSpH4amvlpILsfF64zVtLa+CFznk/jRIKST+YgdA/WiRD
         fSKdHhZXIiw6mJbmCev5TppCH4cGuLnDcTABveyM13HpKrg3tEYhTythtX3WXAxeCCYh
         dFiXgllS6xOWbXg3iYuBMDNL883vMz4uU7zUEYwzjFOg6Ele1m+mWSpzM/K67LpF4B3y
         An87ua5InyO7g2TPE/ET3W1Ppgh/mPNgMdnMFsvCtMUTiQU+WqowLRdbQ1KdyAVZW3mw
         KUzXfgpHOFsUR4OzpTaggMr0Z7ZjoKpu33ukEtf4+J4+dYVuxmLlYqASYyh7g7EohQod
         zmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736685700; x=1737290500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yK8Ib4fw8NsyzmJDMSwKub58WZSMVWEX4G9CGBONcqc=;
        b=meE0lolkUXXjqV322Ape6tWSSyVEYj3dZqdhO5ZBDWEwdcKqgOKMridJ3Pk/ioqDK6
         KWTNIStteApnG3YmHygu+7amsAeBkcZb8N6nyAYaZ0wJoyJ0vGqNp9S6CJiIGf+Sm7Ud
         P7szuu+XHjWd7ppWRTjmxchxgXFxe/d1Qhvy87LlJaJxBXqkf5FiZH6nbRDdR89fNsP+
         0WqAf7wDOTaKsL+dRlHewiTcJcaPnxee1jzK8D36AKHdWimMjVlf9U5DsGmDRY7UTcOf
         GwI8ZWpF+QipjK62D30FcFeYvnHOYCJyPxaBz2vqv/yuKkESIM/neZj8QPOzSjuxZN1I
         qQ4g==
X-Forwarded-Encrypted: i=1; AJvYcCXPWdHqc8bgkpP1ljZN+zYelbWnyKd415i1bmFVwrrawlFxLQUuxZqqQVP4HQa0A7fkrHVK9dUhCuhz@vger.kernel.org
X-Gm-Message-State: AOJu0YzjhVZVDnus5nlCJ1Q/a02ySIRBHO5z/sPAC4SOff3OghAeltvG
	hVzqcTWJteFQZlsLw4hWLhpHL6uAB9u3yYpZHPBllQ3mUz7vR86VvlZczg==
X-Gm-Gg: ASbGncusok/8xWvwA3NbGXd4WlmCGf5nCbR3AYQDuGk45BPqIP+S927i3KCPcvqumdz
	mtOksXElfbviQ9doPHQEhu9oi4SvKqyD+ogBf7huZ9W5x9EAVT1JunJHqjNF/Qls971xzO76oLK
	O5242HE7g1wuufi6h2Dfq5VgFGHqoyTiTYQtmARiHWL1j25bb7nacTVMdeBezqMoehbm3l4TOe0
	KPy1sOKi9/MhsVU4xC6sIzsVw2KiJa4zME2/VcbQX3Vsl1pcnALlan7zPURoL1IUimdhQ==
X-Google-Smtp-Source: AGHT+IHFr0aj/z+89tWIhkpVoC3SkOL7MWt04vlkUhov0KBX5ymEsZ1beGz7jSVZU6bNnGc2lrRlYg==
X-Received: by 2002:a05:6871:a08b:b0:297:28ec:9b26 with SMTP id 586e51a60fabf-2aa06945c60mr10074338fac.33.1736685699705;
        Sun, 12 Jan 2025 04:41:39 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8c53:b609:d83:9568])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ad80a527fdsm2816771fac.50.2025.01.12.04.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 04:41:39 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: vfxxx: Fix the CAAM job ring node names
Date: Sun, 12 Jan 2025 09:41:27 -0300
Message-Id: <20250112124127.994141-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,sec-v4.0.yaml, the job ring node names
should be 'jr'.

Change them to fix the following dt-schema warnings:

crypto@400f0000: 'jr0@1000', 'jr1@2000' do not match any of the regexes:
'^jr@[0-9a-f]+$', '^rtic@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/vf/vfxxx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
index acccf9a3c898..6334ad4aec4b 100644
--- a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
+++ b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
@@ -725,13 +725,13 @@ crypto: crypto@400f0000 {
 				clocks = <&clks VF610_CLK_CAAM>;
 				clock-names = "ipg";
 
-				sec_jr0: jr0@1000 {
+				sec_jr0: jr@1000 {
 					compatible = "fsl,sec-v4.0-job-ring";
 					reg = <0x1000 0x1000>;
 					interrupts = <102 IRQ_TYPE_LEVEL_HIGH>;
 				};
 
-				sec_jr1: jr1@2000 {
+				sec_jr1: jr@2000 {
 					compatible = "fsl,sec-v4.0-job-ring";
 					reg = <0x2000 0x1000>;
 					interrupts = <102 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


