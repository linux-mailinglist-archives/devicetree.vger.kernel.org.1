Return-Path: <devicetree+bounces-270326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBNoJumNpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F25E71EA2CE
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E3F0330219AB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE04838239F;
	Tue,  3 Mar 2026 07:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWAK+a0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B774382288
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522983; cv=none; b=XDrR3rQyY54gG/xAbfjsTwpAWbNlk57MW5Rcy/PFxYXE4BrM71UUpP+5XFnJ8kahpjiJr298SSE3vqNx8SNpdFIik+g/tmnpx445hAAHV8uKzOCbxkTJg2WL/oDfRQFiZrG4j/ZbzOMlQEJi83yBtVwmETJ3OBR3Y48QvQC+cyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522983; c=relaxed/simple;
	bh=QQUUYYwURbACdUIdjrLHGvnuoEjtWjpzzgCNWpWSbAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XZWENfI1gu7q+fUMjxzUxeB8FvOwDkZPmPG+GNXt5dfvLXJaFhOxot63OaCPXVHTpjfpYTN2DhItT4Aptu9iKrXD6BFjlFERBfamYngCTGcDVn9QIkQqnV+pfzvLzLv1cBLB6yeTAKFX6dQGcZlv2YxmI6UMNdbIAnefTuzMIng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWAK+a0Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EF7EC116C6;
	Tue,  3 Mar 2026 07:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522983;
	bh=QQUUYYwURbACdUIdjrLHGvnuoEjtWjpzzgCNWpWSbAM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nWAK+a0QSTnekz8cnZL6Vr4QW3lSRxDv/ahB9SSHoveKS5atT2Y2bxISEYHT6slz5
	 7JK64f6tUItpUGrnj+NVGQzyhARLGQTr6XfyjLbM9k1OejZx83YbLKQjnnL2KbiHQp
	 1yhDDPmximlJh/u0X2kaW05uTalzG/8dEOOCI1M5oAp2s4fXQLSZ3LlQcUmZXS+TJm
	 WrWyygsBiD/9TS+6tq+h91BYjNOvkTkDXre7TjWBZCVc+bAJMQ4cYiDUpOdjnZCKpR
	 3qJuBuu9YoQFbdfDkbnr9biS4DFdonne5Hc06jfWPLrgO4i6nGt2t+RM/dxSjp9xVK
	 heK0drwm3saNQ==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:33 +0100
Subject: [PATCH v2 1/8] ARM: dts: gemini: iTian SQ201 need to boot from
 mtdblock3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-1-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: F25E71EA2CE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270326-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Alter the rootfs partition to the one actually used for the
rootfs.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/gemini/gemini-sq201.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini/gemini-sq201.dts b/arch/arm/boot/dts/gemini/gemini-sq201.dts
index f8c6f6e5cdea..fb6959324658 100644
--- a/arch/arm/boot/dts/gemini/gemini-sq201.dts
+++ b/arch/arm/boot/dts/gemini/gemini-sq201.dts
@@ -20,7 +20,7 @@ memory@0 { /* 128 MB */
 	};
 
 	chosen {
-		bootargs = "console=ttyS0,115200n8 root=/dev/mtdblock2 rw rootfstype=squashfs,jffs2 rootwait";
+		bootargs = "console=ttyS0,115200n8 root=/dev/mtdblock3 rw rootfstype=squashfs,jffs2 rootwait";
 		stdout-path = &uart0;
 	};
 

-- 
2.53.0


