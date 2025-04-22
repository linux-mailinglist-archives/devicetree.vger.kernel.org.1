Return-Path: <devicetree+bounces-169634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B30A97B13
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:37:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBA88189C403
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D035215F5D;
	Tue, 22 Apr 2025 23:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="byWllxH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D453E2153D0
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365015; cv=none; b=oKWvz5LiePVpVDOPcs0Rsy4B7U4+9/LBm7ciHeOzkGEEGq9wL3YoBKTBmw83wvBv+envuC1Zh5qRmp1JQtIXeXdpREdFTuy8nwdtEAoc3Z3DTlQFFTquwefW1kS3nYW0/FWJsdW0eO3+1MQxjODOlj5o5612gaqUgGaHEGoxK+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365015; c=relaxed/simple;
	bh=pF8ez7aFcLBbvpQpgh5TTTiNbweXDacQUMN7hsRktsU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TSkStqNy46HclRaABo+dOruyoCPykknQYwjc05B0hr0iTyihUITEfax5sR6BAp6WHGN/Heagj87Kct4oWfxLyUF+gdUiILh/P6nvQCqOTjL5Ik9hKErOGqcHNKgNex4FaKigc3IfrdXuef0BjKfH8qSYCjSCVRatdyYfOzwH0Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=byWllxH5; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3f9a7cbc8f1so1588565b6e.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745365013; x=1745969813; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YxbTj51VJBmBdYYQuCm52KKYLeJDF2R85Q1Cr+YvRDI=;
        b=byWllxH5ZA04k3j6eNHHv12tXdNxiHejre5IZzhei4Qa+vrOm7uk0VRgATtPm7jpem
         GIt8Pq5tOVUZJkMsqV57xKGLduY78KaWbnBhe6Py7BEar5lcSgbKz7FpI3Ubd+4GH1yG
         t1A+GiiIqwmzrCaDXrfwzPR4mbSuH1PttDPGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745365013; x=1745969813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YxbTj51VJBmBdYYQuCm52KKYLeJDF2R85Q1Cr+YvRDI=;
        b=lG69rz1u/G4j/OfsGpanHxqPJzwqCrxfYNp0D0B73aAT4O4QiPsQEgGmAGW2B5NNXy
         Q08hwRdTUqLXfRk/2xm+RnPS74YarjBHpQDT+8y3qRLw8jQZYt56C0XjsW2MNHyfhSOO
         V4K81ctdOOW1vepeYU74nbHZOCCQP8sJtL0cbogMO+CiERrMdNzdSwqNzGXY5a+obXZP
         r+Tc/p6We9sOirF5FZrdq63actBwpkexMdkJjdnpsan/xQPs7XiLfiFrsEbd9ulEYm/Z
         iB/fRYAto6NC2hPNrWZ43KEmwJDU90hS4OuZsqUQc34DVTyQ9hFfyPRgd26Yl1R+7SHr
         9b0A==
X-Gm-Message-State: AOJu0YxTg5QNzeTk2IOtJsu725VE2rBMdiHJvCmMRajfykTaREiq3D0L
	8ZLNYryMHiDOuDwpC5aq7Rho/OhwliDNNVcOOi2Cd+vYAL+ezoF/kMNt2q+oW9vnCbsFdEoHOs4
	3hqmrz4GEBKRzLrLhdvtJPLlBZo6PgVeQIUtcwxUUjCIFIm8fFLWCx+tXyN39gGcWkU6mRmu7J9
	46+xy2pmP24xgqltbnW866tAqjXhUAI5MsefqhKkYnAUOZBzQ=
X-Gm-Gg: ASbGncvumFQ1E8SJUGqrCuLGTf9TTha7WzRefS0rXV5jiOq7pzcJemQxNlb+t0Np6zq
	cHIItsqDhrJZ62H/7bTZ5il/LO4vq055ifbKHarKCov9raH+jGxXI4SsBZBMiHpKp4q6dxbpkni
	q124uvld33YdCA6JiYsBZtozkeyg2vyv8iOluBOjFMk1hL7cPzh5Pj5hDlA/6a0+tGFIvwe91co
	o627OVMp+BrZ7SDeFdHXqA4sC5h0WG7W0ahN1s7qaNU9Dg3M5eS1EFH/ooa5y4KXyeW28g01mBD
	J4oJWV2Zpqn+RkJ1YhpV91Hb8caetJ6120ZNx41V4FiR3LrEi8OrTK85CAVKWc1V5KUL/1vdqdh
	xCNZMz0kRzUY3MdCHnQ==
X-Google-Smtp-Source: AGHT+IEgzj9z3BiKM5p/koL0xTOJSuarSQ/kGm2LJ7y0keZ0ot7GJiasLqYoNQTyMaYM127wYpCSjQ==
X-Received: by 2002:a05:6808:2e4c:b0:401:16e:c5e1 with SMTP id 5614622812f47-401c0c6504cmr11728599b6e.32.1745365012688;
        Tue, 22 Apr 2025 16:36:52 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeaf403sm2333582b6e.7.2025.04.22.16.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 16:36:52 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Cc: rafal@milecki.pl,
	linux@armlinux.org.uk,
	hkallweit1@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	opendmb@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	andrew+netdev@lunn.ch,
	florian.fainelli@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next v2 2/8] dt-bindings: net: brcm,unimac-mdio: Remove asp-v2.0
Date: Tue, 22 Apr 2025 16:36:39 -0700
Message-Id: <20250422233645.1931036-3-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422233645.1931036-1-justin.chen@broadcom.com>
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove asp-v2.0 which was only supported on one SoC that never
saw the light of day.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2
        - Split out asp-v3.0 support into a separate commit

 Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
index 63bee5b542f5..7eb6d5839f0b 100644
--- a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
@@ -22,7 +22,6 @@ properties:
       - brcm,genet-mdio-v3
       - brcm,genet-mdio-v4
       - brcm,genet-mdio-v5
-      - brcm,asp-v2.0-mdio
       - brcm,asp-v2.1-mdio
       - brcm,asp-v2.2-mdio
       - brcm,unimac-mdio
-- 
2.34.1


