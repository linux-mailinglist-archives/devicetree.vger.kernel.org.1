Return-Path: <devicetree+bounces-229770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 280BDBFBB73
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79192422002
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 170D2340299;
	Wed, 22 Oct 2025 11:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="P6hCIQDH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FD52F2606
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 11:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761133540; cv=none; b=dIfAfgVAyel2xfO+PpkbeT30uWKX2Lc9PzZEqd34QcwF7KRvfu8/0VuNmkwjXkqXyfdN5zgZMSFzhaU77hohOuM34siQoHcJupzcBEDaE+IXsndvjqXfj0dpIUlk5x+imQ6ZKTWZ1d4WAuVxLoILi4IolhPDDMt773wtsSUKZqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761133540; c=relaxed/simple;
	bh=o8ztW3OV5ssU0Xjyw3TSXcTCCaUPkOarilb/1H5e9Jk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vbg69cmuiQdgfHodWNtbofUFQLpQeXCymPkbRa4HP1Fbq8Fd+pLiR+Vgey8pH54Mf7NiNY6Kt3WVQyz4ZIJmJuXNCIxy7fnSXDNpWfelYdIjvvU/1TnU+3IuY1URQ8fIeyfaurlRmzWCnnayrKQkYhZmzI3FhjqolQUwEDjNdqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=P6hCIQDH; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-32edcc68e0fso1022587a91.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761133538; x=1761738338; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49eaRr18+MumRWn+4RP9kE8HR0jk+ps2vEEBUcEesgw=;
        b=P6hCIQDH2BMxXJfeGrTxgSwXUZAm+BCG6INsrTFqTWvuIEHC+2dgBRtO1i4lYqWMYX
         i/CCuuHGrcxHpnuamf4cu7H9L/EXMK0U8PU8bR5r+m2Lj3WxAJVBkD+gRZpbPz/aPLR7
         oq+02V3W4thDnSnoiTVZGbVWSoH06kNsIKhC0FTtiugRdnL0gCde138YRllbM7RD3kT8
         RYabKwL4GD05u1G4xM9+H9ucCnP/C/oLzjgol31q1e8IC3YXG8WhSCCk7LQ2V50uaWKX
         2ypVE1xB++diqAe4zfF4At4RPd2R9BvWpsEM728dwvsg3xr8cjnnI3CuSHhkRJ2Qt3Nk
         GEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761133538; x=1761738338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=49eaRr18+MumRWn+4RP9kE8HR0jk+ps2vEEBUcEesgw=;
        b=VfXsb2Onj32h7bdXrAFaSTXi+tHQBlPctBT6EwzgdFPPzD06bPztEf1gAeEFZG0jeR
         pydniXifX5+XJNuEFUHOKRuvP2yy5nEvB69yDOPzJXHDP1gtoEPZojdsG0+YpTlbfP7M
         bTNQsimXffM/AtwdAVLD+QPHt+wZbUX6uHytvyzZXBZopqyIW4IPGCA5A6a67tMzPcjr
         5RqgveIvRs1+kos0VQqHKn6AiSbNVRsMpTYmPZbgNA4+z4hbQjJcG9JmJiAQ/AbgMjHy
         KnjPz+jlneLKp1Q1xVUxeG91JokcbU3/zg4TAUD1mP+tHVrX37Kua7EoH9ZfBiMckX2R
         aQ3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVq4TACggBLQk+rRB3wchEZr3XRST0LujxT+SXwDkedNZvcaxojPGGOsFV5JqA1EBucG+fXFhi/plOk@vger.kernel.org
X-Gm-Message-State: AOJu0YxdShA5itkyEbeMLlgdK16EjEOoqktaNAPk0W2/mUJuyU5xR+/a
	E3HNkwkV+Uj55mB5uDpMwg/nMT7cWRW1ayfSntelAWZ0QV0EXmCB1jCfi5HiVSeZqg==
X-Gm-Gg: ASbGncvzAru2jOp5dk4dAW8tvTnqNZLvsaS9HJyZWqRn4FBF/zb6nfIQYJLp1i1zVAK
	kntj5m68PVUq+LSvhDRWqthlIT9hH40S+XwZ4m9J11kU7TAXVGxZI8QbfH4ATtsvd7/E/+/Js/m
	epijje3GX7N8l79btAISrKGXbxy2gGJ7xTL2QR+K9y5vPELQVO2UybceRW4yujfFX2SSQGyCLcw
	brf7yq2oqRV7ezA8wfMHJVpeF+/whBeeM4VpfRHEG97MOLLU0CcjY+j9F8c67O/t6I2xs9w9+nT
	IxdseL6aEHFOQdw/EG5K+LQDNe7SVy8cDaVCLZ/JGEHJkkbZwzKwfhM3xs5ZUe92qwoX7T11GuM
	IAyRRxXYTA6pkUJPwyd9S0MF9J8wIfGvI12Hk3qIK3kkrRS1I9JjB57eXJno0ma7V51QHb91kDT
	MazBydIeT/5uT66Bl86Qicsjc4nIMhB8JNXFSFZ2bT06hCtIVml6Y+
X-Google-Smtp-Source: AGHT+IH1F2HDfDJqodJiBmZrV/OCED7jLp8yXC3+HpRSlNzXPItJQMIf8cXLIEta1UaAURCWiFeh8A==
X-Received: by 2002:a17:90b:38c7:b0:32b:a333:d3dc with SMTP id 98e67ed59e1d1-33bcf8fbb2cmr14029661a91.3.1761133538224;
        Wed, 22 Oct 2025 04:45:38 -0700 (PDT)
Received: from adriana-field-alert-pcie.sjc.aristanetworks.com ([74.123.28.12])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e22416d3csm2399895a91.18.2025.10.22.04.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 04:45:37 -0700 (PDT)
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
Subject: [PATCH v2 1/2] dt-bindings: firmware: Add binding for SMBIOS /chosen properties
Date: Wed, 22 Oct 2025 04:45:26 -0700
Message-ID: <20251022114527.618908-2-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251022114527.618908-1-adriana@arista.com>
References: <0f006338-e69b-4b3f-b91f-0cc683544011@kernel.org>
 <20251022114527.618908-1-adriana@arista.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: adriana <adriana@arista.com>
---
 .../bindings/firmware/linux,smbios-table.yaml | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml

diff --git a/Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml b/Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml
new file mode 100644
index 000000000000..7e0e767fcb80
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2025 Arista Networks
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/linux,smbios-table.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Memory location for SMBIOS table 
+
+description: |
+  These properties are used in the /chosen node to pass the physical address
+  of SMBIOS (System Management BIOS) or DMI (Desktop Management Interface)
+  tables from firmware to the kernel. This is typically used on non-EFI
+  platforms like ARM/ARM64.
+  
+maintainers:
+  - Adriana Nicolae <adriana@arista.com>
+  - Rob Herring <robh+dt@kernel.org>
+
+properties:
+  linux,smbios-table:
+    $ref: /schemas/types.yaml#/definitions/uint64
+    description:
+      The 64-bit physical address of the SMBIOS (v2) entry point structure.
+
+  linux,smbios3-table:
+    $ref: /schemas/types.yaml#/definitions/uint64
+    description:
+      The 64-bit physical address of the SMBIOSv3 entry point structure.
+      If both this and 'linux,smbios-table' are present, the kernel
+      will attempt to use this SMBIOSv3 table first.
+
+additionalProperties: true
-- 
2.51.0


