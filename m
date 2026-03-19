Return-Path: <devicetree+bounces-277908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFiSGKwovGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:47:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9572CF11F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 473153006176
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B96D3ED127;
	Thu, 19 Mar 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6O09R++"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5493ECBE3;
	Thu, 19 Mar 2026 16:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773938852; cv=none; b=M4emR2ItV7VBTOPaKt366hSUB4JktjqMGZ6Lf2FfejknAnf3VVHJMPY7QYgZ5QufjAdr0nn2oXJaX6/5R+yeWReeeQbmKQHn3cKKeX7ELSL2mzRmjpVAD4HGjmbzJQuu93o62Rv+8HEc8ozmgVh98qEwcpcdKETzx6ETTfYIghU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773938852; c=relaxed/simple;
	bh=Q9bmMfFx9VaqawS+DAi/VMX7Ox1YGfZETdSY0ka144s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RzMUElKkciMtuOyG4M1cELaCLNTNgzhqLOQm2lwjB/etz9flLdnBOCmLjH5iB1PhZ2ZU40EuOrWJgtBfUzaPpTiqmsx3rNVd+WF3i5HBe4x+xkZjqDMl/TelMyobgeL0wSrvrmARCAkdhGBKIy3lGksr/z8oR4yrmMeKmdmxncY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6O09R++; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 548C6C19425;
	Thu, 19 Mar 2026 16:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773938852;
	bh=Q9bmMfFx9VaqawS+DAi/VMX7Ox1YGfZETdSY0ka144s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O6O09R++VeRZeBLvlRglepXSbWOnsIhuBkcGpNhTMB1/MxNyYTeJapekjDaW9ym/U
	 g3WiEdfd8R7uBK2Xz+c723Mt4iJoIhcaf2D0KORmNFiAcBex9S3LDRiAatMQMSmEp6
	 hxCeFN1P2frgIgp4rTTbaO08bJzT3s/ict3CmhuZ7Od9S9bnxl1tk3RYNwiYwtltlO
	 BmL3gyQPevLioogcVVd92zpTvWC7r9ofVSUz2yQElRmOw+UfqSCYLuP3sXupZcEHPc
	 D/laaMiHxUOPr3yX1/rh+tkLZh0/blr5EGrrm3OO7RF/31GDgPmVJKMZcumqeUrw2y
	 q7Y2i0DjnTmwQ==
Date: Thu, 19 Mar 2026 16:47:27 +0000
From: Conor Dooley <conor@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com, Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: fsl: add MBa93xxLA-MINI
Message-ID: <20260319-theater-aspire-8500b91fbdaa@spud>
References: <20260319125013.2421621-1-alexander.stein@ew.tq-group.com>
 <20260319125013.2421621-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/6QbIyqIGRlgMuc7"
Content-Disposition: inline
In-Reply-To: <20260319125013.2421621-2-alexander.stein@ew.tq-group.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-277908-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,ew.tq-group.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EE9572CF11F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--/6QbIyqIGRlgMuc7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--/6QbIyqIGRlgMuc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabwongAKCRB4tDGHoIJi
0uTNAPsEyayXseF02444xp1C/jh1jrMtTIiGUoPEhRjgH5ffcwEApfj3NtwQgBqm
vlSCD93D6v9TigARn+e896cjCGUAoAU=
=JafL
-----END PGP SIGNATURE-----

--/6QbIyqIGRlgMuc7--

