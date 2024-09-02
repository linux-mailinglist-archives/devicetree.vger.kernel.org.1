Return-Path: <devicetree+bounces-99115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEC1968D1A
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 20:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE5771C2222A
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 18:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A2111AB6EE;
	Mon,  2 Sep 2024 18:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/ze4BV7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B041A3058
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 18:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725300665; cv=none; b=i2g8dhuCeKfvn/K8CgB2+87os/2mdC/GtZxBmG+Zrna08p94K31JnX81hce/PPkS0sK7evNV8kep8hBhbpV62rRSfG/IHokwBwNVDYqaW8KkAQWjPJF7DdCuQFAJwifPaqk7jZt3lobSQZF9gLK9SoE2OHdBWWs2/4MeK5IBNMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725300665; c=relaxed/simple;
	bh=y0vwfwdNRCb4KGDihUihGB2pQT0J1kTdUIxc50xBuSs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GOx7whrT/akO5CvLT7vgK+9+kxxLKaQPPpEDI1UHnnVNd04lNFj1v60wgtB+5sBkol+S2Ng2HZXxvNOdr27F3BkzRiTzN3wccVh/eRWF4A57flAty0wAGWfd4XsQ+SdlR6rasXrRhrLdd+4/XN9QCbLpTR1QOiLyMLvYKmLj9qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c/ze4BV7; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20570b42f24so11556685ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 11:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725300662; x=1725905462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+yJDze8KO5deLNdmq5a3x8WCpmYOyU5eyrBeNHOwHJw=;
        b=c/ze4BV7Nb6sDrVX21PBhzM2Ovk+j45At+Ny/BfLT7o21oWX2CyCQgK1X9ccRnGFvQ
         tCBDR3JUYy3VVXIN6pfzTOKiiWI3EvB3KTC6hJSdEaBczwUTnaPJOXBHZRDSjz8mdilR
         VK+3DPBeauXDG2a8lA5o7IZ1/q1DpP9A2J+GyIqmTOUJQ+EtGik59KJxNvcv2dt1GTtS
         vQWsdXgkb9kzgITWkqd8klogyY0LBsVWj4xFa03MR913WjEkGQx61z0vOpkMZC637qEh
         2scy0NNwS1vZURKdHQKyphORcjxKOiGNk6OIqPXrm1Jk9Lp+LU+/hjbw4l+LhZJWVTo6
         1upA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725300662; x=1725905462;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+yJDze8KO5deLNdmq5a3x8WCpmYOyU5eyrBeNHOwHJw=;
        b=LcNaddYZ4IKRh15cHCzagIj34kIWSt6IFqxGRBqrwn3rTyHLPlbAOn9fkgbKU3S+eX
         lIbqom98Zrdcokq6JpkuxRHFTTIrUxVzttkviRPq+zZfknY931mW8t0Owl2KAOj2bLnb
         vMpbaigpJx6pkiN2EfbHEJe84GwWPT2mgekztOXsAuOv0xDAVe4+HbRI4dPkHVCJE+jK
         7NsukPdB1M1dlvW5s0nhj7d4wEtDHCJtDKNyqj2ZC9Fbn8a/uhs7JfabLLGmBMnabq0+
         cNQCcCpKi1B5rewAzPY/md/l/Te8ONxAd2l1rJ2b8G6wQ35+4t/6N77HFowZPCK1idqp
         QlMA==
X-Forwarded-Encrypted: i=1; AJvYcCWN5Dgy5j1QgttLjDft+Gt2kE2yzEHVv8VyOpKxe0Fe2R0iphNUs3RsqOiLk6QMj7bQnjGRy8T9Irdw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8q537gBKAzTciLp0BmmMFzyh9jlId+6YjylpPAMBhw4OCKJAv
	Qw5ifpzEvUpyRgqAfu4b4WMBRxTS/y0Ota8FpSM1LMmapIED+1lscZkCRg==
X-Google-Smtp-Source: AGHT+IEYNwoeWttZF8Ri9/pf6H5iSPp1h4A47jt9Mt/J5L1+pp4n0LTps4cLEBeEKQv57kgN22oCNQ==
X-Received: by 2002:a17:903:41c9:b0:202:4863:40b8 with SMTP id d9443c01a7336-2050c3a72e5mr140793545ad.38.1725300661924;
        Mon, 02 Sep 2024 11:11:01 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9956:477a:b751:c148])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-205152cd4dbsm68687065ad.64.2024.09.02.11.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 11:11:01 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	LW@KARO-electronics.de,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx28-tx28: Fix the fsl,saif-master usage
Date: Mon,  2 Sep 2024 15:10:36 -0300
Message-Id: <20240902181036.924188-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,saif.yaml, fsl,saif-master is a phandle to the master
SAIF.

Change it accordingly, to fix the following dt-schema warnings:

saif@80042000: fsl,saif-master: True is not of type 'array'
saif@80042000: Unevaluated properties are not allowed ('fsl,saif-master' was unexpected)

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts b/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
index d38183edf0fd..9290635352f1 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
@@ -615,13 +615,13 @@ MX28_PAD_JTAG_RTCK__GPIO_4_20 /* USBH_OC */
 &saif0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&saif0_pins_b>;
-	fsl,saif-master;
 	status = "okay";
 };
 
 &saif1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&saif1_pins_a>;
+	fsl,saif-master = <&saif0>;
 	status = "okay";
 };
 
-- 
2.34.1


