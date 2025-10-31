Return-Path: <devicetree+bounces-233655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1492C24609
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C56FD460756
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54C4333B6FD;
	Fri, 31 Oct 2025 10:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="IOJbVzeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A89333891A
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761905439; cv=none; b=auruiU1YMHMReRvA4G7n18MW1PFOgG0A9zgOWT4/9wDrfdka9mNNOo71MsUxDdiOvEPsXSr/zCRXkMPRH1SxBqdD5X5+gVCkd0DIC2HXfCqS/2cCLU0ZLn+qAvYuE1GVfZJntmHxmP6kDpT/XDRuo5xEel7ZiugA3WEoUUePZpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761905439; c=relaxed/simple;
	bh=RbMe08vlLWqNMGEsZHE9UGbw90gmR9WrQSsWUknLDWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EuoxaMnUn74rK0/1CBC53IfPdUo8BnzVbcKJwp0R3nBU7JvCQJOU+eGCfBJVf1B9BtaUyHWMrpeBWobVox984iMFLk/lDAMyi3HaE0J5Cn+pz5PMMsbIi0qMdgFSsNLe8I8haaBF3xFiM9MaG9ihChWyGe55pc82L5KS2qUnrOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=IOJbVzeU; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2952d120da1so258005ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761905428; x=1762510228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCqSLgxWkeVXekojaut52uxcCHN+33LWNwdmvrJ9Ias=;
        b=IOJbVzeUmAB7TuKv9QtAqoc6fVb7bL/e9tuiB8ewibay0cEamF+4MOmEEK2FAcsuzo
         qgoti8+g8PHV0zBePZpJH7KWCyZBXRl7HCGiXMe1Fx5aOI81lHLCl38PXk6D6pSxrY1M
         S8Z7xZxCAVCXSNIc6PkDRA5lG4gBhhLVLHqElp9Dh+shK+W5buHAXRC8wbpNhfSqQlKg
         xl8FFXm8wu9VxCth0q0WYP8DFagr0a9+V+cR74g1IQUNwVekJbx4RvULMFzdzDxVbPkm
         FzF5RFGdQWaTAUQcbSPukzC+o4TIR4aR1KAha3O2Au+aspZojk+84dDdMamTBal6RtgB
         dEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761905428; x=1762510228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MCqSLgxWkeVXekojaut52uxcCHN+33LWNwdmvrJ9Ias=;
        b=iByY2tJcB0em66zY8zHtNLRhLVR5A6mnPjwmG09Ip38ZO7kflebIwfoVkR+EPcfsUh
         AkV4qu5FBl9DWZ0RU5/ZnN6qjCZeNEv+HTixNwVOelMXU2AKW2PomV3AghTW71+3BZwC
         wnzkT2wRgsCooFd60xaHdws44nELYMi+okzlrnfma3IBDM1WaYgY4QeC2XwBGA2yYpus
         2YUZ0QMg9f1vFCVPRdnhJn2pw6UQyZwmGZo0+fcV8dZnfX51If8vL5W9DrqM6wypf0SG
         1/TooP7ThGUCEtTVCPS7BEueeQx036rT5LkQh934x8PM4G92FRKfD6HzAH+IJF0jLN6o
         zVlw==
X-Forwarded-Encrypted: i=1; AJvYcCUD0BidobGUqaq0R0J2ujl+vGJjO84xayfW+woNFbfO4DWsGRn0dVECXtkHEmcWOk/fkGu6DV2j4WAo@vger.kernel.org
X-Gm-Message-State: AOJu0YzZNA4xLeCxu/G8hSs7Gr6JFUBpLuJ4iAt+7Gx4RfMk/UNCYFCt
	iIjqOcKP35UM4OZKQN2hosBAmI6HTpnQtbZQj3wrjr3Yvxj9uYGkGc8FRVLsgSdxWQ==
X-Gm-Gg: ASbGncsFn2Z8WDNmj0rYTNibmoVZzl/6c7Pg4z55HOmt7fHKs7mjLT4IVkUBxNvxDCj
	JUrZvpAX4XSqkkeiQBplgZ/xAnp7bhC9XRPy5lLENZQK65YNn8hmShZ4PLObSi46c/jKLqVn/Cs
	2SmE2sG0tBadhGpSLaNMPtwCHB0IXt/sNU3B7+Utl6kJXpmerdTAKCfvQkj6SMabAQ3ZXQ+hQ/y
	EmUUnoMUf+NeWMEs/+LE3Yz9Lc1Zpc2NQEQYvA2ITah7H70EnX9OCMAAyRF3JKhyNWWMdGOkYyg
	YZJkd4UTPU0KGdILnxP0dhwDmB1J0x36MpSPAVF0Ey2qi5rUbURFJJ0BZC8mCHpXAPq/Mvt5TjS
	sLheW85BDJw+0tUfWZF1waVsVeLxcwFImxL6eUUgwLiWeeETWgQqw31OQeMHQUKOp4eHhLi1/nj
	xLtgiSaCj+d6/H4bNOZlf3FrSxzi5UrVfaYxvC
X-Google-Smtp-Source: AGHT+IGBRA0aoJzpM2hpeOsBENB5JR9uquyfQ/tR+Q/1DkGVQwwAaqar76fSPxcZLwaLxPBcSDvpSQ==
X-Received: by 2002:a17:902:ec86:b0:290:8d7b:4041 with SMTP id d9443c01a7336-2951a524b65mr23527095ad.10.1761905428261;
        Fri, 31 Oct 2025 03:10:28 -0700 (PDT)
Received: from adriana-dmi-upstream.sjc.aristanetworks.com ([74.123.28.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952774570bsm17458545ad.99.2025.10.31.03.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 03:10:28 -0700 (PDT)
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
Subject: [PATCH v4 1/2] dt-bindings: firmware: Add binding for SMBIOS /chosen properties
Date: Fri, 31 Oct 2025 03:10:08 -0700
Message-ID: <20251031101009.704759-2-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031101009.704759-1-adriana@arista.com>
References: <20251031084101.701159-1-adriana@arista.com>
 <20251031101009.704759-1-adriana@arista.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: adriana <adriana@arista.com>
---
 .../firmware/linux,smbios3-entrypoint.yaml    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios3-entrypoint.yaml

diff --git a/Documentation/devicetree/bindings/firmware/linux,smbios3-entrypoint.yaml b/Documentation/devicetree/bindings/firmware/linux,smbios3-entrypoint.yaml
new file mode 100644
index 000000000000..4d1521c685ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/linux,smbios3-entrypoint.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2025 Arista Networks
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/linux,smbios3-entrypoint.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Memory location for SMBIOS entry point 
+
+description: |
+  This property is used in the /chosen node to pass the physical address
+  of SMBIOS (System Management BIOS) or DMI (Desktop Management Interface)
+  tables from firmware to the kernel. This is typically used on non-EFI.
+  
+maintainers:
+  - Adriana Nicolae <adriana@arista.com>
+  - Rob Herring <robh+dt@kernel.org>
+
+properties:
+  linux,smbios3-entrypoint:
+    $ref: /schemas/types.yaml#/definitions/uint64
+    description:
+      The 64-bit physical address of the SMBIOSv3 entry point structure.
+
+additionalProperties: true
-- 
2.51.0


