Return-Path: <devicetree+bounces-257168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB50D3BE40
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 941CD4E91A0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74DB33DEE9;
	Tue, 20 Jan 2026 04:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibALnT31"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E53233DED0;
	Tue, 20 Jan 2026 04:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882525; cv=none; b=oPoELGYRsS+YQ68+jFLaOeNijtVWU2rwsmR67zTVhWKmTUYR4jNz0gaJ87uChFMYlOTYEHnpynWBZQ9XcTrR9Nj9e1c/aYr6TLCi8KyzQagIzbzAfKVtklG84ft/TcVm/G/jiHWk5gnEwiLb1FssyrDfZRAXHj2NFsK6MKoEFa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882525; c=relaxed/simple;
	bh=RN9LOBb2Q5aHVScQAnVGdCBA9dhEyBoY6qpcRx7/gOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=rnd8jUTEu7kFFFsWNBL4rgfBjx4r6bv2qTjCxODky3QOW7Zdn0+nFLz6CtqMi3ieEhnjH9nqr9ZGBpcEhgijqHxDgKYPfIwKbYK8OKX4MH2ax5il4/9Hj00dJSw20JQidWfrFTCVS4ZzoTqvPqBNopax7vjF7jsPgMk9wRfej7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibALnT31; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 770D7C2BC86;
	Tue, 20 Jan 2026 04:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882524;
	bh=RN9LOBb2Q5aHVScQAnVGdCBA9dhEyBoY6qpcRx7/gOs=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=ibALnT31IaRWqMCGHNDwcHyS4zY3PSOEdYb8NpS5lFcY9V9AQeIfJA2MNUOWdVPtP
	 wyj4P9oSyvIXD/15cPtpJwSySspLscah8p/lnpuHvXZEI85EKPrXpjLk+zD33TxEsw
	 EHnQr6ea1HUSUyEiaNWdWHFBEMzPGqb7hEzz2cyMZnQXxYQOqA32mx0gxcMDD8ctGj
	 U50pAXE51MWcZQQtDzQF951X0vIB//j+f/InQulIwnKdQXW3yZgzaG9oArYLSXu2pz
	 Bpf4UF51bu52DKbecRmXPwjGMafftEKpEZa6YtZKZ/nCYIW5BinTsiwjTnFAmUHQCc
	 cQsndQKaXlmKQ==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:50 -0800
Subject: [PATCH RFC 13/19] dt-bindings: riscv: add riscv,cbqri bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-13-aa2a75153832@kernel.org>
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
In-Reply-To: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
To: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Adrien Ricciardi <aricciardi@baylibre.com>, 
 Nicolas Pitre <npitre@baylibre.com>, 
 =?utf-8?q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
 Atish Patra <atish.patra@linux.dev>, 
 Atish Kumar Patra <atishp@rivosinc.com>, 
 Vasudevan Srinivasan <vasu@rivosinc.com>, Ved Shanbhogue <ved@rivosinc.com>, 
 yunhui cui <cuiyunhui@bytedance.com>, Chen Pei <cp0613@linux.alibaba.com>, 
 Liu Zhiwei <zhiwei_liu@linux.alibaba.com>, Weiwei Li <liwei1518@gmail.com>, 
 guo.wenjia23@zte.com.cn, liu.qingtao2@zte.com.cn, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Reinette Chatre <reinette.chatre@intel.com>, 
 Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>, 
 Peter Newman <peternewman@google.com>, Fenghua Yu <fenghua.yu@intel.com>, 
 James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Drew Fustini <fustini@kernel.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, x86@kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2066; i=fustini@kernel.org;
 h=from:subject:message-id; bh=RN9LOBb2Q5aHVScQAnVGdCBA9dhEyBoY6qpcRx7/gOs=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwZvKFxgcutym03sq+CM7AXrjIVjpl3U/3o9LfXz/
 danM1VvdJSyMIhxMciKKbJs+pB3YYlX6NcF819sg5nDygQyhIGLUwAm8rmO4X9BzN0toRZacQzf
 96rcrT4tKfnC6njW3ZzSqS/jBRbaS51hZGiMPee4Z+38us9bFs7YbRN6YIFugjWX0duHVdEvGlX
 i1vADAA==
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Document properties that can be used in the bindings for controllers
that implement the RISC-V CBQRI specification.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 .../devicetree/bindings/riscv/riscv,cbqri.yaml     | 28 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/riscv,cbqri.yaml b/Documentation/devicetree/bindings/riscv/riscv,cbqri.yaml
new file mode 100644
index 000000000000..7d0482c31a46
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/riscv,cbqri.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/riscv,cbqri.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V Capacity and Bandwidth Register Interface (CBQRI) properties
+
+description: |
+  Common properties for cache and memory controllers that implement the
+  RISC-V CBQRI specification:
+  https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0
+
+maintainers:
+  - Drew Fustini <fustini@kernel.org>
+
+properties:
+  riscv,cbqri-rcid:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: The maximum number of RCIDs the controller supports
+
+  riscv,cbqri-mcid:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: The maximum number of MCIDs the controller supports
+
+additionalProperties: true
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 96ead357a634..2c9151e34d2b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22509,6 +22509,7 @@ RISC-V QOS RESCTRL SUPPORT
 M:	Drew Fustini <fustini@kernel.org>
 L:	linux-riscv@lists.infradead.org
 S:	Supported
+F:	Documentation/devicetree/bindings/riscv/riscv,cbqri.yaml
 F:	arch/riscv/include/asm/qos.h
 F:	arch/riscv/include/asm/resctrl.h
 F:	arch/riscv/kernel/qos/

-- 
2.43.0


