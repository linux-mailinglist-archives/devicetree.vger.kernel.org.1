Return-Path: <devicetree+bounces-319650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6qBeGV7hRmpDfAsAu9opvQ
	(envelope-from <devicetree+bounces-319650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:08:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4634A6FD227
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:08:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tbfKPFm5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319650-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319650-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3008F300CF21
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 22:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E23C3BF684;
	Thu,  2 Jul 2026 22:08:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4656B3BB11B
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 22:08:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783030104; cv=none; b=EzpG9CTDYOPlrVl8UkxF5WXq1ySwwO2ccljhsD6G/ob0ROPVtjzx5GH9v+E6egD1NvLs40Ojm8NFTPRZ93NVhSZNI3K2s0WJVHBV0a3+YFoZF0RcOsPtBIWLaUGYmOXwGWxnE/7ZYeJTWORBDNrkLzFA/UrUBxoWp7pRkKhK+E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783030104; c=relaxed/simple;
	bh=npo/fLTvxFH33okSDT5hZKC/JT24REZBjA22Ob+RouA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DMFF9JQxJPKmeqIZ2hBIN1wD3Cj31TVAV/lGZ6AsLLvECRda5u83wt8AUcc/b1RTbeLQbr8i4/IMv7Ce8UCDr9y7mfhMNYEfqmgw8q78GF/pFgdWPx/MGqs/NMixxPt0ieTM5Uoc7Onnu/DbJgaQYBp4Owkj9Lqq1OZAmh0Ijzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbfKPFm5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24D87C2BD01;
	Thu,  2 Jul 2026 22:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783030104;
	bh=npo/fLTvxFH33okSDT5hZKC/JT24REZBjA22Ob+RouA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tbfKPFm5cNLvGh3Ti7hUVss6hgQl3Uga7qQ1qU2Uo5JGzds2mv8/sAruKFfEpB2rj
	 elZ/DDWKvAR7+EDIlmyEeJAM++LCefeoZaoifJI+CUi91w+WHFwzjgJnSwS9c9gWfr
	 kVImvVVAWRGFyjG7EriBW1rKpZWdZz9Ft3ErE2g3SHUcmlxdgHcGj5nct+DlFUfnFR
	 /uRa7dScOeUpUc1hgVHc7mWJzPiosMF3VcOivg1z+yTfOL6pV1R3OMuPHUpT6KXrkR
	 pJhTV9YDZn7jdBFFU1iCQg7xWewPj6fIQJFzAobALIsor50mckJjRKq2mDw5S2jTaa
	 w2Dis6TORGRgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12950C44500;
	Thu,  2 Jul 2026 22:08:24 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Fri, 03 Jul 2026 00:07:23 +0200
Subject: [PATCH 08/12] arm64: dts: rockchip: rk3588s-nanopi: remove
 always-on from vdd_npu_s0 reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-nanopi-m6-v1-8-8344a1559519@gmail.com>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
In-Reply-To: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783030102; l=747;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=xYuB/QxuBX7PA9bPdFQENsiRAGCOhRcwISiBdc/4PZo=;
 b=XXX6wpdDlGpIjN86dtfOJlnfD2E00S9bclySieflzzF9RhrlyPTGIg1J+Zh5MKBA1fCfbz4O3
 UstTJAAHtD/AF8uaxvYHaGabcPHyQnLw3J2NdrBr7KzZTZxpSSBbalO
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
Reply-To: joachim.eastwood@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319650-lists,devicetree=lfdr.de,joachim.eastwood.gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:joachim.eastwood@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:joachimeastwood@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[joachim.eastwood@gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4634A6FD227

From: Joachim Eastwood <joachim.eastwood@gmail.com>

Since the NPU is hooked up on these the always-on isn't needed anymore.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
index bcb2f5d63a61..463cfeddf270 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
@@ -258,7 +258,6 @@ vdd_npu_s0: regulator@42 {
 		regulator-max-microvolt = <950000>;
 		regulator-ramp-delay = <2300>;
 		regulator-boot-on;
-		regulator-always-on;
 		vin-supply = <&vcc5v0_sys>;
 
 		regulator-state-mem {

-- 
2.55.0



