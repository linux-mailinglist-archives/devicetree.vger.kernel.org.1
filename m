Return-Path: <devicetree+bounces-63578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF85C8B56FB
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:43:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 855DC1F225ED
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8154596C;
	Mon, 29 Apr 2024 11:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SsgsXeDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94EC22084
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 11:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714390990; cv=none; b=QJWNQuevV5CAXpSSMz6G298GJLRo/AnI/1iC3m0YZMcCn0QhZsmHVGm6KbDzRx0+MEVCJL82O9SrD038MoolZiUWjLbJaw39gt4O39ud7DnS3x5vZmnz39pBGz3/Rn+KvjRnXRk6Zf78G0884cDxRbOGSfyqpNGtxbz4FVze4fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714390990; c=relaxed/simple;
	bh=8aoPVLJ489On5ztbsvpmdxCALVbdDUa/I32RFYBdJCw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=biINHnIQ4/+zhF3yllNPnVoEQFPZ2vL7ySSEBUW5sOrOglHKJ9NZ1S7T08t8rJPkCShFu/ou1GFveP+EI/BjEJizh5De8buD03ju1y1+YDH2i6tYKXtVnF7ernGDvYyzq8BWbZJ3ceXO8Lof/AKBWLUImiA/K6omqzcwsnHhWbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SsgsXeDR; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41ba1ba55ffso14740605e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 04:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714390987; x=1714995787; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eSPLQ0aSiWlUkLotmQUKbdSZn8q1v5DF9gInw6B0dXM=;
        b=SsgsXeDRILZOwswqsoGRMNoq0xnQA3pjT79D2Sgd0BkALBFIWURjZNm9pwkxWvFP27
         4p/ysSpLjXgDiWpWTJYwQfubTHfYzVQGsqaC8SQ+oexV5M+ylCDrPfXJao79hv+W9wtk
         i+utIvNBVMmQQFUtlCTW9o3qhNcr4JRD6dkqxKaUM65mgXnI8RRxe9il3TqunV6rCXo7
         hUJyQFSn68tUpA/K4EX3wD0s36Ofqu3nhz121yPMCXbb8OLVKhVNnaQRqyuB/tDLTbIp
         Ywz2FZ/RmVRaUqjXEb2xAOxC/il0fv7iSl1NThNXaMEWfVXR2RTVv+LgEMAQtqFmRpA9
         7e5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714390987; x=1714995787;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eSPLQ0aSiWlUkLotmQUKbdSZn8q1v5DF9gInw6B0dXM=;
        b=lXhVtWiUYaHMUApPvU+aQ0UcA6hbIUz4D4z8RKLjDSxhVxDNLIwmGTWqlgsoDEdNvD
         XimFuxafFgxkT9MM9RDxROn7HF6BLGcubcTN+XYcV+ju6DU0TQKngKQnm4RcHhsedzSZ
         R3a5ITFtirFp/LN2mO1yiYkBEM6vRqwijKCBifmS11CAF3p68CXplpsbSgsv21nrfZj7
         2uFIAr+aLZPRrhEqKE0+vtc4T4Rf2MulAT58BFKRC0Fm13O+j70pF9hCW8/htExGFkqr
         GlHk7SC31Zh+1TtCpsgzSeIHCOJUWSQ8UfiSwmwBf9uUZPcVzZJcyRAcOJRPNM5trJ2F
         Alyw==
X-Forwarded-Encrypted: i=1; AJvYcCUvM7IaArl1SjDLE52NUptxGZ8oIiIBt9FXCgPW/HsJxqlehrR28Kx2fsbdfqoxG2xxEwIQoAlDNE7akruI2oDcHFxls+Aoc8LMLQ==
X-Gm-Message-State: AOJu0YzK9Jui2B/XXm45/CDlzdd3jaUaOIg9V/y22pSTT/XGnt5kfKf9
	E5JTLCJshrA0JFa/H+xBYli3p2ZjKMe+koRZQJ4fcyxcIiay7yBQbtNx5ucVHZ0=
X-Google-Smtp-Source: AGHT+IELIaH77G+cqO9Ae4tGmjB9R1iygWxsWgrPpSX+Zo6NaBJo82SewNNgw3IJ4qO6Jw9lSBHdQQ==
X-Received: by 2002:a05:600c:1d16:b0:418:5ef3:4a04 with SMTP id l22-20020a05600c1d1600b004185ef34a04mr9650703wms.18.1714390987239;
        Mon, 29 Apr 2024 04:43:07 -0700 (PDT)
Received: from localhost.localdomain ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id j28-20020a05600c1c1c00b0041bfb176a87sm7006611wms.27.2024.04.29.04.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 04:43:06 -0700 (PDT)
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
Subject: [PATCH 0/3] Enable PCIe ATS for devicetree boot
Date: Mon, 29 Apr 2024 12:39:36 +0100
Message-ID: <20240429113938.192706-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Before enabling Address Translation Support (ATS) in endpoints, the OS
needs to confirm that the Root Complex supports it. Obtain this
information from the firmware description since there is no architected
method. ACPI provides a bit via IORT tables, so add the devicetree
equivalent.

It was discussed a while ago [1], but at the time only a software model
supported it. Respin it now that hardware is available [2].

To test this with the Arm RevC model, enable ATS in the endpoint and
note that ATS is enabled. Address translation is transparent to the OS.

	-C pci.pcie_rc.ahci0.endpoint.ats_supported=1

    $ lspci -s 00:1f.0 -vv
    	Capabilities: [100 v1] Address Translation Service (ATS)
		ATSCap: Invalidate Queue Depth: 00
    		ATSCtl: Enable+, Smallest Translation Unit: 00


[1] https://lore.kernel.org/linux-iommu/20200213165049.508908-1-jean-philippe@linaro.org/
[2] https://lore.kernel.org/linux-arm-kernel/ZeJP6CwrZ2FSbTYm@Asurada-Nvidia/

Jean-Philippe Brucker (3):
  dt-bindings: PCI: generic: Add ats-supported property
  iommu/of: Support ats-supported device-tree property
  arm64: dts: fvp: Enable PCIe ATS for Base RevC FVP

 .../devicetree/bindings/pci/host-generic-pci.yaml        | 6 ++++++
 drivers/iommu/of_iommu.c                                 | 9 +++++++++
 arch/arm64/boot/dts/arm/fvp-base-revc.dts                | 1 +
 3 files changed, 16 insertions(+)

-- 
2.44.0


