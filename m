Return-Path: <devicetree+bounces-227324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 789EEBE0843
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 924385078E2
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A67C30FF31;
	Wed, 15 Oct 2025 19:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WaQR0QkF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2234F30FC0C
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557481; cv=none; b=SBCw5MY6zKWHwYmRVltx6KdFQH8DvOBZMUAVt0ZeBOWJdJhMq2JG7IRLqyOCl47KTFlEUzbXn8KDlBvnkabMo1Dlm3zPbA4dy4btVRhpIHjChVImKyGy1lQbX1Q4eokpViC0sSUmsIz35uPSmX/hCCddY5u0QTr3f67XhBJyjpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557481; c=relaxed/simple;
	bh=Ovos97kB24kZOCw0iEoYD5BQRJ0nrfkGVhWD4gn4w48=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eXFvMsaSbYcbbicPHuvOH2jc9gu07m3WwMNxb2iZGWK6v1Eak68RLEwcyw9LdXjvH+2T4cnFcL2PpeaETEg3AAfV5WV3LmpXYLtCq12UCYWZYeinmiFwoWM0maPNQvLwgV7WJj8ZfyEa33hANdezTc6bK4iNzJlUOV0J1Cm7Yv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WaQR0QkF; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3fbd3d76875so190833f8f.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557476; x=1761162276; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nVIjlBezqjwlP9ZoOZaGlXSxdWFyyZWMo+uLBCHG7JY=;
        b=WaQR0QkFUB22o6JI8kimLvvB4A3AffsyEYATtgctXLJDlAnHevN8FfDxNB2a7Y+qk+
         GdC0S6ulsfg94iOd2XaPgYi5gM1Pj4hlmLo8VSlAQG+CzJshA3WZMMOKL0EDjkPIbGRY
         jbJmVRjoqtcJSgg3WWs7TOdRGwYsP9O8f0eQygVEL5V0mbYQdDjgDHU6yLs2oCy1KW7M
         gjPVquPCq/SvKp1pHCqUBPtRQK2yFIMtaYx1KTlEqBX87VxI3H47iAuhkxX0ZQQCYC4+
         YiI+CBdyU4lmDM9Lv84NWtAT897jWRvG8w7FrmpwU7snEdH4NG3qW8mojGR+qg/fZEmj
         0lrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557476; x=1761162276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nVIjlBezqjwlP9ZoOZaGlXSxdWFyyZWMo+uLBCHG7JY=;
        b=ivRHOdRopF+Bln8Ri9BMxFJTiu+h0/7kA9riJu0pSkBeqBJEtnORJB7juPGEMIBf4M
         iaRqFwTS3/g8tdOWoQbLKs6dwAfWZcqO5nbQXwyHmHjSyN/vyWwYCAIXYxGk3g8KfJdv
         0Terqu2ex1ZiNE9ZTdE5Kyol1ncr4vTnVRjkUdYjSyEyNn6BOG+wCK2TqEunbta1cBVk
         IlVrHhdRZSawxQt+m8MGFVPe17kXRLz9quRwf8XLxkPv8LNWyXco88pIzwq6RQBO1YWt
         a4tdi3mZkOg+u7TNDIht61n66YCVUKC/e+DBctq/vw6H1f9E9WegTf2M2zr/OqXqe5fg
         +fFA==
X-Forwarded-Encrypted: i=1; AJvYcCXjCXDVbWrH7Xgfl3M3rGvH0/zBAvLPWu9KkC6/RiCHIhvht2Zy61wf6n94izkalUukMOB6oVK9htqj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+CdEbIIaecJIrEOIYiuJ8PkYixIf1/gOd8BrCPpEHHHcI1o/7
	ZoioDqlq+0elEl8QkimumDo8CrxWkK4fKzr0yCmkBoOjhEsryUP+0Bvp
X-Gm-Gg: ASbGncu4BNxVNjFmZiRAqvkug/m/qKQCYPCiJEH6gW/v8KdWJsVMx7U7uMIhpMswCGe
	TBE+oM64H8OuKUXbvVHG6mPJxAIfxIf2hEPbtsBMOH+heb+GXGUHsCzpbaqgbMSIuhynR1vs+G5
	A0uM6TOMLRCY257ed9KZh0NVyaPG2dC537KOCGf23Fck+3qdui1kjgeqjmRf1FB4sRmr4f1nrBI
	fcExF+/RlrMPa6OLcRJSTUOk736xt7a94yecpQpBuMiNUmjfku5U9EAz3g5Hfd9kc/DhQ2JEoXt
	PycwhJehlNsdRh0V3K6oQCJIVHLs6yY2SrYfG7n0IV4Dlj7iCs9OZOYk/Me/6fgCK8S26ZC01DG
	QMICvSpQbReTYalpvJoHPy4iO8HCNbdRd7ZL5s8Zp+/Pjcq8yfQKNlE0j1QCzTMCtGX4qPirpjt
	lTK5TPKwKQMNHNit/MSBbusRQL
X-Google-Smtp-Source: AGHT+IH6tauOTDHR+VcAhwFzraMEDMNNBSZcoJrb9benMQWyHWdHVYvdQh1SJMyTVrapg/9gVi7RVg==
X-Received: by 2002:a05:6000:607:b0:425:6fb5:2ac8 with SMTP id ffacd0b85a97d-4266e7dfc13mr10447114f8f.9.1760557476284;
        Wed, 15 Oct 2025 12:44:36 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:35 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 08/11] dt-bindings: altera: add Mercury AA1 variants
Date: Wed, 15 Oct 2025 19:44:13 +0000
Message-Id: <20251015194416.33502-9-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251015194416.33502-1-l.rubusch@gmail.com>
References: <20251015194416.33502-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update binding with combined .dts for the Mercury+ PE1, PE3 and ST1
carrier boards with the Mercury+ AA1 SoM.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 72cf04b22a08..73ba3cbff026 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -32,6 +32,9 @@ properties:
         items:
           - enum:
               - enclustra,mercury-pe1
+              - enclustra,mercury-aa1-pe1
+              - enclustra,mercury-aa1-pe3
+              - enclustra,mercury-aa1-st1
               - google,chameleon-v3
           - const: enclustra,mercury-aa1
           - const: altr,socfpga-arria10
-- 
2.39.5


