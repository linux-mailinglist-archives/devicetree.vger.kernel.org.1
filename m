Return-Path: <devicetree+bounces-239345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEC5C64208
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 064564F2AEF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CBF32D431;
	Mon, 17 Nov 2025 12:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="PBURfvh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay15-hz2.antispameurope.com (mx-relay15-hz2.antispameurope.com [83.246.65.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B3732E6B5
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.157
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383089; cv=pass; b=erIqnXHgmq6Sc9aPIA795Bx02tiTUBgEDAQuA61vd12cG62hTOpByq/khFPYuNLV9jMr26unwujHDmHk/oxm/+OfhvVYec9J7IdeT46IeiEZZ53qWibGJg8nyTx0m9WVlSiPF0ajjI2NYji2RekHvdzdoBc3KTO2QPumycNyPis=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383089; c=relaxed/simple;
	bh=0FkXnnFLmOfEqTXhxucbtGEaFIfg84EOcO1xc43LJ4U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lkyw4Koc+KNQH/ULKD5i5SaCSallKhUIL0tAzTvL8W3/bTE5evO1RMAvcFlory1exuOQJPtQK+CnR/iMK2JZPnkp8STis80Vj6M/R4t2ycTedMBOeTPesuekVdnnLKJ/FDIRrxnJy2eThK95lFMt6T83/bHaN/qgnMIh4fwV5Ck=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=PBURfvh/; arc=pass smtp.client-ip=83.246.65.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate15-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=+xF4bO/fTs8QrjNJoxW4GipCjwad45AsUDQqmvp/V/s=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383015;
 b=ZBfhxjqjMEWD4LEe3CQj67soNcb7ovjyfZvPrlb1eLhhU5WCYmpb1fthuhebR18CfcGo1W1t
 /BD3hq9CnAMDBu4v9utyZHwOx+2AfVApLOOxfV/wOGdaEkE/fUZ/9juESBuATLs4GR6W8o67qc6
 hxHClqLH57J1Vau8b1DeUWz+VrcE/Z7ilWaZHL2gDhIlI7DIG88CSiWxVsy5d6wSNvvFWHCjwqp
 3wa4CxvoQir88QkXMrZHvvGQ2lhqzCpRiEKc4DUZTBcmXp2IDbKL9aabkhIM9P0TrYaDUMC5l/V
 9ShnTqPOTZhrWuwC6hksf91uMnzuxlgF+gcztm1FbSXrA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383015;
 b=iEkwUIWZJ782FUP5Qp+dPdQ6oponRml/rkXMN82TLqPjeDEe511li88u8sKutdtdne7auQs3
 uV6zHuQQ8dBG8tHXrjv8sG8mvVXPcru7HDOHRLRQ/pR1BIqqif5g1Q3d6lNI/rDPKIHwJ5gOw29
 g0dpajb3Ky7ymWahhYi2D/x+OvhCQoQ6AXl4CTeWQ1c+QIuYwSuXxGm9MAMK5BdAHLGL8XdVPQ5
 e2xQ+RrVLq2o1gioRJAgTzf9/CnHZz+YxwFAIb3kUHvy0VZ3uB4MeMaQpUCtXsVFoug+V1i8wGk
 JUHNgmq1fvvVikN45XPaDI4KXsR2XgGbEC7fIh/OaoF1g==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay15-hz2.antispameurope.com;
 Mon, 17 Nov 2025 13:36:55 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 1F7C8CC0DBA;
	Mon, 17 Nov 2025 13:36:48 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	Richard Cochran <richardcochran@gmail.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 0/8] TQMa8MPxL DT fixes
Date: Mon, 17 Nov 2025 13:36:27 +0100
Message-ID: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay15-hz2.antispameurope.com with 4d96gh6p7Dz2FbSG
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:328a4f074a2d613aa025241cbcc29309
X-cloud-security:scantime:1.739
DKIM-Signature: a=rsa-sha256;
 bh=+xF4bO/fTs8QrjNJoxW4GipCjwad45AsUDQqmvp/V/s=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383015; v=1;
 b=PBURfvh/sodEwRswmsU5SLuW1uOePtsstytyWXwvIRqtuStvlkw7upA2wBRlJJ/iVX680BGR
 snn8IAR/dcusUvVp3kH6gVKIS7HPNHXT9FWccrzUuCHj3D2pD/L1U73KMhhRHYNLJBIe2n8L/mM
 gq3HRhjtQB9ZzhmcIOI0UrjITCZI0J1EwcA11kGLCERCHtjhBwjVVBQSijGvnm8fhGuZ4sjNV3G
 tILKTsXwMmFpn9vRHcaEMdhbreRL+OWUikJgWO2sFXeEjOwyeNzzIZXNjZvNQq+kBdr5BEcISrX
 lNXlWXeW4p6TWXzdSP9pyyoj9HE3hHqPSZba5uazUUNag==

Hi,

this seris includes small fixes for TQMa8MPxL both on MBa8MPxL and
MBa8MP-RAS314. The ethernet IRQ type has been changed to level-low and CEC
pad configuration has been fixed to use open-drain output.
For both boards the HDMI audio output support has been added as well as
the ENET event2 signal on MBa8MPxL, which can be enabled using
/sys/class/ptp/ptp1/period.

Best regards,
Alexander

Alexander Stein (8):
  arm64: dts: tqma8mpql-mba8mpxl: Adjust copyright text format
  arm64: dts: tqma8mpql-mba8mpxl: Fix Ethernet PHY IRQ support
  arm64: dts: tqma8mpql-mba8mpxl: Fix HDMI CEC pad control settings
  arm64: dts: tqma8mpql-mba8mpxl: Add HDMI audio output support
  arm64: dts: tqma8mpql-mba8mpxl: Configure IEEE 1588 event out signal
  arm64: dts: tqma8mpql-mba8mp-ras314: Fix Ethernet PHY IRQ support
  arm64: dts: tqma8mpql-mba8mp-ras314: Fix HDMI CEC pad control settings
  arm64: dts: tqma8mpql-mba8mp-ras314: Add HDMI audio output support

 .../imx8mp-tqma8mpql-mba8mp-ras314.dts        | 21 ++++++++++++--
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 29 +++++++++++++++----
 2 files changed, 41 insertions(+), 9 deletions(-)

-- 
2.43.0


