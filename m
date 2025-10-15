Return-Path: <devicetree+bounces-227326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FA8BE0870
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C909B482488
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D04C0310644;
	Wed, 15 Oct 2025 19:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEAn42dl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925F930FF04
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557482; cv=none; b=Oeb0792ZKKl9tA4QDmYtALATpiiFM0wZRTfIr/aR/Rk4r6GnrFsU1AdIqNuqyXy7IJyQxYpFrtOQSXu2Ag3GxBVeU0AnUly/mOvGW1s650W8X+NoiA1CopkUsY1wdEp4VCtBlH6K6nsVpwJ3wHK/BX/c/a/kQEB83J5OrJ776ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557482; c=relaxed/simple;
	bh=MBbQJW+NHrsJ62AtPx1M8sE2HSBkT7GHiLm3T35Aq1M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZllaLGhh7tXIen3bgk6DEGG36o0dkkaIaTiyUqZWZ54S0PxEWJF59itFUrrqM70sYEVpN5hYVlD6S2BNfpqq+kUqvfaGaaNGjzLAxG4Sg2z4QH0SzD2qUTFmac87CvnBHQ0zWJI9dtokMsRsJQAW9LQLmNULRMJJl75sJf1q/70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BEAn42dl; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3f5d2d99b8fso208842f8f.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557479; x=1761162279; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hoBQP/hGH1uLF8kGVmHkT4rf/U0Rs81FCeVO2XCGGEo=;
        b=BEAn42dl7ZGNnrnb8r0W5chHjp6Y7LTCwur1yfKyvkJ6GGyrD9ker/c4eFr5OsXbxy
         sT9ABxkpEnSG0CtdT/IVkb1GcleI3cVgSg0gyEISPt1gBx5ZyF9W6ygw1luTJRIPpi+O
         S+3zBQ6F0yJfVg7Kmd479TVPTYJtMexMitpmb2KTpLwBtxjNPDOiznqH72l1buIWiq2Y
         J08i8lR6BifEQWNshKdzgC7Y+Ca6deq4ZPpO2tppZXwj6UKhjf6QR1fNDbkbgNrfADyI
         /enOdSxsBD3y6tkp3l6ZIXmBSr/bcdmRJxGSH1plymSHIXSpONmvA57MSRGGkJEStViP
         gF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557479; x=1761162279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hoBQP/hGH1uLF8kGVmHkT4rf/U0Rs81FCeVO2XCGGEo=;
        b=Vc0cRW+dGq7OuP1ha75kMGi4iZLD4hedWlddiY7cQpkb3o5LJI8WL2ZB2wOZlxOwZj
         dKqVrOszeDRaoY+Dg85eFnyhMBz2pzMi0JY+N31gNKczh+jH21D9PfZEtQdsBV3d3WAM
         E03Ua4NA/RKjxNCkFgDCyn/qk+EW1LGdKBAae+umjuLkTpDGCAidEWOQgE7gAIysO7ED
         1p6vW1fLZ7+CbpxftAOKjeEbl/JVeKFGbLO/5VqrCG+c557uyYGCl0s5mL46cFSJO9Om
         hqukhroUUFIwzWZH0PhhFQRbcl1XQHeRHyroDv0L6EQv+fQaiQRtPJ3Ox3TPx/hseoXP
         WBwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIyG1PowKnfJ5x+Gmh3aPMGytg/nCIMUL7ginDLECjJF6/NO2ZvmK7qp5xzpelj5mxX3DTsAuh6P/H@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5CIyYZHu6Rgpnc2ghnxgo3y0pva/PlHSw6YUrw64AvY6o3kxi
	7GvxK/h9PwrgjU7vgyCyTtBhImZWHs7CVcCa3+CTNhUlNxeEuc1X7OZe
X-Gm-Gg: ASbGncsGKFooDQxGpIppQKQ+aXV7R6Wb2DW0UZGg+Zy8b03ax/HRjbdFB3dH86NZVhj
	oUWyx6Vf+7iqZUX++EC15xqO3WeTavTrkV6hDmftJDf40kGNxsNUG/zHl+A8oQHZG9yRX/qx+M8
	OQqWhKot+KH9r7H51gj19+ZbAFrMSMExzuyHCWllSlpBIJ5F2d6p6rcY7qQ9caw3D0985kcB0S0
	rkGVX8dDalE4Gtie4xFT8xh2bo/aYXW1pbUUTcKuJUGjPKg6g6gv59fR7X0QphQkB2lWr9nOZP0
	czLC5dT8kK1yrjuIPFd3xw5YV11VQE4F8xEPymGw2Eea/lDZEmwpGLRG+a0NybloG6F7Va9rWPp
	4lEkYH0BICni7E4J8hTD72PLj5csFVYuULN57UMxsEPTj8PaxpkklMnEhLiFOZKmMmcoIsytXjg
	o4QGGfV0XNB0aF9A==
X-Google-Smtp-Source: AGHT+IEFnPBBNgrbjKe/zQNquXEgrG6ZSegL+rvJWEPlqjHP4bubJYt+JfDeTNKd86AxPjjrP4F9Kg==
X-Received: by 2002:a05:6000:604:b0:3f3:1695:7c49 with SMTP id ffacd0b85a97d-4266e8e0af6mr10229731f8f.7.1760557478658;
        Wed, 15 Oct 2025 12:44:38 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:38 -0700 (PDT)
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
Subject: [PATCH v6 10/11] dt-bindings: altera: removal of generic PE1 dts
Date: Wed, 15 Oct 2025 19:44:15 +0000
Message-Id: <20251015194416.33502-11-l.rubusch@gmail.com>
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

Remove the binding for the generic Mercury+ AA1 on PE1 carrier board.

The removed Mercury+ AA1 on PE1 carrier board is just a particular
setup case, which is actually replaced by the set of generic Mercury+
AA1 combinations patch.

In other words a combination of a Mercury+ AA1 on a PE1 base board,
with boot mode SD card is already covered by the generic AA1
combinations. There is no further reason to keep this particular case
now in a redundantly. Thus the redundant DT setup is removed.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 73ba3cbff026..db61537b7115 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -31,7 +31,6 @@ properties:
       - description: Mercury+ AA1 boards
         items:
           - enum:
-              - enclustra,mercury-pe1
               - enclustra,mercury-aa1-pe1
               - enclustra,mercury-aa1-pe3
               - enclustra,mercury-aa1-st1
-- 
2.39.5


