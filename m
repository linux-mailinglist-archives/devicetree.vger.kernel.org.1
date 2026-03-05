Return-Path: <devicetree+bounces-271460-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8L4JBtlPqWk14AAAu9opvQ
	(envelope-from <devicetree+bounces-271460-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:41:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E33A20EBAF
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:41:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F279231512A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9634537B01A;
	Thu,  5 Mar 2026 09:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABcqWbOS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F48379999;
	Thu,  5 Mar 2026 09:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772703167; cv=none; b=MXiWBEqdB4tOYZsGZt9W7v0Ssq99+EUn0Htofy76J6RzLe5rRQcXvZy9IGMkJ3JOQA5kcUlWaOIpt1S0vPc4qK3ize5eOqEaU8fNOhnrpuIJLZlBBSRIv8ihYvnmE1V/JsVVLbxZXPb8W5Gq/RLssCmIgDJyblk4am5GGPCcAUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772703167; c=relaxed/simple;
	bh=mbJ3HBPlXWrhbBYodbu197TnT2OBWAnLDHvXWDDJPwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qsRaaCPiodjjZ9l+Y2wiYxXiDLjxbFGoNPanx+yxM7ac1vCt7lDHWCzzPnQSl8CHrP14c8sW/fhYDs8mDyco+q0WQLti/jeNszjJB0Y7D9iwLZDM9Qn7CH0si4/+G+sR7oX+dfBQxGToQADtr2slN2lm16HOvPIN7Nob8BMS91w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABcqWbOS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79E0BC19423;
	Thu,  5 Mar 2026 09:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772703167;
	bh=mbJ3HBPlXWrhbBYodbu197TnT2OBWAnLDHvXWDDJPwE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ABcqWbOSZUzI7Aqy52SFK1Qbdz9m30zVPP2McBopeFPcGGwPLojMczVJ2uCdAkp99
	 +fX0cLv2S80SRDdIrhhL2gtrS1om24lg6Xba53b0+wser4TqmsW/MIarcyTtIcq3Py
	 paYBj9t/7MuKqiTs9h6JDtJhkaVDk6mWlV17H4WIPr9vu6Aaw/iDdn2lPO19Bn7xML
	 X4/F5bXod+y6cxYvTbXLyGdLc4fUabWQBkRbnb9Am7vYJKkpi0mINqW7O8yj9obYfO
	 dsyUky40qPSBtGPpBGxkHoDtC9PshNreFg0fRARFJdoBLhvbcsBT8jOkfaQDPe1h5o
	 txJpIkGvLMlzw==
Message-ID: <6d736f38-bd33-4484-b3f2-bb9391976fe2@kernel.org>
Date: Thu, 5 Mar 2026 10:32:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] powerpc: dts: Build devicetrees of enabled platforms
To: j.ne@posteo.net, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>
References: <20260305-mpc83xx-dtb-v2-1-cdb751458445@posteo.net>
Content-Language: fr-FR
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
In-Reply-To: <20260305-mpc83xx-dtb-v2-1-cdb751458445@posteo.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7E33A20EBAF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271460-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[posteo.net,kernel.org,linux.ibm.com,ellerman.id.au,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chleroy@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,outlook.com:url,posteo.net:email]
X-Rspamd-Action: no action



Le 05/03/2026 à 10:15, J. Neuschäfer via B4 Relay a écrit :
> From: "J. Neuschäfer" <j.ne@posteo.net>
> 
> Follow the same approach as other architectures such as Arm or RISC-V,
> and build devicetrees based on platforms selected in Kconfig. This makes
> it unnecessary to use CONFIG_OF_ALL_DTBS on PowerPC in order to build
> DTB files.
> 
> This makes it easier to use other build and test infrastructure such as
> `make dtbs_check`, and is a first step towards generating FIT images
> that include all the relevant DTBs with `make image.fit`.
> 
> Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> ---
> Changes in v2:
> - Use "dtb-$(FOO) += foo.dtb" format on every line, avoid backslashes
>    (suggested by Geert Uytterhoeven)
> - Link to v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fr%2F20260119-mpc83xx-dtb-v1-1-522f841290bf%40posteo.net&data=05%7C02%7Cchristophe.leroy%40csgroup.eu%7C9264db0cd3014d5c30c608de7a97cd4c%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639082989567825654%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=QS4N0muz5oPD3WzZQE3FsF5ghDDu9PSJ79iA5R%2FAd3w%3D&reserved=0
> ---
>   arch/powerpc/boot/dts/Makefile     | 111 +++++++++++++++++++++++++++++++++++++
>   arch/powerpc/boot/dts/fsl/Makefile |  79 ++++++++++++++++++++++++++
>   2 files changed, 190 insertions(+)
> 
> diff --git a/arch/powerpc/boot/dts/Makefile b/arch/powerpc/boot/dts/Makefile
> index 0cd0d8558b475c..7fce8c819d3d72 100644
> --- a/arch/powerpc/boot/dts/Makefile
> +++ b/arch/powerpc/boot/dts/Makefile
> @@ -3,3 +3,114 @@
>   subdir-y += fsl
>   
>   dtb-$(CONFIG_OF_ALL_DTBS) := $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
> +
> +# PPC44x platforms
> +dtb-$(CONFIG_PPC44x_SIMPLE) += arches.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += bamboo.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += bluestone.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += glacier.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += eiger.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += katmai.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += rainier.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += redwood.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += sequoia.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += taishan.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += yosemite.dtb
> +dtb-$(CONFIG_PPC44x_SIMPLE) += icon.dtb

Why so many lines ? You should be able to fit approximaly four per line,

dtb-$(CONFIG_PPC44x_SIMPLE) += arches.dtb bamboo.dtb bluestone.dtb 
glacier.dtb
dtb-$(CONFIG_PPC44x_SIMPLE) += eiger.dtb katmai.dtb rainier.dtb redwood.dtb
dtb-$(CONFIG_PPC44x_SIMPLE) += sequoia.dtb taishan.dtb
  yosemite.dtb icon.dtb

> +dtb-$(CONFIG_EBONY) += ebony.dtb
> +dtb-$(CONFIG_SAM440EP) += sam440ep.dtb
> +dtb-$(CONFIG_WARP) += warp.dtb
> +dtb-$(CONFIG_ISS4xx) += iss4xx.dtb
> +dtb-$(CONFIG_ISS4xx) += iss4xx-mpic.dtb

Same here, one line is possible.

> +dtb-$(CONFIG_CANYONLANDS) += canyonlands.dtb
> +dtb-$(CONFIG_CURRITUCK) += currituck.dtb
> +dtb-$(CONFIG_AKEBONO) += akebono.dtb
> +dtb-$(CONFIG_FSP2) += fsp2.dtb
> +
> +# Embedded 6xx platforms
> +dtb-$(CONFIG_LINKSTATION) += kuroboxHG.dtb
> +dtb-$(CONFIG_LINKSTATION) += kuroboxHD.dtb

Same

> +dtb-$(CONFIG_STORCENTER) += storcenter.dtb
> +dtb-$(CONFIG_PPC_HOLLY) += holly.dtb
> +dtb-$(CONFIG_GAMECUBE) += gamecube.dtb
> +dtb-$(CONFIG_WII) += wii.dtb
> +dtb-$(CONFIG_MVME5100) += mvme5100.dtb
> +
> +# MPC8xx platforms
> +dtb-$(CONFIG_MPC885ADS) += mpc885ads.dtb
> +dtb-$(CONFIG_MPC86XADS) += mpc866ads.dtb
> +dtb-$(CONFIG_PPC_EP88XC) += ep88xc.dtb
> +dtb-$(CONFIG_PPC_ADDER875) += adder875-redboot.dtb
> +dtb-$(CONFIG_PPC_ADDER875) += adder875-uboot.dtb

Same

> +dtb-$(CONFIG_TQM8XX) += tqm8xx.dtb
> +
> +# MPC512x platforms
> +dtb-$(CONFIG_MPC5121_ADS) += mpc5121ads.dtb
> +dtb-$(CONFIG_MPC512x_GENERIC) += mpc5125twr.dtb
> +dtb-$(CONFIG_MPC512x_GENERIC) += ac14xx.dts

Same

> +dtb-$(CONFIG_PDM360NG) += pdm360ng.dtb
> +
> +# MPC5200 platforms
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += a3m071.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += a4m072.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += charon.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += cm5200.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += digsy_mtc.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += motionpro.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += mucmc52.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2d.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2d300.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2dnt2.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2i.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o2mnt.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += o3dnt.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += pcm030.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += pcm032.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += tqm5200.dtb
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += uc101.dtb

Same

> +dtb-$(CONFIG_PPC_LITE5200) += lite5200.dtb
> +dtb-$(CONFIG_PPC_LITE5200) += lite5200b.dtb

Same

> +dtb-$(CONFIG_PPC_MEDIA5200) += media5200.dtb
> +
> +# MPC82xx platforms
> +dtb-$(CONFIG_EP8248E) += ep8248e.dtb
> +dtb-$(CONFIG_MGCOGE) += mgcoge.dtb
> +
> +# MPC83xx platforms
> +dtb-$(CONFIG_MPC830x_RDB) += mpc8308rdb.dtb
> +dtb-$(CONFIG_MPC830x_RDB) += mpc8308_p1m.dtb

Same

> +dtb-$(CONFIG_MPC831x_RDB) += mpc8313erdb.dtb
> +dtb-$(CONFIG_MPC831x_RDB) += mpc8315erdb.dtb

Same

> +dtb-$(CONFIG_MPC832x_RDB) += mpc832x_rdb.dtb
> +dtb-$(CONFIG_MPC834x_ITX) += mpc8349emitx.dtb
> +dtb-$(CONFIG_MPC834x_ITX) += mpc8349emitxgp.dtb

Same

> +dtb-$(CONFIG_ASP834x) += asp834x-redboot.dtb
> +dtb-$(CONFIG_MPC836x_RDK) += mpc836x_rdk.dtb
> +dtb-$(CONFIG_KMETER1) += kmeter1.dtb
> +dtb-$(CONFIG_MPC837x_RDB) += mpc8377_rdb.dtb
> +dtb-$(CONFIG_MPC837x_RDB) += mpc8378_rdb.dtb
> +dtb-$(CONFIG_MPC837x_RDB) += mpc8379_rdb.dtb
> +dtb-$(CONFIG_MPC837x_RDB) += mpc8377_wlan.dtb

Same

> +
> +# MPC85xx platforms
> +dtb-$(CONFIG_STX_GP3) += stx_gp3_8560.dtb
> +dtb-$(CONFIG_STX_GP3) += stxssa8555.dtb

Same

> +dtb-$(CONFIG_TQM85xx) += tqm8540.dtb
> +dtb-$(CONFIG_TQM85xx) += tqm8541.dtb
> +dtb-$(CONFIG_TQM85xx) += tqm8548.dtb
> +dtb-$(CONFIG_TQM85xx) += tqm8548-bigflash.dtb
> +dtb-$(CONFIG_TQM85xx) += tqm8555.dtb
> +dtb-$(CONFIG_TQM85xx) += tqm8560.dtb

Same

> +dtb-$(CONFIG_SOCRATES) += socrates.dtb
> +dtb-$(CONFIG_KSI8560) += ksi8560.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xcalibur1501.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xpedite5200.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xpedite5200_xmon.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xpedite5301.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xpedite5330.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xpedite5370.dtb

Same

> +
> +# Misc. platforms
> +dtb-$(CONFIG_PPC_MICROWATT) += microwatt.dtb
> +dtb-$(CONFIG_AMIGAONE) += amigaone.dtb
> +dtb-$(CONFIG_PPC_PS3) += ps3.dtb
> diff --git a/arch/powerpc/boot/dts/fsl/Makefile b/arch/powerpc/boot/dts/fsl/Makefile
> index d3ecdf14bc42e7..9fd0badd89f198 100644
> --- a/arch/powerpc/boot/dts/fsl/Makefile
> +++ b/arch/powerpc/boot/dts/fsl/Makefile
> @@ -1,3 +1,82 @@
>   # SPDX-License-Identifier: GPL-2.0
>   
>   dtb-$(CONFIG_OF_ALL_DTBS) := $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
> +
> +# MPC85xx platforms
> +dtb-$(CONFIG_BSC9131_RDB) += bsc9131rdb.dtb
> +dtb-$(CONFIG_BSC9132_QDS) += bsc9132qds.dtb
> +dtb-$(CONFIG_C293_PCIE) += c293pcie.dtb
> +dtb-$(CONFIG_MPC8536_DS) += mpc8536ds.dtb
> +dtb-$(CONFIG_MPC8536_DS) += mpc8536ds_36b.dtb
> +dtb-$(CONFIG_MPC85xx_DS) += mpc8544ds.dtb
> +dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds_camp_core0.dtb
> +dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds_camp_core1.dtb
> +dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds_36b.dtb
> +dtb-$(CONFIG_MPC85xx_DS) += mpc8572ds.dtb

Same

> +dtb-$(CONFIG_MPC85xx_MDS) += mpc8568mds.dtb
> +dtb-$(CONFIG_MPC85xx_MDS) += mpc8569mds.dtb
> +dtb-$(CONFIG_MPC85xx_MDS) += p1021mds.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020mbg-pc_32b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020mbg-pc_36b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb_36b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_32b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_36b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_camp_core0.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pc_camp_core1.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020rdb-pd.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020utm-pc_32b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1020utm-pc_36b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1021rdb-pc_32b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1021rdb-pc_36b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1024rdb_32b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1024rdb_36b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1025rdb_32b.dtb
> +dtb-$(CONFIG_MPC85xx_RDB) += p1025rdb_36b.dtb

Same

> +dtb-$(CONFIG_P1010_RDB) += p1010rdb-pa_36b.dtb
> +dtb-$(CONFIG_P1010_RDB) += p1010rdb-pa.dtb
> +dtb-$(CONFIG_P1010_RDB) += p1010rdb-pb_36b.dtb
> +dtb-$(CONFIG_P1010_RDB) += p1010rdb-pb.dtb

Same

> +dtb-$(CONFIG_P1022_DS) += p1022ds_32b.dtb
> +dtb-$(CONFIG_P1022_DS) += p1022ds_36b.dtb

Same

> +dtb-$(CONFIG_P1022_RDK) += p1022rdk.dtb
> +dtb-$(CONFIG_P1023_RDB) += p1023rdb.dtb
> +dtb-$(CONFIG_PPC_P2020) += p2020ds.dtb
> +dtb-$(CONFIG_PPC_P2020) += turris1x.dtb

Same

> +dtb-$(CONFIG_TWR_P102x) += p1025twr.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += b4420qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += b4860qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += cyrus_p5020.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += kmcent2.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += kmcoge4.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += oca4080.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += p2041rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += p3041ds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += p4080ds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += p5020ds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += p5040ds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1023rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1024qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1024rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1040d4rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1040qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1040rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1040rdb-rev-a.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1042d4rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1042qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1042rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t1042rdb_pi.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t2080qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t2080rdb.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t2081qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t4240qds.dtb
> +dtb-$(CONFIG_CORENET_GENERIC) += t4240rdb.dtb

Same

> +dtb-$(CONFIG_PPA8548) += ppa8548.dtb
> +dtb-$(CONFIG_GE_IMP3A) += ge_imp3a.dtb
> +dtb-$(CONFIG_MVME2500) += mvme2500.dtb
> +
> +# MPC86xx platforms
> +dtb-$(CONFIG_GEF_SBC310) += gef_sbc310.dtb
> +dtb-$(CONFIG_GEF_SBC610) += gef_sbc610.dtb
> +dtb-$(CONFIG_GEF_PPC9A) += gef_ppc9a.dtb
> +dtb-$(CONFIG_MVME7100) += mvme7100.dtb
> 
> ---
> base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
> change-id: 20260101-mpc83xx-dtb-23d98a190e23
> 
> Best regards,


