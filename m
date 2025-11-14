Return-Path: <devicetree+bounces-238407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F79C5ACF7
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 59BA24EDA8A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1CF826056D;
	Fri, 14 Nov 2025 00:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RM+sA2br"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB822550AF
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 00:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763080719; cv=none; b=XjFiSs19TzQjpFT46cAFncL5atwGEUDaYQDKZBv7hN1lNt8IrfDvf1QRoaYhRIubV+jb7+ktK4vfa10Rob4W1xtBlNuplw9gxk/Icy7oir4BntxJ5bAccJhhqf9R9m/6MmUwDoRQqMRPNoj/wpqVGJkoMsqoknfpzfUSZIH3ets=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763080719; c=relaxed/simple;
	bh=TvnpUFMm2ryBKJdRmgf47KJHDbXXufpqPGy+CeMvweg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SY4rtOk4xGtdD9qNmAg/4zcYn10fF2GlEcWJSK7FD6DvMNHXQz3ymULU1Lr+43F6yLaDLnb770uRyjHDuzEXaKGkLXxqyYn5YpPvxbeKOlTVhfrryMwxvkit2NRogu3ejVpDrIrI8xlXw0mc4Rjj5enGs8qZ5w+rCuRFFdLsN2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RM+sA2br; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-bc0e89640b9so1010357a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763080716; x=1763685516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C/tU3ToM4CkL60i1rTuRB0FRIV+HElBhBmwOezkh+nI=;
        b=RM+sA2brxBJwI77Y9mW6Ff2t0OHuWwVT3xqg+F7ZSsJpV4zMfHGasgGTdHK2GFCnUd
         WFuCvCD9z8fHlsevfJjDf0Y2/Sa+Uz84tgR9ZpgRKKwKzqPi2PuXz4wOCWnc4JN37Ry7
         luZZnGj3ccpFKCRn1AdEKpRcPOpxFVVGVyNzJOSDtjIAI8sMVUFxc85zlSWzIGtJU9i3
         QJpYZbORdD4d3VMIkHoDqvlkhzLv0DPfF+/wAH9Je8OeHQ8A8FTg/jfgCVKhOE7w+Hpn
         HcjMVWSCxMIMnTYtH+uayCQjXe61lTmZlbBVeLysMFGMGX3EPwfqNpeqrN9YVHhZqurS
         0z+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763080716; x=1763685516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C/tU3ToM4CkL60i1rTuRB0FRIV+HElBhBmwOezkh+nI=;
        b=InHqnrRJ0jAxH4vG5JFpXXL0Z+ub41Uq8nGoYXxIrgkt9he+SARUoKaA05F+iPdMdw
         KYqcFhaS60LmGutv325IaoANuzmnsdSQ8U/J1aK1en59dRQk/7PlNVxVN7+1fRTGPBuA
         /NlENCLHTi1xS3rSG57l6Nhxt57KhmuasKSkIPQRjAm+8/azV9jcTyjtcEkcPXx+Ia55
         n9P4OhLkBpYkOCYYs8X9yQgtObEmBdssPF1i45WLGqXF7MwIlQnYSYm4FTAaO1i3e/N9
         kYYtNJ+WVoZEqNev2MPH9xwJb8r5gN4iw/g6MFad4UKUDYnTidoIrTk0ZV+w7stA4seN
         0ocw==
X-Forwarded-Encrypted: i=1; AJvYcCVpHSL1f4NWbacOZodsJSgnUGZQZb2jg0EodgYIbeOt+8y8mIag18CWHInTpw6Y9IDX5HuJpKhcZ/sn@vger.kernel.org
X-Gm-Message-State: AOJu0YwxScrVrNWT9jQxlCj4jmFypuKIkYzd6bGGrETJBaDIlK7308qo
	B5abwWzImL/9uUtxKEui/PkGaQCPqT2TLACM9kb3PU5ph7WYT9u42irR
X-Gm-Gg: ASbGncurChgH+MmseeflWTzvVenDJW8d4VCtX+ZlXnp7p3N2YCy5ilI/ux6ade/1D1o
	yjRl0Do7tDsdGylKtPZvR4kImzYbJRrJ1P+744CepYZcmEsJMpLugt2rFgF+nor+mwcdw6lpDyC
	/oZA1N8t8NdoXX9LGfnHGSUcsQXlASijuIeVy69H5EULu12mFgaS9jr0YG0VYvZMGZ4GtFaDgke
	wa7cVH8bnOKTe8WGEy/JJYovAmietXa4s8TGeFqa/cYdCRSe5RkmVbS+TIKUkTKJQNAAcOj4m+h
	qJECQEHDsbjrcQxY8fPOK+GgM3JFBbWAaZ5v0Mn6cfqG62EnPwtUTpIJx+Vp3chF0YIsRPhP/BN
	WFpHHWACaF8VXQzr4uvY4pt+p8gxS3JKkEwZM5TjtvpugftHP29yUwQIUuEFbruiQvZrdPtX34Y
	I=
X-Google-Smtp-Source: AGHT+IHOi5i8OOkvh07viYVMPYkqSx80JGxGxStktEkqORfwNsnc52iYhiMNXrcmkKVdUboZXQ8H9w==
X-Received: by 2002:a05:7022:ea51:b0:119:e56c:18ab with SMTP id a92af1059eb24-11b41504d44mr212238c88.19.1763080716287;
        Thu, 13 Nov 2025 16:38:36 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b06088604sm3636365c88.7.2025.11.13.16.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 16:38:35 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Han Gao <rabenda.cn@gmail.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Yao Zi <ziyao@disroot.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 1/3] dt-bindings: net: sophgo,sg2044-dwmac: add phy mode restriction
Date: Fri, 14 Nov 2025 08:38:03 +0800
Message-ID: <20251114003805.494387-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251114003805.494387-1-inochiama@gmail.com>
References: <20251114003805.494387-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As the ethernet controller of SG2044 and SG2042 only supports
RGMII phy. Add phy-mode property to restrict the value.

Also, since SG2042 has internal rx delay in its mac, make
only "rgmii-txid" and "rgmii-id" valid for phy-mode.

Fixes: e281c48a7336 ("dt-bindings: net: sophgo,sg2044-dwmac: Add support for Sophgo SG2042 dwmac")
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/net/sophgo,sg2044-dwmac.yaml     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
index ce21979a2d9a..e8d3814db0e9 100644
--- a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
@@ -70,6 +70,25 @@ required:
 
 allOf:
   - $ref: snps,dwmac.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: sophgo,sg2042-dwmac
+    then:
+      properties:
+        phy-mode:
+          enum:
+            - rgmii-rxid
+            - rgmii-id
+    else:
+      properties:
+        phy-mode:
+          enum:
+            - rgmii
+            - rgmii-rxid
+            - rgmii-txid
+            - rgmii-id
 
 unevaluatedProperties: false
 
-- 
2.51.2


