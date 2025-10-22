Return-Path: <devicetree+bounces-229769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF47BFBB8B
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76440508CDE
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22C133FE22;
	Wed, 22 Oct 2025 11:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="Ee4PHVbU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659662BE655
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 11:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761133539; cv=none; b=BqCKnJxeayi0YEqQMWxRia+vL9fUm/o/pQW3J9S1b0hHNfEF0cuFfE4mWIpMS6ApxCMKO29nReaGDoBkqhi5ggb7EbesWLMZWQGvs0mdx5xsBZRuse1R50EwopedI+dIcjpL1bqhirm4xay9Y60KkNsEjRCJ6knAh0EuiVa8g80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761133539; c=relaxed/simple;
	bh=Yhb/PBvrt5X7r833z0XAWWWPGFFAkEhlDlHUakZ/iGw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BPr98mAr8vQB/L/75Mbh/YfuXdRefJeKPfHehKsKnSOw6+p28/hAX+udjSVZpcg5oMEuoLGdKgp0hMJqVWFxdvGTV2qTAarAqqRULYtAtBBT3wynrxjtrAfYFEaZ8XUBopqzEwF3mb6uaaqldXBtaSs9q6ZxuB5wYEBsYDLD9TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=Ee4PHVbU; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-33ba9084e8bso870210a91.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761133536; x=1761738336; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+364B2goDi5SXexfzIUd5evbYxen+JjS04/fWf2cdA=;
        b=Ee4PHVbUqp3/sjDktvw7tPgD/3VgaLmkJbIZKigqpQ0KQcaVIYmNaUOvHOY9YtGFCs
         931xrTrUHeYTyFqMJfjlOd0VnRJSt7BH+1YduNuwVPnL2qqFQxhiaFS/JEhTzNSEtbcX
         gR3aEqzmCXNKtyydB69a7UyBPL1+x273CWQZrDBmASVX0nVFIxpTguZscdBl7WBR23Jx
         5guijxxvkROlL/2Lti60c7DuI2I106Jqa7yVo8x5Or6xWD0oLZRjKJgCv2olaV4MX2MG
         NlXTBNRlKeOaAocB+MB470nOmQH6JxFUdgeLIUjOIi1fi5ESL7NIeTNhcYLiHHT+Pgq2
         vuQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761133536; x=1761738336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+364B2goDi5SXexfzIUd5evbYxen+JjS04/fWf2cdA=;
        b=SC1JMfZaspNXewSkvN0ExO0GRuzV1YHKYZ7TerPcwGSbEHCHDRFjQjmkF/CopqVE9s
         ppYrq/AtLcNh1SsJD9LqNM70uskOBqiGgs9JbACkUY6eOA8hR8pmSdZENlZLkCFKDqR+
         5UY8KLWsmVGrVESK+JWsSCXTigAXH1u9BjZDqtPfKfe3x03TG1UQ5FqKYP0ZosiXWKny
         5gIXbBKcZzfxzraV674JIYDToAJn7Gt/Ficrs/9tAMm+Js1TBqHHblm0c69022tuAYn9
         urJaD+/oO+Gn9VfWzU+feHf0gVZqz2bFvnVBU56bbJjjbx+dPE6bDgFiMSxfmrkuq8Zg
         l1KQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuuvPVv9q8qttJrbtfYcgK+jCc3gVorb+4xmc267qPCNfP3ZcVLCx0XKD68V8QjqIPXQS8nAtlxk9S@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7kxdx5F6bC4ADbJLm/orcIdezk03N/EpvlBozqcD2SqxHl+zY
	+WXo55rbcXtPicAaFz2twH2ryMX20qE0uU8Efi+1ufkauU+CPzPcug/4ez6LpBvGSw==
X-Gm-Gg: ASbGncsgWzqSQtAqVklMQWFuYkSmVxtzK4QG7qRC502T93fXUdQWC1oVsdlSDHKKCM0
	CkJQas6+QcPvP/dzhnZNxwd/Xnv8MoZn2yXnAXMi3wZ1gCy1Hkwg8RyymNnruTriZXlU7Dnvkby
	upqpqmjHO+/uep3OSug/TFKgxdDzlgvq5IgDITXiNwt9aLe31AEHVk6b+/dH9X0UfckFG6R1efD
	nUQKXUsR9SyNPn9BSGa5MjVMVjDEB1obYVW/kL81/jbACQRnOWhZyFv6prSjr684DSUw461Boe6
	wCCB0gck9VWBvfJhH0yOcTyfhSrwpXNbLLRz3yUrpQxbadSt3gjWdxDxwPs5ueMk6QnU9QyYdeQ
	lM1x6VhpPrXEm6Z+VVB50xGOqIW9QP0ZunmQuBD2MeIxUmu8Fd4OgCdFFjp5Hl11HIJzBgg9wjt
	ROXGTF7/49xuMGqQv5rVXYG6eWc8OYMTzzVUZA320UWouK5l2JikQN
X-Google-Smtp-Source: AGHT+IFgJEOxKi7Fm8pdOF2AraOOTO/abP9OXzEw72bKEq6mF/ZI06MunKiyaKf6R5/TOB7ovWFd2A==
X-Received: by 2002:a17:90b:1b4e:b0:332:3ffe:4be5 with SMTP id 98e67ed59e1d1-33dfabae6f7mr4649896a91.7.1761133536392;
        Wed, 22 Oct 2025 04:45:36 -0700 (PDT)
Received: from adriana-field-alert-pcie.sjc.aristanetworks.com ([74.123.28.12])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e22416d3csm2399895a91.18.2025.10.22.04.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 04:45:36 -0700 (PDT)
From: adriana <adriana@arista.com>
To: krzk@kernel.org,
	robh+dt@kernel.org,
	jdelvare@suse.com,
	frowand.list@gmail.com
Cc: linux-arm-kernel@lists.infradread.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	vasilykh@arista.com,
	adriana@arista.com
Subject: [PATCH v2 0/2] DMI: Scan for DMI table from DTS info
Date: Wed, 22 Oct 2025 04:45:25 -0700
Message-ID: <20251022114527.618908-1-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <0f006338-e69b-4b3f-b91f-0cc683544011@kernel.org>
References: <0f006338-e69b-4b3f-b91f-0cc683544011@kernel.org>
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
reading properties from the Device Tree /chosen node. The bootloader
can specify the physical addresses using "linux,smbios-table" and
"linux,smbios3-table".

The first patch introduces the device tree binding documentation for this
new ABI, and the second patch implements the driver logic in dmi_scan.c.

Changes in v2:
  - Add missing Device Tree binding documentation (Patch 1/2).
  - Split the original patch into a 2-part series (binding + driver).
  - (No functional changes to the driver code in patch 2/2).

Adriana Nicolae (2):
  dt-bindings: firmware: Add binding for SMBIOS /chosen properties
  drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT

 Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml | 33 +++++
 drivers/firmware/dmi_scan.c                                        | 74 ++++++++++++++
 2 files changed, 107 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml

-- 
2.34.1

