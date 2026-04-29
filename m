Return-Path: <devicetree+bounces-291267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCDhKjmA8WlYhQEAu9opvQ
	(envelope-from <devicetree+bounces-291267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:51:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A81D948ED08
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0B68B303B8C1
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 03:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24DEF392821;
	Wed, 29 Apr 2026 03:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iU73x+Vo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015D63921F1;
	Wed, 29 Apr 2026 03:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777434427; cv=none; b=hCN4cHWiJ61mFDz2kKzbuJomGTiFTKRb9trWyQ6H/r/gCAqjgVESl9wXFtwLTxNPjRmJsjZMM/8mSz+/JZU6EXvLRvyduXO+ISWlJR6jscolSleyYYhnVMhgmr1RlPiqb+fsuNlO7RuZG7u3FKNrA/uU99MUiOxXnvpzskZDcvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777434427; c=relaxed/simple;
	bh=7XPWXgF9Zk1Aw83vTfm10JB9TXEL3/AhiMRwRXofkSY=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=DpUzfI1q0aBfOLmYLY8TIM84YNC+slBDsWekEIh2UmeSgJaXZ/+UdvETWkQ/TmCTi9T8gmxAVQGyuCXzqSeqFWeap1g5A2xvVcipcTOo31oqhM1qN7Gzk7fgKQ2Orq7ODcnSRPDx8SKDtSnVvRKEFHbHnzHNeJiuXjWDu8mlQ+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iU73x+Vo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AFA7C2BCB4;
	Wed, 29 Apr 2026 03:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777434426;
	bh=7XPWXgF9Zk1Aw83vTfm10JB9TXEL3/AhiMRwRXofkSY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=iU73x+VoSqUZjW7ECVa5JA0Sjo4132s07dPLGTyFypUx+PiToZfA2NQBakYkF892g
	 POm5NhdGU5exuYYC30Oodgz1s2a3QctuAQufEKJR+XjxD+mjfHbqbey+FMikdgGRli
	 tJm4ZDgorSpCJev5+qgKmo7SgsZk+wk92NLsgp3CS7ESteuKMApnYENizWRXFhhftF
	 OgBusILmXDpbbG2XdFaJ+88uKptAcEO5EvCnxuL3xWPaKYincd25pDrdq/sWP5HLKt
	 99xLPswURPt3YuJrLiIuW9+4/QTnXXIoalV3taj+0K7h7VCACXOUV+j1Cu1IhR1XA2
	 PsMDkYY2w7bFQ==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260414-pxa1908-clk-reset-v1-3-94bae5f3a8cf@dujemihanovic.xyz>
References: <20260414-pxa1908-clk-reset-v1-0-94bae5f3a8cf@dujemihanovic.xyz> <20260414-pxa1908-clk-reset-v1-3-94bae5f3a8cf@dujemihanovic.xyz>
Subject: Re: [PATCH 3/4] clk: mmp: pxa1908-apbcp: Add reset cells
From: Stephen Boyd <sboyd@kernel.org>
Cc: Karel Balej <balejk@matfyz.cz>, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Duje =?utf-8?q?Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
To: Conor Dooley <conor+dt@kernel.org>, Duje =?utf-8?q?Mihanovi=C4=87?= <dujemihanovic32@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>
Date: Tue, 28 Apr 2026 19:08:30 -0700
Message-ID: <177742851052.5403.11325429550235456238@localhost.localdomain>
User-Agent: alot/0.12
X-Rspamd-Queue-Id: A81D948ED08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291267-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[localhost.localdomain:mid,dujemihanovic.xyz:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

Quoting Duje Mihanovi=C4=87 (2026-04-14 12:51:52)
> From: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
>=20
> It has been concluded by comparing the gate clock masks and vendor code
> between PXA1908/28 that PXA1908's APBCP, similarly to PXA1928's APBC,
> has controllable reset lines. Describe these in the driver for
> correctness.
>=20
> Signed-off-by: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
> ---

Applied to clk-next

