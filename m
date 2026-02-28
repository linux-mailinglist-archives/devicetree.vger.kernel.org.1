Return-Path: <devicetree+bounces-269453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCbUI2Exomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A27D1BF50D
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 035DE3044B65
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2A924B45;
	Sat, 28 Feb 2026 00:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k814RJnV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCD3E54B
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237149; cv=none; b=OIAG/5UIA6VWK8T/KrYavBcseI6WY/1OrBS1mvND6Cus33PSsy7B8KQ93T5uhG8r5sJmGN78NnN6v0cEg6FVp8yMbUKZOIDrgEka3BolxyYR39UkGBpbrULKyp1T2vhPLggJJ5PbvO8G1ZbV6eFy8/C9nKgp1u6cZymGPa2eaK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237149; c=relaxed/simple;
	bh=QQUUYYwURbACdUIdjrLHGvnuoEjtWjpzzgCNWpWSbAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ojFr6RPg3yrXvr8tbd0XdShKvO6nJqVhE+3Ev8vVoJtooRZFPiwPjtfXQ4v8ZGOuLyJ+TT4enJthxs0uh7x7GeKQP+CAXLtXx3kwFmcdrnHolvr+te9RGkng1msD19GXqQYjkgIP/zBOONisED6N/wNZGuEmx0obRyzqW7pxnhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k814RJnV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FA00C116C6;
	Sat, 28 Feb 2026 00:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237148;
	bh=QQUUYYwURbACdUIdjrLHGvnuoEjtWjpzzgCNWpWSbAM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=k814RJnVMTNgh1HtpRNEA3slhlQ00EMFmeKrS4XdH+jHqiHaRdjDgZwFELJ2pvhX/
	 IFzcKaDARylZbdKahLNFgCCB+gC6MFL6BypDObfiHs0Jfx4xYMttFehAtQhnVq8Z4L
	 Ipl/oNuYh4J7VZ24UfDFtfwlBF5n7Mt8fjoa4OhSqQT9Tqa7jE/MNtRra7qxdtvGD0
	 I1Gp1BtLEhO/BFm7jV068KbM1QYUoOJB0mlx6zEccDgzvkLLBkVbEmjzvj7bmhv9py
	 IW+3ysSa1pnPaQX1V5Dn+UhE1oY4qYGDkVyUFyF18kXz+wddeaF8pE4TvGiRgMVwUq
	 fzBTiJUgc1hwQ==
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 28 Feb 2026 01:05:41 +0100
Subject: [PATCH 1/8] ARM: dts: gemini: iTian SQ201 need to boot from
 mtdblock3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gemini-dts-fixes-v1-1-0c6f6d0fb4bd@kernel.org>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
In-Reply-To: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269453-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 1A27D1BF50D
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


