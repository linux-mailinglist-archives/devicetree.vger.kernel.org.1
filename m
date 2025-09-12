Return-Path: <devicetree+bounces-216253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F4BB5428B
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A0297B6AB7
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 06:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1001C27B4E5;
	Fri, 12 Sep 2025 06:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TtqRNNP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B61327A10D
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757657377; cv=none; b=ewqWsPgtHwZRBTR0Tp2CnodNmvtC/sGuerbfR868XJXresyxReDTCfwbxz87ivF1VK6sFPSruVnS5fJFCdUmyVQPZK+TSe8CJeS0isTDPB5d0IfPcRWBApVxO/BiNLrq0D7xFY6KpZxoRRC7x+BBPB9vmteiLuwvHhkTNRVYpkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757657377; c=relaxed/simple;
	bh=TlPRpYbwmr7OOZkidAJONG6hHcs7sWog2LIz+3WzMac=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ca6RYbRDfqNO+2HCFQhJex/imVB4bo7DibH+mpB3qeveb1c4S4sMkDP+QU/mZS06MICopZ3Hyd3LlTIGh+V/T5y5gwj01pThtt5cMmacfleNRJ3IuhNXYV27kMPnIsaPGtuFVoH5+zAY4pzEVojhSbdV1hkrhaTUUsoPp7vlhDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TtqRNNP3; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2445806df50so13046625ad.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 23:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757657375; x=1758262175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PHmi2Axy7+8qo7U5BHpZrqKUEVgZm49/TnuO9lYmy9g=;
        b=TtqRNNP3wgbtANd/ophykWYyITzB4ghl2VcYLStaefIep+2vbp4l+VRzphJ4Nv9n+D
         SqK/6gFcdq5+zSmF5RLZQM/IBo+juToTtaBbD/SwBD9QKy/IupQChujXOS7tb4TFoCke
         4i8W5HuY+pwmsXw4Zi/aZxY1VVLcSWfeInL29gRzzvEzkrutuLasyho5+pgeI37GGXeS
         2HQcGHXMa7NzPxMv8R073rigUU4T26FkhuVC0tHeeaQ6/jU8OaaHD4KOMvoxufVU0Nb2
         SV3s/aea5Ilz0w+5Eio4ObGwnZND96gKWZ8OTUb0NSGTGFIkGSBzhSDnks+VLXjXeI9M
         OrpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757657375; x=1758262175;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PHmi2Axy7+8qo7U5BHpZrqKUEVgZm49/TnuO9lYmy9g=;
        b=msG+frhXn/7Bh3Fgi3VHCLzTQBkDL/FNSQIzpw4iQxltak3ANCxNJgT2b7BqEuRUCM
         UetEo+JVBx9vK0D1T1r+bDIja6fXWnAGdBxNXN/FDBiKR68V0o5xj6Hexn3K6gkA43gy
         riMOtB4qgbYfGMrIvYQw2OmD+RjFVlwVKdPS+bO3GeVGcjhzVqHQOMI1qLLLqhtMUadu
         5PWFWtyFNmEP2oPfcwNbQkYzeGa0O47LTLE6og4gDvAfbaFbNAVYBxKNHeZyY6ks6NFq
         ZP3t9whmeFPdr7VAoOrUHFDg3A4yohweB7WOJ5ko9hesLxsvwzU5Ds/FHsQWOtDqsjIN
         vXUw==
X-Forwarded-Encrypted: i=1; AJvYcCV4G5IhsQKC8rheQgQTeKGsY+OS1lqOcrvEHoYXIWzQ4hS8AqS1qCmE0v9Bx81PC3JIQ6bXzgmywpYO@vger.kernel.org
X-Gm-Message-State: AOJu0YxK81jZu52K0GM5bbKmMEU3bM7jtRR+gtofgchtBLRZlzDyjZ7O
	f/UfTiZr9No9f5Kp0X/grDZDHrEa594ZE3ogc+MnY1f+IcpM7PT+Yn2s
X-Gm-Gg: ASbGnctFHLb42AmrdN6qJlFKNdK1kxm/QJYGu3qn7kJyGD4CUR3W8Fmho63IvBmGTXC
	6EOiS+QbPKDLSIEafxCvSlNQ+gf8r+QnNuRD38O3Nx3090fTifGfpshMcyQ8UEO3rcXjwzTkj5k
	2TSvCrxGpiWO3yNxI32aBHdn1Q9cXzaWxl7WzvtZZ2wYYLNh0nuojR1mDisKssWhaPFV85UtJOV
	jkJ5WbxHJUURprBFKyCdCpZrIfNXn6Eg/AXk5qLkurNqO7yA5XZkFq+4SHuCIj1ezZ+7O0tl8nR
	tC19fCn34DW4jxP28vD4qSy+NV618XU74dWrHWMLYOHgnJp8ydLDhXrNrhc8O0HdqN9M39pv9TS
	igXoM6SNdolpF+XybJAEsPCuebO+tKhWQ6Uq37rdxGNT4Cwl2qlLwl8+bBy0w07IXpA==
X-Google-Smtp-Source: AGHT+IHdgaOA+rY2BJxhFpOhHU/02YengieWl6nPssZXURpbM+MI8UqJa5SZOjcf/XiPCvyPg/7X/Q==
X-Received: by 2002:a17:903:11c3:b0:235:ed02:288b with SMTP id d9443c01a7336-25d260795bcmr20375935ad.30.1757657374806;
        Thu, 11 Sep 2025 23:09:34 -0700 (PDT)
Received: from af623941f5e9 (ai200241.d.west.v6connect.net. [138.64.200.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3ab43506sm37885845ad.98.2025.09.11.23.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 23:09:34 -0700 (PDT)
From: Tamura Dai <kirinode0@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tamura Dai <kirinode0@gmail.com>
Subject: [PATCH] arm64: dts: qcom: sdm845-shift-axolotl: Fix typo of compatible.
Date: Fri, 12 Sep 2025 06:09:04 +0000
Message-Id: <20250912060904.7659-1-kirinode0@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ref. edt-ft5x06.yaml

Signed-off-by: Tamura Dai <kirinode0@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
index 2cf7b5e1243c..a0b288d6162f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
@@ -432,7 +432,7 @@ &i2c5 {
 	status = "okay";
 
 	touchscreen@38 {
-		compatible = "focaltech,fts8719";
+		compatible = "focaltech,ft8719";
 		reg = <0x38>;
 		wakeup-source;
 		interrupt-parent = <&tlmm>;
-- 
2.34.1


