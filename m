Return-Path: <devicetree+bounces-142490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69228A258F3
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21DD11881CD7
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 12:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D215620408D;
	Mon,  3 Feb 2025 12:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X9uaNo78"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B15B1FCF4F
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 12:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738584323; cv=none; b=gvoYi28p3TpdEcgaz8biBpH9jQ/7BbHSFpx6qdPKrLVHEEC6+P7MtStcZ3DfLVymoEGYPiP9jgOAsbVFeH/UeWzR3ydOiiD2vUq0Fa+HHApQ9H1kUBm+YsO/7REsB5sArciNkROgOO97qrjcH7nt2OA2zqRGbL4ibKZJQIFU8XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738584323; c=relaxed/simple;
	bh=k5qYkHF0vnket+DBZ1FdYmwYu/ggYHCra3UPodpk6nk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aq+B89OL6Y5EeP1UdYcqp3WG8P2em/n9DlfpIkO9elJWvMD+e9BYj38ForXfo7GJ7T9llr7dm4Ted7GwSRpDtq5hGqRDtA0dwEH4v7UFQ3GjWlPeffeYMyCgpwhVypjr74w5AbmfXnqdLhn+kKFruXHFaYUagAC1J8xPHaAi6ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X9uaNo78; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2f78a4ca5deso5433190a91.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 04:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738584321; x=1739189121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v27Uu7ms64VNAEkPo/pGBt9MmiVmiFZ+LIBdVSi8mQE=;
        b=X9uaNo78ZTYNCHqcNNd4v2UGm4I3EBWdF6JtHNLeVQj1O24qOUFkoVScrwD8kuZ5Kj
         vq8e9lpSf1RGWZazVamr4fO0FyPTCeV836NKxNC+DLAZ3yYDnQaJAARCXc84LXawOi4c
         JqaH6lfn/xlRH05c1yrve7PWj/G1bFVj4hFMMJmD7Vr8tWY5X6v2Z0fjUP/F0DvOMzga
         J6/OL9P2ETULy7r+51yl7gbM+b4l3EtZbGwSQKGJoNpo4dmhNIM3tnwYCr3YeA27vROb
         mvorypD0/zpTja/QXNsVVx9FDtBQcbp/ATOKlky2a7ibG6tFDzpacUEkshYDdS+IRX/x
         CGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738584321; x=1739189121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v27Uu7ms64VNAEkPo/pGBt9MmiVmiFZ+LIBdVSi8mQE=;
        b=FDrW35mwj3/eFOsbuAKmyy/tXVmOAu/roBfdGjTlRRZlCi5UsEgO6Gzb4ozYc0qCTh
         7Wzurw9YvQqjVQQEl1MHjuShlV3QCm41a+JUai4R4US9CHnHjAbbY/PpzzBazR5LCMsZ
         jBsfEO9kT71jRbAuN0xktg5NPrty0F205wJQgZ8r52fUQX88SJZtzwObkHCB+Mm03RmO
         VgAuorHWzTBs+HCHALcE9HH8OWkLdaeNEtBBOek8APqdCb2W/lTyW85KKoFNExpCd3pH
         ID8cdSnhMxvJb4lxwkD3X9X6SElIAnf5/yj/uNW0Ysfc1ww6dqvGWo9N7ySHjXYwySLM
         G+pA==
X-Forwarded-Encrypted: i=1; AJvYcCWHQKTK8REmD8FTzf9XMf3C9a7pXgVow/fdej7PwVSoQgS/QQurj77N+Gu5bwxhStm/RYDq+rx28GdE@vger.kernel.org
X-Gm-Message-State: AOJu0YwMhS9eI8Iw6OLO/l6x2AF9A3IKQFaKPskX6JEalfNYm0chHm56
	UZyQSte0E+kPt0SIiAssqIVepOwOA+hrA8HxF7h2C6p9nocZBhyo
X-Gm-Gg: ASbGnctFQo7sdCwZpHhMdHHXO+mm+R/1UeBhQiSaEpSLF5MSRaNzR5q8hUPPirf6PJ7
	MQC046bC+CNIDml345TLvGolmtBQGa9gSbvZ2GezV5uNaa54ztI5/PejYNpNqR7knvRDgePYQh7
	DUoSRll+ZTxMSQoCQICUAcLLU6Mb3u9rqjQKxC8XffT/P3/7sf9hQ4OnoSggYyr6FgcsznrLvJB
	Od8nveiS99Jmlaelb3i6vwwe07uh2PJml6LY/UwU9qJ9cOaWPa5bDEqUWYqiR3qvP4DOZBwzVJW
	PIJXDd7a0TBSU6K6l/0EQGqzie2SfA==
X-Google-Smtp-Source: AGHT+IHyIauWTC9z0duzSMqu8c57XtVz1O4+agEiGC9Y2shf1npJnycIEzwaZl9lF70bSILlvQbDiQ==
X-Received: by 2002:a17:90b:2b86:b0:2ee:b875:6d30 with SMTP id 98e67ed59e1d1-2f83abb34femr33675709a91.9.1738584321382;
        Mon, 03 Feb 2025 04:05:21 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1fd:33d7:73ae:fe66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f83bfbfe8dsm11060468a91.48.2025.02.03.04.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 04:05:20 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	lukma@denx.de,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH RESEND] ARM: dts: vf610-bk4: Use the more specific "lwn,bk4-spi"
Date: Mon,  3 Feb 2025 09:05:11 -0300
Message-Id: <20250203120511.996058-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Currently, the compatible string used for the spidev device is "lwn,bk4",
which is the same as the board compatible string documented at fsl.yaml.

This causes several dt-schema warnings:

make dtbs_check DT_SCHEMA_FILES=fsl.yaml
...

['lwn,bk4'] is too short
'lwn,bk4' is not one of ['tq,imx8dxp-tqma8xdp-mba8xx']
'lwn,bk4' is not one of ['tq,imx8qxp-tqma8xqp-mba8xx']
'lwn,bk4' is not one of ['armadeus,imx1-apf9328', 'fsl,imx1ads']

Use a more specific "lwn,bk4-spi" compatible string to fix the problem.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
...
Changes since v1:
- Only resend this patch. The lwn,bk4-spi compatible has already
been accepted.

 arch/arm/boot/dts/nxp/vf/vf610-bk4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vf610-bk4.dts b/arch/arm/boot/dts/nxp/vf/vf610-bk4.dts
index 722182f5fd17..2492fb99956c 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-bk4.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-bk4.dts
@@ -119,7 +119,7 @@ &dspi0 {
 	status = "okay";
 
 	spidev0@0 {
-		compatible = "lwn,bk4";
+		compatible = "lwn,bk4-spi";
 		spi-max-frequency = <30000000>;
 		reg = <0>;
 		fsl,spi-cs-sck-delay = <200>;
@@ -136,7 +136,7 @@ &dspi3 {
 	#address-cells = <0>;
 
 	slave {
-		compatible = "lwn,bk4";
+		compatible = "lwn,bk4-spi";
 		spi-max-frequency = <30000000>;
 	};
 };
-- 
2.34.1


