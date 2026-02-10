Return-Path: <devicetree+bounces-264246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHmxM5HXimnrOAAAu9opvQ
	(envelope-from <devicetree+bounces-264246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:00:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7BE117981
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 53C1C300C0F2
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0540432ED21;
	Tue, 10 Feb 2026 07:00:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027801D6193;
	Tue, 10 Feb 2026 07:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770706829; cv=none; b=q5E+H0a28zg9HKWJm3CrLocKHnXlPASgFg4AtCUYsA0rTlXuGskhY61naMMC4e71nJ0POdw0ID9agxS/VZ5kMc2VjvSApHc+yd73i+tKwoA5g9+doszzH/oiRunJ/qwmm92acmryiuwmdMFUO12Md8oY7AKiMWj+hXyFa0qKw0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770706829; c=relaxed/simple;
	bh=D3kEAEt3N6vKWz4crcjlxWDxne0p0vAcw3BldFPSjrc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=huD5yTRVTgbsdX56AWGEenhkRyjaHcqzeV8s1KAzkYFqHTqbQ03GwKVOfbpYxLwZcpSuZpJBGuNCBRPI5KEXdxiRBrUbCByZqAILntny51G2vx6Vnfgl+elLkfIt1Nrhc6IBjEF+tuOM8TWcuLehyRyRhGM3IEyMTFbUMHOt2ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [58.61.141.99])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33b43ff1f;
	Tue, 10 Feb 2026 15:00:16 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: huang.ze@linux.dev
Cc: amadeus@jmu.edu.cn,
	broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@kernel.org,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	spacemit@lists.linux.dev,
	vkoul@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support to K1 USB2 PHY
Date: Tue, 10 Feb 2026 15:00:09 +0800
Message-Id: <20260210070009.46040-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <DGB1P3K6I14J.1QCMDY84ZR7ZH@linux.dev>
References: <DGB1P3K6I14J.1QCMDY84ZR7ZH@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c4659ce3303a2kunm2c116fa0524a63
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaT0wYVhlLHh9MH0IYHUtLTFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVQkJZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0pVSktLVUtZBg
	++
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[jmu.edu.cn,kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,linaro.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-264246-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2F7BE117981
X-Rspamd-Action: no action

Hi,

> > It appears Ze Huang described the vbus-supply property in
> > spacemit.k1-dwc3.yaml.
> >
> > So I should enable the regulator in the dwc3-generic-plat driver.
>
> No, we will enable regulator at port level.

Since dt-bindings (spacemit.k1-dwc3.yaml) already describes the
vbus-supply property, why can't it be implemented in the dwc3 driver?

> Previously, the VBUS regulator was defined as regulator-always-on
> in the device tree as a workaround.

I don't like this workaround because we can control the VBUS regulator
through the USB PHY driver or the USB Controller driver. These are widely
implemented in other similar drivers.

Regarding port level, few manufacturers use different VBUS supplies
for the ports coming out of the USB hub, such as the ArmSoM Sige1 board.
Most boards use the same VBUS for a single USB socket, so I don't quite
understand why we need to wait for port level implementation.

Thanks,
Chukun

