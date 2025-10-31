Return-Path: <devicetree+bounces-233653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE1C245FF
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:14:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57BFD460427
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7395337B8A;
	Fri, 31 Oct 2025 10:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="a2J2cfjn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61186337BBA
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761905436; cv=none; b=X0PIxDA35Et8O6fRrIufCaTpqRZj2WW2QdycuS8DRzFo+BsxBObCAmVdjqtL9be9TF+2WCXnGZW+mA0qtmiwV95KD8iTieMrl/4K+L1J9qFLZ9MJIYbINZtxZyJH5Wh64kqI5tLX4p2NFhSVsRRzv6sw0orL4i4vLYL9aARNXWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761905436; c=relaxed/simple;
	bh=rbSsCcpdfOQMl/imm+AJcUjwxWBfACxcRCYWxMrFHNg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MT11BmbmHiC7M/jqQiTMmqnCRTBzdaIWqiejQboB4nK6vRv5kAAXwlsPZAwwM/HcOHrb6HNHDwsYFn5aQfcI9utITMTDP3jbWLHRdrd+rlg8RqjFUyzaGfMJWm+8a5Iq5LCq5R4yulrk0bZINzo3LCtO94aYC0aUPCtxX5GGARU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=a2J2cfjn; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-781257bd4e2so240618b3a.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761905426; x=1762510226; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xmq+bAz1UkNsQtohwkVTzYtE5dGD+y13agWhpu9mVtU=;
        b=a2J2cfjnZuI5VOVVkeApPsb9t15WgODmbXroqXozQLpNk5zfJdTSNMS/ttvJ4hYhDZ
         p37Nai6pl3IS1XPuz7GEXARycMVt5OAOE6O//Q8AW4OjVqMNts5RBuEjC0M5Teq3BG49
         CbUstNkCDPf3Xq1KGQnRhY2lxnvKX10TEhqBvTbdwuNtlcbI/IreHGqkMJ6Im88+gg3a
         z/D1Fa3zcx678eyL6xrkrcm4CwgM1jQGJBHmE+4tKHDXvlKxYzZ6ajdVL0ZLgJJQ1+oW
         TOC1bKEPasUqJdXvet7hSuB1HcdM0nLPDUeT15fsIagRaFmc+ey0c0tiT6OsUNYOPfna
         gExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761905426; x=1762510226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xmq+bAz1UkNsQtohwkVTzYtE5dGD+y13agWhpu9mVtU=;
        b=b8O832qvAZHWTc+ODxgPyhZTf+0cg46AB+o72zDLNG2XtNDxRWcSvfopniS8sdVKqc
         Dy/Wh03RQZCVnMpRI7RxLqlzj2H7B7DD1go0MCeK/UzBDy0Ey3ZFw6dTuscBeyBAi4+q
         zVhqVeGqD/Hd5IsA+1yy7YgOp6oWQHUKERICJ7QrhNOY2wOxLYpiEg7F2ZWpu49nAF5T
         b+tuet3DTVADxgh+nPTo04s+TZZQDDRihFmyS5XyaLQFL7BHTu7DnR5CqRFRHoMorJAE
         ovE3+9qKFriQai06TnF0E2eayjlk0XusWnBBfB4pZflpcNUoizfEyzSAbeZ7O9upaKEI
         lb5g==
X-Forwarded-Encrypted: i=1; AJvYcCVNSCXrtuc9pSSx3aAXn/rgM26JZndLbVI5jaYcg7gbfQP+WomYECSfTsceFQHgIEN6tRCk3xpUYjAs@vger.kernel.org
X-Gm-Message-State: AOJu0Yysa48V2MSIe/AcquZmyZZ9F0LVQJsBnY9yz74zH4939eZbjRui
	mi6jr1ccqifgW+4nkS2SVskx6yLd9lyyfMT8IRpAlV1KDMOiui51noa6hrYhgU77pQ==
X-Gm-Gg: ASbGnctoJgYRB4xnKqF7rUpV10PmpvxiqnOvmzVbYgHNj/D8CUMCJyZ5MVZJePx9jSD
	xDdVeSikgLEPMgoBLN1OHy42KUJwct6msLTMSYJLGDZ6RZsRm+b+HlC62MU08XIfFnxxxvAmX1U
	J2m4uDoD0+7cShAJDKDoxD73Y5lUl2C3byW8jtLxkwIhIzJED1khiPsak0wrL9eR7WpxiUqLbni
	JQpir0qhqReIKbpu3B+p4nzhr5YYbilgp+zEXplX0I+YeztShfnEDvLgBYi62+kLHNT20fVb4FN
	/mYCw0r0u0hHRkclClIRkOODld8OmaBO5+29xtAr0Lkf7tMB/3CgPduSJXjHcoqV+0ADAAQaXX/
	nNtHrOavHjC1GzYkm4IbK1ApSh4oKZMI/xXuNC58lOc4pL5vZWfyHOojEoeZtCeLcuFj1hhwflY
	oSA0tX00SkJ+dXzekldUU+OmxhClVTyTO/Fx3a/xrzBFvdEhs=
X-Google-Smtp-Source: AGHT+IHP0KcJILf7X9uuGPb4TLUcbh/zJGOXAc0JvgPUtH5JkTiBAWLIYK309sM/jCBKRYZpJQMPaA==
X-Received: by 2002:a17:902:c94d:b0:27e:e96a:4bf with SMTP id d9443c01a7336-2951a37bb0dmr23125135ad.2.1761905425939;
        Fri, 31 Oct 2025 03:10:25 -0700 (PDT)
Received: from adriana-dmi-upstream.sjc.aristanetworks.com ([74.123.28.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952774570bsm17458545ad.99.2025.10.31.03.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 03:10:25 -0700 (PDT)
From: adriana <adriana@arista.com>
To: ilias.apalodimas@linaro.org,
	ardb@kernel.org,
	trini@konsulko.com
Cc: robh@kernel.org,
	krzk@kernel.org,
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
Subject: [PATCH v4 0/2] DMI: Scan for DMI table from DTS info
Date: Fri, 31 Oct 2025 03:10:07 -0700
Message-ID: <20251031101009.704759-1-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031084101.701159-1-adriana@arista.com>
References: <20251031084101.701159-1-adriana@arista.com>
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
"linux,smbios3-entrypoint".

The first patch introduces the device tree binding documentation for this
new ABI, and the second patch implements the driver logic in dmi_scan.c.

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

adriana (2):
  dt-bindings: firmware: Add binding for SMBIOS /chosen properties
  drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT

 .../firmware/linux,smbios3-entrypoint.yaml    | 25 +++++++++
 drivers/firmware/dmi_scan.c                   | 54 +++++++++++++++++++
 2 files changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios3-entrypoint.yaml

-- 
2.51.0


