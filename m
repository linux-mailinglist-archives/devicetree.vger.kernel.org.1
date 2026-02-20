Return-Path: <devicetree+bounces-266983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKWHK3NwmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:32:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BE81685D2
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 295B63019FFE
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50409280CD5;
	Fri, 20 Feb 2026 14:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lGsvqIVX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay159-hz1.antispameurope.com (mx-relay159-hz1.antispameurope.com [94.100.133.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFBD26CE3B
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.198
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597926; cv=pass; b=PkHS6j0eBerYW0zLThGOM4HoPfL3MxDezXfOqU6ICJNhSJgcQwvUiRfi7OOTrQjMePl0/HN+ZnwuGLkvEJoguo5ryX59saRYz89frlHqiNCeBHpBSonDfliiWo/H78bcG2qxoAwmw82RVwCDhRAf4ftDzug2qk+GiQslGBJ+/l0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597926; c=relaxed/simple;
	bh=t20NE1VIWeOx0kqYptyI9vW/OuVswsz9RADuJpteaLs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IqQuS/gTG3d5PuZ4x0JqOWL5oE/k3wRnfHknPc8i/5C+bqjjuE0u/40H1dradrVHjstNIzMPSDXpyDEjE5GtS/YZX1DQdmPNnQ3yWNz/48O8CiiyHD4V+tqxUxn37Lb7g6Fg/YaU6hNJCvyGPBub9gqnyrEhHpbB7okBetHhaJ0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lGsvqIVX; arc=pass smtp.client-ip=94.100.133.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate159-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=9BF+iKLiPBk0pH8uiye4+X3nMfM0DDHEbLdx9fkM5NY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597835;
 b=DvOn1naLa17JmOJtcavgV1N0GuwNZ8YbGGYAtZ2GBjIOm8A1m1LJ/RJ4ifr6NuFjX96efWZ8
 iCVf4uMAK4QQq1Zrdhlqm9qRC9gTBAdvWnfO9Y4uvvnb5IlSa7p1kl2TbkkI8mluyvG2YTqD08L
 hZusCHsOK+5OFUzuMdojmad/34+t6leGEbVSZ2mnUAET2uHXwjfV0YMpDjaX0AE4DWgWnlFit5/
 rBiOpdcq8DcR1bNUm25PKjHoOPr18DxyyT2JoCMa7ytCkDM9ZbvCH3NYLPOEYlwsBk3DmIXRfGh
 vyYhoRS6X/EU8jhW7ECTJL8kg7vqjJ9HEVURlMWSLp4JQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597835;
 b=MRhB9R7qNZxGmfx23t8uNIrYu7QVPXyP3w57l9BdUoBpKvMkMxomBkOIL8RZyvL4d6oSjXMf
 i6I3jqcuHe/oO+aFy4SNp6gD4Nt5co9IcPDFWQPH+FI1N4KCEALoqqaZP3IBtVoX6tpdedhIEjE
 0miGT36ey0VUbk7HnqnwWXzv79uuGN70BCF7EU9jEk3xxyQ35+EnVULDFmovs08Qpw8GWdgLW+Q
 Oc64w79KUKICXgDnKPbokC8zXEXF4kqU2YWRazsN4aCwwrcofM1RrIFe3faQK2ySa45ePrCaA8+
 X29rpsFomyvRE76X5oYvFZZj4QOOJLHYjFVvaRpaSgWsg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay159-hz1.antispameurope.com;
 Fri, 20 Feb 2026 15:30:35 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D59BDA412E2;
	Fri, 20 Feb 2026 15:30:27 +0100 (CET)
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
Subject: [PATCH v2 0/4] ARM: dts: TQMa6: modify for use in bootloaders
Date: Fri, 20 Feb 2026 15:30:01 +0100
Message-ID: <20260220143008.186851-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay159-hz1.antispameurope.com with 4fHXj04cDXzgpvg
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:e5556c3a48687fcf828e2b64ea7fecbf
X-cloud-security:scantime:2.331
DKIM-Signature: a=rsa-sha256;
 bh=9BF+iKLiPBk0pH8uiye4+X3nMfM0DDHEbLdx9fkM5NY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597834; v=1;
 b=lGsvqIVXYCTX3cEl9zwK75hX4iDSN4QaWLVkvHnOMKRQgMHgLDPsFKCysUJggYxgr27riRlh
 3CN9l6Qh6n7yVWVwFqNQ0Bxt/XGFEiQHwh2ZFzDNLgLy5aInIv6ZCO1TyGJ+IMKAjEKC+5v5bgf
 IcrNy0Ucb3Gd7XJ03PcPN+dO3mDosGjeTKXE/8vkgPNHnMxegpHFwCSxbfDo01dXPmdXSkJ92wH
 dLfhZIYDQmJSSU85o/cJs7PA8Yli2MiyC8EAHGZC069WzkKzoWu3+uMPX+Remz8mN0doZl25PQY
 Xh11PIfbqHs8CmMjvld9VJNk2+fZu58lLJoOJ8zD/rKtg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266983-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D0BE81685D2
X-Rspamd-Action: no action

This series contains modifications for using Linux device trees
in bootloaders. Changes from U-Boot bootloader are incorporated
directly into the Linux device trees.

Changes in v2:
Improved commit messages for commits that add boot-phase properties.

Max Merchel (4):
  ARM: dts: imx6qdl-tqma6: add missing labels
  ARM: dts: imx6qdl: add boot phase properties
  ARM: dts: imx6qdl-tqma6: add boot phase properties
  ARM: dts: imx6qdl-mba6: add boot phase properties

 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi   | 12 ++++++++++++
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi  | 11 +++++++++++
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi |  5 +++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi |  6 ++++--
 arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi        |  6 ++++++
 5 files changed, 36 insertions(+), 4 deletions(-)

-- 
2.43.0


