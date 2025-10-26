Return-Path: <devicetree+bounces-231130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0AEC0AA62
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 15:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAF0E3A8165
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 14:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F80721C167;
	Sun, 26 Oct 2025 14:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FBSrYqI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D921EBFE0
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 14:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761489439; cv=none; b=gqo2lDksVebFlcFmL5ibStZKizwnjUTW3VSTnhM2xJKyKSIdyZhoWQAD2nD9Www3u8EqmfVlq5AcM9vOpgPwJZtwuE466m04jhlBpUpg1pbOuDEjwDXyD8le1DJsrNo6nbGDSBieGUForu36NDESWSDlk/9/TxiIdq1YtH+6kdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761489439; c=relaxed/simple;
	bh=A3bSV3u8AarAyp31lzoLWMXHtLeH04d3zGSkueTEkDM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ER4ngcufXRJ6qzedPPvggKgONBwvsDg0//a8QNRY0dcDLV3TmzXRWNyLfQTmZCd1glXMIBhubIwyao/12TW/Zvl+uvZPxqjCVuF+kp097rhm1vpkykErqwoU+9NfCEc6KyuZH9BvbJyxb1U4FnYg5f42T0MtscdF0uY4xsTibl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FBSrYqI5; arc=none smtp.client-ip=209.85.215.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f193.google.com with SMTP id 41be03b00d2f7-b62e7221351so3319319a12.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 07:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761489437; x=1762094237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=FBSrYqI5hEZuRWt6RLAH/G8MPdRZRWukxu+uSwJ4CT/VWhg8IwNNltXnHxNcZt27t3
         qzBeUPV//viQMK2ZpkysJhiY2q5nquXdNbx6k4/lkibvMCBqjyODrNNJ+56Z9cXv8WJK
         PzCW0iuXIAvI1DBSis0BNnGPqMP+8MG8jgcHCuCWm3ZgkdXxKxSxXtpD7RbLSqAs35/Y
         tSOWBy+YEWE/2U/nz36o9SXb0r2v//nWhHddb4j0wSN8+xEufIQA+MgBvUx8apx6Beqg
         yvQdIAghqwXpoAkhZ/nYVm+ggVZ61jJiJN9dcKGygI539RbuZuUJS/wowgRH5/OTlQYx
         3/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761489437; x=1762094237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=oxabkHDLTp2l1JOw1vKp0y9BflueYYxPzDicGpX4i8wYz64qdiWkRmXhakkq9+NCGu
         qqzR6t9UHoRbnmJyg+HNKa1ZBfhoRqhuViQUtUW+IQLDZoqr9SptAqf+yFBgavot18OH
         BFKyvGxrLGzX7X48z4DaNd0cK5LD+xOAPeQFTYhNfcNzBdCvegYKXj13i7fLm9x0rmcl
         WRr6UCM3nyuJZkMIZBnc7a5aXAgu6qGIRIdYfGvlzSCigEY6iX8j/bVNZgZUHXCJbynd
         xhM03JBoE1sP3sDIHfpYF86hZcPHcO5I4l6IVrzoHQt7hiZYgcTmYiM4MdqQ8BLHVXqa
         H7fQ==
X-Gm-Message-State: AOJu0Yz+BXjmTXib6Ne+j2ukp/D05FShdZTWtp7ry2CjEYw84W/X/0Hj
	azjljaP2Pmh37eaGP5kygJwTRasUoy82eF9OmXkvdTxiPEqTOX63+Q0x
X-Gm-Gg: ASbGncu32EDNqgG2FDDn1VSAMScXUO80ZYiiQ5cv1QSvuWP75k1ahkyEP6poCY0ey/k
	iwh58bykii7plsfPfBtWwGjRloEpEzzg61kxqmZdxginln7/J8iopr+OULuhA4oYtRiWgIHIkWC
	gB2h4IT3VKz6SZG1KAmWc2Z+tDrd44Cu1GdOda13cvEVXwrvVyNXVehjQu7yNBlFB8ro/TgFhrL
	rAGWgNAEAKOeezMFMBwnRZHgGgeNomqqqed/ciLMy6lwobRsaDVCoQssgVrnO5tW3GZwGPmOBfA
	khkeudA4v+hNiZ93jB8GiGjFw2ELwCfJiJN+1X3YTmmSsPkczzel6d2hjXZOiprhIo00lgz3FZ7
	/8XsBAtNVKgt/cOx9ElI0kW9FHo+JhYcELk/mjnHzyffTnJrwgh+NOmzgfiw2fB8ml3EBBFRAgp
	M=
X-Google-Smtp-Source: AGHT+IEfx0AH+HyiwJ68//xsscWnnszjfjuh908GaFcgwt1A/M2fn3D2pU1eaom3Q9nzHLoe+m5ueQ==
X-Received: by 2002:a17:902:ecc8:b0:290:c516:8c53 with SMTP id d9443c01a7336-290caf831d8mr427173395ad.40.1761489437072;
        Sun, 26 Oct 2025 07:37:17 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7128d4d44esm4652691a12.21.2025.10.26.07.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 07:37:16 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
Date: Sun, 26 Oct 2025 22:36:44 +0800
Message-ID: <20251026143645.917588-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add NineTripod to the vendor prefixes.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d188200..37687737e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1124,6 +1124,8 @@ patternProperties:
     description: National Instruments
   "^nicera,.*":
     description: Nippon Ceramic Co., Ltd.
+  "^ninetripod,.*":
+    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
   "^nintendo,.*":
     description: Nintendo
   "^nlt,.*":
-- 
2.47.3


