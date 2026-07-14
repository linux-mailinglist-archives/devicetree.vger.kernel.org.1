Return-Path: <devicetree+bounces-326035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U0M8D078VWqwxQAAu9opvQ
	(envelope-from <devicetree+bounces-326035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:07:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 968A6752AD3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:07:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FXxoT1M1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326035-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326035-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EB4C301C90D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA9A43C05C;
	Tue, 14 Jul 2026 09:07:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D77B3F2109;
	Tue, 14 Jul 2026 09:07:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784020039; cv=none; b=n8ZDp4/8u4xlOSeA0eKc/ZvJeFR2xwSILFIXLao5KpAetIDCAK142MJvlobF4lBtRpemzTpXC51XP2FyLCx9w7YXy/VVnlEGMY/GACgcnKJwlE/DCozbpIdc+3+gj4gOemS1z5kwmA+WFbWpofDQYBm4g5iVIu+asSHu3l7l7PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784020039; c=relaxed/simple;
	bh=EfZTxG3VLDFn6NlpEFV0YBz3ims5z2RpO6wdoF3ld9Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EF5sH72rB7/Bgxb5sbAHjwVbqIgbS7uFmzJ+kJuys3vvF8jr/VZsJQ7fANW9BkIkLewFuhuNrLYCXf9gHUKBfel6lopqG3F48B+c8f/GlhfUyvKAsEGy4odXE4A1w70ZpiabbY15Scx+C+coxvXOlxVQUibdC+/g2jRuH2HOr8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXxoT1M1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6DDF1F000E9;
	Tue, 14 Jul 2026 09:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784020037;
	bh=4TYgHMSI97Vz1YKihM5sWLRxeMfrv6RDGWem709JFPk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=FXxoT1M1UP4l5ybUNiojG3sY0Kh3riaEF0nsASbHhlSJRya/npjvTityJKxQMTbPN
	 l2qnTA1lh0GSvN1aPU22affEpNGyERlNQdiVKvzjNOE7mVCIIeyhHsMwDxbcLH1uVO
	 WTQND/4aiK/lUVQirrd2gK+9LHaMqnKfwNvcS7CF14rQLQcGplr0AHOALw65kUwXFx
	 iPfIE6aUnTJ4WFk2L4IlJQKbf+sLWhu3t9wNi4rqSqykA7ltU5oJS2g8X7vmGDo+d/
	 7V+JigOJGr1jWVlGlvUjaghsPV32Aye3hYRRQgvmBxjErRUlC/jbVL6nudaIXHu8Jx
	 C6tF/do1HYwYQ==
From: Yixun Lan <dlan@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: spacemit: k3: Enable SD card support
Date: Tue, 14 Jul 2026 09:07:11 +0000
Message-ID: <178372643614.19971.17353721889377239107.b4-ty@b4>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260610-07-k3-enable-sd-v1-1-196ae29bd091@kernel.org>
References: <20260610-07-k3-enable-sd-v1-1-196ae29bd091@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_FROM(0.00)[bounces-326035-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 968A6752AD3


On Wed, 10 Jun 2026 12:34:32 +0000, Yixun Lan wrote:
> Add the device tree node of SDHCI-0 controller which found on CoM260-IFX
> board, it's currenty used for Micro SD card slot, and one GPIO pin is
> configured as card insertion/removal detection pin, the slot use 4-bit
> data bus, and up support to SDR104 speed mode.

Applied, thanks!

[1/1] riscv: dts: spacemit: k3: Enable SD card support
      https://git.kernel.org/pub/scm/linux/kernel/git/spacemit/linux.git/commit/?id=055044260e7a603ff587537651e12c8fbfbed851

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

