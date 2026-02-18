Return-Path: <devicetree+bounces-266443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJZCCgbFlWmTUgIAu9opvQ
	(envelope-from <devicetree+bounces-266443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:56:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BD7156E4E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2E0F301CCE6
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DF1328B40;
	Wed, 18 Feb 2026 13:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="XC8yOuoy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F6932939B
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771422898; cv=pass; b=sYYhUilHccQTAQ4WYnoeCEjbNDyAkli8D4F6a3z6L4Fkkyq6DOQFGB9dYwoZg1JGU7OFwdn0TN8lS9OW+AQ2AOjbvhtGt+1k2ape2LJh8GgjgZ8otrXgWnHW62FtfhyyeweOth0g19t/K2jk8/A9vd1txKVP7EAl81MHLTOhfjs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771422898; c=relaxed/simple;
	bh=GkFpwIxd9ZPdwB3wVXiAnilEh1TsSX3EBhlGS1agX6k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dt4iOYpfeT1f7Kn4bke1Y3b6bIek1D6FALXixUT/1lYqc/pWmhGk0VeUn30DJo+eLwO7AhaK1slyhx+WSzUdtGpMQKbwe0A7w8lB4p28BlktOP7E+W4PFDasNxJv/GpGe1VSCk7DtFyd/wqDnnujsSsU1BFqnjUPjel520cyN1k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=XC8yOuoy; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=UZxwDfS1oPS90ifu0h6kKEX5WvdE1VG547kjfsTBm2U=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771422875;
 b=Ibv9MqNTIaUzr7u3XjIDspKsG+/j0M6qBN0MDyekhKePylcNx3mHKTcE7AKtlqt8Fi2jUzs8
 wo8LPc3uTsfsxo2oTNgFbLTa4XNnPVmN0x5rvqtLnHcOm5yhHqF9lmbtXjtfHNVahQ8CuQTSCzV
 cJDSxj61q5WIcYJAYzuGS5fWqBS6/LWgC958Aj0DyNQQne1EPkPu3u0oXtHm6NPxqSUvzUK337e
 Y9XHvLiedXIZyAPGw2IDwOwX6X1fABw2slFi6bpJrFcasdiZr87Kt078fXsXHe18gzEy9ZnBr1J
 Y8tHVhgF+TfgnMTVTtfxGSCmadet30FfL+PeHngvCxK0Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771422875;
 b=q+aYsebpOw6Slj6BpXU0ExQksMHe7y6iwpRC5y1Vw0UbL6VfabNj/wB0JNxMOyeB3vRFfEe+
 Yn562fV3u3UaxgkAVaSFNyx3Lfaqnba3oXMXz7QzjC9rDC5h1A8OhX9l8GpJ3pSoPNStvlebc+q
 i6VB0tBXpqsV/985EJgDvGAA76xM6JMso8idCgu0WmsDgDYPHM95AgTzmGC6u/oGUYvKSw/uVNE
 n++CFYthL//ORh6WMw2JE5xfJz/7PFCVPOp1qIWmhgi1bQd5hU2nQrNzzbcbwGgMYUD40M6sapS
 n3Lk1qIyHa8kOopOf9FivwtPPeGJ3KyFIWVOfV8N/iPlQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Wed, 18 Feb 2026 14:54:34 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 40A72220568;
	Wed, 18 Feb 2026 14:54:26 +0100 (CET)
From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: linux@ew.tq-group.com,
	Alexander Feilke <Alexander.Feilke@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] ARM: dts: TQMa7: modify for use in bootloaders
Date: Wed, 18 Feb 2026 14:54:11 +0100
Message-ID: <20260218135415.204974-1-Alexander.Feilke@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.feilke@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.feilke@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fGJ0M0CGxz3ybFB
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:d82c1795a7bafb33397f842ea10eaabf
X-cloud-security:scantime:2.092
DKIM-Signature: a=rsa-sha256;
 bh=UZxwDfS1oPS90ifu0h6kKEX5WvdE1VG547kjfsTBm2U=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771422874; v=1;
 b=XC8yOuoyxCccAZjr633R8VhrXHEHOQxAo+l6I0UqjMl+UuJbVwjahQQcM2zK/Jb2H531zcPH
 mkp992FcT6lUb2UuPsEtNDGs95z08BSepYNG5dwEgXeR8YpkHyHJVtx0YX19x466e/5rYdL4q0O
 BW9dxeEsEDn488jVyhXlf/VAqPiWd/3zVohbam/jzUW7PyzvGk3886e0ul75QfoRSTcfWVGFyky
 3mMOtChdFmfqMIJQ9fbeWvRJnsrnos5Pqnt/754qPTB+yz4J0QLSmpIHWpTGOfw4LHIXlqEG2jH
 GSb4ZDYBDLtfrnj29RC6/FjznvE/7bB1zkVDqyr6gpADA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266443-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 74BD7156E4E
X-Rspamd-Action: no action

This series contains modifications for using Linux device trees
in bootloaders. Changes from U-Boot bootloader are incorporated
directly into the Linux device trees.


Alexander Feilke (3):
  ARM: dts: imx7s: add boot phase properties
  ARM: dts: tqma7: add boot phase properties
  ARM: dts: imx7-mba7: disable boot_cfg pins after boot

 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi  | 13 +++++++++++++
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi |  2 ++
 arch/arm/boot/dts/nxp/imx/imx7s.dtsi      |  5 +++++
 3 files changed, 20 insertions(+)

-- 
2.43.0


