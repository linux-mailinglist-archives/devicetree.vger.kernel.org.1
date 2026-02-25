Return-Path: <devicetree+bounces-268193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL9SBV20nmnZWwQAu9opvQ
	(envelope-from <devicetree+bounces-268193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:35:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACE41944C0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:35:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36039302E306
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9899231CA50;
	Wed, 25 Feb 2026 08:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="nOaMH1mR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay90-hz2.antispameurope.com (mx-relay90-hz2.antispameurope.com [94.100.136.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2633002BB
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.190
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772008538; cv=pass; b=E+ixmbPshVyaus8Hmg/dK+PMlLDHj6EYwObDYEyg62A8uwUhkgFZkMzR6LO8Vb9elpJit38QgGnjJ1sM0QQCxjddI/Y8X4isFvrPawIwr4dUGmOyHuLvmlzzyxFEaDCt1UQA1uh+NkGYkxfNuWJVCKvXjcy3aCBCpBLZOKXY5tI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772008538; c=relaxed/simple;
	bh=1gkTqDJCr7YvexlyH8uqEU34iwOjv/arQZOv6mbwl/8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=AgsKMF1SsFWdEZCurTG6aGvQXmjFJOh+o1be1GCh2l328lzAx8/THaIzf3QsTONbrqu/w1xUwXK8fALE4Aa0ZmRyj3IbTRm2xHUPVrlp0uF3MTiAFuQcXa8EWJiDvtlWNwwbEYuK1XuwnBD0e31vRJIxueHJHKJVSTRktAqy6F0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=nOaMH1mR; arc=pass smtp.client-ip=94.100.136.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate90-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=ANOrIzf22DYFST/OGsWrBLVKkhNoHDH6p+6DszzjdIE=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772008511;
 b=PYAnmMDj4QmM7IjVfVq1SQ6n0sA8++TMNs0WvRmKcAHrYr7m5XwD/Qf8Mvz2YrvJUeXaZumh
 VJsZ+XTXppk4V+MJ+Hqw1D4pzrSat5vHNyynaCYFkZjlpk4SyybBP5ynntOfpNV36xpCEspTIEK
 Q+/J2y4tHvw5sAlrPIath6BmOAfBgoqBkkQ8gaS9fwZNOGgrZCCgqa6ymWT6rq+pp191qEaVvrU
 yfDXHLtoaJ+ddWCCOPh/6rjr3xJoZGMYkzxZJFtkqpwYmCqGxFbMh8T42l86BdsSdrmUWR7wPc7
 O4FlR1ia6cn4Uoqe++EJz7HVhNdxcI0xFnbdTvU2+c9Kg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772008511;
 b=U3obpT+IVyNupxJQLfVfba9PNCYWSYtTgX8Yxgg8HyFp8GdDUFb5/Ya2Mp2ATn5MxeM4ip/U
 jJq4KRdDnCh/iPGQ/XsyijJdn9b9vKrKT5DMTulnqohiXyBTaW3myqMurVjTEc1Q8nDahrP2XaK
 1zSRmkVLpx533lxpBjn70PrXLUa2h0yYklVTWSbnVzEGxGHk2S8/aqqTWcDlxbE/igZPt49wrI5
 eAs+t054Ty1TTsjxqlBhTYrMV4LePq2bA3/kOETYdt9ISqkjvQFIrUHj0CrL0uIdm4s75Ix/ve7
 LfoVlcVt5va8cpmDdCPpAXzKJxUXBSsk40DthV8/0UhSg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay90-hz2.antispameurope.com;
 Wed, 25 Feb 2026 09:35:10 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: nora.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 59917CC0D25;
	Wed, 25 Feb 2026 09:35:04 +0100 (CET)
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH] arm64: dts: freescale: imx8mp-tqma8mpql-mba8mp-ras314: fix UART1 RTS/CTS muxing
Date: Wed, 25 Feb 2026 09:34:18 +0100
Message-ID: <20260225083419.5639-1-nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:nora.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: nora.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay90-hz2.antispameurope.com with 4fLSZd0gYQzWygV
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:1e9880415023cc401d11ce049b439fb1
X-cloud-security:scantime:1.897
DKIM-Signature: a=rsa-sha256;
 bh=ANOrIzf22DYFST/OGsWrBLVKkhNoHDH6p+6DszzjdIE=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772008510; v=1;
 b=nOaMH1mRnaG+Cgd0lVQaE3mpwtXeeHl+aTlmZpsKkEmHJHrTqXbPuVVbIHNOFXMzTBpdEqVG
 YNUVmP3S2sk59KIXY0R6PDfwFgVOtQMsTJ6ly8CmsVdBTr1WbQZcIUEhyggxgG0GGjMyyHWrZti
 2Wlo/fGg5wVGXeTzYvdX6zX7EVi6NBy4OA5Q8ICpBYA0UlDUujXOq7BH4YnZJ99z5PVN+fksy0M
 BKArE+dUT4yJpbT2eZr9JcjyWhC/B2T3ZW+s8N54Kqn2y5JV3EJl62TgpYpp43Fli7Wau3EJWhF
 Z1FduWSY8ETi8sKRvntoe8lInsAltpO1HWwp1bkgXm3xg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,lists.infradead.org,lists.linux.dev,ew.tq-group.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268193-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 6ACE41944C0
X-Rspamd-Action: no action

The pinmuxing for UART1 was mixing DCE and DTE modes, which cannot work.
Consistently use DCE mode.

This switches the RTS and CTS pins, which is fine for this board, as
UART1 is routed to a pin header.

Fixes: ddabb3ce3f90 ("arm64: dts: freescale: add TQMa8MPQL on MBa8MP-RAS314")
Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
---
 .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index b7f69c92b7748..1665a5030b993 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -848,8 +848,8 @@ pinctrl_tlv320aic3x04: tlv320aic3x04grp {
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <MX8MP_IOMUXC_SAI2_RXFS__UART1_DCE_TX	0x14>,
 			   <MX8MP_IOMUXC_SAI2_RXC__UART1_DCE_RX		0x14>,
-			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DTE_CTS	0x14>,
-			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DTE_RTS	0x14>;
+			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DCE_RTS	0x14>,
+			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DCE_CTS	0x14>;
 	};
 
 	pinctrl_uart1_gpio: uart1gpiogrp {
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


