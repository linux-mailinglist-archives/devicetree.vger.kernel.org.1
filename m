Return-Path: <devicetree+bounces-167464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A49A8A603
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 19:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8F423A99E9
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 17:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51731F3FDC;
	Tue, 15 Apr 2025 17:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nmyj7I46"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A39E4D8CE
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 17:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744739373; cv=none; b=F3CjkVmsacaU+9IGZ+qKxa5qfwqzO2gY39rmiB+PNebgYLog7atIqm3t4MPYk97p6Yn/ZArI+sUXC7lAxEdGkJ7/IDKbUpm3EfpATYzL0vlSb3uzLjsx1mXdnxHiyVvbfoLUQr9A9rgxNRs9/8poHYzdivVBsrwR8mx8IM64FEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744739373; c=relaxed/simple;
	bh=DQ0VJoDAkt1nCwa1Pe45YViPMSLtHIkfCiId55jAXQs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EN5kdQFEqMgotVYmVFy+NrmWGTpVxno12vOLMlZZBIFc/SfYWokib5CreoK+Kb/vTalaYxw2Y5/rUeIighMyZFjkovlRP0cQy+/BlYZbFQrxHWtqG9eYddePm1tw7hECm2tQ+0cc2P4JYurTrLuI3coxIREUcY4ReWa0gzpNfNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nmyj7I46; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-72c09f8369cso1581591a34.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744739371; x=1745344171; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3w6rQSZC3l5rs0Ns24yIJioGfVvvMAWgXXfps6IKpOA=;
        b=Nmyj7I467ScLxPDRel1OyQTpjQEvv1XV04NhwUeVgal527cd3Ofy/Pm0mAWQHJ5C2F
         UYsvhp3YsqJYJP4kOer+OPrNjBpH1irgk6eUavdc1CRGTtyyhqvJGV7i5Zg4EPw4nsoD
         q3XYMKP+hb1bOMotHOD52V7hFYWy8ysrC5J39llkOMRxOnZRagUUCQ/AVd62ZCTMY6YP
         uNQXTixn50Jgl/MPgsqaF4WE5V9CXObmpAuGW8HBJPBNCqJcBsCUXg0Q/hXybMGA+Akf
         x0tEnG/zvMew6zNIQr2NQfL6fpA8nQ6IQdj/WTpHiSyjMJJ1R6Wpotm4dohcAIDIqYW3
         +IgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744739371; x=1745344171;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3w6rQSZC3l5rs0Ns24yIJioGfVvvMAWgXXfps6IKpOA=;
        b=ErcJBddk5j4JY5OSOmpvauCSWEvKEDOI/Iom1OYS7hMUbhz6/ki0nCY8T8J1T5qZO5
         tSpGVmm+12lvhvCny3RJZAlUXkIZXUKXFEPhzmtdc2PTScDyQdu9fPduKDMVrWKqKJR7
         /f8glHJabMU1JZkU/94lEtzkaVHHjNKkRmJziwjxLLnhr406LkL4C1Fp6AJEkCvlKH4T
         brbd3Z6VKfLgIz3iYhPfIYa/dR3HgBX+PYCT9BHkAE9eiRQmAmWSwUYMBZqD1f7GED+s
         4hB2ab1a67IdNkAPR0HQC0/b8fNBV2kNF703H9WlKq4rqpeaTKp6roObGp86ya8GohkW
         gqGw==
X-Gm-Message-State: AOJu0YyQjs+Ih9KUMFshjtCPVqiK+1Z9GRvVOK1n2cmz4ewpyjKpPWjR
	gQD7TTjMJCIGp9SliwdcGIYT2MFCTpaMVaYKVUYE67pdSnqpfThykTEU9g==
X-Gm-Gg: ASbGnctk00VkNVxEcjZLoUWUIIR85M7hwcQiTBk+NHlbZ3rm+ntAx9ZRx32QN6j2IqD
	mXlEN6SX96CEvURA+yfYM4Fxuvea/nZXC8UN+kmGpummIeAXWE5xCJyN9uj+YKXyGoIY7oTDoTO
	OOFoJI0pp0s0j/pVXwd+wP3vlSWDBtLOFWVDWYXLnJtFlb0Qe1ddTcrdqhQ7JDC2omC79r7ppkQ
	/VEXnKIJpQncNKJNMju0fokIijpnZ3ZFt6q9+qps73ApLExB2wElG5wdbcnxLXhTWC4EDjDKz9T
	m7VIYghAMARdZtCex5ViKQQdSLbLcx0HdrnQXntbcaIHNf+fHYthP44uUlGh
X-Google-Smtp-Source: AGHT+IH8peAt1Th7gjeH9a0HnMN3WjHBZOGSj4STsAHR7kH2CKtN2X5R0pgEdwoUcgaVexU2a6iXTA==
X-Received: by 2002:a05:6830:610b:b0:72c:3235:3b99 with SMTP id 46e09a7af769-72ec1c3c76amr158132a34.19.1744739371238;
        Tue, 15 Apr 2025 10:49:31 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:f16b:606f:7984:6d0e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2d096d49c8esm2971892fac.49.2025.04.15.10.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 10:49:30 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI0 audio output for Indiedroid Nova
Date: Tue, 15 Apr 2025 12:47:11 -0500
Message-ID: <20250415174711.72891-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Make available HDMI audio for the HDMI0 port.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 4189a88ecf40..4ec7bc4a9e96 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -278,6 +278,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -449,6 +453,10 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &pcie2x1l2 {
 	pinctrl-0 = <&rtl8111_perstb>;
 	pinctrl-names = "default";
-- 
2.43.0


