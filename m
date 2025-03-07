Return-Path: <devicetree+bounces-155293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03776A5625C
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:14:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FAEA1897738
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F411DE3B6;
	Fri,  7 Mar 2025 08:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yH7S8w4l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1017D1B4233
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 08:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741335217; cv=none; b=oy60lS7vxu1xQOok5peA+lP+0IkC31WGyBmvdyGRZ41pExxI1JGElw2UZ4Lo7CusbDYPGTmDFx6wntoWQzhr8ilqXg+MuFgUuwVJaMzBmjpetkS2y5hxDk+Jb7JYUum1N7KeZCoTZ479TJYClkiGjCdKtIf5i7+aCpaSBrg2++s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741335217; c=relaxed/simple;
	bh=mNNtsgjvr/yg2dDU2qGg1ag4pOBiq+f/ajn9YgzG3AQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GevnSuxu1+Z0/wwp55WhDMFEm0AlfU+TrxWIqr9vgzKmS6a2nym2DpctaZuyMxlkMQia9U8W4ruosPadzp3f3IDZwzC8dIqNe+KBeAO2PqfXxsFixdhdfOJa9tXNvnLIPsQy18X3bDGGQgCpCkPNUTsCxDQ3Ji+k9vvNwjYaIe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yH7S8w4l; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43ba8bbeae2so2058895e9.0
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 00:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741335213; x=1741940013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12a3NnEfGMI2vuVvciD88yslLap86n9MfZE9qRsezz4=;
        b=yH7S8w4lVDYb0b579FuP93g8k8kinxWIbiqkN1cGT5OKt3+UA6VIJ7uj5Epbch/ygr
         wZhMUWu/PUAU4Rv3xaODXKze1uDqkZ6fpaL/+GtF6xljTw1kgoTiUua4CApSA76qtJC+
         y8UgX6xlFtKdttpjysXvpakyhheOD0r9lwkFz4dWthvXlt4+l8vkmH58sUtWwGOGjLNm
         MoH2xjC3GSKtfYmF8QYeALPE4KCy3WdGtvQhQOBdNEJ+jw6uJjhjtfd2EaUQoPO95Xrf
         NQBDTW6ONl/bPUEsaIxyAKj65Gila15quMGmmCmqZeRcBCbcuiHP4rtW1MunUjv4Pl2/
         sWgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741335213; x=1741940013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=12a3NnEfGMI2vuVvciD88yslLap86n9MfZE9qRsezz4=;
        b=DEp1Jc/r9gRFe2O81zvHVexlJSecij5H70y2yOXczN6ht2Ee/xq+KPuZTjXtZEAFuf
         c6uvzrNTEMYBV6XP0RqBU5qSlE0ryS6mfjz8WU6TeUrj93R2Tt+LAFi9Agpzb9X83tnb
         0dasZWNAljwF3VNPcnBZCWPfHLmtfs91tx76TbsFFPI6tpMhe6RaJ51YAtELy9MLXf7J
         ZswlQL3vgGTaUOINEVW3iAZAW+bYhbOVQjglnzYFs2mVOWxFqmVl21Itsq8upiZ50kkv
         5y8NQ+OWfgacYj3NK97vFzPk1mkctSUpP/+BnxueH9AgLEzDA/CPnbFCUZrRlIWhT0M9
         IZBA==
X-Forwarded-Encrypted: i=1; AJvYcCUT/o9nlfIpmrtOkQMRHpzsndcnkgHUE2fq/T9jYRoBLuK8YKwmERW0t0e2cAg3NtnYKKEoBc/A+yLo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs5kA+6EBG3+ZG5JisO849NGM9Rt/F66tg4EvCKEWlVTEeEFhN
	TEzB4TYDBIpq8mfQR+2J5qKR1xNKgzjh8eMnXqe5wYq47hAnhy3wbt7GpWiffSw=
X-Gm-Gg: ASbGncvQU5xet9I5CO02DDp1fEQpFD/Y4DZeVWU/24vnwefc57ewQVN/ePNlatRvC1J
	dwHQ0G03U40JfwJOyV0ZuTmyjhvYxVxNAicBbxMMwpmZrFptkcgSRjPiqLCBDjbM4+SCl+b+83t
	+ckYcw50CO6bfmC1/GRr5AaE8FuiDF8YyMWxhLjmWYE6fhvaylFC3TElP+syUMpBxgCnbT8rVOt
	MOic61Ci35rH+h80F8wHZRwTnWeZP9UEYUGkfu6Q7I2Ce5wmHnQbR5a4tA+jrs2CQyO2f8OMXey
	fDNJmGILCLPe8YzvmWFzenCM+Jltzlm1+MY7MlcM4GYQOP+A61RPOPhe9XI=
X-Google-Smtp-Source: AGHT+IFQ+WMMvLL1/aaHUI7n7dcR9ePxgtPjRJRbPaHSVEqjJg//u898K3D1y4ZCAvDVaQslPXHcGA==
X-Received: by 2002:a05:600c:35c9:b0:43b:c844:a4ba with SMTP id 5b1f17b1804b1-43cccdd9b0dmr2917685e9.3.1741335213314;
        Fri, 07 Mar 2025 00:13:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c0e222dsm4575458f8f.72.2025.03.07.00.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 00:13:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: PCI: fsl,layerscape-pcie-ep: Drop unnecessary status from example
Date: Fri,  7 Mar 2025 09:13:27 +0100
Message-ID: <20250307081327.35153-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307081327.35153-1-krzysztof.kozlowski@linaro.org>
References: <20250307081327.35153-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Device nodes in the examples are supposed to be enabled, so the schema
will be validated against them.  Keeping them disabled hides potential
errors.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml          | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml
index 1fdc899e7292..d78a6d1f7198 100644
--- a/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml
@@ -94,7 +94,6 @@ examples:
         reg-names = "regs", "addr_space";
         interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>; /* PME interrupt */
         interrupt-names = "pme";
-        status = "disabled";
       };
     };
 ...
-- 
2.43.0


