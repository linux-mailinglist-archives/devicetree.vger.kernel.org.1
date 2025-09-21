Return-Path: <devicetree+bounces-219834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C6DB8E989
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 01:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7EE71892D55
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 23:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8403B239E8B;
	Sun, 21 Sep 2025 23:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mnc5yK+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0851A9F94
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 23:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758497751; cv=none; b=OFCen4L+OLrJ0cB7gyO+1jac8IqqInro9Pb/ay1f8l5wftXSXEsZImFFDjOOj2YHqqodJwxy2FjB/bjnKNaaZY++2mAoIER9s1jrM9Sg4laXfJVJ56PqabWayIh+OurFDg3cVMeDfkDxNRd9nnh2rDlUgnWqyAOe1P20ygtIs3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758497751; c=relaxed/simple;
	bh=j8OaHWrjT9UQ/r4y3qiFko5WnsxDSsFubeziXVztAQ8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=g9ZDxtg7xvAQCf8Wlo4g2qRGjbWlbNuyZlgAY2+Iq2JYRKnQzH+SzLTUd49fPhOks+kopHOY66BCxWlO8GPJRuSBAmPxqbXcJqLOyPVVcYAD4ciPoii1LW62T50m4RB9VKgQbZE+Tg5YRa0abi9p4Rd8G2VJawMmtllj6cj8NAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mnc5yK+0; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4b5f6ae99c3so42948141cf.1
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 16:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758497749; x=1759102549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CZN69W5Mtb3V8lrpdaa/KxTeb9Pg1cBMFpA8nrb6jkM=;
        b=mnc5yK+0gWFe91+iYESAU20VR9K3dZCICbpqj/M2qzdVQmGNygLvghBBkL2bFI3wau
         vPLuv+03davdm16HbIvjQJc/RjU5th6iwZRYaxt2A3BxswsfwnzGO7FIlCnhGPyuA4bG
         JjQKB/69CWUMv24RIkqBMrbg1gxwahB4Mx9a/AMJ1GKC5lgGQm4SCqEo9PZTjDmAu3Zo
         oGNwYeduxUunKAgaOqqiO7aFvVSLuHZLEM5nRomPjOy//UYgQwkv+HuJrk9wawL7KM95
         /R2TKxvCJ/M5zmgfOFGrvEqc+aYBbEOQPWUmIQWMbkk9oTMUmnr7VpItAxHDwUwKtlzD
         oftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758497749; x=1759102549;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CZN69W5Mtb3V8lrpdaa/KxTeb9Pg1cBMFpA8nrb6jkM=;
        b=ii7CcDbAWW62pzfEIsrvDNMDAf01S7CC3RiBXQHv1enryZPG0AJZeKpwvMMNy0onMQ
         9ua97fUTjFHvpvYqG1NMrSHU4IoD/uvLSJs2btQ5VMa4yOLVWHvPGmjxQP1mSrxoCt9g
         aAemQCnctcU73e1oWcUHAbVbsn1bHyE3v+NTYvzbhl4LcJuZGlYApg4A4ddSeat7V7H6
         gPK/AjDaGx6wUx74D2sTexVj9KqcFIy7FbeeEAQJFBcK0aVdoSyHl/kRgkTd6ToNJlyW
         d7wrpG1R19gTa3xj+UOMVjYAvW66b+GzqjFKqjdLrIhdZLphoMCGnx40xZIoaw1jrpcr
         Vecw==
X-Forwarded-Encrypted: i=1; AJvYcCUWLh60VRZpLbDRFtjwWZ7oe7IB8fqX2/2Ty99LhCpDLdx9jHj0WEAko1MoN/fjRXAjOH/Pp1Jbf/CP@vger.kernel.org
X-Gm-Message-State: AOJu0YzgbtdFSP+hhg7OhpFWAX4bOg/xDQg0OSMeGnz3sXa51HeDVZd3
	KqejJHMmAO3yEFx0nEWZuLo9kYl/a8oA2gR6PO9RFa6APAEZPHg61KAF
X-Gm-Gg: ASbGncujk4YYPohHgF0M0sspYcSYATaB0kmdlHZDWiWeeEf9W/VAclXE6Hcdb1C8yUp
	qEea2/DKtF1ADaZKcjyFkBp4CLsRBLQHZ5smnW3cyp7L9RXo3O07Ru58uuj2h79b3+s3p9JMHMN
	j55sfJ0G+pViJeH0ZHJxV9uC8PZvOCvrA4DLra0VALTiP8Ujlx0GXg/o4zRWQ1QZhciPRR8/QIu
	0MvvmBL8Y7VlvD/16I3vXRbxCkCkUK+tjVfnCXPCX/pA1W/i2UXfU7H1HR5BNCFBhcXH8STz4Xv
	IPA4eHVjCP8TLCBVVZpDBCXsa1KN1qNTx2IKvNtI+bpZ0fV5ijBAvHwdTDphJVWtornwZilQpxh
	ZjBjcBrXmr7XRrma+AYaqVUi04Qa/FWieby9+ACjA
X-Google-Smtp-Source: AGHT+IEuX/rG6D8K1mfoAz2r7noBHe6o05XMZUMyqXmXpDmWRhPab5YZzhU8CSDkzsIHOEEXRhXr9A==
X-Received: by 2002:a05:622a:1103:b0:4b7:929a:2e49 with SMTP id d75a77b69052e-4c06e3fa3f6mr142548381cf.21.1758497748814;
        Sun, 21 Sep 2025 16:35:48 -0700 (PDT)
Received: from rogerio-laptop.home ([184.148.194.86])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-83631a8095esm725949085a.49.2025.09.21.16.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 16:35:48 -0700 (PDT)
From: Rogerio Pimentel <rpimentel.silva@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: xiaofeng.wei@nxp.com,
	kernel@pengutronix.de,
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
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: Add i.MX8MP FRDM board
Date: Sun, 21 Sep 2025 19:35:33 -0400
Message-Id: <20250921233534.838680-1-rpimentel.silva@gmail.com>
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

No changes in v2

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 00cdf490b062..8bddf1f8a78d 100644
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


