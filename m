Return-Path: <devicetree+bounces-291269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJ+7ALd/8Wk2hQEAu9opvQ
	(envelope-from <devicetree+bounces-291269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:49:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A797E48EC70
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:49:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 65EF0302D876
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 03:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89EE3393DC7;
	Wed, 29 Apr 2026 03:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpe+EyN5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646CE3932E8;
	Wed, 29 Apr 2026 03:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777434430; cv=none; b=YYBxeuwyArhdPrRKU+Tbqeqe4m8oB97a5csSkvS6j1KA3S9ZUfc0ibp2jF0xGUf0U6mtmmOEoOj/CnIG7guwlc3n8SeZWy8H6xGoAlP3ORAfZ0jxHzOxt4EZHB9xBud4akZrnUq71P0flMDYfNLlBT9BgQo9nudhKtebV9Z7nx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777434430; c=relaxed/simple;
	bh=i4i7Xm8YltywNE9Vi6II5NYEZBD1iQLfp4F1NTKsRcg=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=PLFRL/pXAoCJvC+BvCyAfv8ZBC3ana61kqSkLGqCYqNsG4NrSazrsARpmkdfDgGFX4EtHDG9VL2fDNaiv2y3mDJ62XM7DkKSj321LaYX1h70d3MAnsGCmVWurkx9H/hFP9QKgn8hzbwfiWjIfwhLgf7bml7sYqM+0vI2HNbolmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpe+EyN5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F2DDC2BCC4;
	Wed, 29 Apr 2026 03:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777434430;
	bh=i4i7Xm8YltywNE9Vi6II5NYEZBD1iQLfp4F1NTKsRcg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=jpe+EyN5vlo3AFXgHK80+TWvubFVayxRprfSNv8o9GmYj7I4Lv1FpYN58AzXDR5iZ
	 nkU614mr8rMANZ6n5xZhGTkB4C/dMRy0UxFVxLk1L4QfHaP26HC9x+HtwVZt9erDHV
	 JUPvAv5QarVcjNpLq7S2sOWEc2g4IminhU/dWysUgAOJutxqaf5PwgAzdFQdV6CveB
	 NUfniOdOAjs9MIK6e8OP/76KFMRfaXLGrxS72ZKcyoHMOuljn/RZjYh99c5kctuovW
	 D4qPtIljLmQUCjtyda761hBo2Ih7NcC66YF2ePo6VzP3/lVcFbh1b4ZPezUy/BXHy2
	 hOmCKJgSP8Jqg==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260414-pxa1908-clk-reset-v1-1-94bae5f3a8cf@dujemihanovic.xyz>
References: <20260414-pxa1908-clk-reset-v1-0-94bae5f3a8cf@dujemihanovic.xyz> <20260414-pxa1908-clk-reset-v1-1-94bae5f3a8cf@dujemihanovic.xyz>
Subject: Re: [PATCH 1/4] dt-bindings: clock: marvell,pxa1908: Add #reset-cells
From: Stephen Boyd <sboyd@kernel.org>
Cc: Karel Balej <balejk@matfyz.cz>, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Duje =?utf-8?q?Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
To: Conor Dooley <conor+dt@kernel.org>, Duje =?utf-8?q?Mihanovi=C4=87?= <dujemihanovic32@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>
Date: Tue, 28 Apr 2026 19:08:36 -0700
Message-ID: <177742851672.5403.5765326540508025807@localhost.localdomain>
User-Agent: alot/0.12
X-Rspamd-Queue-Id: A797E48EC70
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291269-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dujemihanovic.xyz:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,localhost.localdomain:mid]

Quoting Duje Mihanovi=C4=87 (2026-04-14 12:51:50)
> From: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
>=20
> The APBC and APBCP controllers have reset lines exposed. Give them
> a #reset-cells so that they may be used as reset controllers.
>=20
> Signed-off-by: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
> ---

Applied to clk-next

