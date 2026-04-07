Return-Path: <devicetree+bounces-285389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPQjNocp1Wli1wcAu9opvQ
	(envelope-from <devicetree+bounces-285389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:57:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 483733B1679
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:57:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45ED6305BDDA
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 15:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84EAE3CB2DA;
	Tue,  7 Apr 2026 15:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVkXUa4U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A296D33D4F3;
	Tue,  7 Apr 2026 15:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775577396; cv=none; b=F2AEAHIFgvRMEXOS9/3cwqzm+WtMYj7QnxtzR1E+1cN1WLfbwocevaMrliKMaDOCZf36JV8/TGKE2RERdf+igU98AjhswMnFX9zvWnrHTjR7nyXls+cMZjDXtQmM+CAbTBMqGej67YdeRIXQuqBsMbLHmI07ssQsvnkmHhbVJnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775577396; c=relaxed/simple;
	bh=NBginxjQpY5zWOywW16W8I3akeH678SWQxBFKW44t3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZdNNJvDJUC0HtA1ZJv5F0goFaRUWTU9DgNRT/OoNEk1zLs4+Mbv2FKvmjWsgtfcLOhhdAjVOJuJwKH8t4oetq2OVN9N3BlVslS2WrczLrpiS22N8Fdd5pP3fONmliARnur/82PWa6tcBO8BOtDfA0JEtkPfwEEVDywoYEEZbM5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVkXUa4U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8D9BC19424;
	Tue,  7 Apr 2026 15:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775577395;
	bh=NBginxjQpY5zWOywW16W8I3akeH678SWQxBFKW44t3c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OVkXUa4U7lFt4zeLG3ANfF+w3gur4pb/yogIEiFjeCCYD4dVmrzEmxAsGaTFZ3JGk
	 NajRXyoRi7hjdayzjgDqGoRmkFKSQJ4EOXCBTLnuxwLJDxEC+f5ZRqXGh9g3JvRAGW
	 42hex1F7Ts6HELPCISe8aSGBwNUa7/MDQ1uURSGydjfhBj9wqyVZ45i0fndeQ7XhJr
	 X0kN+1LgsEe3uEbK6jMkFPt2IBHLK6cnOIqZu6zpbCN/hSVYaPlKLv6i9RcZ1+UvQz
	 OssDQ38gZ48R4Mna3hmpT19yQl3AUb2xAfQm1s36eXaWckHPKwcpPO8T9+n7Xa3acI
	 bm2cmKSKYZhxA==
Date: Tue, 7 Apr 2026 16:56:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>, Yixun Lan <dlan@kernel.org>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Drew Fustini <dfustini@oss.tenstorrent.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Guodong Xu <guodong@riscstar.com>,
	Michal Simek <michal.simek@amd.com>,
	Junhui Liu <junhui.liu@pigmoral.tech>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	E Shattow <e@freeshell.de>, Icenowy Zheng <uwu@icenowy.me>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Michael Zhu <michael.zhu@starfivetech.com>
Subject: Re: [PATCH v1 2/5] dt-bindings: timer: Add StarFive JHB100 clint
Message-ID: <20260407-unedited-overlying-f6df47c67bb8@spud>
References: <20260402084019.440708-1-changhuang.liang@starfivetech.com>
 <20260402084019.440708-3-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kMoR5+08vDaynfqs"
Content-Disposition: inline
In-Reply-To: <20260402084019.440708-3-changhuang.liang@starfivetech.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285389-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 483733B1679
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--kMoR5+08vDaynfqs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--kMoR5+08vDaynfqs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCadUpKwAKCRB4tDGHoIJi
0nkCAQCF1trie0lGSrIHLjvIGC6J38e4uQb8ehDoLXToq1bzJwEAjZoHqYGxCsJY
AVcNOOcsfu2v3Yn73Lqb3GBFrPULrQs=
=q91Z
-----END PGP SIGNATURE-----

--kMoR5+08vDaynfqs--

