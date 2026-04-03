Return-Path: <devicetree+bounces-284343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JK3BjGLz2mmxAYAu9opvQ
	(envelope-from <devicetree+bounces-284343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 11:41:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DF45F392E71
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 11:41:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D98EF30157C4
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 09:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3A1316197;
	Fri,  3 Apr 2026 09:41:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA8B3B7A8;
	Fri,  3 Apr 2026 09:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775209261; cv=none; b=qCDVcmM1Ouy/TOJeOyUWgz48T4FdmNgN7i15cW/jScghFJBSxeAG9q7NEHCgI9qg9FCBGmnb/GMGM4Ubm247ouwsUAVE4ECVfQvh65rgwsL3biRUE2uEqbTe90pfLulIDerl+f3+cUVaAg/JMQCXgFRdYwNbcBIdUba3k91YacU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775209261; c=relaxed/simple;
	bh=AiBtAdXx3VegFtcSRwvWQvA36OGNPCVim7p8JFQ7feg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aCJyjTICU3zqm6un/IKHcD+9spuy49tjgOPFCb4wEJN/cwYN4I4iQEUhIFPKuIhUJkT6AleAxdliE8PG1jknQQ73Rl407sL1ZO6xLVWgkiAScPshN0subEjfYpSKkpcr+Gkr6jz8GrypiYThRLf5Yal0hYtoVvGDayT61INqC0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.95.185])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3972f1899;
	Fri, 3 Apr 2026 17:40:53 +0800 (GMT+08:00)
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
	robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v5 2/3] riscv: dts: spacemit: Define the P1 PMIC regulators for OrangePi RV2
Date: Fri,  3 Apr 2026 17:40:21 +0800
Message-Id: <20260403094021.229838-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <6376799689e094253fb1dc0e3e27b491be46e9db.1775148159.git.gaohan@iscas.ac.cn>
References: <6376799689e094253fb1dc0e3e27b491be46e9db.1775148159.git.gaohan@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d52b78a2e03a2kunma4e3e7aa59b1ed
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGh9DVh5NTB9IQh5NS08dHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSkNOWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284343-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ghiti.fr,jmu.edu.cn,eecs.berkeley.edu,kernel.org,vger.kernel.org,lists.infradead.org,dabbelt.com,gmail.com,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,jmu.edu.cn:mid]
X-Rspamd-Queue-Id: DF45F392E71
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

> @@ -91,6 +110,94 @@ &i2c8 {
>  	pinctrl-0 = <&i2c8_cfg>;
>  	pinctrl-names = "default";
>  	status = "okay";

Perhaps the previous i2c8 enabling patch could be merged with this one.
For the floating sections, I suggest marking them as "not connected":

```
		regulators {
			buck1 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3450000>;
				regulator-ramp-delay = <5000>;
				regulator-always-on;
			};

			buck2 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3450000>;
				regulator-ramp-delay = <5000>;
				regulator-always-on;
			};

			buck3_1v8: buck3 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <1800000>;
				regulator-ramp-delay = <5000>;
				regulator-always-on;
			};

			buck4_3v3: buck4 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3300000>;
				regulator-ramp-delay = <5000>;
				regulator-always-on;
			};

			buck5: buck5 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3450000>;
				regulator-ramp-delay = <5000>;
				regulator-always-on;
			};

			buck6 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3450000>;
				regulator-ramp-delay = <5000>;
				regulator-always-on;
			};

			aldo1 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3400000>;
				regulator-boot-on;
			};

			aldo2 {
				/* not connected */
			};

			aldo3 {
				/* not connected */
			};

			aldo4 {
				/* not connected */
			};

			dldo1 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3400000>;
				regulator-boot-on;
			};

			dldo2 {
				/* not connected */
			};

			dldo3 {
				/* not connected */
			};

			dldo4 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3400000>;
				regulator-always-on;
			};

			dldo5 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3400000>;
			};

			dldo6 {
				regulator-min-microvolt = <500000>;
				regulator-max-microvolt = <3400000>;
				regulator-always-on;
			};

			dldo7 {
				/* not connected */
			};
		};
```

Thanks,
Chukun

