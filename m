Return-Path: <devicetree+bounces-175242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED58AAB035D
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 21:05:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20DFB524DD5
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 19:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12520286D66;
	Thu,  8 May 2025 19:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H45EtLB3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B6D287509
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 19:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746731150; cv=none; b=V9RChh6Uo89BtiTYZydC53bVwuA5gqNI4OHyMU3PWe5ScroM1DW0bMQat6BCYTwBkXDKcVWXmXODDY3ysOEsLd2eZYOGyViuoqw2SAm5ERdGNruvk15jmjC62QFRGX9ROFuES2BDWoSw8pLsuYNEzereJl+In4nMEnUKfp+Jjwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746731150; c=relaxed/simple;
	bh=VTgyjfrZGKZAmezb4rBQ08cviL/JEGukuMxZcuqc1b0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=guh1/IBe2HvKEzVOGa+6s9IQ2uLxq+tXbkmiI2ZcK4XrCU3Q4I3wZG37hVVY87geQYWMDm9lrvmQ1x+b2NqhWTjYZ+Zzee2xxO3ke1IjhxfQvADHaiD0eOon4wtrN58IghoxpCjehb0K2C+TzhEAXG0vYQCduiQ7MnBw/AdlOEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H45EtLB3; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6f2c45ecaffso14057676d6.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 12:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746731147; x=1747335947; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=le5KQCvWqOEE8uCC3fpbzR33yLLuBj9VjVM/PROhn9Q=;
        b=H45EtLB3X7ERlfqilW0XT17lA8B9rg/xcXGhCGoupABpsu/kPGYi4k5Cj6bBLXazd4
         LQTs9iaq0RpqKp0ycVbnZfRrigqkIQxFA4v3tt2Tg4eF9SMi/FmDz1vAbq9wWGsUcviP
         YDs9nAA7wInwXWVqg4F6OpscMhFioeiPhr95KL3ATOXeiKImXdf5uHP9nZczJ6djZx35
         qXNeKMZ0mULhXlPqeWEUEHvo/NPdf11nZJStXL1eCeu+A0ifoMTHrC+qd0IIZprEW7KE
         CdP40NjTN76ZRE88WdZwGrK1+vINL0n/gk/dE3wf++Q2VxFDOCj0eI+ybanltSGhjak/
         mJyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746731147; x=1747335947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=le5KQCvWqOEE8uCC3fpbzR33yLLuBj9VjVM/PROhn9Q=;
        b=IkNEZUhnVlXa6+xMFuMtV84ePGKzxC0GMGA8CufF9PtV77L1jMK1d17RK83eQo9AXE
         wdsB+qXwjgSFuHjUoHzKpNkBbJsQhzaAClRt0a+k51bSOeJkzyq+tjEcVmQyPmaPzj+P
         wx/UEvdoe70PGLd5WUx9uj4o5f2F4T+FMnhcNycTHsatUFv5PD/w9d2VBTWQvHnApVOq
         gm1YVoc/8+IR99pXDk5b4d0hBG+dvirIbCDt1Jy2wi3rC8T4Y4vM256qt3Egh3M/eqg3
         +YUo61qu6PlKw0CHLMfgSec9LM9F03/VtVDNrjIPIgSgLF8H8dZVIRfjbLoR9C7BTB9W
         ph8Q==
X-Gm-Message-State: AOJu0YyIClBEOb4MNyIIn0DjEwoMTjqbtsc9OTXezcj6wZDfD8FiDG8R
	iZmix4qNUGXhx72MGWwZ8sJ4ITzbkmLRbJVYJ6pOaBjKMOU0LGrQ
X-Gm-Gg: ASbGncvvnMH3wftOHzGyAcpc2s2dEksloGfDwOxts4Iylc2dZZFRtyWl7A83iB10KA7
	rY4R6yz2bjNGAy71INlRDp6kMIzS6snDdnmcVozp17fZ8sdHp3mryj1DWRxPeWX4aRXgZAm1a4O
	eME9mdIWUngQ+zmwZ9EIr6E8Orjw72vyDVYgpQGp9UAL/RMViw0G5bEDxdHyBtocI1lwissI/6w
	uvuNNgalzR4Gm16QJ1kCbPYTylvLTEnCuMQoilnsvWnqnxzOECtJPk6jRNTGGNgsvMViEbuTT+Y
	Dcmh++rkuzEGjTTrmvCFCHFMwl7ii74hWFIt3xDNLfoW3T/cb7R8
X-Google-Smtp-Source: AGHT+IEeACegYp/zt9e/FFMq/KRD4iSWd+tG/DCi5H9Na48vpvCi4H7JTTkAlcSv1ADtMOYmaFNKjA==
X-Received: by 2002:ad4:5bc9:0:b0:6f5:35fe:6a80 with SMTP id 6a1803df08f44-6f6e47aa726mr6887056d6.11.1746731147100;
        Thu, 08 May 2025 12:05:47 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f6e3a0bee8sm3148216d6.54.2025.05.08.12.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 12:05:46 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
Date: Thu,  8 May 2025 15:05:37 -0400
Message-Id: <20250508190538.22295-3-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250508190538.22295-1-inindev@gmail.com>
References: <20250508190538.22295-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds device tree binding support for Luckfox Core3576 Module
based boards, specifically the Luckfox Omni3576, with compatibility for the
Rockchip RK3576 SoC.

Signed-off-by: John Clark <inindev@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 455fbb290b77..92f494bae3bf 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -715,6 +715,13 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: Luckfox Core3576 Module based boards
+        items:
+          - enum:
+              - luckfox,omni3576
+          - const: luckfox,core3576
+          - const: rockchip,rk3576
+
       - description: Lunzn FastRhino R66S / R68S
         items:
           - enum:
-- 
2.39.5


