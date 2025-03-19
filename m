Return-Path: <devicetree+bounces-159027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B3BA6944D
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 17:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8437B3B9E4E
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 16:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0DC1DE3A3;
	Wed, 19 Mar 2025 16:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="LDurAbw+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913341DE3C8
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 16:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742400322; cv=none; b=BEbuYO8eKB/hgvy2LgLVXNQCQoB2ei7p6/YvR/DznsxTAP1J+JMp6atjIBakg6veqRv5fXY6ICuRn1g9/1qTfFRE5AgzraCxrSz3EFYFtXn2MctqvnpwTZNricrZf94XFllHM/iYcEfk/o7PhNbzjn5GtwN5YfJa6hGEfaRMf5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742400322; c=relaxed/simple;
	bh=gqYi2IOkBpGmWP8vcTUbbEUCyzEeB38GzIcirinLzL4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pjdyZhGZ1C4KqjVNPy3x67nb05RKF6TmxmCP+1nKZADQTIj97xbeS3cCluxWdsz7ROZdiU0TgpwJJQ20ojb8xjjR6Fg+ucxeq3mky9tTKqlgjJmgsxfBJMgtku0AjNj24ZhOzWaFiFuYLXtOYxHvXDWdHOkh40Dt8E2lB/Ez9MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=LDurAbw+; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CADDE3FCCA
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 16:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1742400313;
	bh=GSUU5JLhgZYi/omGhuQLchJlDjwLwW4DkUo/PblUKHA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=LDurAbw+0I8ipllo9ZNs5rvc9MrcJiC2BWtamstRvQghwvjzplnEnCvjWKFHSsRm/
	 Bi2IsYDZcpOmZ4ieUGtPSZgKXZlez4ZgrMG238b0V/yizWNKw6L0lqDjL6OLkIVTOk
	 ylwEuNuQJQtZGSwhudV7zPVfVAntoAQMJIgbyiUy3xlmVGBpzg/yYjhmp6Q9GuygrH
	 rz6q5tnCHvJaC4ZeylsfQyOt2OJWjStzJ+t0oo95CAXxf7lI8YSZznUstKmUv6NNww
	 78Qk4SRnEVN/z2q6eSgw3atdmOayUU78IeXjVUD/vS4nE6mXtixGkNDgXtxxSaITKK
	 l4s8FgNsZ8Nwg==
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3912e4e2033so2822323f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 09:05:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742400312; x=1743005112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GSUU5JLhgZYi/omGhuQLchJlDjwLwW4DkUo/PblUKHA=;
        b=JaLHDKalr/egC/AoTVYxPbuYjXJMK9RuHSwzeXsIQzYSaKdqGYfSdDYVRqjy0FN6Fg
         BIwKjGFsLzAU5wOzOCBNT+5Y64lVN+B7m0hdnlBK+ZpjxMb1P9hAE54odo0KTs63hp65
         rjgPvSPBmktjCrok13bG7z5Gg7X4uelCzDt61zqiSuc5UXYxXSNuzr51Kr9UnZMHXzPJ
         5H1djMcddSH5+pSfotLwskxKbqOdHxzf0B2sh1iVdgR5qxQIvdYp9S1iLYWN66NehG1X
         ezt0HCZ76UqjNQWiMeXcZ1JpocDiyfZ/cr+IOSWQ8f8QGiM0l1774JFkfIuCRQ6c1j8X
         HqTw==
X-Forwarded-Encrypted: i=1; AJvYcCXLr/AlKZLZFfLhZdosVaPnitVF0N6xbBW4J/plY9eQksI1wux9GDOBRHOeyJLUIPiJ88fQxjrq3nWk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxmkpk+bHupgmObA1nMxw8906SwWe6wdY12Jz7UptoQRfahvA8
	bDL4o7lW2v1QyUj9bKlcdEkmna7yyzL9KCK8iK76hPlwkABPD+mjr84GiRVG3o3orukr5x52Y/3
	muoFdvLvcSx3tQrDs7ALn/n/cYDC9FPGP62QrSYXbr/TaTuayZwc2pSbxa6cLoHNI2wbbKEFFvV
	BVKQPTXZ4=
X-Gm-Gg: ASbGncti7OLxXpjcAWIGXU851D7eAAGd4wOeGzXoekjugfeI/IRltE8dMocmwPgPLnU
	NNsVJaPimaJ4n7Tw9c4L9iPXXmI0cTpSLzWmo+wHblThVVgL8XhqUa7a5LFviwSQm9bj/pDioOD
	sN2PUi0dGgkaj0PJ3iXVgNKCPpfU8B3ekbN2aNF+urpjw5TZYgn0a5RVFe0NGmMz8htDQqtF2Tq
	uAv6p+QC6gLixxJSN+OtsvgUY9ZMpRUcHfmYAEe43dmqbdOQskj3S9sEuidvcYgQhVG3pJHsRLM
	SYNqvzLueFqge5Z+qh1+7KeAAD5mriVbU45nE0gTzn5498Hjo39otOBXxub0
X-Received: by 2002:a05:6000:1549:b0:391:31f2:b99e with SMTP id ffacd0b85a97d-399739b4089mr2871025f8f.2.1742400311734;
        Wed, 19 Mar 2025 09:05:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDlJj9DAT1miKPO3/mPueia8h2gCIoMy4dIZf/f87Mial3oKHiLugdVoWYREIB56Z+wmm+oQ==
X-Received: by 2002:a05:6000:1549:b0:391:31f2:b99e with SMTP id ffacd0b85a97d-399739b4089mr2870969f8f.2.1742400311171;
        Wed, 19 Mar 2025 09:05:11 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c888117csm21047556f8f.44.2025.03.19.09.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 09:05:10 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	jens.glathe@oldschoolsolutions.biz
Subject: [PATCH] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Enable SMB2360 0 and 1
Date: Wed, 19 Mar 2025 17:05:09 +0100
Message-ID: <20250319160509.1812805-1-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit d37e2646c8a5 ("arm64: dts: qcom: x1e80100-pmics: Enable all SMB2360
separately") disables all SMB2360s and let the board DTS explicitly enable
them. The HP OmniBook DTS is from before this change and is missing the
explicit enabling. Add that to get all USB root ports.

Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibook X Laptop 14")
Cc: stable@vger.kernel.org      # 6.14
Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index cd860a246c45..c4ac0aaa6f65 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -1352,18 +1352,22 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&smb2360_0 {
+	status = "okay";
+};
+
 &smb2360_0_eusb2_repeater {
 	vdd18-supply = <&vreg_l3d_1p8>;
 	vdd3-supply = <&vreg_l2b_3p0>;
+};
 
+&smb2360_1 {
 	status = "okay";
 };
 
 &smb2360_1_eusb2_repeater {
 	vdd18-supply = <&vreg_l3d_1p8>;
 	vdd3-supply = <&vreg_l14b_3p0>;
-
-	status = "okay";
 };
 
 &swr0 {
-- 
2.43.0


