Return-Path: <devicetree+bounces-268553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MuuI0uBn2lrcgQAu9opvQ
	(envelope-from <devicetree+bounces-268553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:10:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E860D19E988
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1532330C29ED
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 23:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D5F378803;
	Wed, 25 Feb 2026 23:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DqaBqZCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911A2378D8F
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772060932; cv=none; b=BB43z1eFrV7s8AE3phU2rEP+KBzV095/9HqGeCx+eQ8JcZym+3HTWId9j2wQb9OSvnbhb3e/DOcdiHiWVrH23lwPMKQ0NpmxoO5ZTmC8dnKK+A8PI+2fLwck5z1ePdAkGJowj6fa+kDhggPg+EodNYIqMxtBB0iAzTc14QCkk/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772060932; c=relaxed/simple;
	bh=dTfUyT6om3uJBZC8r/Aoa4kEFpSzMzFkgJ6sQQSxoIE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PCrCiHUtehGZajj1/rmYqwQlOZESHDa/L0IhBoNyiOudel0SvsaYpWtxx2+SWixeWNZGQHM5Gwo4NpswoX/fTxC3BB1DVehPzObUm0RY4agfeXRxodPRMYmaoLX+r6QVYSoPvIGpclZaKOoz0yzoQfMSIF6ea0Yu/dUIanEp+HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DqaBqZCH; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c06cb8004e8so58316a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772060930; x=1772665730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UCIXs1vSaUaDxK9yFo1NvbBeWhizv7ThfTjSuMfqmMw=;
        b=DqaBqZCHET0x/Epjl/YlmFNxctO9QE2t3gI1SmNP4MFd/wLHhjZX8FSdtokOdaYKr7
         FLS7X6YHNi8MV1+8XULjh3h7v/DCX/m3PH4eltX6EcHlFA717nTgbQ40izoThvj4cgZe
         aZ+VrqrjwhnwHskvhJjzMTZbwWKOSIIxeKDUcVBTbj4XafALC6a5gJqRZjLiIxp9TmjV
         OL4sS0K5ln8X/e2BQbujkESzvUc9hLiznFqNrG3C+5Nks2hEAewTczHbeWeehoMafr1x
         ax9bEDxbI/kXaccM8nHE2/80u92xywSEAL5G/Wv+GIu++vG3AXe4s8OCOiq+3UK/ffHX
         l4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772060930; x=1772665730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UCIXs1vSaUaDxK9yFo1NvbBeWhizv7ThfTjSuMfqmMw=;
        b=SN1CnvdOibMlnDGqlj4BkZtKKHbF2RsQEVI91mFS1PZPUKl94Di5ukUsLnKEosr/T0
         D/8IFIPxyin2eT+3R3gDyFFZNYUDlrId8N+W8SxB4/zWu1uyO/JNbSHU1nrtgZCI6Epq
         kmBMmSnxHAQX3vN0sP5lftF1Yv7EfMkgf+VNht7Vhxy8+pkfSNmeSjAeaFhX0ghqNDGv
         5yxGkrJzhu10pD0UF2Px7NhOnLh2aWyxpb5qWwvLMj/PDI+5tKBcQoQJLfIJ4hUvFe9b
         yh1WSArxJdAK39B6hoHlMwBNnLShPdVKEbov7DGYl9x8o4/38YNjOin8JlT3jDr+QqcK
         4A2w==
X-Gm-Message-State: AOJu0YwXnmc3l41E8isFnGt6wHCTUbgUu511LqwZxz8JDqpc5hHpxKnC
	fNqrreoFIoOCQu4tm+8L3T2PrlgsIySyGAK9eW07yqSF+EHRzkTf0Qhb8UE4J8DX
X-Gm-Gg: ATEYQzy4qvIaBr00dh52LJ+UIUFbxzUjsjbvGSTo0Xiev0Q4/q3ADUm1XcYJ+zZyv/c
	z5BYj0Q7ZGLOqgipE02jq3rMrlJy0x8kgjz8lCo+pnLa2PKh+rNwdtrvR/0rZSHzP2THL8B5E1b
	A+D/EW3+1WPWu1Jskximdb6MEF87CM4r2+p4GPPjxocTCO1kI/JxMc34wBR8zS70qWMGgT8Qckf
	91KcP6BNWNT71+8qI0heCwCSNuXIJMHegGeuuU5paG67MX8Qqa78LvoOFGpI34uGSCC1/u62yY0
	LVuFWYW9rWOuRliSpLa0tlsm3WMNc8BYsWPUzQWeylcfO72grTc1hDLr7FgmC/0HcLSlIgUDs0z
	zWUas/avrVNufA95mUtwY+XdAq2FpyagV33GrE6ILdw6y44R+q8LXbIBi2kemwtp9GIIt/3au+j
	AnhnuoximoEsYgKJUBGPCCj/5MgZR+rEmEuSrCEyN9RgOXCHKbpxHoAg==
X-Received: by 2002:a17:903:9ce:b0:2aa:e3c2:f920 with SMTP id d9443c01a7336-2ad74516871mr182432005ad.36.1772060930632;
        Wed, 25 Feb 2026 15:08:50 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b2309sm3378285ad.19.2026.02.25.15.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 15:08:50 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCHv2 3/4] ARM: dts: BCM5301X: AC3100: set WAN MAC from nvram
Date: Wed, 25 Feb 2026 15:08:26 -0800
Message-ID: <20260225230827.21715-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225230827.21715-1-rosenp@gmail.com>
References: <20260225230827.21715-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268553-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.4:email,0.0.0.3:email,0.0.0.5:email,0.0.0.0:email,1c080000:email]
X-Rspamd-Queue-Id: E860D19E988
X-Rspamd-Action: no action

The WAN MAC is offset by 1. Set it to avoid having to do so in
userspace.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac3100.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac3100.dtsi b/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac3100.dtsi
index 2cfaaabc7a6a..2d2e7e581291 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac3100.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac3100.dtsi
@@ -18,6 +18,10 @@ memory@0 {
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
 		reg = <0x1c080000 0x00180000>;
+
+		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	gpio-keys {
@@ -143,6 +147,9 @@ port@3 {
 
 		port@4 {
 			label = "wan";
+
+			nvmem-cells = <&et0macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-- 
2.53.0


