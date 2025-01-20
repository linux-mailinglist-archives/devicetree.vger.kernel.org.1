Return-Path: <devicetree+bounces-139772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A724A16D5A
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:25:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C60CC1885E92
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 13:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116F21E0E0A;
	Mon, 20 Jan 2025 13:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="iOblOpD/";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="rZYcPdHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC78A1E0DD1;
	Mon, 20 Jan 2025 13:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737379526; cv=none; b=hZrc85cGeSLWWfj1w//y6moYg67/ZsAxYrCyYt3uEe0mrWICmlSNE14bu0McEMT1Iq9y06N8K16RgP9DVx1sZazLU3XTMr5LjETXBncRUnbkxW5mTR3Lp0NZ5BDP95ANM1rh7b6M6MujBLbw8yP/xkuSHFIpgmeYyQbplKoT580=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737379526; c=relaxed/simple;
	bh=+23Fs0WesRqDuGcnrMnfTV5bDcQLqVN2H8O/W1siJHg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MMhuHGat6tkeOQV42frmKEFiBCwdAx4x+JwJbf+eqGJhTBEBctWKLRCt4XyLtBHp0AEIYYIF59krfZdnReDVQIDJ91xZ6g4FhhHJ1OQ1xSJD8Mux+MLcR1OScYHk4jyh9luXa0usXdr0YguVWDz+1BDeOvYUGeGjLVFfHZSv+bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=iOblOpD/; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=rZYcPdHn reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1737379524; x=1768915524;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=78hFLxJMZ5BSxXaEi6N8mTluP6Y4p1HUHn9cC/6qaBc=;
  b=iOblOpD/n2wWs2bcQS/B4WBHAWBxbqixZNI6ENOzYP1I9ekR87/r0EE2
   sBDdXNvuJfmKr61xr8lcolyr24SGNXQeOLueaWn4v8PsMrRFaPtrajeJb
   JnQXXHrnOKtXiHzlZUrcsHfyThxMvT50tB30DXZCoLHVb63ZfkgoZwdjg
   Ce7gYuLsKMXv2Gbk00D/N94rUmNp92kWkvsdqFDU1iH0l7vcwngJKy+EJ
   FIeud/CU09ew68/CwDMg4qfAwOW0YGSDGLp6VE8jfWsphQUrjl1aSaEQJ
   y3glRsfzJzoRyBKCeAust8QQg4ZeVOfp/A6BN9CUcXN3UB16tm5O8RrUR
   g==;
X-CSE-ConnectionGUID: ugZyBFbCQE2JwcyEpI2/Pw==
X-CSE-MsgGUID: m/aPMDTATjWPvYTZZlizbg==
X-IronPort-AV: E=Sophos;i="6.13,219,1732575600"; 
   d="scan'208";a="41177844"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 20 Jan 2025 14:25:21 +0100
X-CheckPoint: {678E4EC1-1C-C6D8D88D-F91F9E6B}
X-MAIL-CPID: C69335771B147E5FE6CECFDD8A1952C8_2
X-Control-Analysis: str=0001.0A682F1F.678E4EC1.0075,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8DC141611A2;
	Mon, 20 Jan 2025 14:25:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1737379517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=78hFLxJMZ5BSxXaEi6N8mTluP6Y4p1HUHn9cC/6qaBc=;
	b=rZYcPdHn7lTNtJqYHuROVodoq9CyzHhZeP2H1vbEYsNgfhQcb4t4af9YRM0XN52tUB6ePb
	JHSLaeci3MlufGBPuSstyVXgGbXn2lE9/ceIqohLsclwp+BoBYTDNUk2hG9n9LABZpYvPS
	kr8OsGqWbpTtt/Mqfn9yVgb1+q0f7jp8qXK5TiG2sv5p4TpFftDARdMHU0b+jBJb9A+xp6
	XZgEnTOVPkaQcdq5GImVh9Bd+oK3Vz8Stwwy05QsQPOlcviGoLYjSQS3f4DgixEiW3V1nI
	rpQJ1/4g5UqQLBuvnP4cbAi09jr9O+v9Gd5YUslKL1w8Ak2/UINiXuQkFjkvtA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 3/5] arm: dts: mba6ul: change sound card model name
Date: Mon, 20 Jan 2025 14:25:00 +0100
Message-Id: <20250120132503.556547-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250120132503.556547-1-alexander.stein@ew.tq-group.com>
References: <20250120132503.556547-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

The card name for ALSA is generated from the model name string and
is limited to 16 characters. Use a shorter name to prevent cutting the
name.

Since nearly all starter kit mainboards for i.MX based SoM by TQ-Systems
use the same codec with the same routing on board it is a good idea to
use the same mode name for the sound card. This allows sharing a default
asound.conf in BSP over all the kits.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
index 941d9860218e9..67a3d484bc9f1 100644
--- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
@@ -142,7 +142,7 @@ linux,cma {
 
 	sound {
 		compatible = "fsl,imx-audio-tlv320aic32x4";
-		model = "imx-audio-tlv320aic32x4";
+		model = "tqm-tlv320aic32";
 		ssi-controller = <&sai1>;
 		audio-codec = <&tlv320aic32x4>;
 		audio-asrc = <&asrc>;
-- 
2.34.1


