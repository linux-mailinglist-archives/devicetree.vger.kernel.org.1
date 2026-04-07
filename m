Return-Path: <devicetree+bounces-285150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKNtMp2r1GmKwQcAu9opvQ
	(envelope-from <devicetree+bounces-285150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 09:00:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC2B3AA918
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 09:00:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 56877300B1A0
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 07:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4B9392812;
	Tue,  7 Apr 2026 07:00:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E5F3921C0;
	Tue,  7 Apr 2026 07:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775545242; cv=none; b=nv1jVd8jF0mUAlSdLIvSBGaIXijaSxYFgZg4pP4+BDpL5ABIGimCRYme2+r+KBEsXbVOCMKpo3dTZqD4smPz+pq7F0GEWm5buqOV5+6jBANnX9es3mXlWjXGbtvohr3UM1e+FI26/QWKGwaBb7CCVktnidrbzQiu88hBP09fQN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775545242; c=relaxed/simple;
	bh=Baq+UbIgzaL4fuwo1eAiTLYHgANmfzRmCPOtKq5siEA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=urOjJEk7XSxUL1nb/oHlNR7OAnktg6pgMB5frNGcsAx8jGyR2fwglSijW/7jnI3jSqzPRKprbzw0DBkyLeaejKzh5RpbQ3II1tv3eQ+AFpLrQsf6BiQKLzGU5CaRuORj2nXEiPwUUJFYlarLW53C/AUltZyoVViX3Je1P4XXK1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.94.42])
	by smtp.qiye.163.com (Hmail) with ESMTP id 39c3690ca;
	Tue, 7 Apr 2026 15:00:28 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: gaohan@iscas.ac.cn
Cc: alex@ghiti.fr,
	amadeus@jmu.edu.cn,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@kernel.org,
	krzk+dt@kernel.org,
	legoll@online.fr,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	rabenda.cn@gmail.com,
	robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v9 3/3] riscv: dts: spacemit: Enable USB3.0/PCIe on OrangePi RV2
Date: Tue,  7 Apr 2026 15:00:22 +0800
Message-Id: <20260407070022.645614-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <dba1428ac649dbc6d3fe4c58f0c6d24bb7432b9f.1775417019.git.gaohan@iscas.ac.cn>
References: <dba1428ac649dbc6d3fe4c58f0c6d24bb7432b9f.1775417019.git.gaohan@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d66be1d2903a2kunm1b4f0c4c66ad55
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHhpKVk4ZTBlITkMaSxgaHVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VT0lZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVUtZBg
	++
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ghiti.fr,jmu.edu.cn,eecs.berkeley.edu,kernel.org,vger.kernel.org,online.fr,lists.infradead.org,dabbelt.com,gmail.com,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-285150-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_SPAM(0.00)[0.252];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,jmu.edu.cn:mid]
X-Rspamd-Queue-Id: 5CC2B3AA918
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

> +	pcie_vcc3v3: regulator-pcie-vcc3v3 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpios = <&gpio K1_GPIO(116) GPIO_ACTIVE_HIGH>;
> +		regulator-name = "pcie_vcc3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;

Please add: `vin-supply = <&vcc_5v0>;`

> +	vcc5v0_usb30: regulator-vcc5v0-usb30 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb30";
> +		enable-active-high;
> +		gpios = <&gpio K1_GPIO(123) GPIO_ACTIVE_HIGH>;

Could you place `regulator-name` under `gpios`?

	vcc5v0_usb30: regulator-vcc5v0-usb30 {
		compatible = "regulator-fixed";
		enable-active-high;
		gpios = <&gpio K1_GPIO(123) GPIO_ACTIVE_HIGH>;
		regulator-name = "vcc5v0_usb30";
		regulator-min-microvolt = <5000000>;
		regulator-max-microvolt = <5000000>;
		vin-supply = <&vcc_5v0>;
	};

> +&pcie1 {
> +	vpcie3v3-supply = <&pcie_vcc3v3>;

Redundant vpcie3v3-supply.

> +	status = "okay";
> };

Thanks,
Chukun

