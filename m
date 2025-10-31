Return-Path: <devicetree+bounces-233706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C839C24E59
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:00:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA4F73A5D21
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A65B347BB0;
	Fri, 31 Oct 2025 11:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="NY03c2px"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDE1346E7F
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761911963; cv=none; b=t3U7qxaj+K2PpUkTdTFCGEvSftwYijC+mufz6iTmuoVFYbcnpdmhOP9frKuhEyz7/MlxZa/pUBHSerwhE2D+cHD0NXNSybix+Ln9+Yf/jP55py0mujO2R99v1lDAU0f+z7OecoIphNHMa0ukcAlaTKkDRWQXx2OGE9R9no2fRb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761911963; c=relaxed/simple;
	bh=QVnWjOAXd7aPZ68ee1nAsyAELz6UdZxKtmQM9NHmoz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L/+nGv2Z1Y+qHzcg+yR39FT+PQ+BezXAjcl8IXTkypkOHebwgFvh8IxyQLViwqj8Waopw1uI0Ri8cuKCwrX45DSJK2LAu+PxAp3zPvmBUlCXbrvNmbOPv3q6AnLOxVM38n3ygGGZtTVrIq25yZqi3u1WBpmcBBbw4qMb12OkTLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=NY03c2px; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b8b33cdf470so192107a12.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761911962; x=1762516762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqPGPofsDjLbOGH0rnbeWAJ0+JsLnxZQ9584rgmYpJM=;
        b=NY03c2pxudtxTpqhNveGHQacdPbIPcc7U9XcuvL/GN80R2O8D+/nmhxeyQbEbCVJf8
         zpoLu1y/eP9Hc5PeLy6vnr8tkTvLXn+TO/eAm1ZIKfUCofbZLTpOzwFfBPxazLN27Sca
         nPBIWku9mL99JDtxt3aC6s2Na1VTuX1xLn2QYOb68ZBN9DzKo2VSxM0kyOpF7cg3hpMq
         PACkE9o9vhnxSUPV6/D1PALFC/jHLiS7k9gfm8hX1q4GiJvglYjxZVKTcd2Dv4+S+yhs
         arP+Gb69kQAYF183bMrD3tNTQGzu4HCVCchD7AtgbQWcd+aAaWEn3knMCpGOaOZblh0Z
         WZ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761911962; x=1762516762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SqPGPofsDjLbOGH0rnbeWAJ0+JsLnxZQ9584rgmYpJM=;
        b=b45WUOAyjyveTdebs/1AhPcPuayoZZyj2DKbbfdQsySUbsqmrnrPv9eMnmrTG4hxEn
         NvNQFV+nVkcd4VHbbNDLDrD5r1xYP74IIDwPKQ9pWIzKxFgbhu5lwV2EctUkCydYLxh9
         Xfbvf+wjLlHUM3yHHtzJiZ5xS2P7RAjn60y6fI0wzt1ADhDJ6hhIbBlx7mny+gs2CdeT
         MmchhEr6EG7Wa9R9pQb+P8UPdcTvt4x0JMcED9NW0+uGS5cVA98Y0nuROVwDZzYE73BG
         8GbnfpoN0FM8goqzeYuDs+wxxGa/P2LJcwvn5hZlRvFlLdUSt0fjdK49fzCw6rP5fvpC
         oBmw==
X-Forwarded-Encrypted: i=1; AJvYcCWupw6h2fItAKneuMiRVod92SrMYgFdm3vNTEM7OA4pVPowX83tFrYLvZL8j/zxi0ztPVCGQYJdWhuB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6CCfo2s8HcX0NmvuchcfkJppSYuS7uK/T9wtdBNV/51JzRgCY
	mQ8K5M661sUcqLH5CSqEwUomlxX7kwRZPzQfVQsulAhtZGKYuXVQGWt3HlH3+cb4cA==
X-Gm-Gg: ASbGncvLj36ojdkYJUu/92Vufvx4kZTUwb5b8QN1nKCJtlYmENwbWdyYlWGAB90l03R
	8YHT/UNHlH+wqXw2j533v+Isao+iqEfRVRqCRWa6EajY+iy61divgPOzeZLYnnT6p9lfY80oVh/
	1if8zK9UitvBpeXb37hbP/ZQcd6EKmIyc7nLtmvPvT/QjELS+eZbclmbNRtt4fVBabMt2Xk98HE
	LSk0KfqMjY8s2dePToVREagQ4enjw6+iAsXkRhx77kGUg5+GDDTHBkdFMKeF/QiZ36hEJpBMz5R
	y4ANsbffvhxmolz1RWzly6r/FV12EZd030100a43Z2R/j4dzJZ5sIkcsVtR5D93dl4zInTxzp9G
	DvTalAmDLizffQ94N2AZBH0OXnkEAthEebW5nn2XD6Eig6E6TNQnf4t0S70aoNQknlUQlQt+Ok8
	B/HHaIEMYLhJFL4bvTKijMNhaDTLvdpT2D7VeAlJMLVLlxKec=
X-Google-Smtp-Source: AGHT+IG5NB5+LRZtm0ExsbVUC4NOlOx/SwbXsQNMfhC5es5sBTc2hH9ErmodwvJH/vPOTN6UenpeVA==
X-Received: by 2002:a05:6a00:39a0:b0:77e:ec80:b3d0 with SMTP id d2e1a72fcca58-7a7797c305emr2344339b3a.3.1761911961486;
        Fri, 31 Oct 2025 04:59:21 -0700 (PDT)
Received: from adriana-dmi-upstream.sjc.aristanetworks.com ([74.123.28.16])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7dbb61839sm1973837b3a.71.2025.10.31.04.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 04:59:21 -0700 (PDT)
From: adriana <adriana@arista.com>
To: ilias.apalodimas@linaro.org,
	ardb@kernel.org,
	trini@konsulko.com,
	robh@kernel.org
Cc: krzk@kernel.org,
	jdelvare@suse.com,
	frowand.list@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	vasilykh@arista.com,
	arm.ebbr-discuss@arm.com,
	boot-architecture@lists.linaro.org,
	linux-efi@vger.kernel.org,
	uefi-discuss@lists.uefi.org,
	linux-arm-kernel@lists.infradead.org,
	adriana <adriana@arista.com>
Subject: [PATCH v5 0/1] DMI: Scan for DMI table from DTS info
Date: Fri, 31 Oct 2025 04:59:16 -0700
Message-ID: <20251031115917.713105-1-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031101009.704759-1-adriana@arista.com>
References: <20251031101009.704759-1-adriana@arista.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some bootloaders like U-boot, particularly for the ARM architecture,
provide SMBIOS/DMI tables at a specific memory address. However, these
systems often do not boot using a full UEFI environment, which means the
kernel's standard EFI DMI scanner cannot find these tables.

This series adds support for the kernel to find these tables by
reading the associated property from the Device Tree /chosen node. The
bootloader can specify the physical addresses using the property
"smbios3-entrypoint".

This patch implements the driver logic in dmi_scan.c.

Changes in v5:
  - Removed linux,smbios3-entrypoint.yaml file and the first patch.
  - Renamed property to "smbios3-entrypoint".

Changes in v4:
  - Renamed linux,smbios3-table.yaml file, removed mention of ARM/ARM64
    (Patch 1/2).
  - Drop the second definition of dmi_scan_from_dt() and fold checking
    for CONFIG_OF (Patch 2/2).
  - Drop unnecessary goto on the success case (Patch 2/2).
  - Replace magic number for entrypoint size with SMBIOS3_ENTRY_POINT_SIZE
    definition (Patch 2/2).

Changes in v3:
  - Removed linux,smbios-table property, only keep the SMBIOSv3 property
    (Patch 1/2).
  - Search DT for linux,smbios3-table only, removed the code searching
    for the previous property (Patch 2/2).

Changes in v2:
  - Add missing Device Tree binding documentation (Patch 1/2).
  - Split the original patch into a 2-part series (binding + driver).
  - (No functional changes to the driver code in patch 2/2).

adriana (1):
  drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT

 drivers/firmware/dmi_scan.c | 54 +++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

-- 
2.51.0


