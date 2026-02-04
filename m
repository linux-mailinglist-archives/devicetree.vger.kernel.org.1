Return-Path: <devicetree+bounces-262688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6P5QBLtSg2mJlQMAu9opvQ
	(envelope-from <devicetree+bounces-262688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:07:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C11E6DE0
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 95E6430254F4
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 14:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD73F40F8C8;
	Wed,  4 Feb 2026 14:06:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7423D4123;
	Wed,  4 Feb 2026 14:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770214005; cv=none; b=Md/oS+tMzP/kHPimfktKxUaSvjWeTo12M6xTX2If4KlgGY7ptUT7HX5fLLLma9NHKQsZW1JbJYDtwjiN6qXKW+A0ZZ9aPjVjPovq/GYER3w7rwupoGglU2bLptvlnb9tCWVpOKYf3lwPefGkSr90uL8dG8RgbXbO325cyKIvx0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770214005; c=relaxed/simple;
	bh=2a2PMz2CFcrYVLKAbwKwcC1JAadEDzIjkq2ccEeYotQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hDldLrVHe+aWdeLKHam1ksafhnQjQEfuxcFKLafYTZXHaRF8lp6svX8uOEepkiKxFh8GTONYd3QXwlJMFao7Ezc4zFX7l4DCH4yVFG5UB/FfDOK0l3qHMyAFadJENr7eFyrymv72yaIlLKoTTDj/8/b5hpIPl/sYt0kpoEvQZ8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [58.61.141.99])
	by smtp.qiye.163.com (Hmail) with ESMTP id 331d6ec47;
	Wed, 4 Feb 2026 22:06:34 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: gaohan@iscas.ac.cn
Cc: alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	rabenda.cn@gmail.com,
	robh@kernel.org,
	spacemit@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 7/7] riscv: dts: spacemit: PCIe and PHY-related updates for OrangePi RV2
Date: Wed,  4 Feb 2026 22:06:19 +0800
Message-Id: <20260204140619.47536-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <677085181a4215c517907f44b363ef7777fd407b.1769895215.git.gaohan@iscas.ac.cn>
References: <677085181a4215c517907f44b363ef7777fd407b.1769895215.git.gaohan@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c28f9f01d03a2kunmc61284e02ceb56
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGEIdVk9KGUpKSh5MTUhDGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVQkJZV1kWGg8SFR0UWUFZT0tIVUpLSElNT0JVSktLVUpCS0
	tZBg++
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262688-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ghiti.fr,eecs.berkeley.edu,kernel.org,vger.kernel.org,gentoo.org,lists.infradead.org,dabbelt.com,gmail.com,lists.linux.dev,jmu.edu.cn];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jmu.edu.cn:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 87C11E6DE0
X-Rspamd-Action: no action

Hi,

> +&combo_phy {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_3_cfg>;
> +};

This pinctrl is clearly incorrect (including BPI-F3).
Checking the schematic reveals that these pins are for CAM_I2C.
By the way, combo_phy connects to USB3, so it should be enabled
in the USB3 patch.

Thanks,
Chukun

