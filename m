Return-Path: <devicetree+bounces-291264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDiqOkV/8Wk2hQEAu9opvQ
	(envelope-from <devicetree+bounces-291264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:47:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 834B148EBD0
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9242B301F554
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 03:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8D938911F;
	Wed, 29 Apr 2026 03:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3t8Jdtj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57427389104;
	Wed, 29 Apr 2026 03:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777434406; cv=none; b=syMeUeou+F4c65q37TQrcpzSKfy13R0B2XWjuvvtIg2MkHmPexhirbS18EQh7WroyHqsjoaLRo3kk0npAENSuv/hrNHIxecPey3vzl+dTy1o1fIJJQhwXpQ147QWpr4gbFkTzazVuoZVjsx0DRmPsjDb3WHofRR4tdGh4Y/WiU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777434406; c=relaxed/simple;
	bh=ZaTm28tVW+cEpNyLRk2tKxDeKxNiJ4l+2sUI2zFK0k8=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=oi/jTIKhSqVYPcxeAcDETEczfUKh4NuoPcLb0bp5Huxt/y2+n43nr66y1ILPNC0evcoe3uGUiFZq2u3//fYxUo9cQIxZf6Ns8hmedM8Ev62/IumNK04hP1whSgznSFxXsvUoxvUGVnBTBia1Ty/EMGoEsU35s8Enxw31Itxudw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3t8Jdtj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2F14C2BCF5;
	Wed, 29 Apr 2026 03:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777434406;
	bh=ZaTm28tVW+cEpNyLRk2tKxDeKxNiJ4l+2sUI2zFK0k8=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=h3t8Jdtj1m9StUgxXePbboP3QEPQikh4yE+pU8MYvhUT2DG2JXHmHG1GJC6h38Itq
	 VNKa5GQ+qkXHcSGnIQ7SKoTcSw1ONcZJ4QbsqpXBDEd+y374Ar335do0aAwAJHo4Gf
	 2ZnCFJDykoEFqSnbEHoYpmSIyGTf1rriFEULDR3mKgWPdrITInDEp6dY38HgLe7zVX
	 UWoxSO2CXjFNV6xKwE483Q7M7THaocpbpyYDAxNYPRYSiRlVwAPmPcfBOGXKsfvAFQ
	 Rf6mSl+5dhZdlthLn/BDBFclEEE1OKznmVyA59FhwOadYft9SS6qWOrET5XhvcSkiV
	 Y1uXuGTJd1gdw==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7a76d8cb.5bab.19dd3645d4e.Coremail.dongxuyang@eswincomputing.com>
References: <20260423090904.2108-1-dongxuyang@eswincomputing.com> <20260423091114.2326-1-dongxuyang@eswincomputing.com> <aeo8nn-eigzlojWx@redhat.com> <4e5c887.5a31.19dbf179fb6.Coremail.dongxuyang@eswincomputing.com> <CABx5tqK7p_XJHfXZ70gXhR88PzAteV7cVSFPoRzccgmjanADMw@mail.gmail.com> <177733570840.5403.12558106273673899411@lazor> <7a76d8cb.5bab.19dd3645d4e.Coremail.dongxuyang@eswincomputing.com>
Subject: Re: Re: Re: [PATCH v3 2/3] clk: eswin: Add eic7700 HSP clock driver
From: Stephen Boyd <sboyd@kernel.org>
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, huangyifeng@eswincomputing.com, benoit.monin@bootlin.com, ningyu@eswincomputing.com, linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com
To: Brian Masney <bmasney@redhat.com>, Xuyang Dong <dongxuyang@eswincomputing.com>
Date: Tue, 28 Apr 2026 18:51:22 -0700
Message-ID: <177742748214.5403.15526965667317467444@localhost.localdomain>
User-Agent: alot/0.12
X-Rspamd-Queue-Id: 834B148EBD0
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291264-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[localhost.localdomain:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

Quoting Xuyang Dong (2026-04-28 02:21:03)
>=20
> The common gate API, the HSP private API, and the reset driver all access=
=C2=A0
> the same register space.
> Therefore, they need to be protected by the same data->lock.
>=20

If everything is accessing registers through regmap why aren't we using
the builtin lock with struct regmap_config::use_raw_spinlock? I don't
understand why we're rolling our own here.

