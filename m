Return-Path: <devicetree+bounces-223709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B54BBCBFC
	for <lists+devicetree@lfdr.de>; Sun, 05 Oct 2025 22:51:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16FC7188A337
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 20:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D1E1F03FB;
	Sun,  5 Oct 2025 20:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ivFkiYE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274CF1C9DE5
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 20:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759697467; cv=none; b=XaAVSv2AoACSJrSPXPUI/nIVNUFwFIK/xSZfnoYuIhVpd05+edP6p439r6GjmUXWtQQpW34DkVBOqVYuTzlOxE2bJwqoLpUl7jMwd1xiabngHs3RYDPYYDRwN7YTllR3PgAH4juFaVN0I9A5tl9IDTpRsFskcwJF4180oUQGiqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759697467; c=relaxed/simple;
	bh=sGOdOd5lj8RNH7bLfh4PeOtHP2wnFce2PImaX2QQu08=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=B87wuCnKxsUXqvQaVV/yz4W6Iu/O6lm2yxeZRkV/40BneDtOyRtWx3CKe/87XgQKVsmR1NJ1vn3IftEU9f1xY12lnbVSs5cJ4M0MxSr2vmSWsICBuKOy0yrrYEQvEBAbzGpQ5e1/m3N4glfZZcMjE6Y8r2UnqIDCUOQnWBmHFYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ivFkiYE0; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-28e8c5d64d8so39273725ad.1
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 13:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759697465; x=1760302265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o0PulYaesouydzPIXRseNOAbBXULJfQ7jKlImAk9vNY=;
        b=ivFkiYE0o7K4WkX9n+kh+TMo6ZOgNr5RZ8iLOHOHvaKgNiLxAFoS89nsKO2uUI4fle
         DsAojqYYYJELjUOYB9P6x0Lprx6iXYKY3R0hC1R2qOe22COgS7LusomQYxJUeMOXZn/O
         rHKmSoj+ZX6AWQkfXd0skCaEXYHytFatdKmtAU1tq5piM10EP+6CAMi3bzglYPmvzvu4
         sflASavVE4od+IYZ0DZ89Sbwp45wp2Z7eSF8IcOFDCPkuQmwNazm+KycIf1xbRkeiMJ1
         SSHiOIThzXSnyEPZnnadvvbK7iwMobYBLoXHDN6IUGR3HCoEpEMy5JzSK8LLC5SufYBd
         r05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759697465; x=1760302265;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o0PulYaesouydzPIXRseNOAbBXULJfQ7jKlImAk9vNY=;
        b=slNFMJKbzF8ZjtPjuKA2xMMeiK7Ngw0emWPObGxl3x/MF3NHqLn1cK3SaKeEzllpAy
         b9e6H4S9ldlWUPRnUeHqbLSaH2Uyo/PloFqt5C7yGtViWXVXHPBbZNiaUMnuGehc56mU
         HBFGEhxpopWwq+FcXPcDW38Jh94uS2H5PPavz1s6XB3IIq1xbAYWkGt59GK/UF/7qAK7
         1/uvbLlHkQI4G31oXFkNztUE0ci4Ix+6bYMRqKtuYja4HD1qgPMqMATQyfopH+Az8gZ9
         LiHhqXJ1ZNGxJus6eOR5T93gcjXcZZiG3FMB+pkThDDua9xB3PAGmOkFafSpRCWfTNU9
         4OaA==
X-Gm-Message-State: AOJu0Yx+pIqcLkVhIQ90SHUkfkY0JTPlcmywd8/DidSR2rA/lVajnaHp
	4ycGGNhq2FLc4g2e/CfKHM6RbNHcVFMlN+3Q94HPnAXfMqPXoN5QYIRq
X-Gm-Gg: ASbGncsxPZWUQO7YowasCj+S9zy6e6jDWMcK+lSAgfwttimTeeOQjx2sQBIaXQ7TQIF
	YBFz7CXh8lGYuLUafg4EtllkNkMrZh3tj2sWi4qbEBrTzto1SADQLIApiECpvaxooBtDXzmCNC3
	T73sXdKX9AlocA+LgSTOCAg7U9UsDOp4sCAD6q+5oDp4tQQx2bth+fzrpRTHh05k6Nmzk89hi1F
	6p2Cf0+mi5Lv2vAmXoxLamVpYLHUuaU6j51ZL5b52FX5bO4ljjylcHG1M44OXsLDEGjRBu7jh5j
	jyVsyzomTP3MoDhdts92n+jEjoZ+EoJP4XulPMWKRpej9dedUwaKhphsacz0wX4vQLSMq62teEF
	NOqKD0h3CUDAqBSVQCmzPSlQyi7NgF3UnLsLISEA3MdeNXzjqCrCTpoLekFMX3LAIu4H+UVCMkV
	ua67IIijBvfbOvXhgv3XfZFLxhNJG/x2Ra8hZ9TFzJ8YhsOAVvT7FCA32HsQ==
X-Google-Smtp-Source: AGHT+IGE6psfDyF/tpG5iD9+AN4sMGtubuFXdijlLDL6L8UyOx68nbT2vXp8iohVZVMCKB2D81UvNw==
X-Received: by 2002:a17:903:1ae6:b0:269:936c:88da with SMTP id d9443c01a7336-28e9a61ef1fmr103838395ad.41.1759697465228;
        Sun, 05 Oct 2025 13:51:05 -0700 (PDT)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1267d7sm110498115ad.49.2025.10.05.13.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 13:51:04 -0700 (PDT)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux@roeck-us.net,
	corbet@lwn.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH 1/2] dt-bindings: trivial-devices: add mps,mp9945
Date: Mon,  6 Oct 2025 04:48:54 +0800
Message-ID: <20251005204855.190270-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-bindings for MPS mp9945 controller.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 58ff948d93c9..08e2ca1b573e 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -317,6 +317,8 @@ properties:
           - mps,mp5998
             # Monolithic Power Systems Inc. digital step-down converter mp9941
           - mps,mp9941
+            # Monolithic Power Systems Inc. digital step-down converter mp9945
+          - mps,mp9945
             # Temperature sensor with integrated fan control
           - national,lm63
             # Temperature sensor with integrated fan control
-- 
2.43.0


