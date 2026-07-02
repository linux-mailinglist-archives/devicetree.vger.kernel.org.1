Return-Path: <devicetree+bounces-319568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RggDCb22RmpRcAsAu9opvQ
	(envelope-from <devicetree+bounces-319568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:06:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C9E6FC636
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:06:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=tzVMbT8l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319568-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319568-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D2DB13040020
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75BD0386566;
	Thu,  2 Jul 2026 19:05:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10FE384CEA;
	Thu,  2 Jul 2026 19:05:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019111; cv=none; b=bhIlNEh3Nwq0p84/X9riXffepPFbSwNksd8C4etl+aP1GzFpwOBdSK0gN554H3sjQTJ9YNS1brBK0rGAQx8ieZqmQuMUbe0RuO27vGiccoXvdc1HuYVI8S1BCBpkXHCQLsg3gSnqFMc7e9vHhGlVo/gSgNyYQ7h+WrlCfIZYrNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019111; c=relaxed/simple;
	bh=qToBr4ug+3EbYfVYf1VS60e8ezaenLxAN8QUDNbeoV0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cafjc2355jXAcpeGBS4RB6c48tUUi7CMjpPQJKHyji72WQJGnMGyT+KTfYWG9lpG6/CzreGr8qWX8Hn2IZobRLkD5iLwCBPCamzcXFlpMaijlAE8WzyP8Tkw+ABtQ+1TGdhKc5hW1aVBL0kqSBDLW7xgk5eKVaWu2qE3FsGnyWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=tzVMbT8l; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+Oq1SCAGAkg/fhNyb4Dij2RBKiVngEznFtGkk+Zdb+s=; b=tzVMbT8lbygAzCdhc8BqUypZKW
	yg5nCOEQKKL/33FmiKBzgAXdOW69t7yuWKEAeZuvOQxGhc4h0t8KtVW6L8xoAy00o0/gs1rSUEu4g
	sXuSZOMRd82BzkcYMUqJfi62TLAR9HA3bCtl9Fsvh5uwHBifwuUVIqu+xIUPMxTuXGz/wM7wZRJvU
	kB7TNA8sgRO2KkKf4m4reC97uQJf9O2qMb+0Y2g1JsDWJWYd7aF2fvqavcGvNmq/+gipt39Fdfzih
	8OiCRoIV2EILJapHv+K0LFkNh6jUniCQzxcsTagsPzzf00wFRYSUh2eAYsM9YAvvzmrXEaO6tG7ta
	MNWYj1kA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add HINLINK H28K
Date: Thu,  2 Jul 2026 21:04:49 +0200
Message-ID: <178301901910.3838694.10638773555392224178.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610100006.366963-1-amadeus@jmu.edu.cn>
References: <20260610100006.366963-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319568-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:amadeus@jmu.edu.cn,m:heiko@sntech.de,m:robh@kernel.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	HAS_WP_URI(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sntech.de:dkim,sntech.de:email,sntech.de:mid,sntech.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7C9E6FC636


On Wed, 10 Jun 2026 18:00:04 +0800, Chukun Pan wrote:
> The HINLINK H28K is a dual-gigabit SBC based on the RK3528 SoC.
> 
> There is a version that SeeedStudio distributes called LinkStar-H28K.
> It's no different from the HINLINK H28K. The schematic can be found here:
> 
> https://www.hinlink.cn/wp-content/uploads/2024/03/20240428015024130824.pdf
> https://files.seeedstudio.com/wiki/H28K/Open_source/H28K-SCH.zip
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add HINLINK H28K
      commit: dce1f5a78a4f645ec3fae9b45b1453b989d3fc69
[2/2] arm64: dts: rockchip: Add HINLINK H28K
      commit: 145d4af4b204e1fb565a498c6c8f801525cc0a4e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

