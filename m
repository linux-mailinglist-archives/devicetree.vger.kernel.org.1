Return-Path: <devicetree+bounces-216509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47903B550A5
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:14:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 674571D64575
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538BF30F929;
	Fri, 12 Sep 2025 14:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aL6JFHwK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6526D30F52D
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757686481; cv=none; b=UzRoiYmzLB1B1GcDKfSoGD9E9Uj7VYLR7G28bbrd+k4M5X3xGZAUah/DFin/wanMAS+0F6BHKDg/m+z81W9zFLmQS1jcR8ZE4wxvWWwesv51OdXBnKzqmLRQZ4HuYn5jqfOHNAeBkcj+noniWJecljp1dud1H5o409W4/inguYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757686481; c=relaxed/simple;
	bh=P/I0o3Ct3tb/qJdXM8/n0dAX0XqgE4/yICfEQ61ZAYM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=kONfikCnOOzq5CW4ApAZQCwKlsddOaEkHv5Sii4DyYn1DdcDlXA5uZGAVIq2jZ35qGSxhDnt9LQDeaF+MmXKeAmizJxRguuFAJUhTrc45dG0JQmzD1VxsMeIfbx+kVhmXTkjcAsOduLZJuOUHVSnW/FcP+jXg9bSaOP52LvLgkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aL6JFHwK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45df656889cso13454775e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757686478; x=1758291278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=QYPHqMTKCV/4SepZAwfa5rvCiamyWF/H10RFWd8DrNU=;
        b=aL6JFHwK23xkKMtouQob03v2a9zHWiaSdve+K6yEB+izJWMvTZnDB6Wtmt5NQuBaVi
         fW5mdSkWt/2m5woac6nszCxhQ7ZcLQjM/47Lcb8ky0UIJ6PjG6+hiaIlVvhmakchxrNn
         et/W3hmitlYpebfvtzEmlBwTwjAPIHMsCgkFrExmKUF3M9+wzSz7xORMbnoZ2ItENJx/
         1KrSM2SNwHFjDIaHAjhLQDjKE9u1WAsL90eEc+V9YpcSKAErN9vnxwziGKzvU5bE3RiN
         l5gv5HqHsCxLPZZK0cPZ7b+KZYlPX3nCs27Aap4HsSnENgPM7TcvUYIR7GIXb5+UFYw4
         bZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757686478; x=1758291278;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QYPHqMTKCV/4SepZAwfa5rvCiamyWF/H10RFWd8DrNU=;
        b=dJU1V/DYVB4o/MQbd+/HirhehKSuwyig7nTJJ427m7Go1p8LuhGLYh/voCyD88TpmK
         JNlv2sPVXcOdcr3efOpgrYsBTY4cEbzkp2n1eKTZXLHsrblag3kAIlSaWegxaZBAuTK0
         GHhhZ0aZ5i80UP4BqM4vjGtgDQlv9CwxLXNjACF0r/O2SJlalhFTZay/X84VoizguXvC
         5EB/apDczFbwyL3SSdl6bfPGjBavbgP7RLPVPVq0TRMOAloCZs7ZxdXGlgYydmhzqZa7
         8F/CMAWvGkaPMwHt0/6M8c1olQltKRW5bB6bUkMM7j+Xch+LwRmTTJQv8knJJiXb0brU
         VIVg==
X-Forwarded-Encrypted: i=1; AJvYcCXllAph7p98QDAg72OS/50ycaAQz/vy2CWB2/REFjc49IIIEHYEwSfVpSU2wHRsPeeQ3XvHHIBO49CY@vger.kernel.org
X-Gm-Message-State: AOJu0YwfO94CjS2NKf1JfpNPw2/xG+pdgA6T5PJUDir18uI3FoEzD6bG
	6g5tvOFcZNxvQ8scerwd9M24nrLXSVdczEZ0Uo00uc788bYEPAwnK/KNnmyOxXDFciw=
X-Gm-Gg: ASbGncuUWUd8SwS7CB4qYc6u5P3Es9+CqvqfR+E33+lP2ihFk4NO9yAp6BOzpExRJNR
	nj6/I4d1beH+LgZrSfEFGfRsATiqsQ1SWRrFptgO7bpfqdOsdY8I2qsAyKEuvQ7QUDsS4yeYbVt
	wbicnb6Gfpxqi+hyJl9jU9yrNO1v1m2MIu1exPVUiz/21MQuiqIuQfi1w5EzvhFUjfhaIaLxSt8
	tM6+HAC3KZlnBjAfGUE/Y7L+XMEqbCgSJUZmbaWsdH/i6BGLfe5opJ9VpYGB/l2IUtGaiRCCDOm
	rEP0vLUtGhrSazJ7HHsACUxLoN6zdHb4gj3AEM9heWRMCDIsyZtnGfIjyqTYXCNS3wy/3j8Smy4
	aXHnS0JXxUUVFveZ94Nd2n0lMTyFhJyetyjGYwiGYGA==
X-Google-Smtp-Source: AGHT+IHmuQ4etOmxfxR5erD34BAIdfgntlZi1sczMbDFjFRnIdZIcAxN0Jzl68sTWuowQwjuFwFKgQ==
X-Received: by 2002:a5d:5d05:0:b0:3e7:46bf:f8bd with SMTP id ffacd0b85a97d-3e765793224mr2876593f8f.23.1757686477682;
        Fri, 12 Sep 2025 07:14:37 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:40ce:250c:1a13:d1ba])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd415sm6680739f8f.30.2025.09.12.07.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:14:36 -0700 (PDT)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] pcie: s32g: Add support for PCIe controller
Date: Fri, 12 Sep 2025 16:14:32 +0200
Message-ID: <20250912141436.2347852-1-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S32G SoC family has 2 PCIe controllers based on Designware IP.

Add the support for Host mode.

Ciprian Costea (1):
  pcie: s32g: Add Phy clock definition

Vincent Guittot (3):
  dt-bindings: pcie: Add the NXP PCIe controller
  pcie: s32g: Add initial PCIe support (RC)
  MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver

 .../devicetree/bindings/pci/nxp,s32-pcie.yaml | 169 +++++
 MAINTAINERS                                   |   3 +
 drivers/pci/controller/dwc/Kconfig            |  12 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pci-s32g-regs.h    | 105 +++
 drivers/pci/controller/dwc/pci-s32g.c         | 697 ++++++++++++++++++
 drivers/pci/controller/dwc/pci-s32g.h         |  45 ++
 .../linux/pcie/nxp-s32g-pcie-phy-submode.h    |  15 +
 8 files changed, 1047 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
 create mode 100644 drivers/pci/controller/dwc/pci-s32g-regs.h
 create mode 100644 drivers/pci/controller/dwc/pci-s32g.c
 create mode 100644 drivers/pci/controller/dwc/pci-s32g.h
 create mode 100644 include/linux/pcie/nxp-s32g-pcie-phy-submode.h

-- 
2.43.0


