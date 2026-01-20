Return-Path: <devicetree+bounces-257156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6DDD3BE29
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 877D54E1865
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27385328B5D;
	Tue, 20 Jan 2026 04:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAO4/Bnb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13612D73B9;
	Tue, 20 Jan 2026 04:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882518; cv=none; b=L4YCY3YbUnp5j60BOq813OCdwALAoDPRzJGTkKHBxWjEbvl6Omg8mNGeiXzFd0wlIulDUt0+ra2nC6As2Cb6WsA8kWZT8sr3w0xjVSk90Iv6vLdy29fAif1oPBjokRCR7TSbPbxqLmKtGIlvM6838NCNP+cL92CQCRRr2rya96Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882518; c=relaxed/simple;
	bh=iU4P/QyFDo51iNRXh33LwyQncDIl37ClLj6x8G/smfI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sfNaEF0Dsk+uxQrxELr9Q+jjhDGj4aqZaxE/aExLdoCxl76raUhjH7SUv9LWWWeEPCPkC2TMVI7xqFVzU8bNVu5EenrcNZAyd5Tpm5hikD52S8VO2U9Sy3Td3y0jU+cZhyohrMkyNAruzD1u0VePriAg+EKZ4Cdsc0cg4RduZso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAO4/Bnb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B57AC19421;
	Tue, 20 Jan 2026 04:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882517;
	bh=iU4P/QyFDo51iNRXh33LwyQncDIl37ClLj6x8G/smfI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=lAO4/BnbIJGMFBU6rw5rtclBpMc/bLFKl51zwghdn10xpbcRPrOI12DDkY5tBP7y/
	 H9vwDPIcAVldqp8vpW2UdGyL3XfkQBloJ5bWCWGK9KjIJA8tfZ0h9W4NCf1hddTdZy
	 QZ4gF1LvFoHHidFaN4grFraxNjKoQMg+ZTFCbjjntTDCDXMjxiCL9hwUoTa0Y9ISvh
	 g3ga5fW3z6sewiAJ6gww5xya3zmMK7djRwFrIto/3S+rR0HuMr0L01yhUm3i/uOOWl
	 3UKgoAapCcOG8tp3enwvGFvfQGXTBUkd0GhWBAE9566UP/Yw5Ix8PMdc2EajL7C8MN
	 awNhAcclqqQeg==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:38 -0800
Subject: [PATCH RFC 01/19] dt-bindings: riscv: Add Ssqosid extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-1-aa2a75153832@kernel.org>
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
Cc: Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1214; i=fustini@kernel.org;
 h=from:subject:message-id; bh=iU4P/QyFDo51iNRXh33LwyQncDIl37ClLj6x8G/smfI=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwa1Ly2YIabU0/8gM63YMrzk9xeJsC1P2WwDPVsi9
 9yca3G8o5SFQYyLQVZMkWXTh7wLS7xCvy6Y/2IbzBxWJpAhDFycAjCRiSKMDNdXt29ra/yp8HOB
 yly9DVJeB+NvH+SWM/GKbTFRfOm2I5GR4cSeCsk6ieJPJqxBCkGXxY2WFoR0rd7y1bosNtLBzaG
 aCwA=
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Document the ratified Supervisor-mode Quality of Service ID (Ssqosid)
extension v1.0.

Link: https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 5bab356addc8..27a7b4e63eb1 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -165,6 +165,12 @@ properties:
             ratified at commit d70011dde6c2 ("Update to ratified state")
             of riscv-j-extension.
 
+        - const: ssqosid
+          description: |
+            The Ssqosid extension for Quality of Service ID is ratified
+            as v1.0 in commit 5059e0ca641c  ("Merge pull request #7 from
+            ved-rivos/Ratified") of riscv-ssqosid.
+
         - const: sstc
           description: |
             The standard Sstc supervisor-level extension for time compare as

-- 
2.43.0


