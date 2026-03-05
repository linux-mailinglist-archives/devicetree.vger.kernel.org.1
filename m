Return-Path: <devicetree+bounces-271449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yImnAR9LqWn+3wAAu9opvQ
	(envelope-from <devicetree+bounces-271449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:21:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAE620E44D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F2DA30A8479
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EB5377560;
	Thu,  5 Mar 2026 09:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASFapruX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26C7376BCC;
	Thu,  5 Mar 2026 09:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772702151; cv=none; b=s0AQXVk7+s5tc4oh2Cn17slt7WN0bVRR/79qaL2NbyxvszVjQXoKwHmhdvzAab2hxittZGRbraqckl5giSgvDRz4qYWgJjQkEKyHcXkmrH/D0DzPMZk6tUcyzjGL4cNqtxGMlWHUSFkfb1G5J+Q+ArvyZ4xOAJxgoj3S/oj8n7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772702151; c=relaxed/simple;
	bh=Kkuar2uSCXf6mbK+sbNpa7dI3oKtv26ZQo2UxABLQaY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=C8KfdcdVOo49+s56p4aoj0C2tDOk08ugxJ+HoFwNcueuxxPLvjunrubQkCHxQxXO91Lltfv6j/d7/1QVweyca3pf1lk4Bn2IH2qU7aWYuQOylrFboPdawEYj2gzTBwr+h05JyL6P+a9q+0zaRI53CG6jDg+AQRBlNDpVvoAiPJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASFapruX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69BA5C19425;
	Thu,  5 Mar 2026 09:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772702151;
	bh=Kkuar2uSCXf6mbK+sbNpa7dI3oKtv26ZQo2UxABLQaY=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=ASFapruX4gJ13gBP5hDyHP6GZw2L3MzA8PqCE6Qw8Bm/ALjAndB9wJCx/o6Eq9EgH
	 umzdj1O58HLsXf5EnAcwYzypFOSqW7wb8+5oXgssLw4OUASlQ8K4kastHpYL7kh7ik
	 2G7HAhoGXxTSb9DpK+/eaCzzfNG5upOZiAgky9zyUL94IzVZla4EqUiUh4vemVxYjr
	 kg7zbxIB79chs6zLgQbsR8lcYzirroV/OnxhP5CTfp36aLarr1E3WeZ/RwgJBnEbOW
	 ScTa5Vt86PNBTkZlkW++CS4vaY/4NX+hJ7niT6YUUDiCUfd0dqYVNMn0fRKalfYy9f
	 FOj6y/vzVQyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADCAEEF319;
	Thu,  5 Mar 2026 09:15:51 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Thu, 05 Mar 2026 10:15:38 +0100
Subject: [PATCH v2] powerpc: dts: Build devicetrees of enabled platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260305-mpc83xx-dtb-v2-1-cdb751458445@posteo.net>
X-B4-Tracking: v=1; b=H4sIALlJqWkC/1XMyw7CIBCF4VdpZi2GGdQUV30P00Uvg2VhaYAQT
 MO7i40bl/9JzrdDYG85wL3ZwXOywbq1Bp0amJZhfbKwc20gSTeJEsVrm1qVs5jjKEjNuh1QSyY
 F9bF5NjYf2qOvvdgQnX8feMLv+nNQ/zkJBYorkWkvSFqOpttciOzOK0foSykf07eXY6cAAAA=
X-Change-ID: 20260101-mpc83xx-dtb-23d98a190e23
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772702150; l=9718;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=5WxZOnJ2RnhvLzP27DbvhYw+ZWyImRomywuyAQF0f/k=;
 b=h2Q+JEKbP0h0D0X2Q1BEfMgXJrHRh/eBrLicOOR2XFBOByA20z+ZDJueBhj/ZfPRA6cKQEMsR
 WsDcbZu8SQvDIPLtYSrKI762GE9OSqUwE7H5xu/lJ9yso59gsxd1BtU
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Rspamd-Queue-Id: 7BAE620E44D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271449-lists,devicetree=lfdr.de,j.ne.posteo.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linux.ibm.com,ellerman.id.au,gmail.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[posteo.net:replyto,posteo.net:email,posteo.net:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: "J. Neuschäfer" <j.ne@posteo.net>

Follow the same approach as other architectures such as Arm or RISC-V,
and build devicetrees based on platforms selected in Kconfig. This makes
it unnecessary to use CONFIG_OF_ALL_DTBS on PowerPC in order to build
DTB files.

This makes it easier to use other build and test infrastructure such as
`make dtbs_check`, and is a first step towards generating FIT images
that include all the relevant DTBs with `make image.fit`.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
Changes in v2:
- Use "dtb-$(FOO) += foo.dtb" format on every line, avoid backslashes
  (suggested by Geert Uytterhoeven)
- Link to v1: https://lore.kernel.org/r/20260119-mpc83xx-dtb-v1-1-522f841290bf@posteo.net
---
 arch/powerpc/boot/dts/Makefile     | 111 +++++++++++++++++++++++++++++++++++++
 arch/powerpc/boot/dts/fsl/Makefile |  79 ++++++++++++++++++++++++++
 2 files changed, 190 insertions(+)

diff --git a/arch/powerpc/boot/dts/Makefile b/arch/powerpc/boot/dts/Makefile
index 0cd0d8558b475c..7fce8c819d3d72 100644
--- a/arch/powerpc/boot/dts/Makefile
+++ b/arch/powerpc/boot/dts/Makefile
@@ -3,3 +3,114 @@
 subdir-y += fsl
 
 dtb-$(CONFIG_OF_ALL_DTBS) := $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
+
+# PPC44x platforms
+dtb-$(CONFIG_PPC44x_SIMPLE) += arches.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += bamboo.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += bluestone.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += glacier.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += eiger.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += katmai.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += rainier.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += redwood.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += sequoia.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += taishan.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += yosemite.dtb
+dtb-$(CONFIG_PPC44x_SIMPLE) += icon.dtb
+dtb-$(CONFIG_EBONY) += ebony.dtb
+dtb-$(CONFIG_SAM440EP) += sam440ep.dtb
+dtb-$(CONFIG_WARP) += warp.dtb
+dtb-$(CONFIG_ISS4xx) += iss4xx.dtb
+dtb-$(CONFIG_ISS4xx) += iss4xx-mpic.dtb
+dtb-$(CONFIG_CANYONLANDS) += canyonlands.dtb
+dtb-$(CONFIG_CURRITUCK) += currituck.dtb
+dtb-$(CONFIG_AKEBONO) += akebono.dtb
+dtb-$(CONFIG_FSP2) += fsp2.dtb
+
+# Embedded 6xx platforms
+dtb-$(CONFIG_LINKSTATION) += kuroboxHG.dtb
+dtb-$(CONFIG_LINKSTATION) += kuroboxHD.dtb
+dtb-$(CONFIG_STORCENTER) += storcenter.dtb
+dtb-$(CONFIG_PPC_HOLLY) += holly.dtb
+dtb-$(CONFIG_GAMECUBE) += gamecube.dtb
+dtb-$(CONFIG_WII) += wii.dtb
+dtb-$(CONFIG_MVME5100) += mvme5100.dtb
+
+# MPC8xx platforms
+dtb-$(CONFIG_MPC885ADS) += mpc885ads.dtb
+dtb-$(CONFIG_MPC86XADS) += mpc866ads.dtb
+dtb-$(CONFIG_PPC_EP88XC) += ep88xc.dtb
+dtb-$(CONFIG_PPC_ADDER875) += adder875-redboot.dtb
+dtb-$(CONFIG_PPC_ADDER875) += adder875-uboot.dtb
+dtb-$(CONFIG_TQM8XX) += tqm8xx.dtb
+
+# MPC512x platforms
+dtb-$(CONFIG_MPC5121_ADS) += mpc5121ads.dtb
+dtb-$(CONFIG_MPC512x_GENERIC) += mpc5125twr.dtb
+dtb-$(CONFIG_MPC512x_GENERIC) += ac14xx.dts
+dtb-$(CONFIG_PDM360NG) += pdm360ng.dtb
+
+# MPC5200 platforms
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += a3m071.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += a4m072.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += charon.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += cm5200.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += digsy_mtc.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += motionpro.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += mucmc52.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2d.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2d300.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2dnt2.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2i.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2mnt.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o3dnt.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += pcm030.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += pcm032.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += tqm5200.dtb
+dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += uc101.dtb
+dtb-$(CONFIG_PPC_LITE5200) += lite5200.dtb
+dtb-$(CONFIG_PPC_LITE5200) += lite5200b.dtb
+dtb-$(CONFIG_PPC_MEDIA5200) += media5200.dtb
+
+# MPC82xx platforms
+dtb-$(CONFIG_EP8248E) += ep8248e.dtb
+dtb-$(CONFIG_MGCOGE) += mgcoge.dtb
+
+# MPC83xx platforms
+dtb-$(CONFIG_MPC830x_RDB) += mpc8308rdb.dtb
+dtb-$(CONFIG_MPC830x_RDB) += mpc8308_p1m.dtb
+dtb-$(CONFIG_MPC831x_RDB) += mpc8313erdb.dtb
+dtb-$(CONFIG_MPC831x_RDB) += mpc8315erdb.dtb
+dtb-$(CONFIG_MPC832x_RDB) += mpc832x_rdb.dtb
+dtb-$(CONFIG_MPC834x_ITX) += mpc8349emitx.dtb
+dtb-$(CONFIG_MPC834x_ITX) += mpc8349emitxgp.dtb
+dtb-$(CONFIG_ASP834x) += asp834x-redboot.dtb
+dtb-$(CONFIG_MPC836x_RDK) += mpc836x_rdk.dtb
+dtb-$(CONFIG_KMETER1) += kmeter1.dtb
+dtb-$(CONFIG_MPC837x_RDB) += mpc8377_rdb.dtb
+dtb-$(CONFIG_MPC837x_RDB) += mpc8378_rdb.dtb
+dtb-$(CONFIG_MPC837x_RDB) += mpc8379_rdb.dtb
+dtb-$(CONFIG_MPC837x_RDB) += mpc8377_wlan.dtb
+
+# MPC85xx platforms
+dtb-$(CONFIG_STX_GP3) += stx_gp3_8560.dtb
+dtb-$(CONFIG_STX_GP3) += stxssa8555.dtb
+dtb-$(CONFIG_TQM85xx) += tqm8540.dtb
+dtb-$(CONFIG_TQM85xx) += tqm8541.dtb
+dtb-$(CONFIG_TQM85xx) += tqm8548.dtb
+dtb-$(CONFIG_TQM85xx) += tqm8548-bigflash.dtb
+dtb-$(CONFIG_TQM85xx) += tqm8555.dtb
+dtb-$(CONFIG_TQM85xx) += tqm8560.dtb
+dtb-$(CONFIG_SOCRATES) += socrates.dtb
+dtb-$(CONFIG_KSI8560) += ksi8560.dtb
+dtb-$(CONFIG_XES_MPC85xx) += xcalibur1501.dtb
+dtb-$(CONFIG_XES_MPC85xx) += xpedite5200.dtb
+dtb-$(CONFIG_XES_MPC85xx) += xpedite5200_xmon.dtb
+dtb-$(CONFIG_XES_MPC85xx) += xpedite5301.dtb
+dtb-$(CONFIG_XES_MPC85xx) += xpedite5330.dtb
+dtb-$(CONFIG_XES_MPC85xx) += xpedite5370.dtb
+
+# Misc. platforms
+dtb-$(CONFIG_PPC_MICROWATT) += microwatt.dtb
+dtb-$(CONFIG_AMIGAONE) += amigaone.dtb
+dtb-$(CONFIG_PPC_PS3) += ps3.dtb
diff --git a/arch/powerpc/boot/dts/fsl/Makefile b/arch/powerpc/boot/dts/fsl/Makefile
index d3ecdf14bc42e7..9fd0badd89f198 100644
--- a/arch/powerpc/boot/dts/fsl/Makefile
+++ b/arch/powerpc/boot/dts/fsl/Makefile
@@ -1,3 +1,82 @@
 # SPDX-License-Identifier: GPL-2.0
 
 dtb-$(CONFIG_OF_ALL_DTBS) := $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
+
+# MPC85xx platforms
+dtb-$(CONFIG_BSC9131_RDB) += bsc9131rdb.dtb
+dtb-$(CONFIG_BSC9132_QDS) += bsc9132qds.dtb
+dtb-$(CONFIG_C293_PCIE) += c293pcie.dtb
+dtb-$(CONFIG_MPC8536_DS) += mpc8536ds.dtb
+dtb-$(CONFIG_MPC8536_DS) += mpc8536ds_36b.dtb
+dtb-$(CONFIG_MPC85xx_DS) += mpc8544ds.dtb
+dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds_camp_core0.dtb
+dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds_camp_core1.dtb
+dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds_36b.dtb
+dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds.dtb
+dtb-$(CONFIG_MPC85xx_MDS) += mpc8568mds.dtb
+dtb-$(CONFIG_MPC85xx_MDS) += mpc8569mds.dtb
+dtb-$(CONFIG_MPC85xx_MDS) += p1021mds.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020mbg-pc_32b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020mbg-pc_36b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb_36b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_32b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_36b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_camp_core0.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_camp_core1.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pd.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020utm-pc_32b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1020utm-pc_36b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1021rdb-pc_32b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1021rdb-pc_36b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1024rdb_32b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1024rdb_36b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1025rdb_32b.dtb
+dtb-$(CONFIG_MPC85xx_RDB) += p1025rdb_36b.dtb
+dtb-$(CONFIG_P1010_RDB) += p1010rdb-pa_36b.dtb
+dtb-$(CONFIG_P1010_RDB) += p1010rdb-pa.dtb
+dtb-$(CONFIG_P1010_RDB) += p1010rdb-pb_36b.dtb
+dtb-$(CONFIG_P1010_RDB) += p1010rdb-pb.dtb
+dtb-$(CONFIG_P1022_DS) += p1022ds_32b.dtb
+dtb-$(CONFIG_P1022_DS) += p1022ds_36b.dtb
+dtb-$(CONFIG_P1022_RDK) += p1022rdk.dtb
+dtb-$(CONFIG_P1023_RDB) += p1023rdb.dtb
+dtb-$(CONFIG_PPC_P2020) += p2020ds.dtb
+dtb-$(CONFIG_PPC_P2020) += turris1x.dtb
+dtb-$(CONFIG_TWR_P102x) += p1025twr.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += b4420qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += b4860qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += cyrus_p5020.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += kmcent2.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += kmcoge4.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += oca4080.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += p2041rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += p3041ds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += p4080ds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += p5020ds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += p5040ds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1023rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1024qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1024rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1040d4rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1040qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1040rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1040rdb-rev-a.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1042d4rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1042qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1042rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t1042rdb_pi.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t2080qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t2080rdb.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t2081qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t4240qds.dtb
+dtb-$(CONFIG_CORENET_GENERIC) += t4240rdb.dtb
+dtb-$(CONFIG_PPA8548) += ppa8548.dtb
+dtb-$(CONFIG_GE_IMP3A) += ge_imp3a.dtb
+dtb-$(CONFIG_MVME2500) += mvme2500.dtb
+
+# MPC86xx platforms
+dtb-$(CONFIG_GEF_SBC310) += gef_sbc310.dtb
+dtb-$(CONFIG_GEF_SBC610) += gef_sbc610.dtb
+dtb-$(CONFIG_GEF_PPC9A) += gef_ppc9a.dtb
+dtb-$(CONFIG_MVME7100) += mvme7100.dtb

---
base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
change-id: 20260101-mpc83xx-dtb-23d98a190e23

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



