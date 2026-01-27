Return-Path: <devicetree+bounces-259776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMPtEuh9eGkFqQEAu9opvQ
	(envelope-from <devicetree+bounces-259776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:57:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F9A915C8
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD94F30300E2
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB50032C31E;
	Tue, 27 Jan 2026 08:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="rZRpXA4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay13-hz2.antispameurope.com (mx-relay13-hz2.antispameurope.com [83.246.65.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A64329E7C
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.99
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769504228; cv=pass; b=RgHaD1gG5tFhD+kZmFdCBumsV9lOI5zf2VVf/NvoKzE9yWCt7MboOlm4v+IU1M9A2/mROyoRHxOZXNXOVVywXNpprRGtEFtQGrN+ELuD2PSU7+BYIsZih/ifoMcmt7TUmYGu3SxVOAfHXr0AH3MPThf445qU6aKA6+uVNP38xwY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769504228; c=relaxed/simple;
	bh=TuhrPDXjxld/NeIqD24qS7eexllfuQz5oNt8bV1i1LM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=TW6+22MXXopFDq8nr5UFVdko+6RIJabxhrqjV2vbGtXiVIptnITibK8o7s52e0OLoq3+KbR/ooupZECmJByEurmrw0hBHBpxr9FJIpBtl3f8P2LhTib5Q9dHEAVxhue2T5VZSmAKwMiIJ6cTA9DoIo0blPJNUWU9K4Yu0wWafxs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=rZRpXA4O; arc=pass smtp.client-ip=83.246.65.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate13-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=JcZeMaax8glokFuf1hG57EmbUz4Co4BzqzWcXBh18FA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1769504158;
 b=IJFkFxkG6TnQWSjNpkwlpDtsWD+TAsxqTo96LJQN2idZcPTXfTuQhJyaLjuzt9RH4d65D0tf
 FsKrB5eWSv+YKMYeLyMcsh1+L1dIdupFzmvZ9z4OkfhJngv3sE6GV7Vd45V4bLBXXwQhJARkLS0
 sxKK/Phqh3KwYyweLJRtTdR66+QEc2jUc6WmIJQW81cfKmH7oPO3sfM/yHe4P17YMi4GBoHso4l
 5jRGJoZw4liq/9vQ8kaa9sMhQy6C0u4SwolBY1eyQveqNOegP1mD9DaohutrPCqDE5/kniDZkyA
 BHdodJc4iXZ6R32tS9mllfKI59ohaonixv/9tnuS52O+Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1769504158;
 b=s1Q/PXDCi8ieDdLeMmCMle5keGl3Xn7CQawx4DAUawBCdvC4R8zSTZpmOtmS0fhn8OO36ccM
 oMnVkFYw2xQmmBbJIdRaM/F9zGGdY/2uqxRNUAacfcjRuxZFAfwB6+hU0zqOFNuh7MAKITr+oDF
 4tbPHrClRWoeSFL8QX+FEmHtKpVOiv26v2N0myY5hPH08mfrDcRqDpXJEjpF5oJY5hRUBHjIHJP
 djJpzhsxcxZGJsr2MJNYmlXAcgNx4Oj8aZ34ORJPA0svHUtB5BeXed4mtjCuxBHB2DDucG804zP
 UDXIxTREBQedgVCZSSE1/lgFSH5EPe7xIihmKsqxpAm6w==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay13-hz2.antispameurope.com;
 Tue, 27 Jan 2026 09:55:58 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 7A8AA5A0EE5;
	Tue, 27 Jan 2026 09:55:50 +0100 (CET)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH] arm64: dts: freescale: fsl-ls1028a-tqmls1028a-mbls1028a: switch mmc aliases
Date: Tue, 27 Jan 2026 09:55:33 +0100
Message-ID: <20260127085533.9738-1-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay13-hz2.antispameurope.com with 4f0fPz1Jnhz3sw4M
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:6e26a58e6144cc24ca60a7f4cfcea837
X-cloud-security:scantime:1.869
DKIM-Signature: a=rsa-sha256;
 bh=JcZeMaax8glokFuf1hG57EmbUz4Co4BzqzWcXBh18FA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1769504157; v=1;
 b=rZRpXA4OGRGaSbAGoH8XMJ8o0C8hS3MD0HRJ4Tog0E9QmJ8VKfSSgqmK6Fx1G00FJIuMv/qO
 xWtQw3pPEof49rM2auRHBQ3umuI7+yrefTa6tHEXd6Lyv/d+Y6pMZouiTD9epU0UKYDvUEg0imu
 9nohU4ithRJ6yIlk5QYUE5DJrs9RujPm/eUBEDqnHbztMK4JelZUVYMCcP3ssfnWCL2iPSedvkV
 uinY+46AR1QOM+a6qp+SsnHNighBHBDt1uXtW/+3TKs1//jlHbF+WQ0qFK8Z3WF1ovnXbGXzr2c
 uPyTQG7CZRO7Dp/bBOR3+iQBLKZmV16sMSbh+Fpw4Gsmg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259776-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthias.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tq-group.com:url,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: B4F9A915C8
X-Rspamd-Action: no action

All modern TQ-Systems boards follow the convention that mmc0 is the eMMC
and mmc1 is the SD-card when both interfaces exist, reducing differences
between boards for both documentation and U-Boot code (which uses the
same Device Trees). Adjust the recently added MBLS1028A Device Tree
accordingly.

Fixes: 0538ca1f102d ("arm64: dts: ls1028a: Add mbls1028a and mbls1028a-ind devicetrees")
Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---

Notes:

- Gregor (author of the fixed commit) is not working for TQ anymore, so
  his mail address does not exist anymore and he is omitted from cc
- Normally we would consider modifying the aliases a breaking change;
  fortunately, these Device Trees are only in linux-next for now


 .../boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi  | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
index cf338b2e80064..426a81e1743f1 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
@@ -17,8 +17,8 @@ aliases {
 		gpio0 = &gpio1;
 		gpio1 = &gpio2;
 		gpio2 = &gpio3;
-		mmc0 = &esdhc; /* SD-Card */
-		mmc1 = &esdhc1; /* eMMC */
+		mmc0 = &esdhc1; /* eMMC */
+		mmc1 = &esdhc; /* SD-Card */
 		serial0 = &duart0;
 		serial1 = &duart1;
 	};
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


