Return-Path: <devicetree+bounces-269785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2I6mECICpWnuyQUAu9opvQ
	(envelope-from <devicetree+bounces-269785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:21:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAA01D2A88
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32457301BF79
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 03:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD062D738F;
	Mon,  2 Mar 2026 03:20:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B8A35966;
	Mon,  2 Mar 2026 03:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772421643; cv=none; b=pUKja2WmU7EAWDcaZQeeaalPA753eFe7xKvNGG5Y+si2t+DUl9vQ48BHlh0iJLPlF8iHht/FZIesWt7BgbP+AlZHdm/DtX9gNvwRg+hjptnLYSrE6ouaRty0XoFH3azV6Z3M7ZkaBBAGxAxTcVUSRJTaCPrwbp5vneVTfe7qqpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772421643; c=relaxed/simple;
	bh=jxtzlMsFJJI3gAHRVmshlhK3zwO8N+vd4+1PWjNXMg4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=md2BHwOd3PY09mUAhyzpnxteKfOkg41UnkSh5Nx5ERAhPSW8n/CPlNVIgwsAnpK5GJugMIolLcrpj1QAu/agYVwXzz+9jboo/lHnDr129uC3f8keG9jT+JNZOBPaQBtzWxi8rD3ndVBwzbT7C7V+q6wwMmBZ+eyWFadycn8Qi80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from Vostro-3710.lan (unknown [IPV6:240e:3b3:2c02:9c10::aae])
	by smtp.qiye.163.com (Hmail) with ESMTP id 355ebdd56;
	Mon, 2 Mar 2026 11:05:19 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: dlan@kernel.org
Cc: alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	elder@riscstar.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	spacemit@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH] riscv: dts: spacemit: pcie: fix missing power regulator
Date: Mon,  2 Mar 2026 11:05:11 +0800
Message-Id: <20260302030511.30566-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226-k1-pcie-fix-pwr-v1-1-94b493cd27e5@kernel.org>
References: <20260226-k1-pcie-fix-pwr-v1-1-94b493cd27e5@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cac81e3c503a2kunm810cb4777326d4
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGkxJVh4aQx4eS0wYTx5KSlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtJQUIYSktBQRoaHllXWRYaDxIVHRRZQVlPS0hVSktJQk
	1LSlVKS0tVS1kG
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-269785-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,jmu.edu.cn:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9FAA01D2A88
X-Rspamd-Action: no action

Hi,

> &pcie1_port {
>  	phys = <&pcie1_phy>;
> +	vpcie3v3-supply = <&pcie_vcc_3v3>;
>  };
> 
>  &pcie1 {
> @@ -320,6 +321,7 @@ &pcie2_phy {
> 
>  &pcie2_port {
>  	phys = <&pcie2_phy>;
> +	vpcie3v3-supply = <&pcie_vcc_3v3>;
>  };

```
&pcie1 {
	vpcie3v3-supply = <&pcie_vcc_3v3>;
	status = "okay";
};
```

According to DT binding, the vpcie3v3-supply of the &pciex node should
be moved to the &pciex_port node. This is simply a duplication of the
property.

But do we really need this pcie_port (PCIe bridge)?

The PCIe bridge node (pcie@0) was treated as a platform device, but it
did not define the interrupts property, which resulted in the following
warning: `[    2.897980] irq: no irq domain found for pcie@0 !`

Would it be better to submit a patch to remove this pcie_port?

```
-       ret = k1_pcie_parse_port(k1);
-       if (ret)
-               return dev_err_probe(dev, ret, "failed to parse root port\n");
+       k1->phy = devm_phy_get(dev, "pcie-phy");
+       if (IS_ERR(k1->phy))
+               return dev_err_probe(dev, PTR_ERR(k1->phy), "missing PHY\n");
```

I have tested this change and it works.

Thanks,
Chukun

