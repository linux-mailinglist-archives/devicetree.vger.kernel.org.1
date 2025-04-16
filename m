Return-Path: <devicetree+bounces-167913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE91A90B30
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 20:18:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35C681636B0
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29437217736;
	Wed, 16 Apr 2025 18:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="m/kpJE2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FAE8215F53
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 18:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744827485; cv=none; b=Xiq7I0iOJwRKuHQCphRr7LUdspd1MfNd1rNQn5wc4bc6Fl/0siVdHUdtTuekN8/AiwgkBspwI9VjyNBVW89UfGT5rmWBQTSsvoCLO6EaYfhtDTMw2t+Gj4JsWaHZIJcXiWDFad7hu6pCWE8k6VkxSBbKwRrTAIg3CzC3XdWgEwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744827485; c=relaxed/simple;
	bh=3DKkQU9Mom2lVRMeCwp0ivdrDyuKM3G5b3qIYQX+qDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U6SDnADKzUpUbpKT6qvmmZNV4zf8kEm3w8Em8ZFIWSof4DaJPGrVT+ckIYVKlP4IvidAxSDh7Bx9UO0QeQ90KK9HmWlJk70Q/P2kPhISMhx6MArN7jdzpB5YirhC+XOfdWRpdlORRe5KM8axv6joIiIJNmOp2b018iecqJOM5JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=m/kpJE2+; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7c0e135e953so735209885a.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1744827481; x=1745432281; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nhIqXs3b02Zr9EkAcj7RO68Dtso22D3FSSNBcsVaNJc=;
        b=m/kpJE2+ySdCg2OmNE7fVklLvv1ISXrnu7tBTwZC+0WcI3UhRrotb6zEmyjIRI6zX5
         7mXps0LVosgCqiKC76hu8qCV1X+jrwuAtJ9CkJetNSp5F3+s2rbiX1jK77HN6q4T/43l
         JoRpTw/CnCEqCv1D179TtF4k9wtrXBAiloLVGpCIK3tAP6KBs0O7Q9zEB4bsvBzJ1xba
         hn8E6tx6SV1T9lh/1FBYhpstc6pqqQ3nTO0P4dq2NY7sXsZKgLVj0fAGBK5wAm+vtHEo
         crue52IKn3gl6IMtnbtTf+gu5WqpZCiwfSwYdPLzclfHPxxPCPXnR9seOYgYu8oSo+kC
         Bg5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744827481; x=1745432281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nhIqXs3b02Zr9EkAcj7RO68Dtso22D3FSSNBcsVaNJc=;
        b=q1G7iCyHHQ0SBYcm4t9+LZUG9ogvuTeUToU16F7ftg5Dxx/J0y7A++6MhPTCVhGg/M
         GbUWEDs9F42F33yPO1E7/yp0Fosi7giTkpHN3T3bN0F38ocjlk1JbUNAZbhKSZGAqbf1
         OVyTSPW1KYBFlDvD91ZMrXsKgQReAWQx3j8DnD1v+xHJd6dJCV/edkuhDKANEHUUu4hF
         SxpQEz93p+iGCakdweESH6A9AcEporn+DVZvi5eGwbFaahuBSrcuXs+vF1h0YztNCzYM
         H17Kd+uI7k6c2u2csS+BLfHvaH1psNTuVS8viEdMqgV51CzeAUVgUsVnep+vme+j57ME
         rPIA==
X-Forwarded-Encrypted: i=1; AJvYcCWYnr4940qq+eONhErJMTxE6jeBku+bq0hTdwa0YjX6wYMhNPUiSEHeO34klS7IqVs0GD/BFAvkj+we@vger.kernel.org
X-Gm-Message-State: AOJu0YzRm+9LzaG4fC/7XuyEHS+0fZ2hPWLhd/0LUr9gdGGgwd1hh3i2
	pwIEBSZeuoesRGw3Hc/OdAjq5Nb5hRbCLGs3SaNsJZtEQG0sNJocFhqkTG6Cf20=
X-Gm-Gg: ASbGncuVU/AMRa5t3Kvtl8w95B30YadWlqlAoty44BsL0HqrqsVlQ2bfB8YpKS2ZZSZ
	hNvjPXX3wOXo7NA7DcWmXmsDLXF/KaRB/PpGUMLa7yZz8JTBUdNwwtK9IT8f1mSSqPuESHamj1p
	MvSehHwqihKfOhrkb2oLegcX+26VaVTuHbmTqeEiIfAlBzA/MiBNAmlRiR7FFzL9Bv7TeuZxDUk
	DnAlMwN0ysWT0VFNyKcblK93YoN3v5rtiJ2K0P58Qm978M+QaMpiLZapBMcfdvRD/vnmrBZJT3N
	TDJDygybNWx5v+xVrnPZg7HuXf5vU1ExcpKlKKWK9E91X1ljQMxoCjOcJBSSY5F/OSShDLvusuR
	fk1X7sJfWz/adjt0RtjU=
X-Google-Smtp-Source: AGHT+IHO7Bqf4Fmw+LiZOuVSnpTOMSKYZPCbuJqFFE5vxmLzphTTuPO4Jd1IQCZQaz4uW5OwoW3Ysw==
X-Received: by 2002:a05:620a:171e:b0:7c5:af73:4f72 with SMTP id af79cd13be357-7c919064377mr376498885a.42.1744827481008;
        Wed, 16 Apr 2025 11:18:01 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-219-86.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.219.86])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c7a8a0de1esm1088777885a.103.2025.04.16.11.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 11:17:59 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1u57Kh-00000004wJB-0tjv;
	Wed, 16 Apr 2025 15:17:59 -0300
Date: Wed, 16 Apr 2025 15:17:59 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jacob Pan <jacob.pan@linux.microsoft.com>
Cc: Shyam Saini <shyamsaini@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250416181759.GF493866@ziepe.ca>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
 <20250410230008.GA6905@ziepe.ca>
 <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>

On Wed, Apr 16, 2025 at 11:04:27AM -0700, Jacob Pan wrote:

> Per last discussion "SMMU driver have a list of potential addresses and
> select the first one that does not intersect with the non-working IOVA
> ranges.". If we don't know what the "non-working IOVA" is, how do we
> know it does not intersect the "potential addresses"?

I had understood from previous discussions that this platform is
properly creating IOMMU_RESV_RESERVED regions for the IOVA that
doesn't work. Otherwise everything is broken..

Presumably that happens through iommu_dma_get_resv_regions() calling
of_iommu_get_resv_regions() on a DT platform. There is a schema
describing how to do this, so platform firmware should be able to do it..

So the fix seems trivial enough to me:

diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
index b4c21aaed1266a..ebba18579151bc 100644
--- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
+++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
@@ -3562,17 +3562,29 @@ static int arm_smmu_of_xlate(struct device *dev,
 static void arm_smmu_get_resv_regions(struct device *dev,
 				      struct list_head *head)
 {
-	struct iommu_resv_region *region;
-	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
-
-	region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
-					 prot, IOMMU_RESV_SW_MSI, GFP_KERNEL);
-	if (!region)
-		return;
-
-	list_add_tail(&region->list, head);
+	static const u64 msi_bases[] = { MSI_IOVA_BASE, 0x12340000 };
 
 	iommu_dma_get_resv_regions(dev, head);
+
+	/*
+	 * Use the first msi_base that does not intersect with a platform
+	 * reserved region. The SW MSI base selection is entirely arbitary.
+	 */
+	for (i = 0; i != ARRAY_SIZE(msi_bases); i++) {
+		struct iommu_resv_region *region;
+
+		if (resv_intersects(msi_bases[i], MSI_IOVA_LENGTH))
+			continue;
+
+		region = iommu_alloc_resv_region(msi_bases[i], MSI_IOVA_LENGTH,
+						 IOMMU_WRITE | IOMMU_NOEXEC |
+							 IOMMU_MMIO,
+						 IOMMU_RESV_SW_MSI, GFP_KERNEL);
+		if (!region)
+			return;
+		list_add_tail(&region->list, head);
+		return;
+	}
 }
 
 static int arm_smmu_dev_enable_feature(struct device *dev,

Jason

