Return-Path: <devicetree+bounces-261564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Gka+Gpg4f2mglwIAu9opvQ
	(envelope-from <devicetree+bounces-261564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:27:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 12056C5BD3
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47637300D916
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 11:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B60C5324B10;
	Sun,  1 Feb 2026 11:27:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E33EBF07;
	Sun,  1 Feb 2026 11:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769945231; cv=none; b=j6Kit+yPImY4I7jm5dAxF05DXXWSFtpYftYi1nUg1K40z2+r57kJq8HKj6tPc5q4WaMV6MkVjNpydmEpgs+f8zpelMpOgtB0k4vxQDZh6GZMxULkI4snj+Af8zClDHQdid8sT1ogiudBKsV7qJWFJzPEb2GUxLeCdbs2p+GT/2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769945231; c=relaxed/simple;
	bh=eI0E/QoLO392f2uK1RvS7txPilzfGEGYzqpuKQ6viCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GRztFa4NJjSNNNMXNM5eopj2D20zzRyPThZl69jZmk9d8w3ZsAxKayA55pV6WUaDSact98JjD1oVWPL/JOdCtDofgScdMPHuPDxqeVdbODovv16L+zvoiQSfqePFe/aA8joqUdQ90iYg5tazXey6i1PEd4n1Dtzy/wJ7+tzel9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.27.242])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 0F610341EB5;
	Sun, 01 Feb 2026 11:27:08 +0000 (UTC)
Date: Sun, 1 Feb 2026 19:26:58 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Han Gao <gaohan@iscas.ac.cn>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
	Han Gao <rabenda.cn@gmail.com>
Subject: Re: [PATCH 0/7] riscv: dts: spacemit: Add PMIC regulators usb pcie
Message-ID: <20260201112658-GYA109598@gentoo.org>
References: <cover.1769895215.git.gaohan@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1769895215.git.gaohan@iscas.ac.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RBL_SEM_FAIL(0.00)[172.105.105.114:query timed out];
	TAGGED_FROM(0.00)[bounces-261564-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 12056C5BD3
X-Rspamd-Action: no action

Hi Han,

On 05:38 Sun 01 Feb     , Han Gao wrote:
> This patch series enables the PMIC, voltage regulators, usb and pcie
> for the OrangePi rv2 board.
> 
It's obvious too late for v6.20, besides this series depend on P1 PMIC
patch which haven't settled down.. Guodong is working on v3, see

https://lore.kernel.org/all/CAH1PCMYmK=cenJAvhGdZuh68fwNu-c_JJFpyztZUXvcOTv0YSg@mail.gmail.com/

> Han Gao (7):
>   riscv: dts: spacemit: Enable i2c8 adapter for OrangePi RV2
>   riscv: dts: spacemit: Define fixed regulators for OrangePi RV2
>   riscv: dts: spacemit: Define the P1 PMIC regulators for OrangePi RV2
>   riscv: dts: spacemit: Enable USB3.0 on OrangePi RV2
>   riscv: dts: spacemit: Update PMIC supply properties for OrangePi RV2
>   riscv: dts: spacemit: Add a PCIe regulator for OrangePi RV2
>   riscv: dts: spacemit: PCIe and PHY-related updates for OrangePi RV2
> 
>  .../boot/dts/spacemit/k1-orangepi-rv2.dts     | 235 ++++++++++++++++++
>  1 file changed, 235 insertions(+)
> 
> 
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> prerequisite-patch-id: 32d6acfcb4801407e38510b391407943e9a8ec82
> prerequisite-patch-id: ae644485e1a8ead3fa7a087c8db9062c7acc14ff
> prerequisite-patch-id: 605d537aa0f8387b3523786a875c76b9edfbcbb4
> prerequisite-patch-id: faab9c820ac67de42c40f2c4578bb5b8753fcb71
> prerequisite-patch-id: f9c4643cc99e5b9f1acc9daf1e679b95f81cee73
> prerequisite-patch-id: 50138c8918218ea3b8650999bd558ed6350ed2f2
> prerequisite-patch-id: f8f91e32361cc99c531170c39ed54cd1b3c5997d
> prerequisite-patch-id: 475d1968c0c41895578809410c9bd8fe24997de4
> prerequisite-patch-id: c40f1562f712f04578ef58472840d257a19919fe
> prerequisite-patch-id: e9ef3af6c80187e6f05444704d13212d3beaf40a
> prerequisite-patch-id: 7076909bb4103588b4761d175eca40bce470230f
> prerequisite-patch-id: 0c859b4d131b3360875c795c6148c6176b55fb91
> prerequisite-patch-id: 2ed98dc1ab0f5ed923cc252415c345dc8caf6f17
> prerequisite-patch-id: 1be1a031763fac029076a768f012af31e455be66
> prerequisite-patch-id: 21bb8387c946e050910440e7a7622305d46d946d
> prerequisite-patch-id: f3bdc2c74b230663710086bd770a755d56cb8b9c
> prerequisite-patch-id: ba6a7df5c7a2fa9ce0b8a72a9177e42a4dcdab01
> prerequisite-patch-id: 33fd23112b55b5e6b1e276594826ee454afc1c7e
> prerequisite-patch-id: 009a5aaff0768d90d148eb9d5d999c5098fd6d93
> prerequisite-patch-id: 7e41df07cbce163a689f5dca246b98a0122d1610
> -- 
> 2.47.3
> 

-- 
Yixun Lan (dlan)

