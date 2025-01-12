Return-Path: <devicetree+bounces-137800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C8DA0AA78
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 16:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFFDC1886903
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 15:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71FAE1BC08B;
	Sun, 12 Jan 2025 15:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fGhBaRx3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BB71B6CE1
	for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 15:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736695682; cv=none; b=ifOlcBNge5dMI4krFkGTFqkh5s5hH5Y0cnB84K0EiFWJe9SUYMB2iptjgrJkRs5xoqNXfcNLZwdzRJ89hS8LO0bP3sEukKhKr5caJl18KDPxSxhUhDaWT4U4wXtsls//3xuigT3DwScY/a+ZtTQsmxnvv2CGW6cO74vvtiMWmH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736695682; c=relaxed/simple;
	bh=w+1HevnkSVnWipoDnFwbDZ8xG3ppmW7Bxk6nuXd0sNI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tL/ToJ9Kjeirh4eX905wVKsLz1Om/xyN6OcdeyiXKAgbGJxNFnJW9WY3BdVCny8l/5eMCiGmq6Y+QR+014bSpUJvoGAvQv3GHinqJEl8AJjIKSxDmJTSXJRupDefHQIj8qg9L9D6tt5CQgQe6kyAznkA9rTUg+2mM7T5mcBNp/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fGhBaRx3; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2a88c7fabdeso1661935fac.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 07:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736695680; x=1737300480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pwdo4qQeCKznPv9ebQBvPBmgu2DZRJWGaG2NfRNb44U=;
        b=fGhBaRx3u0HuTJKGkBOqfA6jpLWX3uxX5doonDS+/31j63MngTyjq25VUom5NPPh+A
         XLZ1PM7Nft4LNQ/SY3DNM25NHAQGE+E7OqEKWKV+6ysnSn4S3r9RMrowo7E6SqveAXd5
         yHS2g0I7w0jx8Dv8Gk1KP8ILHpXUqOc46CiteRNzoVCE+T07TNJkhlgG9IEqykjiOiIF
         us9FYCs24EW0qlrDkxQACjllh/UhP7VTGTCzBR9k44yA7gqSfdSeBefXtS5rZe/PKVYb
         LxGfjqYbLyJ0YKE4mwFOCzRwmcCyDIXFvrJNLJoDDL7fHFYIywozX3V9kL25Q7u97OYt
         4Rlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736695680; x=1737300480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pwdo4qQeCKznPv9ebQBvPBmgu2DZRJWGaG2NfRNb44U=;
        b=hF8c5Oqpai2MXufKVHgGX/JRDdlWQqaHwMFX+L299vTZScFHhKIsGMmoK1rQQMMXS7
         e/bDw4v4dUgA6lImQAgMD8oGebgrLYB2yRKDMcdnTHA4c+4NI6AEME+1KgPe6KAIGswo
         j3BKd1HJ7hRFTfY05LAsvlM+hxmKIUAvAskpfJyabB5V5cY9gJMpZuDS7eWH0GQAslaR
         q9uGgD4Hs6JzkAirrGI54G18nBkZueJodHVpzUADV79F8XizcL8Oa4VPXf/lzZ7/WfPX
         zIDTnYntorXwtvlmE5Ey9CdOwugPxstbLs19ev+Bm+LMyFvowiL2cvQAewU9tR60Jort
         qNmw==
X-Forwarded-Encrypted: i=1; AJvYcCVLSbZEK+wvHtEvYT80m1Eu5aUu3ydIqlAMSmzzGG2J/X9F0xrTrLz51UQbbxm3mSuHGUlx+656Gd2i@vger.kernel.org
X-Gm-Message-State: AOJu0YyRJ+YrIH+Zresr46nDlFMT7WmiBrsRs2v7SylBsxkWjJPah1iy
	CTlYWOBnvf6PrlZ4T50DVo0rzAAt/VbcKzEP7KVb7fX8Pxc6ZO5Z
X-Gm-Gg: ASbGnctZ+WBlqCIy4LU0u190Zn825gCSb+pRRXN8KPgvdoH0L50CEcea40m3TSD/mhN
	+544aB828G4M7H56NaKH8FT/I2rt2tn7MJLSbzoWs/bka7oUAyQEiDT0ylgYakVc/4ZzXauAr8d
	egvdWqOzS/qjGfUezZx57V+Ve+6ROaspnhnlqMwAimLKxZ0CaCrbK0GXpFVxDMIGq3bEu7ZZ/pN
	QZT6Bt6kAUnG8gx//f9607np1cGB1sMuFZpMnB0zKJ7M7YW+LwocxXDeKYka2eURcKVKw==
X-Google-Smtp-Source: AGHT+IHGgArEfN9u2RPH9RRrlk20P9prFqs8qFY9RW76sTAmV/urO4/B2SkzhIvQzXSVvGyn3gaIBQ==
X-Received: by 2002:a05:6870:7e8c:b0:29e:2d50:11aa with SMTP id 586e51a60fabf-2aa066b6229mr9191645fac.18.1736695680164;
        Sun, 12 Jan 2025 07:28:00 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8c53:b609:d83:9568])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ad80547c11sm2858083fac.18.2025.01.12.07.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 07:27:58 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] dt-bindings: clock: imx5: Fix the CCM interrupts description
Date: Sun, 12 Jan 2025 12:27:45 -0300
Message-Id: <20250112152745.1079880-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250112152745.1079880-1-festevam@gmail.com>
References: <20250112152745.1079880-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

On the i.MX5 chips the peripheral interrupts are represented directly only
by their interrupt numbers.

Make the CCM nodes to follow this format.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Use interrupts = <71>, <72>;

 Documentation/devicetree/bindings/clock/imx5-clock.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx5-clock.yaml b/Documentation/devicetree/bindings/clock/imx5-clock.yaml
index 423c0142c1d3..ad03c0a13e64 100644
--- a/Documentation/devicetree/bindings/clock/imx5-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx5-clock.yaml
@@ -46,13 +46,11 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/clock/imx5-clock.h>
-    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     clock-controller@53fd4000{
         compatible = "fsl,imx53-ccm";
         reg = <0x53fd4000 0x4000>;
-        interrupts = <0 71 IRQ_TYPE_LEVEL_HIGH>,
-                     <0 72 IRQ_TYPE_LEVEL_HIGH>;
+        interrupts = <71>, <72>;
         #clock-cells = <1>;
     };
 ...
-- 
2.34.1


