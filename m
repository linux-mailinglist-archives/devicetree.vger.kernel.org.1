Return-Path: <devicetree+bounces-266430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eN0UMTq+lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:27:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B356156A15
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ACB403069DC1
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43C831A551;
	Wed, 18 Feb 2026 13:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="tTh3kbEs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay72-hz1.antispameurope.com (mx-relay72-hz1.antispameurope.com [94.100.133.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C792D3ED1
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421106; cv=pass; b=mxL+NXuZZEW/hoep0Mlx+kI8snlckqujdpNdXVAL1OahFptlaU1hz6TV52CVjYS6EWKuyoV5LPrvSzxue2sehl3WQ7rqehsJf/tmG9Ilo3QWiBKn0EfUhdmzgipMBa7oHLmaxtDWuzBm6h1t+NBozkLWcpkQcQ9wQqseeq++GUM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421106; c=relaxed/simple;
	bh=rSPbM5+Rb3I1xzzbNQ/UovTcKhQaTCFQZgGkBjh1434=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YMwkaO1ssq/GKuRCDiF1VI8/HhW+OGPr0t++5z+4IQNOAvcnabRKVgqkuHUD8pEkpoXffY8bWOBjyXwrggUT0/aAjgoD+kpjYdNRc09FlMvWleq0hrWB1Fy0Aq1Uo1qmNsBzdHk+fUeNnEQNa/RyWwSFAoANsBjk8KD0SAg0cfE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=tTh3kbEs; arc=pass smtp.client-ip=94.100.133.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate72-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=26hFcz4YFdUZ64qcDiMi0nzQrtZxfOFCZaOcVUH9w7M=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421029;
 b=YnCvwOemYgq2OscCcDYhcAsoiGdQ2rR1FnNo/5d2UcjHZuV5Ddoa5kpAiekNeXTcD/3LRUo4
 RVc3d/XBkcJrwnsmeaqNjkfNiyJjqOdV0toFQ9zGbR4tDd5iIe+4LzBUP5Hh1uC4UYfVt2jHRl+
 HHfDiZ6oSNROBN+NE0FPoRjkshIRdJGqAbCMvFBquygBL4tLuAyY4HouMqAnxasVbxaB0jeChGb
 dY+7hse0igmhyeAS+qy4tW8I/TC069pohsJXYNTca21lmehsOUKMBW1rjLmd2mRzsslsHBloae6
 HBVN7n7FZAaJr+uw/ayr68YteSHUEgxqenY8jr8Av7lpQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421029;
 b=HGr12a8RTZuhN1a6q7kUqtc+RfSt1hrMWTPMq/9bQCDkaXLAhQvJjIs84aiLZmyTzwlnFDRB
 71gS+GDzi64JdRFEKmaA7/MVmy8uZihjsoMDMbmQdJBKMfkGcllnG0JKNj/KNfRN2jynv0hJxUt
 G0yHNvKnicvWsCItwtmGbDJsPCBlDC2PFy8CWmqJnLUeVaykSP3zYtsznHMI7i1uZssso2j4DrA
 AWFharwgiLvJ38K9tYbavTLscMMgTGmNjC7X13CJ4Go+NwIZNGa9nqLt6WMSkJ++u0Sp+RAvTDd
 YHAQlsoDXTCZY2mkzbUD4REQqf4AD7VyRmYwXs4ypNddg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay72-hz1.antispameurope.com;
 Wed, 18 Feb 2026 14:23:49 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D060B220568;
	Wed, 18 Feb 2026 14:23:42 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] ARM: dts: TQMa6UL: modify for use in bootloaders
Date: Wed, 18 Feb 2026 14:23:33 +0100
Message-ID: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay72-hz1.antispameurope.com with 4fGHJv3yZYz2PVB4
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:0bafeb34a22a86651aa13410244c885a
X-cloud-security:scantime:1.972
DKIM-Signature: a=rsa-sha256;
 bh=26hFcz4YFdUZ64qcDiMi0nzQrtZxfOFCZaOcVUH9w7M=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421029; v=1;
 b=tTh3kbEsDIt+aMF2TSGSnB3yokkXGBquKTf7w7TcucyxE9Rxomrk8W//AtTPurgULM/Z+myS
 XKemMXgeVOmiuB+qNg7MkW/CpqX4nTpJyUPqpc4+Gg9UeiiHGc5JwjD1NZ249ee77+kjLnTX35B
 VvPq4eyz5lsSbadJWcgzl+vd1Y1cv1zAYtqgRshfvINNZ/KtITTVZnVyL7g1vvspo0AgmQx9GRB
 eGxXt5ntJfUBIpjLWx4e+Rdx0r6dUmY27JotZWeX9IIAz7ySQLRrNhchjicVzyrJy+A5Eh789Gc
 VNLkm0C44j3CDUAk8cPN+VwgQjELzRUCIkDlTrfb11FAg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266430-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 4B356156A15
X-Rspamd-Action: no action

This series contains modifications for using Linux device trees
in bootloaders. Changes from U-Boot bootloader are incorporated
directly into the Linux device trees.

Max Merchel (4):
  ARM: dts: imx6ul/imx6ull: add boot phase properties
  ARM: dts: imx6ul[l]-tqma6ul[l]: add boot phase properties
  ARM: dts: mba6ulx: add boot phase properties
  ARM: dts: tqma6ul[l]: correct spelling of TQ-Systems

 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi   | 10 ++++++++++
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2.dtsi         |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l.dtsi        |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulx-common.dtsi  |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulxl-common.dtsi |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ul.dtsi                  |  6 ++++++
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi       |  1 +
 .../boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts    |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi      |  3 ++-
 arch/arm/boot/dts/nxp/imx/imx6ull.dtsi                 |  1 +
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi                 |  6 ++++++
 12 files changed, 33 insertions(+), 4 deletions(-)

-- 
2.43.0


