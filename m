Return-Path: <devicetree+bounces-126133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4569E075D
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 61278B83BE5
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD39021C16F;
	Mon,  2 Dec 2024 14:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="NJ5e1wOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B55B2194B6
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733150020; cv=none; b=u9HLO0whMzOl7ueUPsoD3miJuwTPQyMxYrLqpd8w9wzxJ8iiBR/1knUmaZ68pknC0mGDGU9vjsjH2i5qQU0ePDaR3tBO72wpGHOGJCIlDtyaqchtB3uLE0ncTQCL4otJDd6/tcQWUHrnYOvArx/yPX7SBHzYznAJ0p+48gb/F/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733150020; c=relaxed/simple;
	bh=BaGHpzbQnGS9h9+GmmvEjlZrAsuM0BYLJeHZ7pkhhK8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZNoDaVblfuyNn6LbGmKi4jZquhMWZ+ivWZyPUjdw20gXp5jnM5DYwI+VKU7QuxXjIkYJN+3P5LYHCATSyBNnkPDRwWcXxOz6dnKjLHpW0918UsSChP3/FwlnQqoHIFKgNWtqDMB73YuUa2CkjkIJgBu0hrQywFTwhV1HxTzK4gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=NJ5e1wOu; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-434a852bb6eso39885505e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1733150016; x=1733754816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MO7RndIL4M9BqBFNQs9/VUiPinRWNZHXUCcV/Hhz6kY=;
        b=NJ5e1wOui/G55zH8hsIDORqpWqMbVufaEry+obnX+0qt5vpA2jD18laX/l9P0te0ca
         DBWMBTcJT2U+FaYLXoKg0zj7tTm1um7obw0KqNz5GLDFoZvCi6UjS2iOSPiGIiPVI1Kc
         /eNN76oqjk9+alqY6nNCTERxJ5RddKu7p0Duo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733150016; x=1733754816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MO7RndIL4M9BqBFNQs9/VUiPinRWNZHXUCcV/Hhz6kY=;
        b=YwIKYXdLbPWpWq1hyBlnaMcxfdX/uBIJPC634DMUcRZmOOHQkagLi9mPCGtOBQ7Gjd
         gbOFC4MsuVMnx6XGBGR8WJ1TunXJhNCX3d2WgyXZwiOWYjF3e3oMxI+ugtDdGisWOZQx
         O4sXEW2PCHcFUsoUS+/2407kYJLIyrPwXSDCH4t9h5tLMqOUG1SrkBNTQxqWxviU9gyz
         4nAhNcevMHkTkUhnldrK6AbVNr4s6mvnFHfQXro5ygEgmPjrjeuVNnbNSVATtlsyjXom
         LvFyU9OxyiwE7lbGrgCn4lFhe8JaMvjk4Cf3zFZ6Z1zK+P/Zh63LsFxdX094uVQaBqSN
         2FvQ==
X-Gm-Message-State: AOJu0YywGTsJkVC5akB/mOtNrLZQ+i6SDu/mHtb4ocDXnN4RjVeqOPVo
	tXQSBG4iKpRv1JqnBlWT+s/pq1qYlXa5W3XXZ8g8Wq1AocAe4JRVxAbqySC+SNwji+ij0oqtMGq
	p
X-Gm-Gg: ASbGncuaKUJGpICEjsVY0jF1M1wg3jeOqHLB02KLOv18xiV1BAxhev/zzvN2llWkIo+
	QeG+oYBTMG0XWjP7v4IAl1C93sp3upj+m/ujWwJmhWIoXCINGpCC2WTWbZOs6j6Gbp/4oUpcMzl
	6hlNRCkoFDpjK0OSOgY7gpj/E5rAhsPSzCzvZOo1h8xRf4thJJPv+xXfglfGCXLFMqQwH6S29Fc
	cOMGgFmDKjUpgcWDIwtY8Ur57mrYDlmpQ/zoF/yDXv183gKUHpHWEVA3WOgS7DqoeQ6bzK5ult0
	yzCtXbd0qrwvVhBtbmLFi8UBA0bkipoxllQsUQM5oRJtWOI=
X-Google-Smtp-Source: AGHT+IFnRH0g2zecuvkeg70vcEHwDBSX16i2HnGbj1QA8WdxkOgfJwLhEB0xy8ebIOY3bQXUoeRFnA==
X-Received: by 2002:a5d:5f81:0:b0:385:e9ba:acda with SMTP id ffacd0b85a97d-385e9baaeeamr5801500f8f.2.1733150016329;
        Mon, 02 Dec 2024 06:33:36 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385eed2510esm4312569f8f.69.2024.12.02.06.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:33:36 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kristo@kernel.org,
	vigneshr@ti.com,
	nm@ti.com,
	Romain Naour <romain.naour@skf.com>
Subject: [PATCHv3 1/2] dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible
Date: Mon,  2 Dec 2024 15:33:30 +0100
Message-ID: <20241202143331.126800-1-romain.naour@smile.fr>
X-Mailer: git-send-email 2.45.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

The ACSPCIE_PROXY_CTRL registers within the CTRL_MMR space of TI's J721e
SoC are used to drive the reference clock to the PCIe Endpoint device via
the PAD IO Buffers. Add the compatible for allowing the PCIe driver to
obtain the regmap for the ACSPCIE_CTRL register within the System
Controller device-tree node in order to enable the PAD IO Buffers.

The Technical Reference Manual for J721e SoC with details of the
ASCPCIE_CTRL registers is available at:
https://www.ti.com/lit/zip/spruil1

Signed-off-by: Romain Naour <romain.naour@skf.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index b414de4fa779..032cdd30d95f 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -115,6 +115,7 @@ select:
           - ti,am625-dss-oldi-io-ctrl
           - ti,am62p-cpsw-mac-efuse
           - ti,am654-dss-oldi-io-ctrl
+          - ti,j721e-acspcie-proxy-ctrl
           - ti,j784s4-acspcie-proxy-ctrl
           - ti,j784s4-pcie-ctrl
           - ti,keystone-pllctrl
-- 
2.45.0


