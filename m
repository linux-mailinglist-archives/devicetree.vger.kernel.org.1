Return-Path: <devicetree+bounces-168102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7733CA916B7
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 10:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64A015A1297
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 08:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A564722FDEF;
	Thu, 17 Apr 2025 08:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QNZBE0+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1622288CC;
	Thu, 17 Apr 2025 08:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744879326; cv=none; b=Fg/hrkebBtGpDGVz5OaVYtxLilYn2ARh0+MoQoqg6cG7aQTR2lzWLmJKVlSso0/SUl4zQgwAuQXUBReImETMNBUSdZfHYwR8jL8FZssvFCvWyXtnBiUKqCzmgl7QgnH7LO7zRZDwlrBbsHPy7vDnRJuooMZTCCY6btmS0TPtUcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744879326; c=relaxed/simple;
	bh=W0j6iaGLICzY08UwsMabAQsvmG4ifO69JE8mK7U9m5k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lil5mqtFIudkxAXEpVlCk74pEdJnFDroWoZJOgqkpgNktd6X05ZDDU8P9PEdLDtg+xyKZFprLjyJ3Eqd+0AK67SDOBqiDXzfqCZedHr8H38guopldbznurefxIRNJ+zXcbVF9j0zepgy+V6Q0CvjGKnLBDmajajJWNJDPQETR9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QNZBE0+7; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so3265875e9.1;
        Thu, 17 Apr 2025 01:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744879323; x=1745484123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TBtNXmS8qjturrEwGtpAmFAuM6DgmNGXr8LZo+XU2no=;
        b=QNZBE0+7e5OKhoiv6JThuJmzOBk7nU/2QEgx6EwvYIx5uN63LpRamItjckvh0KX0D9
         ELX7gPj02RUI3K+XN+SejUBa/xeyoUdzeXnNnIm4rkGxK8oJgVBJZ0vSYTiqsDgQ2orP
         EvY/glp1ntaHCdH7X6sjCAxwz4mckHSzuM9Ku/XguTtaZqBTg7QUhnYAZYV2TlwQhldK
         dY8oMdP7xPIpT6AH+lwfiLtk4l53USKfAUxEtIbQ6YjcgclJKgYRSYEC+/oD0IlCDK9x
         9aqyOfQtk9nPX/R45ZLCkVe6egbmaePKdPnaYWxEVXD69qJSKhD9D6QYVDNcPyIOxKv6
         2Etw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744879323; x=1745484123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TBtNXmS8qjturrEwGtpAmFAuM6DgmNGXr8LZo+XU2no=;
        b=Y4df1OE5d3c+sMGfT6YuPcrd3iPLUd+ViXW1DjMoDXo0WYcUTZkDRGCtfgC6J1QsZe
         ATh5uajApKnqvWbA5y/UzjGm4KjhFckjnaBkQO1/yym/QLZKJxcSm5cl+sUcIW3rusWS
         5wF9aN3HWn3MMdTXVOsnJ/Mw58wJC6klDG2uPpfyqv+88s99YOMhfw7SVJY/p4pQq/Ww
         7NxGL++KdghA/anugC8h/zRX/jm+oaNvOYcgRJ8SWIBf1iBom3yQICifdPkiZF1pxHLR
         L8DXNB92+1sO//6JcfaKN6pP+pWb4THlUxIA//W/yDLZw/ClSPHItcAJppCHvLNDPV3v
         u5yA==
X-Forwarded-Encrypted: i=1; AJvYcCVcLCUCDVeo/58FTUzgBfhrA4mi91k4BE+G0+WNopYKi4c5OmZ75DPQt5riakVwEvK0+GUYPJC9RPl0@vger.kernel.org, AJvYcCVmpLcwJS3DVPDdtNhqpObCo3gw0nR2I3G1ocpQEkMDMQ4RtvRxyVYq4ePsdaHP31ehJiAGlZA02UlJU5+I@vger.kernel.org, AJvYcCWvLHQc/v5bbKDZDR3Ev2+oDguUXZZJhxR1RWdz/OJ4p9TDPq6Z4EntnjbWgmvf+J7vSQn0sTFPbe5mfU3ImNVO3+c=@vger.kernel.org
X-Gm-Message-State: AOJu0YxesAuWJUDqOnP28iYbjyRv01uWsTe58sLtLrLF4/uYt7dc/6ly
	1TepPY2mX5rKwCIiiwh/+jN10sxXTS0evadkKfGTOpIt1bWXmWFo
X-Gm-Gg: ASbGnctlOIPtdnIXzt7CLxpAkRyponPtTi4Fku41og0ntdiIMpZyjylCNFnEoMTfGFF
	QSbbG4aZ92A6GOTUP3ikLDnz7EOewAAtm6RzQ5eMIRnUrPOG0Qi1UJDzTf/EAHjqgyhYyfwraI6
	8iiH6WNr6I537QbQvxCsmBjI3KQCVy/7hal/kx7mOPwPr886gWlinm85OIXhivOoh8bheeXS6mx
	vBC1Eawlbik+Ny5YtkrOKoET32pCLi8j4DY994KH4HkAIOxaosGGgwfvlezVKEe4vUI4X2IorT0
	1FYkLXi8kFBq62+aUvCd9jBQRlAxD9bw3RESjoBV99BIO7oU/hM7hbh4MWfQmyQP
X-Google-Smtp-Source: AGHT+IFhbogSv22y1O3lHsGjfla1/G8RQGwFtOudU0ddZpLH9ImE2NvEPhJVSxI+e+uL8StCh9oEEA==
X-Received: by 2002:a05:600c:8711:b0:439:8490:d1e5 with SMTP id 5b1f17b1804b1-440634ad300mr16770745e9.4.1744879323027;
        Thu, 17 Apr 2025 01:42:03 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:3f0f:d684:f4a:34e6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96cf1asm19657712f8f.39.2025.04.17.01.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 01:42:02 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next v8 4/4] MAINTAINERS: Add entry for Renesas RZ/V2H(P) DWMAC GBETH glue layer driver
Date: Thu, 17 Apr 2025 09:40:15 +0100
Message-ID: <20250417084015.74154-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250417084015.74154-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250417084015.74154-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add a new MAINTAINERS entry for the Renesas RZ/V2H(P) DWMAC GBETH
glue layer driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1248443035f4..f5141da4d509 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20606,6 +20606,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/usb/renesas,rzn1-usbf.yaml
 F:	drivers/usb/gadget/udc/renesas_usbf.c
 
+RENESAS RZ/V2H(P) DWMAC GBETH GLUE LAYER DRIVER
+M:	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
+L:	netdev@vger.kernel.org
+L:	linux-renesas-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/net/renesas,r9a09g057-gbeth.yaml
+F:	drivers/net/ethernet/stmicro/stmmac/dwmac-renesas-gbeth.c
+
 RENESAS RZ/V2M I2C DRIVER
 M:	Fabrizio Castro <fabrizio.castro.jz@renesas.com>
 L:	linux-i2c@vger.kernel.org
-- 
2.49.0


