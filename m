Return-Path: <devicetree+bounces-273428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJt6DVrpr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:50:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8F1248D42
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:50:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3A58A3014604
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CC744B680;
	Tue, 10 Mar 2026 09:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QFD+SXeL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F4F449EC2
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773136200; cv=none; b=gf9cuNa25HrmZ0q5nSckwPasYoyfn8bm/xB+7/RUFvOd0GYiWHLGLFdzJc8YdmwroLTGaNmaLntQuZJaFWdf2zHtx+d3oh3HpJH14tx+OXZ5OL5E+VRlT0jegmL6YSPwvstO8wyWWE2YbpS7gTFU2i4CIu1GhaAD5waClQYeseA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773136200; c=relaxed/simple;
	bh=Mr3A2NRV9ww4HVUgXHL1FFtPeh7edkZ/s8D935nooUk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wsr4HtpFByn2N9kCZtc60Fru8eJlDWSqRsrepa0D4psZAxMotEcnViyMIKG33QQs+En+o2tu572nglsgbUjb6PEUCeRip9n1AtcxgUgY6GSVSGovWaKRzz5LqTqG4zBmt6PoI/p7s/xc1ysPc9FNcqL0PBukZft21xGLuTmG0rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QFD+SXeL; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2aea41d4fbcso2909305ad.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773136195; x=1773740995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x1aDzJ0oh9aQEO800V2bAcY+ffAgEFL34SAN70Zrawo=;
        b=QFD+SXeLZteskZBTMGrKvw0vnDKLqjWcN6fY6YBCKqDPqtyVWVMrEOH4KDoNJ+YgV3
         DItx5NhhLhLtvWnn2HK2cg1baTz6QcgdgkG05fSg3vHxIz5v6igc+JEfLeJGBH1bcZUv
         C2v24nl0amwxHC9vzA5/DBzZxbfzAOAJ8/PeMP/muhKhq9mQkCz4py8RD/pP8CIjbxz5
         6io7ct/m8rReb//CG3dmunksJhvTgRceCRvVUpom/U8bF4K2CFDH3G0MnLs0DAjh1bl0
         aw8gfm6YwDFNVAeNBYEfOVgeZMt5LycS2z8fJ/gCip13j/3lKkP1RX9k9NzpN86uD5+n
         Iw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773136195; x=1773740995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x1aDzJ0oh9aQEO800V2bAcY+ffAgEFL34SAN70Zrawo=;
        b=H5WCx5Suxj9j25/rxh0Dq2+4DzY1JIeZ7SC1V5mH+y8rPfN8EJDJ+9e0MgZaJzS14N
         QuNbOP7A3RIO1kPnNCBVukgboxXmeBHoTGdXR2XhAYV+ByNoCKXeBGkcgXJHFfOdyRHQ
         5IorprXF3SRCgyhwZ33Mq8uYQfYtCPAxn7EJXN7616/+i/+oXPczDMw+ewvxoUvdg3uK
         CJi+PV7fuMtJoGQxr3N6+cCyukC3yqcoFHwN+DmGNq6Rm0YT/9+m4yQfXnGC2UtHyzfK
         iuo2ULXwOgKtq2iSOS7kF5OJh8+OZwNGHtEOMEzHByo1+hA1OD7nit65jHtNzaeDuU/a
         d0Pg==
X-Gm-Message-State: AOJu0Yzc9GDNKFhupQaiFteAkwpkMXYZ3Iy97LyyHZJVk8OAdIj5K8jA
	c8lWUlppnAVXFgcQ60jfitfe1Vxb4HzZsqkZCXfKkB51SEX4oKUVsixi
X-Gm-Gg: ATEYQzxbRBNQaZc6JoNjSJrTB650OyStUFdy6f+w4uw2aElhN4xUKWrjZJLn1S1zCBU
	G5boRFDR8W6FhoDNWauz+eZR7CDzzAARoEs2AMYHa28j5KJVQI2gQwKBw40px9hhxwqOCHCUEDZ
	tkmDBro62dTIHIE6dvB9GNdgQ5MOW1UvXK1IwdNYlvjVu0T1Dq7gG1AXQbtnN/e/npY6LutX+mr
	meJQeCIQNA8ILy6zO1/ZFX260mA0HsF0/puSgKznRnZo4GLihQSKaiN9Os2DkEB3iz3w0BNJWMb
	X8zPL1FFnf+1xVSRj69swxQbJP8kK9RSA3StvEOEafhAxVAtCyQ4SWDhlPR4tNxmY3It6TL5YPB
	H76WEnPdVo3k3mQ0sx/Eqd4Qcl3+LLGCLK+CMjC2rQDhzExDCo6c6zmVfq0+t6dDvKHcV1R8MK1
	POGjn35rNJIJYtm3vlzcw=
X-Received: by 2002:a17:903:b4e:b0:2ae:7efa:af93 with SMTP id d9443c01a7336-2ae822640a6mr144995945ad.0.1773136195150;
        Tue, 10 Mar 2026 02:49:55 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f8a67esm199459775ad.61.2026.03.10.02.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:49:54 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Date: Tue, 10 Mar 2026 17:49:37 +0800
Subject: [PATCH v3 3/3] ARM: dts: aspeed: anacapa: add SGPIO interrupt to
 PCA9555
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-anacapa-dts-sgpio-v3-3-12d9b7f1202e@gmail.com>
References: <20260310-anacapa-dts-sgpio-v3-0-12d9b7f1202e@gmail.com>
In-Reply-To: <20260310-anacapa-dts-sgpio-v3-0-12d9b7f1202e@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com, 
 Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773136185; l=1232;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=Mr3A2NRV9ww4HVUgXHL1FFtPeh7edkZ/s8D935nooUk=;
 b=YqK93JIpbhuvNaEFsUHhnrzvNaTcKHv35WX8dM1/furCKeZmzIncMXLjRrXqdce3sUiD9HJVZ
 4RhC2cb024VB3jSrsqvqsb3sdNsJ2txjXvbXc1TpHrK70iR31HeHvSw
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Queue-Id: CF8F1248D42
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273428-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.0.24:email]
X-Rspamd-Action: no action

Wire PCA9555 gpio@24 nodes to the SGPIO interrupt controller by
adding sgpiom0 as the interrupt parent and specifying the shared
SGPIO interrupt line,PDB_ALERT_R_N.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 85b7e027daef..933885055636 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -500,6 +500,9 @@ gpio@24 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"RPDB_EAM2_PRSNT_MOS_N_R", "RPDB_EAM3_PRSNT_MOS_N_R",
 					"RPDB_PWRGD_P50V_HSC4_SYS_R",
@@ -546,6 +549,9 @@ gpio@24 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"LPDB_P50V_FAN1_R2_PG","LPDB_P50V_FAN2_R2_PG",
 					"LPDB_P50V_FAN3_R2_PG","LPDB_P50V_FAN4_R2_PG",

-- 
2.34.1


