Return-Path: <devicetree+bounces-321040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oSroNQeKS2pVVAEAu9opvQ
	(envelope-from <devicetree+bounces-321040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:57:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6356D70F8B3
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:57:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oOshVJ1q;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321040-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321040-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8358B33043BB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 10:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C24F40D57C;
	Mon,  6 Jul 2026 09:59:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3293F9A11;
	Mon,  6 Jul 2026 09:59:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783331978; cv=none; b=K0jAShCMgAJNbgsgzF6lI7ehUPkD7UuVwBIehKvkyXs/3JKI+QVJ6OrqU+AOIHzt2n26BQULYqbyVAgHFUhyYFrWbMG2mOk/u/CxTG4tQno1n72p0LSCWxOXwa5Wym0LfR3ToW5i29WgTcxc6HlGVPAfBv31g7hRsdRhlANLK1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783331978; c=relaxed/simple;
	bh=++0GBKleTfV6ePyyUDYXEuXYbfm0CzyWy9dEfAvmNCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YbgTscn5oK9P7vYEWspMC3Vpci2+aDs4ERY2DAEyPV9gglC3SmQnu2zYS4K/Osrct4ENtXrs7Gmhi2PmN/00v9w1AtlbyE7L+2lewYko2O4JsnxT5bPhoP592OrvAOV1FVv1qYlItaw3j76h0fr3NlRu5LpaZfqa2AeWwVvOtXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOshVJ1q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 47687C2BCFA;
	Mon,  6 Jul 2026 09:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783331978;
	bh=++0GBKleTfV6ePyyUDYXEuXYbfm0CzyWy9dEfAvmNCM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=oOshVJ1q2vOYfoIlReT0dBLpJJvvfpaIChKz8OCpoQ3IBxwRHc3SxLFg2Q6D0depN
	 IYGPD03Z4NA1KyQ19FySrX1KBG5YrFqNZngQxDXC4oV6u9C9PtexLG8AzbwPzHi6W/
	 lI4qJzTP3qAX1VsPKnchheXUNtWBokM8hJBgAvqTZEVYxFlk9idmaiMBlQlV9p9PDL
	 LvgI/7OPasBhCyX+UhVnYNVl4YNmxz0nQUO5MRkLaoycDo3lJVJHDABy2sx4aD7FvG
	 hMfHTe0c/oEQfkLgpw9LbdjXkQduN4cte1mcuU5k9otyO6pvzVKRPsiiUmBfzVupRX
	 pMAoDK9hfWNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C225C43602;
	Mon,  6 Jul 2026 09:59:38 +0000 (UTC)
From: Jia Wang via B4 Relay <devnull+wangjia.ultrarisc.com@kernel.org>
Date: Mon, 06 Jul 2026 17:58:51 +0800
Subject: [PATCH v2 3/3] PCI: ultrarisc: allow DP1000 driver to build as
 module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-ultrarisc-pci-clk-v2-3-2f3fb6fba66b@ultrarisc.com>
References: <20260706-ultrarisc-pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com>
In-Reply-To: <20260706-ultrarisc-pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com>
To: Xincheng Zhang <zhangxincheng@ultrarisc.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jia Wang <wangjia@ultrarisc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783331975; l=1255;
 i=wangjia@ultrarisc.com; s=20260515; h=from:subject:message-id;
 bh=Tis/JJyXExoBJp3CwIeeec8uXLx/jp/sC+yiinpaepI=;
 b=aL9+qmOJDB07rLN9IJHnnPHgX/+ZZ7+1+m+87dLW8NcDO1rB/bi2esZnu8AUHTNyNrf46xSuf
 Rfjb3B8Q3bRClC1f2IoZ3u3212T5Utgx7E6V+FgyyIl6bikCE5nNHI/
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=wGVm18siRScehKOkOz0WKxgxDy7IezHEszhnN4/TUCY=
X-Endpoint-Received: by B4 Relay for wangjia@ultrarisc.com/20260515 with
 auth_id=779
X-Original-From: Jia Wang <wangjia@ultrarisc.com>
Reply-To: wangjia@ultrarisc.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:zhangxincheng@ultrarisc.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:wangjia@ultrarisc.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-321040-lists,devicetree=lfdr.de,wangjia.ultrarisc.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[wangjia@ultrarisc.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ultrarisc.com:replyto,ultrarisc.com:mid,ultrarisc.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6356D70F8B3

From: Jia Wang <wangjia@ultrarisc.com>

CONFIG_PCIE_ULTRARISC is a tristate option, so the driver can be selected
as a module when COMPILE_TEST or platform configuration allows it.  Using
builtin_platform_driver() leaves the module build without the module
init/exit plumbing and causes modpost failures for the generated .ko.

Use module_platform_driver() so the driver works for both module and
built-in builds while keeping the existing tristate Kconfig entry.

Fixes: 5fc35740c3b3 ("PCI: ultrarisc: Add UltraRISC DP1000 PCIe Root Complex driver")
Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
---
 drivers/pci/controller/dwc/pcie-ultrarisc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-ultrarisc.c b/drivers/pci/controller/dwc/pcie-ultrarisc.c
index 6ed244770d53..5d226e529b77 100644
--- a/drivers/pci/controller/dwc/pcie-ultrarisc.c
+++ b/drivers/pci/controller/dwc/pcie-ultrarisc.c
@@ -225,7 +225,7 @@ static struct platform_driver ultrarisc_pcie_driver = {
 	},
 	.probe = ultrarisc_pcie_probe,
 };
-builtin_platform_driver(ultrarisc_pcie_driver);
+module_platform_driver(ultrarisc_pcie_driver);
 
 MODULE_DESCRIPTION("UltraRISC DP1000 DWC PCIe host controller");
 MODULE_LICENSE("GPL");

-- 
2.34.1



