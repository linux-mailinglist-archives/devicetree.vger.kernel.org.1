Return-Path: <devicetree+bounces-135079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E19259FFB34
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:54:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5807A162740
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 15:54:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206941B4241;
	Thu,  2 Jan 2025 15:54:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D581B415A;
	Thu,  2 Jan 2025 15:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735833276; cv=none; b=BbypbuaeVlJm6THn4SoDwN/+ulw9nC3428NLC7bQfd9ozh7dqaKFfMuDEQ6I0I02Q7P/pos6OK718vbST/rRPZwoJwtt4SQCGHFTP0SlTmZV0Pmz/ga0dj8ydNbxa74DYjvnB3cpJ5JLFsiBOJon7GQPXQR5LYwbVfbdvyMRS5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735833276; c=relaxed/simple;
	bh=P2Fvk5LmaPoZy212Xdx8JKIQDkLJwVEJ9beOsLFSR7k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dmDOIZOQ+6Osgi55vuatyKFih7uwg/3GuTu51fFidTKR1UJWSMfw9xLt6I4DDuIbhGz7p0jgluOD29HN4oiawIFFTaUtgcyt9M3Etz7vqBtXQsCrP8mYAcTa0Njf0jgzbZqK4BNC6YgAabj3+bBIraSmDYmIiGPKmycfC3UmAew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0713A153B;
	Thu,  2 Jan 2025 07:55:02 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1BB53F673;
	Thu,  2 Jan 2025 07:54:31 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>
Subject: [PATCH v3 1/4] dt-bindings: arm: Add Morello compatibility
Date: Thu,  2 Jan 2025 15:54:13 +0000
Message-ID: <20250102155416.13159-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250102155416.13159-1-vincenzo.frascino@arm.com>
References: <20250102155416.13159-1-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatibility to Arm Morello System Development Platform.

Note: Morello is at the same time the name of an Architecture [1], an SoC
[2] and a Board [2].
To distinguish in between Architecture/SoC and Board we refer to the first
as arm,morello and to the second as arm,morello-sdp.

[1] https://developer.arm.com/Architectures/Morello
[2] https://www.morello-project.org/

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 8dd6b6446394..40e7910756c8 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -118,6 +118,10 @@ properties:
         items:
           - const: arm,foundation-aarch64
           - const: arm,vexpress
+      - description: Arm Morello System Development Platform
+        items:
+          - const: arm,morello-sdp
+          - const: arm,morello
 
   arm,vexpress,position:
     description: When daughterboards are stacked on one site, their position
-- 
2.43.0


