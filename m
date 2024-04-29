Return-Path: <devicetree+bounces-63580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E12E28B5700
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:43:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F234B21D5A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17848481BE;
	Mon, 29 Apr 2024 11:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wq++xg7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8F94597D
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 11:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714390992; cv=none; b=BaBRHA1iEEj6DEaKMWcjNLnokM8BxNTjsGzwTZfoNvRAvVv+2VpBO7OP2epb0ePCIlIw+s2RgMlqmolsOsdtfxAFw5Li03aGpfvVuQdOhFMmaxiLN1oxhpgXyH85QmsvVhvwSDenbjyockGnlUBqZeLUZQgJUG6p/axZ+5SC6Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714390992; c=relaxed/simple;
	bh=g33ySN3LxvSYaTr5OKwNMo8DEr7hmdnQx2bZhCAnru4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iQp6dd05riNDa+x0yf4Fm1QVub//iA5U+FavTC2L4F5t8C2/wEfNG6ELI5Zo3Aj1H0t5vkOfYsG+sKH02NjCNGUr9vj78E0fuRzARHqzPfTJVMI+J2V5uqfDla13wW0V0usISsTEb7XGF3mA6DmkmohJOscOBtY9+4jmz8OB/ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wq++xg7m; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2df9af57b5eso30847091fa.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 04:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714390989; x=1714995789; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+iobJUdKPnLVIb4EdGa85F44GNjBoMRFbMt/Rt6vNcE=;
        b=wq++xg7m8cJQqjgalKfuah5phBUyqyJ+0hN7TCsTer06akTYx0l5llrhWQhIdbA+tF
         c9+9CJCZadSjDZdcdyUcAeZr50hcO4lmz40qLaSwgLDatpSJNN9wwRtE/xOVYVb2bb+d
         LiEC/74gYg7FJDyqvaL9tuyFjYtiXamTmaffpE87iYdWfzB2NUS9pq6oT6HcDEJa3Wnq
         /p0HyhJhwrLRPPnMaiFx1S17y8liEq8bPCFkm2xMFenTkQvr9IawKdnjKFzFX2xrG3Nq
         YIZqRmOp1Oh6V7SZh3GnzKchJQ0A3aesLWzwAHolHwuY197zYPMzpByy8LJA+4n+uaYO
         KA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714390989; x=1714995789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+iobJUdKPnLVIb4EdGa85F44GNjBoMRFbMt/Rt6vNcE=;
        b=OkkFJZxsCtWiD69XFG81isK/YFLUMfY4cV9LW5BSPWj+pP48i/hm4HmBu6n7LaJ0hU
         w2zMC+YKRgu6MUEq6ubOX49Z+I3JB64rPRT7i7lMgZzRNFPAKbunE0kCtWt8IQzwKpd4
         yh8xp0C7d046zmBi8G2NUP8bhfBeKZnjZBJB+MWHcf7eKR+bwSHApKc1mXAt/Lcss4pO
         SyF2GJaL3iVbYcPmwNPl0A8eRNYQDWU+W+jMDCVXG4AmHQq8Z/4qVC/jqYrYQrwnVCHw
         0TM/VnxiMMo5VulyhjTz6IgjXqzTkWV3IsL6whSsugEcOa79NQYLTTz8VIhnHkz+DU7G
         82jQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtoHER4cDcF7SaGQqufaci1zuD6TIrnpjIJVwBynIr6ZIVkMMIvs/ZVdIBBAN9DRm+Sj0jvbSbnOSN3rH8SEvfj42VAj02nI83QA==
X-Gm-Message-State: AOJu0YwevR6vGrDQN4YeC/XDcxtOh3DU/Zrz3OAdCdeAawTt/fd6JIuL
	MX92cgKR3NOqJDUhzWY+0Iu1HgDz0Ra8LuMDxeEF1qhcYxyQ6ERte6ZfPAnTU3M=
X-Google-Smtp-Source: AGHT+IEq/BVzW1OsfvO81EUURO73iK1PlTqRjZgwsgNcExdaG/QA6hqLUNgRw7WtOV6ZCZAJNddz7g==
X-Received: by 2002:a05:651c:1a13:b0:2df:7d44:d784 with SMTP id by19-20020a05651c1a1300b002df7d44d784mr8398632ljb.3.1714390988764;
        Mon, 29 Apr 2024 04:43:08 -0700 (PDT)
Received: from localhost.localdomain ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id j28-20020a05600c1c1c00b0041bfb176a87sm7006611wms.27.2024.04.29.04.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 04:43:08 -0700 (PDT)
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
	Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 2/3] iommu/of: Support ats-supported device-tree property
Date: Mon, 29 Apr 2024 12:39:38 +0100
Message-ID: <20240429113938.192706-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240429113938.192706-2-jean-philippe@linaro.org>
References: <20240429113938.192706-2-jean-philippe@linaro.org>
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

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Tested-by: Ketan Patil <ketanp@nvidia.com>
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
2.44.0


