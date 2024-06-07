Return-Path: <devicetree+bounces-73600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C935F900152
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 12:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A9B41F22597
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 10:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A661862B5;
	Fri,  7 Jun 2024 10:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uljHMVzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E56186293
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 10:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717757897; cv=none; b=U0oumUmIUvf7dmgJXamWBegsuIxW1k3EF+T76WNI42kN+MJKcBPx0zvTre1duPMs3MoPwWBDGeyENz/FfR8BcWVcil7tPhw6v8bQ22ndj+kR3vEtC+LQY9hdJn2iZ76f9G9Re8TwgVRFKDfcVBdApTb5I2VA2TSZqyAvlCRcwic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717757897; c=relaxed/simple;
	bh=YoraCC2os5H7WkIOISlbddzHD3ToIZOoofZYgnih/84=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OjvMt/blEeXlt7B/Xk0pZTsS3ak0qJ3n7r5rgpcCuEXnTqJeg7J/PbZnQ/c83bvMeUGcBRu0DtV9tADSVNwrjCEyJJOe3ALMq/By+uFK3I3e5KaoBn1fV49Oe17Xr5LCDexM9gAmyMTMT4wBCG1+KpJ2dCoeBqTz7EiO2BJ9nRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uljHMVzA; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-421727f4e4aso2362445e9.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 03:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717757894; x=1718362694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E23ckA0xadlytKJal2qSBXEtmljMi1zr8ZXYYtdmN4A=;
        b=uljHMVzAhemktGocuf645Hm3wINEwYK2fRZtuZzABHMzqqPbOklnemNmRKa2X8tBtJ
         I8jqGNd+k/5l3qY3GSvfQO1yurwbhJxFX1k+P7vbOVkkeZX6HeTAPk5teKtCCtqs7uQQ
         TyApHHiQwy2eqX2jP/yKhkryn9STNzmIMoCqyI1Kb3xVuFmVSSCtiyXhlKA1b9z5TLJW
         sCf6TDNePXl+/VwSs0HX+W3dR0YtUFC0vyalAVszfPaiLUqRBb+ubCJ5IFBy0auJrcem
         zUmavgqSr3COCWB1cSZDUAB4vm2Le9MHbug0zWtKbU8d+Ou/IY8MxhOdn7iVQXG0wenU
         FIBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717757894; x=1718362694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E23ckA0xadlytKJal2qSBXEtmljMi1zr8ZXYYtdmN4A=;
        b=RUjQmpDVmtt6fjTMAmtbAR7s08o0pdiPEWcOv6q8CM739szVtarcT8spMQvTZbrfXA
         LB+eZ4aBCno7L3BHh9vvBxUT34EBBg8TXAbXq1uyprl35hzRUuwrhwHM4l+BMPZ0aHc0
         6wlpbUPTHnBqx6N6b//hPKKvsvuGyHb4TvSBXCRWnPAx8mcWgG8kz3zRqMVcPdNwTxBZ
         lgoztvGCY5tvjmu7PN0pd+wtLXmlJcVtFPLBfzhL1lPKHUu6hz1u6OdoNNlBrMg6cxx3
         M2+ZHo2/xHQYILM655LoXsZmFohz5TzhqdlXTprDz7o6c8gFtAi5JezaqqHg7BPvpGxr
         YO0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWwDc7bonsifBttuWTQtY6Z5mizBp4sOi+a5COTTbNmSo5jvc6oC9sfVGnQ2VnfXsmVceximK0CM78By0c6ipugwTP/IQNAqI+veQ==
X-Gm-Message-State: AOJu0YyjjvjMfs6FNEMzihemyjsYmiJDlB0h4GC/JSpb34vEpkBhYymn
	b9Xsn6AzlbDm1ykrJJrRtn49lXeRHsJYJs8f7sxUh15HFvGVzweO1pdDBjNXG8c=
X-Google-Smtp-Source: AGHT+IGRk39n3pVihAfcUidolbx9s1isjujkvF2fjkdGKFvNrj6NpUKCDBYYeIDpXOQ0xz5Q/dJp6A==
X-Received: by 2002:a05:600c:1d03:b0:421:54f7:c294 with SMTP id 5b1f17b1804b1-42164a20c82mr19745275e9.29.1717757893769;
        Fri, 07 Jun 2024 03:58:13 -0700 (PDT)
Received: from localhost.localdomain ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5fd1c5fsm3739485f8f.113.2024.06.07.03.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 03:58:13 -0700 (PDT)
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
Subject: [PATCH v2 1/3] dt-bindings: PCI: generic: Add ats-supported property
Date: Fri,  7 Jun 2024 11:54:14 +0100
Message-ID: <20240607105415.2501934-3-jean-philippe@linaro.org>
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

Add a way for firmware to tell the OS that ATS is supported by the PCI
root complex. An endpoint with ATS enabled may send Translation Requests
and Translated Memory Requests, which look just like Normal Memory
Requests with a non-zero AT field. So a root controller that ignores the
AT field may simply forward the request to the IOMMU as a Normal Memory
Request, which could end badly. In any case, the endpoint will be
unusable.

The ats-supported property allows the OS to only enable ATS in endpoints
if the root controller can handle ATS requests. Only add the property to
pcie-host-ecam-generic for the moment. For non-generic root controllers,
availability of ATS can be inferred from the compatible string.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 Documentation/devicetree/bindings/pci/host-generic-pci.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/host-generic-pci.yaml b/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
index 3484e0b4b412e..bcfbaf5582cc9 100644
--- a/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
+++ b/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
@@ -110,6 +110,12 @@ properties:
   iommu-map-mask: true
   msi-parent: true
 
+  ats-supported:
+    description:
+      Indicates that a PCIe host controller supports ATS, and can handle Memory
+      Requests with Address Type (AT).
+    type: boolean
+
 required:
   - compatible
   - reg
-- 
2.45.2


