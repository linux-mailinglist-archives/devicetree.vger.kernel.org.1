Return-Path: <devicetree+bounces-266979-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBf/Oa9wmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266979-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:33:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7293D1685FD
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95BE130AA454
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E47F25C802;
	Fri, 20 Feb 2026 14:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Jl447ALA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92D5264617
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597907; cv=pass; b=VgoYs2zJ4MdHC8VSRuLwKBV7yWg4qwPY0e7E71BUQs3OJ9y9Z2CJAlNyjisHab/NVkKu5v3rZm/Ww0j0gbPnK02ktQT6bn0guoQHLyFSikxZDqB5dem9zMeSZ1EUoBTuJjruNrCMIQZ4FozkdzJ8ePdUeZ1mX8QF53zbdtXV+fo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597907; c=relaxed/simple;
	bh=UR0qhsOgq/eZkHuVUougHFosvJPvBioheeVjjazTi+M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BBZ0H35IWxvMEkEMo8SZ5ug3vaCqaOvEH17ViAVO4kFV6olFc218+7XIzGdMBNpwH0FJwp1rMZJuuzR2/G9lNImmDRWN3WAueLsJxAjPk0dCUVtikX66vgZ4OZow2w+rlzCef+7lYR5pq95i1I6+LEkrBZR+KsfUDs9WG/c5c4s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Jl447ALA; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=BB7YXaZxdMr/OyB4DMLiNUgJ/jOy4ltGcN2VfVrivUs=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597877;
 b=WzcMOeu+vpJEEFr0WL4Aq9UhP4TZQ/itEZ9SJl15uPpJPWNx8lF9c7yytqJlaagWx5JJ9kUC
 7D8N3NVdHCRlS8AqcTFZobJBohpsLMIIbb0HYw9lOZm2p7Pf2E5y5LvTN/DddnRxFJkfvINiIbM
 Q6TGf5LaCNCSg7EySKHP5+tr2r1ou8iD/qDCdSS/6RtjejkbwWp5Lkv5EMMkoWtmiHcQg/LfSwH
 vwqrn/duMoFahUGcoPHBXJD6ard6HPND1BscLVodMRSMCyZAkw6y2OcBAoj8DSnt/0yVOBb55Il
 gcz/SdHbj1CF1qzIjiHEB065ujgy1FpKzGuM2p5fc+vgg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597877;
 b=YkS1u+oOVNoaE/oRWqPsfYXsxQ1Q6y5vOiBjXdC59XX9z/Oq+Tdvpikqwn4O8DnL0oL5ihCI
 5jqefl8ZXmGTlMsJheQtdUugv0yaErH0ktqFZk8Y9ugF+MlqLFxptWPsI1NzuIWGcXevDny6+J1
 6EgkHrlfKT23uGa+KF15OEDqWaAryZuEFbQTUQqsih1NA6l/sFbS6akFjP50cAhaP4u/Nwx600M
 Dcd5CqD8RzWZDHNedjJss6st9tuvPSVZ0bmBlZRLO5LpSKoKELevw1iw1J5ZqMMh0skJKkBDAP8
 3+AumlWviOfD5zFOIdHKNNPhqSFh9PkQ1T74/8CvUEpzA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Fri, 20 Feb 2026 15:31:17 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C44FA22059B;
	Fri, 20 Feb 2026 15:31:09 +0100 (CET)
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
Subject: [PATCH v2 0/4] ARM: dts: TQMa6UL: modify for use in bootloaders
Date: Fri, 20 Feb 2026 15:31:01 +0100
Message-ID: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4fHXjp3cjnz4MJhF
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:b1566e3922d347dbabbbefc880e0b021
X-cloud-security:scantime:2.493
DKIM-Signature: a=rsa-sha256;
 bh=BB7YXaZxdMr/OyB4DMLiNUgJ/jOy4ltGcN2VfVrivUs=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597876; v=1;
 b=Jl447ALA/6IuJxnb7e3YjPqPI3gNrxJiCWIEyig9IDS3zm/eJV+dAob+oph02IJqIlvIJCjp
 Rvz1jS2urFEBS2RscGI+ecYof3W/N3w6csc9AkViWLipXhOEc+mx1J/LF4kMsvu8rlKr07t4YTz
 SuvL3gCjDqRBd4y5kS60pVCIP0Isqg2EV+kcT7NH/nzOQbIv5YT7gFkZDCAVNoXejX6L7epIRYg
 JXBG5JiRWi8JWiW0QV8lAd59uJ83kr4Od7Ae4gTja28dq2jM102S1qHsAhsf3BTP4pS40IJ5LBB
 WQkkGeQkimxiH0//R5BMUSoiZeyub9HLq8/FboNT5HHFw==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266979-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 7293D1685FD
X-Rspamd-Action: no action

This series contains modifications for using Linux device trees
in bootloaders. Changes from U-Boot bootloader are incorporated
directly into the Linux device trees.

Changes in v2:
Improved commit messages for commits that add boot-phase properties.
Add forgotten boot property for the spba-bus in imx6ul.dtsi.

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
 arch/arm/boot/dts/nxp/imx/imx6ul.dtsi                  |  7 +++++++
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi       |  1 +
 .../boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts    |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi      |  3 ++-
 arch/arm/boot/dts/nxp/imx/imx6ull.dtsi                 |  1 +
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi                 |  6 ++++++
 12 files changed, 34 insertions(+), 4 deletions(-)

-- 
2.43.0


