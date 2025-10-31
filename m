Return-Path: <devicetree+bounces-233601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6F0C23DCB
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:42:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 687FB3BED8E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1286C2EBBA1;
	Fri, 31 Oct 2025 08:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="J0pIiH9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EAE283151
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761900106; cv=none; b=GF8AwCydg3c6SoLdAjyuBNcz7SkDo0mNpB4ZskFIzcNPe7fvZv8b+u8jF+3UJYOXhxcS+T4Hg+h+vI6QtvMXqrJSlRRi0icJ1m4ppMsJdvfg6v1BDx7sHjpLTZad7X3INQjGViG+TWmvFLqUrdRtmyzZ59KvIF9HHOwROq7MAlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761900106; c=relaxed/simple;
	bh=q7F646AzdYc76OTBCsP9t3pDfnvuW4UFLdlFD6HwKxc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lNqfZPJvJaQHyRfbAvMMCisDkDV8vEpr2w9x21ZEArQSJOYDGYDAvcLYWk8PbwYwiPAvBoCBiD/RvT3JbQ6bxXq1X7alKT2DsGzeQUu9LzDUBYKCi+Lildg+pAiyluszEeNxFvOh1FSeg6R6hjNmf3b5yeO/97lXKkR+5oCI5cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=J0pIiH9Z; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2951e58fa43so1069855ad.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761900104; x=1762504904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+hrqrHmQlBw4QJPx8h9w/0Rntf7sgvlCyYtGGSssQKQ=;
        b=J0pIiH9Zns5a9giqqyT+bqBh5h6gpFTWOahr5LqanRAml6RR6j4Xe8nuaeVXuadGvm
         TWRPNcarXt64HYgSnN8F/73Go5uymsfHqutRx5YQcCUYefbs/ClG/TgKIq4bPZjDV/17
         NJTo6QRJVjHBuXByYRtiMN0rMMA73aFox5BXe9oHki7TXyUVcM5TtAxsVEoL0iUvKy9Q
         deILWhvKH5t6C1WiWJb6MmJXez/yThalOVUCP7QwGVnvIsL7oXRoqSUEt4i3IFvWx107
         7Oeit/gv0azpS+u5GsCb4gVA1AD9i9IAxKMJfyguUqba/o7h7X0uEnm4AIjoutUYoEuu
         gl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761900104; x=1762504904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+hrqrHmQlBw4QJPx8h9w/0Rntf7sgvlCyYtGGSssQKQ=;
        b=UwBp9VOi4pNg6S/yBpK8kI+WVop8UYFNKBrwcmTSd0UplPhmUNYt88v/DPlM5Bt1e6
         mYKo6pnSU2blcjL1f4S4O3RI6ow17yTM3iuQ4nzUsoayD+Q1vmYERs74LY/SX0MXEMQl
         sproHVx6f5IIPu37w3TtFX/dIwjrtZ6StLHBlYKswhPEr3f72uOef6iKBi7jTsCmPK66
         RMvkSHtJ4IDvxg+fC83HkcN9pl+Gd5hUehsbPJTugfexCDYB71WkKsjJ9bVGzA/nno1z
         Tl8TE4BJsTZMzFXc4hsf7EK0W+oJ1+foSZXdf8fBuPSVo062ZaAl6a6Z3EJ3h/3iqRZd
         Zj7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjSOJlocekj+xKu51sZVlWTT2FT5awVBchkzq5BPY6BjrDADlAH1d0MhZvCSISJGRBdhKt55IkgJpw@vger.kernel.org
X-Gm-Message-State: AOJu0YwqEA22FXnMHEXzwR8muCj1ADD97W0Kd70Zp1CJ8zdBhPaaXM7F
	7WDW3OV8Z2ysYfOifTz0ZEWcNubcd7jqyVW6HVBCarnkQGthmYCn/1/OQ72kD6hfgg==
X-Gm-Gg: ASbGncs7j3rFVsBcbNo17B1+O8PdFPVucromG7DXvkHGPPtWMmm8UcG2i4yqo5mWvsx
	GwxDYRtDSDpNs55rlFpCM4oTFMsgcEXRqP+PKYttw7it80nniqybZozWELTeqxQrq8CXM/BHj0T
	gGur1Uj+9QfMgkcUaKemXF8jiQKUjsob/BwQBAL7uDhRDiQbgM5aAgSGc8SBRTgJsXp0oJvBXhZ
	FNb3sl1EX6K4/FcGFO0CpuYGMeKLAu4I0RJlTAzf8zJvMwRo3MdrlkTA8lHp5YshLPRYgDqn+zY
	vR0F2c73LVCJPPaidlsa5uqsY6NMsY5ufKm6BQGdx4c3ADg/O5n6UZYELKV5qWmhKqBBSiz92l6
	fJjvlDeeFrgPtLGv+GMgsZPtvhgzl4gc9rCjo2ikHvCqs4ZsjF0ZI5suS97cU8RQ9dGidw0xg49
	fNChvkdyfsAVDQNjZOtJgEr5VWw+wMCN1eqvoslEEi558NMfA=
X-Google-Smtp-Source: AGHT+IHV+akqMcvywb+3Zt1mSlS+9NiogDpHMm8+bQv2d+CTnogKsWMGLQBpDjl5fxPEL0XtSkMFeA==
X-Received: by 2002:a17:902:c412:b0:264:cda8:7fd3 with SMTP id d9443c01a7336-2951a46d112mr24811375ad.6.1761900103678;
        Fri, 31 Oct 2025 01:41:43 -0700 (PDT)
Received: from adriana-dmi-upstream.sjc.aristanetworks.com ([74.123.28.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952699c9dbsm15333505ad.84.2025.10.31.01.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 01:41:43 -0700 (PDT)
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
	Adriana Nicolae <adriana@arista.com>
Subject: [PATCH v3 1/2] dt-bindings: firmware: Add binding for SMBIOS /chosen properties
Date: Fri, 31 Oct 2025 01:41:00 -0700
Message-ID: <20251031084101.701159-2-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031084101.701159-1-adriana@arista.com>
References: <20251022114527.618908-1-adriana@arista.com>
 <20251031084101.701159-1-adriana@arista.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Adriana Nicolae <adriana@arista.com>

Signed-off-by: Adriana Nicolae <adriana@arista.com>
---
 .../bindings/firmware/linux,smbios-table.yaml | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml

diff --git a/Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml b/Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml
new file mode 100644
index 000000000000..b78d8ec6025f
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml
@@ -0,0 +1,26 @@
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
+  This property is used in the /chosen node to pass the physical address
+  of SMBIOS (System Management BIOS) or DMI (Desktop Management Interface)
+  tables from firmware to the kernel. This is typically used on non-EFI
+  platforms like ARM/ARM64.
+  
+maintainers:
+  - Adriana Nicolae <adriana@arista.com>
+  - Rob Herring <robh+dt@kernel.org>
+
+properties:
+  linux,smbios3-table:
+    $ref: /schemas/types.yaml#/definitions/uint64
+    description:
+      The 64-bit physical address of the SMBIOSv3 entry point structure.
+
+additionalProperties: true
-- 
2.51.0


