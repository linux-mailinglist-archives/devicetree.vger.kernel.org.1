Return-Path: <devicetree+bounces-257173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C679D3BE4C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:19:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 349144E9E38
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9450F33FE26;
	Tue, 20 Jan 2026 04:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/h1V+Pq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E1A33F394;
	Tue, 20 Jan 2026 04:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882528; cv=none; b=otwLAGRBWFUOeAL4unW87IiO2mDkvZE/nF6Q154wSBmHYPWIZLa+FlIwOzLNXghyKnlkkbeEbjcVgdJ0Mvh3EO1vfmB4soRj5TU2wcCll5be8F2NQZ40Y3yP5VuV0s1+aciApOVRZ3lQQiGAt8kHlwsg7bEgaV0VRgDwAYDLoNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882528; c=relaxed/simple;
	bh=vOomva/hR4ZN3wCiusAiE7WWWgswq+7ShOke7S7qUXU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=buPLWO4FHk0sPHp8ebov6TXoQnyKKdW04illegb54WsgLAD0+8vTZ/Vi0B2AoDAZSYzVWinQEkgoaC1f6H1m1zQ+EIeELB4oNtSqPOx3y4hxwQFuAC/iiqC2Yl94kzHi7W/vuPFL6s1umWqoagI6L5Qj5y1N/VEzjC8Ln3iBW8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/h1V+Pq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0649CC19424;
	Tue, 20 Jan 2026 04:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882528;
	bh=vOomva/hR4ZN3wCiusAiE7WWWgswq+7ShOke7S7qUXU=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=M/h1V+PqX4zXCxzDt8NUnxPgoXVnQhg8WoUICA3PhEemyl3VhMSjOI+Jhe2Z/juZu
	 4LzN06174ZXaIUomWcFT6yWpULBfZLnKcJq4MwvkZzJU+zL6GgcmiqWS7BmB0zX3ay
	 c3W25/l9jvnz+XskL4ygAJKq2U9z/cZWxzZm3MkuttSw7kX0fXcBUPQjXap6qENSVd
	 aGdHVuClMkeF865an2gkhILh0i0Gk+6M3LWWMoL88VbborkXjYpkt+zBeJftYDmnEl
	 neaBBG41Qb/GBi20/OQ8qtkbzg7XVHrwr2/0KFMknZ4Kjb9386ohhInvLs6XO6n5TF
	 uK2cKiLbdKAtQ==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:56 -0800
Subject: [PATCH NFU RFC 19/19] riscv: dts: build qemu dtb for
 CONFIG_ARCH_VIRT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-19-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1198; i=fustini@kernel.org;
 h=from:subject:message-id; bh=vOomva/hR4ZN3wCiusAiE7WWWgswq+7ShOke7S7qUXU=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwZb9fXLx8458y/0Pfe5tgalmf87g9JnbxHbYqs6L
 XJ21GyFjlIWBjEuBlkxRZZNH/IuLPEK/bpg/ottMHNYmUCGMHBxCsBEbqxl+O/57GxiscP8Tb3V
 knN/5t+90yOx1HDzHp+elU+MXJZnRSYwMnzd8TT9wTaPd2YLMy/lvH8bdczy/q5F/ZPdHptcYE8
 9GMUCAA==
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

[NOT FOR UPSTREAM]

Build DTB based on Qemu generated DTS when CONFIG_ARCH_VIRT is enabled.
The resulting dtb will be consumed by qemu-system-riscv64.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/boot/dts/Makefile      | 1 +
 arch/riscv/boot/dts/qemu/Makefile | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
index 69d8751fb17c..edd25cf000cc 100644
--- a/arch/riscv/boot/dts/Makefile
+++ b/arch/riscv/boot/dts/Makefile
@@ -5,6 +5,7 @@ subdir-y += anlogic
 subdir-y += canaan
 subdir-y += eswin
 subdir-y += microchip
+subdir-y += qemu
 subdir-y += renesas
 subdir-y += sifive
 subdir-y += sophgo
diff --git a/arch/riscv/boot/dts/qemu/Makefile b/arch/riscv/boot/dts/qemu/Makefile
new file mode 100644
index 000000000000..a6b06ef1a75a
--- /dev/null
+++ b/arch/riscv/boot/dts/qemu/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_VIRT) += qemu-virt-cbqri.dtb
+obj-$(CONFIG_BUILTIN_DTB) += $(addsuffix .o, $(dtb-y))

-- 
2.43.0


