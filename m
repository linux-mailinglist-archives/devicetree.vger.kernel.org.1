Return-Path: <devicetree+bounces-76145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1428E909C6C
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 10:07:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 257351C20A32
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 08:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22EB0181CFA;
	Sun, 16 Jun 2024 08:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LYhUVOqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715C3163AA7
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 08:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718525226; cv=none; b=jLJyFci7BgEayklO2tysUJRR56tXx0G5kDAO1rbRYwZx13QQro0rR4EK0DrRrIUzS/Bch9HvRtNsCOhhS29WlTfnNfJsGc0QMP2VlScYG3+X6Jg1olnY5tdW4V65SNt5IT7wIBXqaUKcpOGGMgf5pKMTrsxQ4SSawTh06YNTIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718525226; c=relaxed/simple;
	bh=NMqn47xTcZUZtwmPaIuc3UPEQIWpCFeoW4y6K898tQg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZPB6OkTLmKstM/H27fZSdq7BARwYuvb2d4QbF6RQBNyf7U7NlMpKfsIsK9ZH44g3lDI+jHs7i4W52w5OjVmUPljv2gGdotR82gLgj3+arCfvhIQ2JCo6jL2XjKdexrJOoQO3xUQmBXQo8TrVUOngIdjRH5PBli6urtThZvHIAi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LYhUVOqx; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-579fa270e53so5158614a12.3
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 01:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718525223; x=1719130023; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=40sPRExwP3s/3ZijtGHfQupkdXxmU+DCpAvlWfd+DeA=;
        b=LYhUVOqxejydiFfbCdwojhZuV7d36fyWHmqjrwMhAJzK3HIxNttdskTBK+fk+gv25c
         OyX4IugI09D85Jfum5RZrZxvW+rYFJDl6kZB4EPC0fJ+oZoJTWWMZqfqa9WUHfGDf6lv
         Fv5Zp+2znXxotWtqZ3b/qbMyhZqQSL/dqpvBkt+iiYlUczIxrOob6VU8dHRxcQtvVoPH
         vSbo995vW+Ae9D5AIvIG26zbAf0dg9rAxAQlSPQXbvXJS8Zf956sPRxsWq82HaQbm7Pm
         /RYPc1viDeNAVhtgN5pAX4AFzCckmLxr7qZwAiVyF98YWPZy87FLDgd6ESW7uGvmfVau
         on1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718525223; x=1719130023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=40sPRExwP3s/3ZijtGHfQupkdXxmU+DCpAvlWfd+DeA=;
        b=sNHKYdrCbIIKBrRIQjNzgjc7g4fin+xh/NL1tjQ2/4Z295SJVJ45o99VuNp3RtZN3o
         BbZ67/RrGzzawGiJreJ/kCg7UhYBWY/FrOyGz/EKgP3xarpXaoCgCMFYJywKLZFdFibO
         ZK6MaqtzHgoqhrjtiZZki0cLIHX8NYPA5yCuREptSWB88CWP2qh4wQclv9miCEBFRY7p
         YY/zqVuDLfQzhWVW/eJEdV9EULYEKrjiYMx/JoPk3ZPQ7aRS3v9AxkCzhJguEa7cwICP
         HLVvu/azvg5dgaWRLQYF7D64ILhWw7lgYbyxNUJocEXV596jAWxMJk/qvDlxE4/Lu5hj
         y54g==
X-Forwarded-Encrypted: i=1; AJvYcCXhpVbUXB9EyWHfx2RxG/cPoyPnr0pJIjW8qnUEt/KwF0QRNpBiUVKh2i7Fx9UfZoZFaWlwItHx469OJL/L9XBXBrt/vW5Bc20bFw==
X-Gm-Message-State: AOJu0YzAHreCJnvep7119Glq272xawHQLoMomW0lQUVm038qNfMIwUXh
	Mr4PINwwKZU6yG5C/UQP0qwa2nbDFJ+o3lI8Io/BYXp2g1gBMTpYOPEquQ3KRTE=
X-Google-Smtp-Source: AGHT+IEWqzaL4rz2SQto4mPk3yipJY71jqGFV2WhkQttfBqISZrqBKrS2Uxip+JUE2MkM/v/hkOMEA==
X-Received: by 2002:a17:906:5f9a:b0:a68:b73d:30d0 with SMTP id a640c23a62f3a-a6f60d13d2emr555195466b.6.1718525222766;
        Sun, 16 Jun 2024 01:07:02 -0700 (PDT)
Received: from krzk-bin.. ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56db620csm383485566b.71.2024.06.16.01.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 01:07:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mfd: Explain lack of child dependency in simple-mfd
Date: Sun, 16 Jun 2024 10:06:59 +0200
Message-ID: <20240616080659.8777-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Common mistake of usage of 'simple-mfd' compatible is a dependency of
children on resources acquired and managed by the parent, e.g. clocks.
Extend the simple-mfd documentation to cover this case.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/mfd.txt | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mfd.txt b/Documentation/devicetree/bindings/mfd/mfd.txt
index 336c0495c8a3..98b4340b65f3 100644
--- a/Documentation/devicetree/bindings/mfd/mfd.txt
+++ b/Documentation/devicetree/bindings/mfd/mfd.txt
@@ -18,12 +18,13 @@ A typical MFD can be:
 Optional properties:
 
 - compatible : "simple-mfd" - this signifies that the operating system should
-  consider all subnodes of the MFD device as separate devices akin to how
-  "simple-bus" indicates when to see subnodes as children for a simple
-  memory-mapped bus. For more complex devices, when the nexus driver has to
-  probe registers to figure out what child devices exist etc, this should not
-  be used. In the latter case the child devices will be determined by the
-  operating system.
+  consider all subnodes of the MFD device as separate and independent devices
+  akin to how "simple-bus" indicates when to see subnodes as children for a
+  simple memory-mapped bus. "Independent devices" means that children do not
+  need any resources to be provided by the parent device.
+  For more complex devices, when the nexus driver has to probe registers to
+  figure out what child devices exist etc, this should not be used. In the
+  latter case the child devices will be determined by the operating system.
 
 - ranges: Describes the address mapping relationship to the parent. Should set
   the child's base address to 0, the physical address within parent's address
-- 
2.43.0


