Return-Path: <devicetree+bounces-270662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KiHGYkWp2m+dgAAu9opvQ
	(envelope-from <devicetree+bounces-270662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:12:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE001F4767
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 080DB307A3C7
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19EAA3CCA03;
	Tue,  3 Mar 2026 17:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2oaRn9u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82A93C278D;
	Tue,  3 Mar 2026 17:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772557798; cv=none; b=kEijObnjHQiA+d7ahKfHNj9uli3QV3szmnf2vLq+hmDcu/nRJifbLt/C6XiG9JzEKV1qqOG9THSwm0wmg9s1Tw7vrBtG5dJJdPTSr/hgzQbO+huM7MttCpUCn2G5WIH5G3Dd3uPO3oLa330y9MgJJu8HYifSc02+41y1XP5Nr4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772557798; c=relaxed/simple;
	bh=Ed+bCSB3ThJGp+/vAu9s2Q+ELZixwlGJmuotKDRz82k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Hk+XKGROUW4EDPdxWpPr8ieXIC9pYrhVZ3poIoHKU5LcqpkOwXHlck9qhzKNLB7i4DGU69jXVudsizOLwn9h4I8aFIUfz7ZoC82sw7tSqCLhu8YzpG4WnWDd9dva5n5qP3zaX94Y7fc2ZcATisvp8etocerTcPC8yjj8Vwyylxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2oaRn9u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05ED9C116C6;
	Tue,  3 Mar 2026 17:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772557797;
	bh=Ed+bCSB3ThJGp+/vAu9s2Q+ELZixwlGJmuotKDRz82k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W2oaRn9uiUQSef6/Ag2S7rjVC4JmRCNFZ7VrqoeUSIXgO0UpEYy0N4k9a0joQTKUo
	 +/5AUpDvxrutE3gyeYcEhN9sIbBmZ/iT+gFFOOfXyznFhKwfNGuCBtoKxPebNSuSDv
	 dd0oMg3ZBRaYLbByJjsHRINTJY/j7DZM93ll6tHUtD8NtTRo5P2iPIMrWx5SsgXKd1
	 sz110/HLeLiMuOC40p1TxRgpUbw4I4lsag7Z7fcJ/owWZfIc4V7HVpL99MkO7MogAA
	 TC05fFm+7PLRzeYfo//cd/8OObmQFo7k2EXkSi6ngSG6G3NoW9XIohMu7dCVA0F82Y
	 UvfepzWp2H/PQ==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 0/3] pic64gx soc driver/binding changes
Date: Tue,  3 Mar 2026 17:09:51 +0000
Message-ID: <20260303-punk-mustiness-33529cdc51e2@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-mashing-cursor-6e965a77ce6a@spud>
References: <20251117-mashing-cursor-6e965a77ce6a@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=961; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=GOUbHoOFTBTdmyKbtuiSppBTOdAoMbcZhph/KEs89vE=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnLRe/PkElQXXCyLqmq+MGETU9eFM19/DeqV6R4idJCt +DcV/OedJSyMIhxMciKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiy+cyMqyKSVyQVnv4u7qf X3C13oKFVg9lW8pFGRkOzf2csCylajEjwxE1ibuxH2p4La/0mwes8ZY5uOfsvK0Xs+JWhC9n+Wx xmw0A
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: CFE001F4767
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270662-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,microchip.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Mon, 17 Nov 2025 14:21:19 +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Mostly this is stuff that PH did last year, but rebased on top of
> current work.
> 
> CC: Conor Dooley <conor@kernel.org>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Daire McNamara <daire.mcnamara@microchip.com>
> CC: devicetree@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> CC: linux-riscv@lists.infradead.org
> 
> [...]

Applied to riscv-soc-drivers-for-next, thanks!

[1/3] dt-bindings: soc: microchip: add compatible for the mss-top-sysreg on pic64gx
      https://git.kernel.org/conor/c/7a58baed883a
[2/3] dt-bindings: soc: microchip: mpfs-sys-controller: Add pic64gx compatibility
      https://git.kernel.org/conor/c/ecc09da7ba34
[3/3] soc: microchip: mpfs-sys-controller: add support for pic64gx
      https://git.kernel.org/conor/c/63b5305ad84d

Thanks,
Conor.

