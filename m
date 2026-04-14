Return-Path: <devicetree+bounces-287421-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGvPI9uh3mkeGwAAu9opvQ
	(envelope-from <devicetree+bounces-287421-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 22:21:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAAE3FE51E
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 22:21:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 239F030630FE
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 20:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E1DA31F9BC;
	Tue, 14 Apr 2026 20:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jG3caVK/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF83D30F95C;
	Tue, 14 Apr 2026 20:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776198105; cv=none; b=RsQ8MRo3VKvHVmxAasUcZQT+OtCAtMvsUOT5splUqLE6KGZZCB62ujAUNuIHi+hsN3ywtZBhup66Ky4FARG4BT5n7pgLJvQsPZYnb7uom4WCIBYj6E0FsBcqC9fs+ASlp0iOr+rRBKKoPPH9UAEKP6raadq+MY92GcpqCleLJRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776198105; c=relaxed/simple;
	bh=dAtIVeubofBPck88/SI+wYUiOKq07a9wjnhIsv2LFZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QW0ubthWD0rKB9X3NouCrNRa0twWRVV45AUC1a2Nl+nfqrh88Pz59ZgV81Bpm2rQstdoQDRsGRBzG4e+w/2ISIEKnjOAV0ptg7Z1GBheNsUP8wH86HSKS3BIdZvnekIl0tIgzCp81y6usv3uficnlY6occl1ar7S56XDbcjaHTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jG3caVK/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22A75C19425;
	Tue, 14 Apr 2026 20:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776198104;
	bh=dAtIVeubofBPck88/SI+wYUiOKq07a9wjnhIsv2LFZI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jG3caVK/Bv3MnbeQfm2JCp0IttofKc3ean64Uw9LxmcR0Yu0DcIYMLH6wIcZWE/Hw
	 WRYCR3UKtgcZW4QIwCguxVE/ZH2LA2Lyl7BwxexKhYR4IkvtZTXL8oFJFNym4NAXbt
	 177E7cx7Qltw3zD5Lna1XZVwJT6pwNl7W0IyjQF87UnMge+qg+em+b+cSPUCCqucV8
	 BJa5DQFIi2jckmgx6rzMlMNwpPpdc4K/INf8D6+Y9WNBIcQcn0FFbPJCqNoPKxr+Eq
	 tWcMeFgx99zO/NNzCVu9LXUshHGMOItsOz+gq50woUyAQW5m4oN6Ou5xy4FfGdGqC2
	 RBd5okisOIXfg==
From: Sven Peter <sven@kernel.org>
To: asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Axel Flordal <axel@flordal.net>
Cc: Sven Peter <sven@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH RESEND] arm64: dts: apple: fix spelling error
Date: Tue, 14 Apr 2026 22:21:31 +0200
Message-ID: <177619775022.3727.18063777472413149195.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <2338500.vFx2qVVIhK@fedora>
References: <2338500.vFx2qVVIhK@fedora>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287421-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1DAAE3FE51E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 08 Apr 2026 07:21:23 +0000, Axel Flordal wrote:
> Change "configiguration" to "configuration".
> 
> 

Applied to local tree (apple-soc/fixes-7.0), thanks!

[1/1] arm64: dts: apple: fix spelling error
      https://github.com/AsahiLinux/linux/commit/c7ff53ef45b2

Best regards,
-- 
Sven Peter <sven@kernel.org>


