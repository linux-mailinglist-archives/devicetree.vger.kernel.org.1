Return-Path: <devicetree+bounces-219377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A614EB8A75F
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:59:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 330CE587834
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 407A831E89E;
	Fri, 19 Sep 2025 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dGFsG/JL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C831FEF9
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758297513; cv=none; b=ihSB7L9uD/Qm+xdLjzkojc8l6tmwMcAh01lEDaDat5Tj0+bUfu0mzI7QvIyGjY1MObKvXIUBQp9DHxakymLZ16A0/hyo5vCNbCoa/0TEOWZ3BpZ3b1cVGysWxPttSzzqRDA2Cf1T6EutSHMV0fdnnD8D+Yzxwjysq6xJBKHpq1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758297513; c=relaxed/simple;
	bh=NJnIJR+a01tiFVyycgg5z2jTHr11W/B75N+lse5oSTo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JhUXe49ab1PBcpwuFwmTyEYwogZEi/LpDRG36EnGtw1foCg2dxUCyNSkYV8MJSPecYNl4W3aIiIdsy2wgdhwdVGD/MW6WnxCFSfB5G/HjnkEr3OrnEzYFuJ3Dw5/8vHcl7MqdaUTv8LIfpF/8LBU8NLRjQQOsf675J0iodURocM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dGFsG/JL; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45ed646b656so22221955e9.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758297508; x=1758902308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UP5dGRqrdTptZhQQ4EtYFVr64j2KjS+2vfjCc+4QY94=;
        b=dGFsG/JLRuC80ua5Ov2+qjxCJQ2rqdNb4upMGW7jGl3tXJ58Ncbx1XFGdvjDAs4VsH
         f5lkZmNQFnS1c3pyJZj5F86fMiLpAxY3WUrRuLitYxipVTylCb4+VTOAWAT5Fum1vLR7
         i2SGcAkv68Wc7ETpmEiQy3Z3xJaLnKC2dyUQCCQTNAFo/5QPTYfVEXrwnDUbetALTLDT
         2eUdvQNISHzdWdEjmi3xhi84nfp3ij0p6dVHxnuWPx+p+4WHOL6d4pxW70gV6KQzRfnn
         EBEFcz9DtLQWDaapPO8HEkte6ft3+wk7DCNnf1Rs3Yp8eWpXac/zFkcI0QTcyxyk9T8X
         Zjtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758297508; x=1758902308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UP5dGRqrdTptZhQQ4EtYFVr64j2KjS+2vfjCc+4QY94=;
        b=uhwmBIwkhTpruOYPlUxvARK1qRm3H8O6AmWdlBZ+RMFjWFLwKQtei8p+s6PH0p5AmI
         56N1OgLg21CQEhfRTd5Bo02LpXatIprnPtBGXfkLeYd6mCotU+qEN0MmhHN4iOh7543X
         72n8VVKRpW7vMiohAsNr0fxSOqPQT051Ev7ZMFtJqpEdGUI6/+uXptBHAOnHHamZ9jbD
         tIezrwVnDmsYzFUGIgHhw4geEs3EhLHPosRPeSwvYTc7ixQiEqe7K7MeJtZ20XIxrC/+
         bDHHXe7TEWKe9qCP8tjuu0Teta2AzFatiwgnbx+GDZ/CP/G3mFwhvUbKyXINjOH5o1vZ
         4ezQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3UcalDZWojzGCqaxSDUezWJOM4KX8aOHTa6KIos0I96/7wa4r8Ztr9OrNNDnOTucEsFHa1mWQ6bT2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcu4oXEq240rSHNTbrU1nuUphbqzFAA/QzmFEKyheS7rBjH04I
	RwNIyeyT+iBRsYf75kDxIUdFS1uUAoca+szBwKBW0aS/D3AwblFGlap05FEQMHTF21Y=
X-Gm-Gg: ASbGncuIqh7yWwDrgYqwRLDaHBIXukBS0MKFP1zgF6w9p7syuRzUltgHHBCDYlbJUSP
	PN+Ok9tS/c6p4TK5SySnQHj7i5bM7zQeZnDejgizVoNoZqF35dmhwMPq+Vt3k12zMBlfbp86Qvf
	04+qykUTB9fYyfoJLmJVdO2pgAEDeA86NNiY4WVSPdtujkZS5nI4QLjIgQpD4zLaxaibWKDwpHj
	ZEZVzTG/2+vD5/HfTfExojxQPa9iRlQJVkVy3UHCOjFQgCUK5KjV9yo7O2UZKFQZZ45jMrxnUuM
	kVoTIY/6qL3hbqVeTSEnTf5IBGiON0Np/Y0PpP8Mjb4UzehwT4cGlHcMqwUOYTnwWvveG05IBAa
	M41tSC75mW0PRJ4PbqMfhlCoWstmk1gU=
X-Google-Smtp-Source: AGHT+IETzqsiuBysZBMfPLsmfeqemqt5Mwb8f51wHMHjVVo0pcnRoASq/BUs1RN16Mcn5F21Vi0GdQ==
X-Received: by 2002:a05:6000:144f:b0:3dc:ca9d:e3d7 with SMTP id ffacd0b85a97d-3ee7c92548amr2737996f8f.8.1758297508355;
        Fri, 19 Sep 2025 08:58:28 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:9dd0:62bf:d369:14ce])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee07407fa3sm8367224f8f.21.2025.09.19.08.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 08:58:27 -0700 (PDT)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
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
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 3/3 v2] MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver
Date: Fri, 19 Sep 2025 17:58:21 +0200
Message-ID: <20250919155821.95334-4-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250919155821.95334-1-vincent.guittot@linaro.org>
References: <20250919155821.95334-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the s32g PCIe driver under the ARM/NXP S32G ARCHITECTURE entry.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cd7ff55b5d32..fa45862cb1ea 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3084,12 +3084,16 @@ R:	Chester Lin <chester62515@gmail.com>
 R:	Matthias Brugger <mbrugger@suse.com>
 R:	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
 R:	NXP S32 Linux Team <s32@nxp.com>
+L:	imx@lists.linux.dev
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
 F:	Documentation/devicetree/bindings/rtc/nxp,s32g-rtc.yaml
 F:	arch/arm64/boot/dts/freescale/s32g*.dts*
+F:	drivers/pci/controller/dwc/pci-s32g*
 F:	drivers/pinctrl/nxp/
 F:	drivers/rtc/rtc-s32g.c
+F:	include/linux/pcie/nxp-s32g-pcie-phy-submode.h
 
 ARM/NXP S32G/S32R DWMAC ETHERNET DRIVER
 M:	Jan Petrous <jan.petrous@oss.nxp.com>
-- 
2.43.0


