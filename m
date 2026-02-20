Return-Path: <devicetree+bounces-266998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBirCvF2mGlrJAMAu9opvQ
	(envelope-from <devicetree+bounces-266998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:00:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85022168953
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:00:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55FE03020EEE
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA69434DB4C;
	Fri, 20 Feb 2026 14:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="I0VNPabm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2C72C15B5
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599592; cv=pass; b=PCGY5wivXT4Og43FDi7inXrEc79p1XHgDe5ZEndVMw6rzuDdvBXZQXEmfREl7oq+2Pu79dK/M3QsrFAGym14bWGFKJmLLD0fPnL//gcJycxcTlEFq5QmFhU1mwTUVHqomFVe/ZN47XspeCLrjpVHgkrN3uXo3vP4sapoNwUcKe4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599592; c=relaxed/simple;
	bh=r691UYeG0Jlc5Tl00/OXFUPY1BQ66KXrinx7M4tDdvg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Pigv+JMlx0OSN42iZRt/o7WKwJVnZMNGXB8uyr15N/u2RgrQjSnR0fM0MC2kPZaRHGAbSbMqSQbh8n+2m/hFMG326kp6of6IjIfbm9NS5gq0qODuGyXqZd0/Ux7y3Cuwm1djuG+HWqNZHnABr8+lTRdjafdD20FvgpCkK/omMT8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=I0VNPabm; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=977B/ic6AJDBhQi658+RVyXZJ76tjyvN895prl/vc1g=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771599569;
 b=XJSBMJaSruqcB+GIdr8NCKa/ihDuo5ZjYTLa8WGzovkf604OiZON2u7w2aiasrR5oOMl0RWr
 5OanLVxaRZMH3iX1ydtilG0L6hUdX11LGDlBe4dneSSsLLDqeJwHpvHKNqOyuvySXHga89wku2b
 XJK3kVIMxrGJf6PMbJYSuJ/eeEt/02iBzxmsQdXqN15gawHrUKewDKbrgyGuUJ2fDaPi6QsI8dL
 G10zhA/L5NR+nnkmFw1+Z2kapVg0hibbJJ8LUQVrdEwKafbFmqm5d8MdGVLhHuo6qrxkgKOEm/9
 K7e/lAbKCh0xv3rTTKVzbRnc8DWz4L73c6+UQYMq/plGQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771599569;
 b=D+xecZdySXyIG/BIzwUKicksfXp7oOtTtD0kUrzzgwxru5vV0C6woRVpRxDiKZGd9qitT+tI
 QCWAFHqLRzASruh6Bs2YFRE55kLBBCAFn/7Oy8Fcq6UQDa8XhY7PAlcke/vaJCAigLM8g7eKWAm
 HFGy4Su8I2Sw1eQ1M3KROk3Ae6iKh4KFO+CR96O6B0kXTwXIDbsMphSxR0U5BYI3n51pNROlYTI
 jvnI8S1eIUq4NXioB5qDj7aWSFWFzrmrTvSzBcLtGe9Qj3ZtR17RBM/JvFF9drF5yU8tCwkDHNy
 l3FQDr60ONsp9T6LdiW9aOKmt4yOJ7mC8pWr5INAkGeTg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Fri, 20 Feb 2026 15:59:29 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id CCF6B22071C;
	Fri, 20 Feb 2026 15:59:20 +0100 (CET)
From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/3] ARM: dts: TQMa7: modify for use in bootloaders
Date: Fri, 20 Feb 2026 15:59:06 +0100
Message-ID: <20260220145917.1797286-1-Alexander.Feilke@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fHYLK3dnmz3yZ1l
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:534bcfafd7dddc9c5c6fd6b8117fa64a
X-cloud-security:scantime:2.046
DKIM-Signature: a=rsa-sha256;
 bh=977B/ic6AJDBhQi658+RVyXZJ76tjyvN895prl/vc1g=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771599568; v=1;
 b=I0VNPabm1NEje4hpoH4qQSJ+7Q6siLqO0Vm37hvbrH81u3dJ0o7/vEUJNXIQduUd5t6thNnH
 OfH4CbOUL1s+lpECFch2PJGmxg4CwaqXf/tzxhkFT53kWeT5pWxlLP2XAY+YERNsiCs23Nof5TV
 OokExyLGty+2+SeJ1bP+avZC20gDk/TXkP1c/h6+2ctT+DtmcZQdIqG7a5Yhg3HlcwQ78OaV81G
 UZihR53GLzbjpjx27X0vCsR4kE814QqknOOVHmSX0CYnH119wmirazR68tzN54/m9DhzmDNBmMS
 0/eMcSOOlS45iN52mcvhAUiFCl4m8ac7qtWvGiVHnvRbQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266998-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 85022168953
X-Rspamd-Action: no action

This series contains modifications for using Linux device trees
in bootloaders. Changes from U-Boot bootloader are incorporated
directly into the Linux device trees.

V2:
- Updated commit messages
- Added missing QSPI bootph properties to imx7-tqma7.dtsi

Alexander Feilke (3):
  ARM: dts: imx7s: add boot phase properties
  ARM: dts: tqma7: add boot phase properties
  ARM: dts: imx7-mba7: separate BOOT_CFG circuits after boot

 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi  | 13 +++++++++++++
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi |  5 +++++
 arch/arm/boot/dts/nxp/imx/imx7s.dtsi      |  5 +++++
 3 files changed, 23 insertions(+)

-- 
2.43.0


