Return-Path: <devicetree+bounces-164307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06467A7FD1A
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 12:56:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 231EB1894EAB
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 10:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75BF8269AF4;
	Tue,  8 Apr 2025 10:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWe3vA10"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC5719DF75;
	Tue,  8 Apr 2025 10:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744109479; cv=none; b=AjPFcv8Nl/is2d76yRcvk8JSk4fHAAmi7O9y+eSw1OvkvAqRi2rQRpGyY8gqg5s1S1OPD9+tThqN19Ag12o0moCli/VNmXwXmjyE8jdNWVAiQx/C6jvbZ5EYi6DdcCd0QbfspVHjEUnuuTs47vmqjAkRouPO4NSYNILv/GjrNLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744109479; c=relaxed/simple;
	bh=sQqjxedBfR/x/zpD52PYNFW1off5a3wsTQ0MTvz8038=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SMosOhrbs9uhp1OkNkz+JEJpQck+YQn647px1QVbyuJgwobL22V3hBiVYfbb7ZZ5BEHz3635PzSBo6jLaoZyB4ZNmzVPfhEE9UbkG12cI4GvRJfJ4V1KLV2xdQ+hKRZqBr//xf/5op3lccALAWYQ6VaCWivZws5+Q2EE4J/0qWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWe3vA10; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E02BC4CEE5;
	Tue,  8 Apr 2025 10:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744109479;
	bh=sQqjxedBfR/x/zpD52PYNFW1off5a3wsTQ0MTvz8038=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bWe3vA10IDTa6iJ5S9wV+IZKFTI9SEENovJyMJQhVbWGNQazRxS+0jkpuEgIWHuns
	 mUa0xkyOssVH6XqLpWRbsmhBplloFTPbCKX7dKxY0EO/wiC4BRI58F+XIPGoI98qXp
	 w57IMrGFd+rmhZr8YE4I/wzctReAVkLksFPWCvuNLDAIiXL9vI3M3B3Dk8X8EmOyHc
	 6dFIspIbtTnUNr1LP+eOCxKPFFN5c+iCIL5b32fxhiSIXbSUMF118zTLleKgeF2gri
	 nvnBSwoVACXbh2dE5P7l3IP0z88RQ+jFnQnY5kmUrM1siu10zlNw02vT7qUCAgqT2K
	 S/x+CbDIoNgVw==
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
Date: Tue, 08 Apr 2025 12:50:07 +0200
Subject: [PATCH 08/24] arm64/sysreg: Add ICC_PPI_{C/S}PENDR<n>_EL1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-gicv5-host-v1-8-1f26db465f8d@kernel.org>
References: <20250408-gicv5-host-v1-0-1f26db465f8d@kernel.org>
In-Reply-To: <20250408-gicv5-host-v1-0-1f26db465f8d@kernel.org>
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Sascha Bischoff <sascha.bischoff@arm.com>, 
 Timothy Hayes <timothy.hayes@arm.com>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>
X-Mailer: b4 0.14.2

Add ICC_PPI_{C/S}PENDR<n>_EL1 registers description.

Signed-off-by: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/tools/sysreg | 83 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/tools/sysreg b/arch/arm64/tools/sysreg
index 0485721e1575c9ed158210c6f02fb9af2828f2d5..7acad93718c56729ce2a333ed007243ec554dbc9 100644
--- a/arch/arm64/tools/sysreg
+++ b/arch/arm64/tools/sysreg
@@ -2557,6 +2557,89 @@ Sysreg	ICC_PPI_SACTIVER1_EL1	3	0	12	13	3
 Fields ICC_PPI_ACTIVERx_EL1
 EndSysreg
 
+SysregFields	ICC_PPI_PENDRx_EL1
+Field	63	Pend63
+Field	62	Pend62
+Field	61	Pend61
+Field	60	Pend60
+Field	59	Pend59
+Field	58	Pend58
+Field	57	Pend57
+Field	56	Pend56
+Field	55	Pend55
+Field	54	Pend54
+Field	53	Pend53
+Field	52	Pend52
+Field	51	Pend51
+Field	50	Pend50
+Field	49	Pend49
+Field	48	Pend48
+Field	47	Pend47
+Field	46	Pend46
+Field	45	Pend45
+Field	44	Pend44
+Field	43	Pend43
+Field	42	Pend42
+Field	41	Pend41
+Field	40	Pend40
+Field	39	Pend39
+Field	38	Pend38
+Field	37	Pend37
+Field	36	Pend36
+Field	35	Pend35
+Field	34	Pend34
+Field	33	Pend33
+Field	32	Pend32
+Field	31	Pend31
+Field	30	Pend30
+Field	29	Pend29
+Field	28	Pend28
+Field	27	Pend27
+Field	26	Pend26
+Field	25	Pend25
+Field	24	Pend24
+Field	23	Pend23
+Field	22	Pend22
+Field	21	Pend21
+Field	20	Pend20
+Field	19	Pend19
+Field	18	Pend18
+Field	17	Pend17
+Field	16	Pend16
+Field	15	Pend15
+Field	14	Pend14
+Field	13	Pend13
+Field	12	Pend12
+Field	11	Pend11
+Field	10	Pend10
+Field	9	Pend9
+Field	8	Pend8
+Field	7	Pend7
+Field	6	Pend6
+Field	5	Pend5
+Field	4	Pend4
+Field	3	Pend3
+Field	2	Pend2
+Field	1	Pend1
+Field	0	Pend0
+EndSysregFields
+
+Sysreg	ICC_PPI_CPENDR0_EL1	3	0	12	13	4
+Fields ICC_PPI_PENDRx_EL1
+EndSysreg
+
+Sysreg	ICC_PPI_CPENDR1_EL1	3	0	12	13	5
+Fields ICC_PPI_PENDRx_EL1
+EndSysreg
+
+Sysreg	ICC_PPI_SPENDR0_EL1	3	0	12	13	6
+Fields ICC_PPI_PENDRx_EL1
+EndSysreg
+
+Sysreg	ICC_PPI_SPENDR1_EL1	3	0	12	13	7
+Fields ICC_PPI_PENDRx_EL1
+EndSysreg
+
 SysregFields	ICC_PPI_PRIORITYRx_EL1
 Res0	63:61
 Field	60:56	Priority7

-- 
2.48.0


