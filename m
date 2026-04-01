Return-Path: <devicetree+bounces-283516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iG5qEp0SzWmMZwYAu9opvQ
	(envelope-from <devicetree+bounces-283516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 14:42:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A034037A9CC
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 14:42:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3BB2B3025797
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 12:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B6674035C2;
	Wed,  1 Apr 2026 12:40:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601EB37FF54;
	Wed,  1 Apr 2026 12:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775047211; cv=none; b=Lm47ze5j3rA1TONmAC3/uxr81Pv8t8VK1/WmzSR0b1V0xGbikCZ0g3ZuQ/myQnWBn6I1B9qcsUf89tM+0Ljnj79oZQrLdv66tLLrgC3U6oaStmHp04PU+0/dOqfR6ctfp5uDxB8Vocbh2/qFfQnMBbreZc9gqo/qM65Aw98fNUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775047211; c=relaxed/simple;
	bh=TqZmibG656/Dw7SSLOyBsK6rBiKfgmk0TmwKP92WD34=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OvC3rb3Yivpf+ndrO1LQUiifXOsluC9J7BbuPBCq6KO7Xhk8bJa5x4X4/VpgmvW/JUYMpM+MZtTYPNVYVyvV3USnJoZ1xle7UePBwa8GtHkJgm2HL6lvUdNnJgp6pmsA2Hr/R83h+UAwGrQ0RluNnhK92fdIKlON2Oayb+QVObg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.95.185])
	by smtp.qiye.163.com (Hmail) with ESMTP id 392921f84;
	Wed, 1 Apr 2026 20:40:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: gaohan@iscas.ac.cn
Cc: alex@ghiti.fr,
	amadeus@jmu.edu.cn,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	rabenda.cn@gmail.com,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v4 0/3] riscv: dts: spacemit: Add PMIC regulators usb pcie
Date: Wed,  1 Apr 2026 20:40:01 +0800
Message-Id: <20260401124001.3129497-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1774974017.git.gaohan@iscas.ac.cn>
References: <cover.1774974017.git.gaohan@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d490ee1dd03a2kunmd08eb7e351e142
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSklPVkwYTBlISx9LT09CS1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSkNOWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQ
	Y+
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283516-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ghiti.fr,jmu.edu.cn,eecs.berkeley.edu,kernel.org,vger.kernel.org,lists.infradead.org,dabbelt.com,gmail.com,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,jmu.edu.cn:mid]
X-Rspamd-Queue-Id: A034037A9CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

> Changes in v4:
>  - Drop reg_dc_in
>  - Drop vin-supply from reg_vcc_4v
>  - Drop usb3_hub_5v, no device consumer
>  - Drop vdd-supply from USB hub nodes, hub is powered by always-on VCC_5V0

Perhaps it can be declared that the hub is powered by vcc_5v0:

	hub_3_0: hub@2 {
		compatible = "usb5e3,620";
		reg = <0x2>;
		peer-hub = <&hub_2_0>;
        vdd-supply = <&vcc_5v0>;
	};

The vcc5v0_usb30 regulator is required to enable USB VBUS.

Thanks,
Chukun

