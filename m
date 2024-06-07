Return-Path: <devicetree+bounces-73601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3C4900154
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 12:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B74F284BE3
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 10:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02E1C186E39;
	Fri,  7 Jun 2024 10:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XryuIbAT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEFA1862BD
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 10:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717757898; cv=none; b=FNaap5hu5lnKNSfmBo9ZB+jlOHcWdMtCZByKaeY+KB0JepEZTKAwnQmZEA7weDP38X6WtQGvHa/6rv87bliQNnn7RZ6z7J1lRf0EDTL1eRxriVsxL6mtUS6QaoDN8EXFmNY0YeZYjnoBNT02sNisL+Q+lK3tBqbdftdkC8vBk0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717757898; c=relaxed/simple;
	bh=XeqHKq7C6ItKeEGvPXNfkHtkfptWdfLnGM+VX6C608c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=chDWo901CLNyYZjnT5E4tpBgCk8G2mDRkyvSAnzFpsd9RlzoeyW8KimWGcY3qkTOc5Ni/n5bJK5srw7g+IkdMmgECg7cp7wmMJCiPo9sIE1NxxTgUx3SRsAhWvVQEZQstHeueLxj76Dokg8etiz7AjeSRPN80i63z2JDaYsHOZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XryuIbAT; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52bc274f438so203088e87.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 03:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717757896; x=1718362696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDcq5k/0ttuhuW1s9eNFA8PIx5mHSgVIL61fKi53/Ns=;
        b=XryuIbATNItehjJ+tz5/RBEXAxxagdwbkTeiyy9eSMzHXQ+yJQP9DzNAj7OnA6aIrI
         H6kZXyXH52EN3eRlTIpU6C6sTdulP33ri4eA9LYY3xKmGPIJxTnuL1PLZK1Dv+YwZgLt
         rMlfaj1QIQs8w+gsmquW/e6luuCIB/4q+TTvjflhuqi47rm55V8SH4C9mI77cZzLODUI
         khFS2dRuUGNfVSN7l14C357T+0cwReDo8Q8Wr/VoaX4zBU31gnIxMaGYiG2oNySokG8q
         1fqtL7v4ukf0pYYRH8y5qR74z00GIahO71Q40I7BX+yrTuqVKu9WIKFjKX0oGQPhMPE6
         Pspg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717757896; x=1718362696;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDcq5k/0ttuhuW1s9eNFA8PIx5mHSgVIL61fKi53/Ns=;
        b=umN/BM41f8/kZ6T0ZycLUh+gZL3TjeXnpqbdtOzkTIndlM9nDx3n6AuDhQn3A0DCsJ
         XFnEgcpZnqH9ohh/WdKNd2ioRiV41zrH7yoh24u5GoQj/krqZAB4SqpzDwGEdcK+VD9d
         D9RjSeslUL8BKhd2xL/h0OAtgZP63U6RdNxhT5JRwJtn1zLSo0lHQjOUeZo05GkBFnWa
         AecYALzUAqJ9gjrgKOSLNDkdMErwR81EgQy+6NAcnSc+FXRXKNvpi0cdTmudRyi9+kmW
         TGt8MAQ8OVzj+IwLSz6pwAFqpGXhkfHLXHaom3hG5VCaCOfpUfry9C7xQC0Qjfkkr35E
         1quQ==
X-Forwarded-Encrypted: i=1; AJvYcCWY0opoT7ThjV2sTwbt0CqPBwzJNh0vn9DIxUuBMWxaOd9gFGjseRZDNxOmsCeP00Nj212Ktj1HWoX9zSRI3AKj+q0gwbwLNwYx8w==
X-Gm-Message-State: AOJu0Yyv2zCasxtbohNp7ruBAb+RhMCnlmY5GZh/Y5cXVIiFsIpDDLJT
	WmgINsU8/k+DcvQnAOIHqyqWnthap3SHcgMtM718gTmBWoMrbvdFlIIlcvOftZA=
X-Google-Smtp-Source: AGHT+IFKBOo5vF96Rp1eu8L7oXMzKFGJxvSnCqz7HcFftnGZ/GajF1ZZWz5V+BiNnKs89U3LBYWGnw==
X-Received: by 2002:ac2:52b5:0:b0:52b:b173:7490 with SMTP id 2adb3069b0e04-52bb9fea373mr1207405e87.68.1717757894609;
        Fri, 07 Jun 2024 03:58:14 -0700 (PDT)
Received: from localhost.localdomain ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5fd1c5fsm3739485f8f.113.2024.06.07.03.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 03:58:14 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: will@kernel.org,
	lpieralisi@kernel.org,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	liviu.dudau@arm.com,
	sudeep.holla@arm.com,
	joro@8bytes.org
Cc: robin.murphy@arm.com,
	nicolinc@nvidia.com,
	ketanp@nvidia.com,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Jason Gunthorpe <jgg@nvidia.com>
Subject: [PATCH v2 2/3] iommu/of: Support ats-supported device-tree property
Date: Fri,  7 Jun 2024 11:54:15 +0100
Message-ID: <20240607105415.2501934-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240607105415.2501934-2-jean-philippe@linaro.org>
References: <20240607105415.2501934-2-jean-philippe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Device-tree declares whether a PCI root-complex supports ATS by setting
the "ats-supported" property. Copy this flag into device fwspec to let
IOMMU drivers quickly check if they can enable ATS for a device.

Tested-by: Ketan Patil <ketanp@nvidia.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Nicolin Chen <nicolinc@nvidia.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/of_iommu.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 3afe0b48a48db..082b94c2b3291 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -105,6 +105,14 @@ static int of_iommu_configure_device(struct device_node *master_np,
 		      of_iommu_configure_dev(master_np, dev);
 }
 
+static void of_pci_check_device_ats(struct device *dev, struct device_node *np)
+{
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+
+	if (fwspec && of_property_read_bool(np, "ats-supported"))
+		fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
+}
+
 /*
  * Returns:
  *  0 on success, an iommu was configured
@@ -147,6 +155,7 @@ int of_iommu_configure(struct device *dev, struct device_node *master_np,
 		pci_request_acs();
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     of_pci_iommu_init, &info);
+		of_pci_check_device_ats(dev, master_np);
 	} else {
 		err = of_iommu_configure_device(master_np, dev, id);
 	}
-- 
2.45.2


