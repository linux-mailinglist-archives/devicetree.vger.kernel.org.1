Return-Path: <devicetree+bounces-211614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A67A2B3FB00
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:48:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4CF8D4E3A12
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E16F2E8DED;
	Tue,  2 Sep 2025 09:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f/9q9kV4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A34927B34B
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756806473; cv=none; b=VGnp26d7ipVN62tHqqlTUZ6hUzhYyjsWSm8eqtrYILAyigSlT2spRUJtcit55Mhbtv1ocErZcxuGmYsRF9l0rn3C4CNIFwnnyeZAiulguaPkQJDpj15EZopFXaZbVlAtFg9DNtt7b/Wch/OLFDlfZAOk11Lt3UfTJ6ZZifYzUCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756806473; c=relaxed/simple;
	bh=yzipH7+YLSVA5XwvVOPX7KSuVlBdg734ixf29Kxdakw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PB2tJWYqn9FzrBFo3MOOw5ryuexvYX1dQkKbPmtMgkKvq6y5PJLXLzxxjjsl+fVBSfT4Lgyn01Hdl5pk+LmJp76AgFbLhCwioL9bBES/7a6guKriY006Mf8vVLcO8DLTwnUDxHgEDK5MzpwxydMaoCJbtIDDItdF3N5IOyFJivY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f/9q9kV4; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3dad6252eacso157154f8f.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756806470; x=1757411270; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zDNEVdF1aav7akHGWHi6iBedrI525SqQlKbGzww85uM=;
        b=f/9q9kV4wDr2uusl+FJ51jDnJSwz0NuZoeNEI23hGRnu4YhcFyZLF2EWeEjvmS9cHT
         xLO7nCt0XMwSZzhsG5SeGbXF7HEF4TtbMGBu+9+QW+JZ3BSamzg+xz3lzmzCmMCrTCQ+
         2i9gNLU/YjoFyJ0XWtH5JaatkAmYA/CQ51VVvsGTq0rkcnkG3RKhwEVvQDPsOH4FQJHv
         bV3kgN2DI8bmgFRfPq44HaJLWIw4k85UBz6Qi28kqOfxBq2tm7Hh+7UBZMjsKOTPxKtQ
         oy/8NeZiMqHXX3nGgJjMerZO4OLVqp+NLSnFrtct15Myz/XZikNGZzDwGZMU2PjXAxwt
         FJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806470; x=1757411270;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zDNEVdF1aav7akHGWHi6iBedrI525SqQlKbGzww85uM=;
        b=OKvjsNWNZhHC/GckbZDDh2evTYCbhiUR8ZeEw0L6ekQKiX1arKSl2ACew6f9Yh2xtH
         6Tp8rZzKev8LWnUqP0JF3ZATW5mjCH64fhoemINiBWPKtXGWqDjmBApZQfJfP/ehFlbl
         yXYJOl3ZMGlI3uqRv1lpqqQXCmPbnnA1SnaYIOowpcELpb+QTba7kxwmNjFXhTCP+8eB
         dPLycThRYs5tRppcPsOQe9ozeMMa4hUyi50Wt9/oLH+JzRKYPAT78bDbSfYsvBhx5Pi6
         hdiDbr0pJ6RE1VwX/M6MLoLvTQLHHiG32muDv09umevVckVcIhR5FRJa7hdJtXNEggrF
         C+IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwAObkrIngveA4LhCX/FCtKbRt+NiNVA5SPN8YlgteG2F3JrrRaJRpOnGSEoalovTFEmJbgbJyAngt@vger.kernel.org
X-Gm-Message-State: AOJu0YyMGxDLTyk+kx8qKEFKOyX9MusWLVg4uGFUIEHXt+eFh1EJC+Qc
	T/XK+ezQ3MwaSmNGVo1iZzngc2iJnuYFiz1RMvXf+0hBcJRdY3+JfUqwcolRRcTzG7FiOhQF5qf
	PD9/N
X-Gm-Gg: ASbGncssZKbrkhaEhq0qxPAy1rnF0gRul6OqAjiUsVter8TTZHE/Kz0AIMu/5hutjoO
	sqfm6kBZtD3ej3JrzomXzMFfBZdMGUGRXlabjTDXhXXy+ayDkp2yt1zIa16g+w39r3HbpZUViVv
	PnpKGdtp5hAOXG4yn6wt3xYXhqr+NdgqnpfPfKPVNxRtf+nCqzzDRpToP2KHr8BuJWvqHUDgfT9
	76vizJ7bG43pC0kej5T800sWq0zNFoRWHDQao0o5gBQq3cR1yLe1uEoYSfT/cjXwtNBvzIJccIm
	VcSJAUtiCTkYMUdjE4K0uaS+ol6r3uWw4M9H6ZFxXMYDcQU1YXCiaI6y5SyLlwAjmQFbL8LJnRO
	0q1oKC5jeiOfVqeQ2xGwR28YyAbgszrqobWD3oA==
X-Google-Smtp-Source: AGHT+IGhzDRfSoIBdZIYTbvS+YKQHcUloucdIOzwbNIUuQlEjgK00y3sqTBhlk96hnKLHY9Y8H1RGQ==
X-Received: by 2002:a5d:64c6:0:b0:3ce:f0a5:d586 with SMTP id ffacd0b85a97d-3d1dc5a2fe0mr6784224f8f.1.1756806469665;
        Tue, 02 Sep 2025 02:47:49 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3cf274dde69sm18902229f8f.14.2025.09.02.02.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:47:49 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:47:45 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ciprian Costea <ciprianmarian.costea@nxp.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>, linaro-s32@linaro.org
Subject: [PATCH v3 1/3] dt-bindings: nvmem: Add the nxp,s32g-ocotp yaml file
Message-ID: <6a9562fc4b5a70a34eac66359bcab64be96ab873.1756800543.git.dan.carpenter@linaro.org>
References: <cover.1756800543.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1756800543.git.dan.carpenter@linaro.org>

From: Ciprian Costea <ciprianmarian.costea@nxp.com>

Add bindings to expose the On Chip One-Time Programmable Controller
(OCOTP) for the NXP s32g chipset.  There are three versions of this
chip but they're compatible so we can fall back to the nxp,s32g2-ocotp
compatible.

Signed-off-by: Ciprian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v3: Remove unnecessary |
    Move $ref to end
    Alphabetize the compatibles
    Delete the unused ocotp: label

v2: dt_binding_check DT_SCHEMA_FILES=nxp,s32g-ocotp-nvmem.yaml is clean
    make CHECK_DTBS=y freescale/*.dtb is clean.  Particularly the
      freescale/s32g274a-evb.dtb file which Rob mentioned.
    remove bogus include file
    remove redundant "reg" description
    remove #address-cells and #size-cells since they are already in
    nvmem.yaml
    Fix email From header
---
 .../bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml  | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
new file mode 100644
index 000000000000..8d46e7d28da6
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nxp,s32g-ocotp-nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G OCOTP NVMEM driver
+
+maintainers:
+  - Ciprian Costea <ciprianmarian.costea@nxp.com>
+
+description:
+  The drivers provides an interface to access One Time
+  Programmable memory pages, such as TMU fuse values.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,s32g2-ocotp
+      - items:
+          - enum:
+              - nxp,s32g3-ocotp
+              - nxp,s32r45-ocotp
+          - const: nxp,s32g2-ocotp
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+allOf:
+  - $ref: nvmem.yaml#
+
+examples:
+  - |
+    nvmem@400a4000 {
+      compatible = "nxp,s32g2-ocotp";
+      reg = <0x400a4000 0x400>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+    };
-- 
2.47.2


