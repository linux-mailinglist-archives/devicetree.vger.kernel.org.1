Return-Path: <devicetree+bounces-326036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 14AXFfD9VWoNxgAAu9opvQ
	(envelope-from <devicetree+bounces-326036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:14:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A7D752B63
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:14:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B67xo9vh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326036-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326036-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40D36309A1FC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4687A43CEEB;
	Tue, 14 Jul 2026 09:12:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BAB32AAA0;
	Tue, 14 Jul 2026 09:12:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784020326; cv=none; b=LaDEPBaugXTMfiY+uOSy5sCINAIcW+uTulTyFossvTr4jyz1puzMRgzF/uEfdqqOLr/tkxKb2NkxkJPbDBNrrT5V6bch0bidQP5OSFvmLwaG5jXGZ9vqtO88EpQ+YLtFvDJllezS5pGmX9Q1en9daXH4ThdkWTSdAQhQWYy/4Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784020326; c=relaxed/simple;
	bh=4jFuKhT1ET8uRm76rjsSNFtNGde0a6vl8wN80kGvhKA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XszFcQEX82aaSNklbTXn46iaLrzN6y4ztWXsF52VA4+KKKJsa8/qE8HAgdC2LqtNy/ZNQ6W9xOY6sqa7OB9ZhFO98PbiB3rlJbViVd2JGToNBS6jKDR32H47Tu94He3wJoIgqbJUfgCfdgfi2bO9nNv/AeLGgyWVnZ1Qf4sf9Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B67xo9vh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 428C11F000E9;
	Tue, 14 Jul 2026 09:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784020324;
	bh=HS8GPuh1k2NPJ/kyd+W9EnihrSZfG4zVFWpsfKm2RLE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=B67xo9vh3DdJ8o/dp4ZQsuG29EfitlgjNPjp9PmbZ06SgBuPm1LwkQGs5sE68LroG
	 7In1YqIfMytKKyWpIBuaTW5YipC4g7dFypUI0irviF3Ba0EhuPvTgsCPc+6p97NUsM
	 ormiUF7raDaQ6dVZN81dDALkPVJ9miYWxabK7lS4a+EA4hVJqxkN4zSrmyiY299vkk
	 5TK0hxNkuAicY8VvItMDC5wQTKc0HYr5lC2B5BvgC0DE+UP4NAvOAoDvdwWofcOw93
	 4mHz0Yr+Bez5qqiFf6YhIXMwHD4n+TRSV3/2QjSyFktYsjfno50kVSlz4ArvpCpUrb
	 72ZJxtrVklgAw==
From: Yixun Lan <dlan@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Shuwei Wu <shuwei.wu@mailbox.org>
Cc: Yixun Lan <dlan@kernel.org>,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/2] cpufreq: spacemit: Add cpufreq support for K1 SoC
Date: Tue, 14 Jul 2026 09:11:56 +0000
Message-ID: <178402025712.1568061.9223355686030414906.b4-ty@b4>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260626-shadow-deps-v4-0-bba9831f2f1d@mailbox.org>
References: <20260626-shadow-deps-v4-0-bba9831f2f1d@mailbox.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:viresh.kumar@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:shuwei.wu@mailbox.org,m:dlan@kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	TAGGED_FROM(0.00)[bounces-326036-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98A7D752B63


On Fri, 26 Jun 2026 16:10:22 +0800, Shuwei Wu wrote:
> This series enables CPU DVFS for the SpacemiT K1 SoC using the generic
> cpufreq-dt driver.
> 
> K1 has two CPU clock clusters. The two clusters have separate CPU clocks,
> so they are represented as two cpufreq policies: policy0 for CPUs 0-3 and
> policy4 for CPUs 4-7.
> 
> [...]

Applied, thanks!

[1/2] cpufreq: dt-platdev: Add SpacemiT K1 SoC to the allowlist
      https://git.kernel.org/pub/scm/linux/kernel/git/spacemit/linux.git/commit/?id=6f6369ada94038b189096b7a98330dee9814082a
[2/2] riscv: dts: spacemit: Add cpu scaling for K1 SoC
      https://git.kernel.org/pub/scm/linux/kernel/git/spacemit/linux.git/commit/?id=199380e4d8cd22e539a08d4949e9582b09390bd5

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

