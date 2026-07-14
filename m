Return-Path: <devicetree+bounces-326038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PppSDIL/VWqMxgAAu9opvQ
	(envelope-from <devicetree+bounces-326038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:21:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E5752C57
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:21:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZgIMC8fq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326038-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326038-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0F1D1301BA49
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DFE943CEF2;
	Tue, 14 Jul 2026 09:20:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7631A2DB7BD;
	Tue, 14 Jul 2026 09:20:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784020801; cv=none; b=cjp2DMTsvoN2ZvKYyV3m2ypgEsCCQZ1Nk/jXfqVKHy7/2BoxgXvRPoeUdgfhiwrr6WId9Wxl1uVwmJtyYOcooXXgVpb3dbUDk0cWZmRiIpD/M5ShyOWgRcd41dnhG2Rxoa7XAY7XOyajRJ8G2ypyB5zHKZVe7iuVX+sEorz44ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784020801; c=relaxed/simple;
	bh=0hL5myBtQdEaRWeNueUETTnrEakF/viJaerEDOByIi8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eQ0LqC2ur5ddZz7F1TUyRr037mCnubi7PoQTTjNRg69CvD+JhsMYte9xI/sMCTSzb20xgq8I57Vf/KfYq9m1fbcsmauQI08CbXH3QFuXNlgeh1a3eAIDlmuVKVv7fyvTLs+ds4g8XomWGph9kK9yJ8dN1elxHBygBXv3v63tl5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgIMC8fq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46C351F000E9;
	Tue, 14 Jul 2026 09:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784020800;
	bh=NvIQGG17Gg6DcApfmewQ2HnIgUe9CvNeraPvhuLErkY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ZgIMC8fq8Y7SDpWpKGGfZshWrTsaMJ2RLMvcqXwYFLdK8Y45Exq6BgifINGTkCRon
	 8xm6gjqK5+4+1RVRqsLGMxIEOhbkjb4Mi7UWAQbsRmEW5CuxIcffb4PUclJxCKEaIa
	 Ix3fxa+VOUImnOe7gjGO5/wCkWyLAntWpOUhE2q+gGv9IaS3HEEwB8zR/ceGOuq0T1
	 l2t+aHBehC1C5Zz+u7K6cOYlUHI9EtmMAkOFCa1gUGii9IZiZJvI5kfCZdaDVz3n+y
	 1o4Dv2tCW+zYSzuRnt+/Uy2B/XBGCZ+S8lqhBP8WmjfYiSe38Ez+D7CGHQ/cqKTnRU
	 5WW59IX/476jg==
From: Yixun Lan <dlan@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>
Cc: linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/3] clk: spacemit: Add clock support for UFS
Date: Tue, 14 Jul 2026 09:19:54 +0000
Message-ID: <178402023785.1567931.15038161534812979659.b4-ty@b4>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
References: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:linux-clk@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-326038-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C1E5752C57


On Tue, 30 Jun 2026 12:52:44 +0000, Yixun Lan wrote:
> This series try to fix parent clock of UFS aclk which was submitted as
> wrong version, so correct it according to updated doc[1] here. Also, add
> a UFS reference clock which was missing in previous patchset.

Applied, thanks!

[1/3] clk: spacemit: k3: fix parent clock of UFS aclk
      https://git.kernel.org/pub/scm/linux/kernel/git/spacemit/linux.git/commit/?id=7a588b62679c51abd08171d31df6e44589f0097d
[2/3] dt-bindings: soc: spacemit: k3: Add clock ID for UFS refclk
      https://git.kernel.org/pub/scm/linux/kernel/git/spacemit/linux.git/commit/?id=4fc567e1bacdb5da85628de8dd1d1e3328060798
[3/3] clk: spacemit: k3: Add UFS refclk clock
      https://git.kernel.org/pub/scm/linux/kernel/git/spacemit/linux.git/commit/?id=8abba78dc0ee4ffa7c4e0e05b93c58bd94ff11c0

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

