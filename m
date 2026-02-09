Return-Path: <devicetree+bounces-263831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KENHFp2CiWkg+QQAu9opvQ
	(envelope-from <devicetree+bounces-263831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:45:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFFF10C34B
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E014830062D7
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A443525A34F;
	Mon,  9 Feb 2026 06:45:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60492147F9;
	Mon,  9 Feb 2026 06:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770619545; cv=none; b=FJr6sdBd6mvOFnXfwZnAZsbVlN77CjU0UyNqkQV0T8CHr7WgUWCYvTEAtZCOR06/SMeRRa6zRJR5bqecWlgzBfoqMT9hrVMlg1gAqdKM6GCcZ5LOnFTLLyBpemng81uArf3Nvj2FGPBlx8LlSG5ru7yXpwEH1WfAjIJ2oZkM/uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770619545; c=relaxed/simple;
	bh=y/l6+Ija1u/P/FJiwKYRWfvYv/5dwGlqD4ARAsHJFH4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uNTMjv0BiWVCvI/bvAey7ewVgIfhVL5Vl2r/yAr+K78gevj/4vG4NeEkC3bk1yhzoXrwxZbtjEGlsNwlhs3CYGqypSJR86bnKvvJiuSjwtGKr8HCPUP6NSD+ArDNlYEhdvbrrJ5ysuAkj6bwz5sbFblpbjoaroXTIuTjBURfSBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [58.61.141.99])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33912914e;
	Mon, 9 Feb 2026 14:40:25 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: krzk@kernel.org
Cc: amadeus@jmu.edu.cn,
	broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@kernel.org,
	huang.ze@linux.dev,
	krzk+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	spacemit@lists.linux.dev,
	vkoul@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support to K1 USB2 PHY
Date: Mon,  9 Feb 2026 14:40:16 +0800
Message-Id: <20260209064016.1176056-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <8c3835c4-3602-4cee-9631-0551b0341918@kernel.org>
References: <8c3835c4-3602-4cee-9631-0551b0341918@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c412143aa03a2kunmf6f2d9044b9dc8
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDS0tDVhlKShhMGUMaH0wdTVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVQkJZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263831-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[jmu.edu.cn,kernel.org,vger.kernel.org,linux.dev,gmail.com,lists.infradead.org,linaro.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.929];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DEFFF10C34B
X-Rspamd-Action: no action

Hi,

> Plus, if this was a vbus regulator it would not be called "phy"...
> Even more confusing.

Sorry, I didn't consider that this naming is confusing. Other
platforms, such as Rockchip's inno-usb2phy driver, use the
"phy-supply" property. I continued with this bad naming.

> Bindings are supposed to be complete regardless what driver does
> (or does not).
>
> You must list all supplies with proper names.
>
> If this regulator was missing, then what else?

(...)

> Please start describing in the bindings your complete hardware, not
> your drivers.

It appears Ze Huang described the vbus-supply property in
spacemit.k1-dwc3.yaml. So I should enable the regulator in
the dwc3-generic-plat driver. Sorry for the noise.

Thanks,
Chukun

