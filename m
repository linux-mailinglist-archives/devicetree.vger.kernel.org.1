Return-Path: <devicetree+bounces-208145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90253B319D5
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AF3E1CC38CD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C58C30276A;
	Fri, 22 Aug 2025 13:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yj01L8aP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2271309DA4
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869655; cv=none; b=FeymergmlttmgwcAnNijjcZE+lFYFp2yD0CCKPtXoDYKywna+o447J1G0TXC81EjLa2PJbzGdw8Ma0V5o0MWvXGDL1EG/W6CVXlyJfhjWXulq/Y/Ql0tu3EMOBeg4ZtSsD6yYkR25NdiwJp4e5TfQ/64wfn1zoHrhnFxeg32eyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869655; c=relaxed/simple;
	bh=+z/EFpF8WgN5W8/JRWZjj0WgigfKAKt9hnbpDkDegME=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pI+wlWg8eRxDL2Y1WiVKsiXPaMvBXy74A/45JiKeS3La604ueOQ4Ra+uZe5z5D3dzVXGbhuFVyXMNUrN6MZVee2nRMh+M1bVBrRbK2FZUBrSk9nDB7bh2WVbo76OWn9mJdi3YnpkFEm+wacv0orqFlm0RgzQVSfgcZk3RTk0ZyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yj01L8aP; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-88432deacc1so2025039f.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869653; x=1756474453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4aJei2D1z3FoicM/f9i0yAjxMJd5fQSpmo95ub9mBaE=;
        b=Yj01L8aPN+3H9U1aI4B/Pl3QV8uDWWkUFzXxNMxyx/0ShOZ20SZMnIhYpk0XSf/MuN
         sHQ9UZtlw0+kamE82RymNB2fLNIKjx2wclirKLfjYWTni6ZB517K3BHFshTzsEXpIHWx
         8ua4qvLBu2JXkBQYs2IjwgXcocROJIeYNdrUVwuwdOIg4SVDUwheRzm3JjJXjbGCijmJ
         4GUdLK410+YEmkch7TFeZruouEDhC/rJUCjI6B33fOEXAtW1GsRELrvG+s0W7F07acM0
         L41WsaAgLdaxK80931AhjK8bPZOe7RtjiQpE8MPBoSvJ72fuaCS2fBYPps7ZzLyjrJO9
         DykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869653; x=1756474453;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4aJei2D1z3FoicM/f9i0yAjxMJd5fQSpmo95ub9mBaE=;
        b=AlYAYS4LAzYvWx/6s3dceP2hcpML8AZ0PZ8FXmyc5yuCXyIoo1ApT+uw9XSwXm6GQy
         pCm/dn8kqakKdMieJlTbk5OC1mRej+yB274gwpExEKZ0e4vPv3R++jtwMMV1GUKxv4pL
         W3V47qSYoPwKGx8FxBGbvMpD5RCMff4YMlz2xvlCSR/E8+M1XVZentUri3Jc3oNPWVqD
         5Yy6UWaqYCDq6aUaKJO3nkdO0pkSTFF0mHhrDmgSgu8859tRCpmv4EfUUOHRCLZb+wN9
         Ly+S23tQMLXCMbu14Ki1MziSGa+QQX6VUp+YwYHTbA0ivLw49C3L0KdJI+ksc7dUCrkK
         7Dqg==
X-Forwarded-Encrypted: i=1; AJvYcCUUpYH0//ZGt9ypoQLb/rz0Ddhh9N8nmC0m0k61yzcmIeAR3dEhNGkGSfjED1zYZEvg5Jc0I9LFUhc4@vger.kernel.org
X-Gm-Message-State: AOJu0YzjTpxMRcPCFz+nwwhpHtdY1TrRH7ZxB6E05OfhTrLOY6aCa5qt
	rtjanh9ofhFHUaIv9i8J+HvoL3/o+9ACdk3b4b5Sz2LDnaR1lRjLc4cHXMbFWkv4LE4=
X-Gm-Gg: ASbGncteB8EBgdD2EXL1ObW0G6IujMU2uPCxQrJ/AoCsR3IpIfe75d9600+DmRfr/qa
	xULgVpEjf4Hb3m0xl/xmNF/le+o1b0MNLBXpb4zw2vtTjh66ujOd9uIKamM4pfiqVODwJC8X8Ad
	L760SHQajaACAqNvMxLVqFXIEW6S+BAvOUiAEzAhZAec8pZzJtR4yj6Q6vcM8phRlmVFUkOWuTU
	8rBQHt5HvgU9/QJaE2ONa6FRy+LaRS6aD7Wlxdmf1y2w+0lG6tR1lU9IMTD8dqRPiaaBRT+sl7V
	G5fKY3TpLh4g6N3dPfR/5YjC/DBI7P5RqW08V64zI9d8P4F44jkf0azSdGFrWeO528n128w7/IG
	MTNog2m30hbvIqLMWLfuZom+Ca3zeBe4iog==
X-Google-Smtp-Source: AGHT+IFWv14XXu3qM6W4iFpmxaKe34h/+JST+1sZFMnSYZhgxLEm3aL6IP0FQduAVDsMOFUj0cWipQ==
X-Received: by 2002:a05:6602:15d0:b0:881:57fd:a0a with SMTP id ca18e2360f4ac-886bd0eb71emr149827239f.1.1755869652995;
        Fri, 22 Aug 2025 06:34:12 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-8843f9c2cc7sm817991539f.18.2025.08.22.06.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:34:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: broadcom: bcm2712: Add default GIC address cells
Date: Fri, 22 Aug 2025 15:34:08 +0200
Message-ID: <20250822133407.312505-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1245; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=+z/EFpF8WgN5W8/JRWZjj0WgigfKAKt9hnbpDkDegME=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHHP9946N6yImc7LpXAfGj7MZi7zGmlQ5lX4n
 bKbW1wGjtGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxzwAKCRDBN2bmhouD
 11xLD/43BpRj2JOlkNnpXpTUHIpjuw5IL0zszbAjL6pKXjDTJnIYfhCyJPeO39GYGiVD1bUtFs+
 baWKJXFt+oGbqHXff3tjbt3a2NCAelyklNH02P0koNe5df5nLdzA43+as/prN0UUDcmIY+tfxex
 tVgpzcw+5bRK4pYcseVpxscCJnzlX+7YCKyGZGXNCfOkDHbxR+IN2kLAXLlrNqSmcSHfkr8Y2g+
 koLZ4BdH/HJvJKkZ1EqTJdc0go11IOX+UZTRYkwnkOuHlUPGe8It1Xj/bwlU6dWlFTCGkBm6Tbn
 4SEXL1H1t3+g0o2EWkXeJ5HWuEHy2VXVSGlmq92izX2525xFw+lFkIeaM0MgJwxCTlrP8X+0bNo
 3zwc5Y7MI0/8Mj+TO/gPzutmO3m3W9F057Wlle/pTXEfe3GjJsbTRbYLxA5H9jp3H3vNvivdp8E
 +9YIJihUjcmHXArYPCLExr6EL46399vcZW+lD/kdH6iOGu0YDdjDTY14bLa9rkwmmVC+v5U5jWP
 qg/YbCQg+otOZAMiNLOkBX7+MztUyNaAuZIhsg3HgDl0EgK/0Jc6KEXDlcotfKIyrPS07NLrp+g
 0JDU65KmpiYXjZ+n5IwNWldRFSvvQkdEmbEqN2IxsZEgRYyT/8MhSZ9mS0vRpPF4b+NAm5HfChV 8jVOHCHNicTCpXw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  bcm2712.dtsi:494.4-497.31: Warning (interrupt_map): /axi/pcie@1000110000:interrupt-map:
    Missing property '#address-cells' in node /soc@107c000000/interrupt-controller@7fff9000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 0a9212d3106f..940f1c483198 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -270,6 +270,7 @@ gicv2: interrupt-controller@7fff9000 {
 			      <0x7fffc000 0x2000>,
 			      <0x7fffe000 0x2000>;
 			interrupt-controller;
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 		};
 
-- 
2.48.1


