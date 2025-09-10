Return-Path: <devicetree+bounces-215158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C15B50ABA
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 04:05:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82E06461F38
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 02:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 164F822B8B5;
	Wed, 10 Sep 2025 02:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cNWmUy+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978C72248A0
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757469952; cv=none; b=dJBKRw7uTC65ni/HXaICQZrGjk27ko5mbuwJCMe7TweFnExZKYjWEGYW3sE8Q5PoxsT+55/KxpIBkbl8FPWI/tu3Mw1rCZ5oi4fUPdjV2hhM7zr2InkslGsmq2RV7jQvdvUJ/mKDmYsKmGCh8m+qbsrUT/+/wkCAdeM2VauYnzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757469952; c=relaxed/simple;
	bh=K8Fv1uPBo1t52vTaFQURmxLqrjDhPhb9s/yoEQIvg2s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iE+bmc8deKZvyCxf7x1urpLqw+hVIqMglSXK5WrhJMq0yeHhHG2z0gx9KNRk7of8v3vHsUmD1LiZ4Lka4+12oAYGAgP4f/JNQ/mYzvG8ezBArscLJnbByqx/ZTIQCem/TK3hrUq71ibT48TNXFwPM0Dmot50oBswzBROuN3q1ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cNWmUy+P; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b4c8bee055cso5351746a12.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 19:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757469950; x=1758074750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P2Wv28uVFgIwY4UQs+1c5TBH2NyPkzg92eGQhJ0dgfI=;
        b=cNWmUy+PnK0nlIaSzecDl9q9eg5LxAF7BIY46ZQmVtL8UeoyLbec3cY6ELVOypkESs
         1kXaTnZv4e9J05dZwG0iW1tNpWNGjZiOoxXYdRw/8hW+XK0TA9KktNUQufG0X5JWALx+
         QRh39qBkY3VbGEU+5dBH84f3R4GzBY9GHQ7YxYdAnOTcB7J31I77qADfn33lT+k/dUkY
         C5Bz9/iIjZhW4wJL3Yaw7Di4obkss5aOJLoAP1iVy2dQAixIBXOFa21jNOmHXDOQIpXp
         a9FfdRaTBMPjZsB7Dfa1uM6aZEJQmqBwSrAn8p39E9vJIr0WIPw7vkx191uZSouhRHt7
         n/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757469950; x=1758074750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P2Wv28uVFgIwY4UQs+1c5TBH2NyPkzg92eGQhJ0dgfI=;
        b=H+K8RYsgS9HliEasXOjLzCxuQBNOYxJC1CkON0lmZzpwhVftdaJ7xQW+bv6sKqAlEl
         QOj/7cFDGpJzlXeEYJEkkIZ8Y4VwnigURIZnhr8FKteAcSw77sg1lYHGQjejIEigqAOg
         NDczZqZERsjqHV815FwcRrPynA1Ii+zBu0zhbGzpoyjv/vb6R3uOMfNcXFBXL2ZtviCn
         ZZNtDlrpjg6nJ12jgeH/HJJz2dvX7TrEbVvsoaJNuVKhguyLK8TEs2eFRQkwzmcr+AvK
         MbHwsa1BNvlDIlCgV3b2gZaHvRu1ULIISYLTd6GTaZK7HYW+X3hmehlWAwYN8trtOAj4
         V8iA==
X-Forwarded-Encrypted: i=1; AJvYcCWjtshzmjUu8vdmCq3iBJg59Xz4du4mMvoPK4wwmGLx8bdcgAtD/82O4JnssbiDwaMpjJ3AZ0/WU9mh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0NdKt+PGNOY4PlXZGVGcsO/wffSFDOFMjvgGrdytd6o/wCnI5
	lNDJOwPoGpTLxIJOVUYPunnLD3mbX7OhtwdBXJ5R3LhgvCWqqq1zWUrz
X-Gm-Gg: ASbGncv/f91FW5/K5p9xUCNqd4Gd4QciwBqAKiE0OQDTfdCTd7Qdt3egyUL0V9jNWGT
	haVHTZuI0WrYK9iKeLnnoaDiKSJQzmkqWTpSpq506sd+SveAdqe/lBrgvBazg5uHMtNsNRDq7if
	UebrPglZQ3FPW0egiUC6BaEP4OViWqetiOeOWATJKEL5NkrBnT011qbj7jjEFpS8VDCDOBlvutE
	p0afgfmt3qoYFNYpPBhCi2Z6gUsEqZ2LPGSAbiHYedyqepMrgCnZ2VGt5yuIAuUxGQlJvx2pUm6
	KeUjgmCkFOmFLX8BAJ5QcL9qYghOJwKCqrwUjS9kr9DaJMWW51d6YKS7ONQjvn9IRRJWKYJvcv/
	fENK3ceLU0bA039qW7HU08tOCSo8SsF+tKd1CVNtinagUhBM=
X-Google-Smtp-Source: AGHT+IEVBLAzfDT4V42Ob7mMhF4hEh69hyk11soKUt396GyM7UHe/sGizvdubIBtjiwfPR/vW1jErg==
X-Received: by 2002:a17:903:b90:b0:24c:d6f7:2788 with SMTP id d9443c01a7336-251741866e3mr168780505ad.57.1757469949993;
        Tue, 09 Sep 2025 19:05:49 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:58b2:c9cb:20c8:e698])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a27422bb7sm10607735ad.30.2025.09.09.19.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 19:05:49 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	kernel@pengutronix.de,
	Fabio Estevam <festevam@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RESEND v4 3/3] ARM: dts: imx6sl: Provide a more specific lcdif compatible
Date: Tue,  9 Sep 2025 23:05:25 -0300
Message-Id: <20250910020525.342590-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250910020525.342590-1-festevam@gmail.com>
References: <20250910020525.342590-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LCDIF IP on i.MX6SL and i.MX6SLL is compatible with i.MX6SX.

Provide a more specific "fsl,imx6sx-lcdif" compatible and still keep
"fsl,imx28-lcdif" for DT compatibility.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi  | 3 ++-
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 7381fb7f8912..074c48b04519 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -776,7 +776,8 @@ epdc: epdc@20f4000 {
 			};
 
 			lcdif: lcdif@20f8000 {
-				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 8c5ca4f9b87f..745f3640e114 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -657,7 +657,8 @@ pxp: pxp@20f0000 {
 			};
 
 			lcdif: lcd-controller@20f8000 {
-				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_LCDIF_PIX>,
-- 
2.34.1


