Return-Path: <devicetree+bounces-236464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CB7C4485F
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 22:45:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 008043AEAF7
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 21:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19CDC2253EC;
	Sun,  9 Nov 2025 21:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P3kK4ZBw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8124B1A58D
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 21:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762724727; cv=none; b=Lj/kyOyZPRAZp+OIQ+jm7Ka8aF6FzwIeWsZV4U40wlCgGGvGzXcuAJUwabrTekO4+Q+8yhLcYfwscoOSO2ZtSpkS88UOb5CiHkTAP5Cvndee7qCADGkZhVqzazinAUmFag3tJJrup80YO9UImC0znzspHCjTcsQ2eVUVsjHYWJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762724727; c=relaxed/simple;
	bh=BOO+Je3XVBfibXUXhjtM+aF6u3UgCUzTUQdElwKy0ck=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=g//Sr1Og+CRX2U5H/pM4li5l/G7XYA6yKWDJ6/lGVKgMydMx7ts965w3RZQQ8dCEsVOcJsDuOGPfOXBu6iSS6Yy/740pHo4WCXK7BmpyHArbLlsIEUX8iqcO32Wql2HSDyR4VhNlb9iLmlERtdp/30cN8fVXpMAW6lgm/BOAGI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P3kK4ZBw; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4edb2eef810so10985871cf.0
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 13:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762724724; x=1763329524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2UkvAHMxncU2Y5mr7DiOlJe0jQHZALyUcA7OKmpGVgc=;
        b=P3kK4ZBwtsyL909uN4Ybtf7WyotzDUyQlgu0yUCoJv+0dHwFmKABe5Cer/64+gYbbg
         TOA9uM/8ktG493691rtLZ6v7XKnGnpAl4IJtPyTUZ2843NOywHr8PAOFlQp+oU1j8nnI
         JKaAXwkkIEJLlou35/Z1sYEdYDMA+XIvRF9H3AWRNb/UcjqNTELlWenzN9TWUrNz9ZCX
         tEj+UIejSVw7VmNri4qAVn7dO0UroonPsf2Ytw9FUldp6ZUIkwrIEVqePE59Mz86VFKI
         2d61kTN5bTxC43BiIARGe52PO6JdJ8mOupMhOV6JIwgkI82xoIgWYA7wFPW4+bmMkLFl
         Ffaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762724724; x=1763329524;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UkvAHMxncU2Y5mr7DiOlJe0jQHZALyUcA7OKmpGVgc=;
        b=eEBRspAcYVH+NBwLSxqtFXlR4LaJMhhIF2RDPnT2lxeZMzmNIqlAfZXyjr5HyBuWgb
         vl9DbsHplMydIcYUXZ/GHC4T1N0gJpFEt2a2feBwUMGnzMMz8BozC1Urhb05Ep6J9nA2
         nZtznSxip+zhYdQpRIstz4OxosE6TLqs9Es4DvSK8ROEFyMv1XD1gyQWfEfPIRcKnF/v
         lZKJm0c8RnEEJ/rTgk9MjV8lDXsCWALkIQdc/0C+6fHXEhYmVmOKfEdFIZBrq1gIgIA2
         G//zla5ivtoZor5tMAG7FAhEbNJaS5XLoSrQEWhGMCEDBS8KHd9V1U/mX4lmArHyxwy0
         YPsw==
X-Forwarded-Encrypted: i=1; AJvYcCUnkulvXguzODQ+y4XFwPqFXP8ucppxTX2rcly5MLok4XwRXPZEqMYKTK7r0J5KcpRsDnPa21rWTDLQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8gI8usVNQOHIDySCWtK/mJMKgAq8TPkz/JWinqKCnf2l/KeZa
	XYYU42ptfUjow1MGGvgooS66+lOaCglF3s3Joo1JSUXdky7HnnP/E2sl
X-Gm-Gg: ASbGncvAaHanXHjrhfvhcUBsClE/E769LmsKYatNvwA4s3NoZ2F5RmW8KuqxRvzkM7M
	s+WKyj/4PinKSedRtzT+ivdUnENUYDeUVy8M/cJMx/w4Vcr3Bf4CrxfUuAKRao1Te0grTDtMNUi
	m2zE0n+rY+26Hb1eOnqP2PYqPINNWbBgGX7kZcMasH4VffVCDEf7ezAEkjtkmfndT1y08MRvBdy
	i8eAW/pje9pwPgHjacnPxZbmzMdDLX2uuxU2EYve0DsoHq2rUaSXTIdguz7lTyjOrfm+8OgPjb6
	LJMPQCFUF9yCBsuWtkcRYLWLK8sMuD0iM4SFnvbI2AQfpeATd/z0ewpxvKaogx6ONIgECFsfbsk
	HuR3ttgxTSCFdjD1feZ2qBsyl1oyrX1puFJck2XifMqj1ERgWBQ3vxcDP7DXeIQ+fsytgMtdRjv
	v/XW4Fn0pNRMVIP1q+Mw==
X-Google-Smtp-Source: AGHT+IEO6aQCuJCW62+UaVaTjY+QCSjAHhvbQVmQh7V/364o7l0RIj5zQd8SK9Ou2X+RfANIrJ+c9Q==
X-Received: by 2002:a05:622a:198f:b0:4ed:bbca:fded with SMTP id d75a77b69052e-4edbbcb0857mr21223051cf.17.1762724724459;
        Sun, 09 Nov 2025 13:45:24 -0800 (PST)
Received: from rogerio-laptop.home ([142.188.15.215])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4eda578532csm34422821cf.19.2025.11.09.13.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 13:45:24 -0800 (PST)
From: Rogerio Pimentel <rpimentel.silva@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	marex@denx.de,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	joao.goncalves@toradex.com,
	frieder.schrempf@kontron.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	primoz.fiser@norik.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rogerio Pimentel <rpimentel.silva@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: fsl: Add i.MX8MP FRDM board
Date: Sun,  9 Nov 2025 16:45:14 -0500
Message-Id: <20251109214515.121742-1-rpimentel.silva@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree compatible string for the i.MX8MP FRDM board.

Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
---

No changes in v4

No changes in v3

No changes in v2

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 21b7168d61f5..f46cf6d1f502 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1099,6 +1099,7 @@ properties:
               - emcraft,imx8mp-navqp      # i.MX8MP Emcraft Systems NavQ+ Kit
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - fsl,imx8mp-evk-revb4      # i.MX8MP EVK Rev B4 Board
+              - fsl,imx8mp-frdm           # i.MX8MP Freedom Board
               - gateworks,imx8mp-gw71xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw72xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw73xx-2x # i.MX8MP Gateworks Board
-- 
2.25.1


