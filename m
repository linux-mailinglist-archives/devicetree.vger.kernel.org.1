Return-Path: <devicetree+bounces-262507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFG5LjnbgmnkcwMAu9opvQ
	(envelope-from <devicetree+bounces-262507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:38:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E535E209D
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7ADAE306ACD7
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B63A318132;
	Wed,  4 Feb 2026 05:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFuEwu/9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CDF9460;
	Wed,  4 Feb 2026 05:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770183448; cv=none; b=TwLsaaqexBJ9Qkl4LpbU8Kvq9UBbkY/os88zmhrpDCU/N+XborhJC1j3kV2/5fv8on7HyLAImXd+SPa9YaFMwZYR3X3MRQodgVwMbOPLWJiChunUD3t8KePZHaAyusDKfqJujca9wfdRId4Z6EjtQcVyzZhAu6i9id0zDKaoCGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770183448; c=relaxed/simple;
	bh=EFcwzhh7o8K49qee07mTb1ZNamBqMLC0xMDOttqkxoc=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:To:
	 Date:Message-ID; b=PQ3cMUELU5n8omRPp81prC11sHwy4wgld8Kco2DQEqW9ICiJjzif3+1cK+7rwGGs6YEIrHHUHpIJEI7jxBSAH/vrHl8p9awkOL2uvI/FSwIjdBpj7CpUpHtHRBJLPf0SaHoM96JIKfI+oI6dSb3tZCBEte2wXIea2ZaODSyS4HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFuEwu/9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9BE6C116C6;
	Wed,  4 Feb 2026 05:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770183447;
	bh=EFcwzhh7o8K49qee07mTb1ZNamBqMLC0xMDOttqkxoc=;
	h=In-Reply-To:References:Subject:From:To:Date:From;
	b=rFuEwu/9kDzzBtD8Ll5QgwLXf5hxKzaNTh8vznwgOmu4RJbvV+oetgIpPD9YV644J
	 BcfpsIVJiZNVsaandhKHKQxL9QatAxDOJKgU8KN1CWB6HaRhxEREez4xr2M7iDZ7bU
	 cJqfKh+ilD1aoICMlqm+tMvXuSDDadPP6BuBvjgCNJii2HW2QeLznHyWPUwmkZ+hTH
	 Ni4yYewr604F2Jwlgv18Al3GlF4zQ+Jz7H4aJtzF687zbmxaX5QxXVQVsJtrXZ9wZT
	 jI6V9LLr6NS4EG/u4jiPZv6uOeer07fyZPoUphi9dxZZKHBfdIdWmdl783vRJbPCch
	 jFwP8a9JdOQ+A==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251003015845.2715538-2-jammy_huang@aspeedtech.com>
References: <20251003015845.2715538-1-jammy_huang@aspeedtech.com> <20251003015845.2715538-2-jammy_huang@aspeedtech.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: aspeed: Add VIDEO reset definition
From: Stephen Boyd <sboyd@kernel.org>
To: Jammy Huang <jammy_huang@aspeedtech.com>, andrew@codeconstruct.com.au, conor+dt@kernel.org, devicetree@vger.kernel.org, joel@jms.id.au, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com, robh@kernel.org
Date: Tue, 03 Feb 2026 21:37:26 -0800
Message-ID: <177018344610.4027.10487603254575363313@lazor>
User-Agent: alot/0.11
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262507-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4E535E209D
X-Rspamd-Action: no action

Quoting Jammy Huang (2025-10-02 18:58:44)
> ASPEED clock controller provides a couple of resets. Add the define of
> video to allow referring to it.
>=20
> Signed-off-by: Jammy Huang <jammy_huang@aspeedtech.com>
> ---

Applied to clk-next

