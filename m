Return-Path: <devicetree+bounces-270715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEqNIjoxp2kjfwAAu9opvQ
	(envelope-from <devicetree+bounces-270715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:06:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9D61F5A47
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:06:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BAE853025A5F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C53F386452;
	Tue,  3 Mar 2026 19:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSt/YQAY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092153264E8;
	Tue,  3 Mar 2026 19:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772564790; cv=none; b=rQFR8Z9SKwhX9rz0lLDkXFETA+pkcBDo41p1n3X4h3MNy8Iv/ypPiBa4uN0C00zcceM+CxXL2J7nl5VDZQZH0Z2EUi5/jY6OWa0uqcTlg1aWaHonV4hRKf9Uij6cScVdM9N+4vWkjzPVJ/x8Uqh0FHcKMVEZP8WJDzfbLbQ/fSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772564790; c=relaxed/simple;
	bh=udsqt62be3fTNB6aANOwKklyBimPk/HKp9tdImDDzNw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I3u1r9ly41fF7u/fZ38ymoD7YCYDPfc6pjuGUiK0FQvg7Oi3Zc+CUTD3lLxgZNjjv5QeF/Lx4OuFPBYFFatYy8hLztlZSUylTwhUM3VI5ReEnBrZt/I7asleSw7TpFeXHhxbrsy54V5nx393GsDxBGPFhZ629FYKn21zRWXVWLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSt/YQAY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 571B9C116C6;
	Tue,  3 Mar 2026 19:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772564789;
	bh=udsqt62be3fTNB6aANOwKklyBimPk/HKp9tdImDDzNw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tSt/YQAYnquN7zu0gDt2rE/VAzOsA4Pb29DN6rIs5d3OUeznp0WstxcAxhmh6ji5X
	 kdxM/+Ni9s1mctKlWEFefHyEI/Ug12CENLv01fp2CStIC8E1SNVmeOb2nx/F5XRTny
	 /Ok1BAnF2b3TTM8Jjg/hpYsxZ+MOfHG3PijUknwhAH5L+JB7ZcaAOXAm9EWikO5I0Y
	 HWlO3vYeH96H+dJe+vX2A683VBacyZsQ5q/3njEU9OJcUjNkeoloE8iPhNpv614Ica
	 UV3p7x6b1fwO87+32a/ubs6Ov/Vky9eonF/9dnBRP3g7GdIZOr0mvxhTTZi+NfaA64
	 /j2QbYrZlCo1A==
Date: Tue, 3 Mar 2026 19:06:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Eugen Hristev <eugen.hristev@linaro.org>, kernel@collabora.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: mediatek: audsys: fix formatting issues
Message-ID: <20260303-headgear-cultural-fc3fcfa6d5d7@spud>
References: <20260303-mtk-audsys-dtbinding-check-warnings-v1-1-e4e1b62f060e@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9uYtSDt8UhnpZ+q8"
Content-Disposition: inline
In-Reply-To: <20260303-mtk-audsys-dtbinding-check-warnings-v1-1-e4e1b62f060e@collabora.com>
X-Rspamd-Queue-Id: 0C9D61F5A47
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270715-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,linaro.org,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action


--9uYtSDt8UhnpZ+q8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--9uYtSDt8UhnpZ+q8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaacxMAAKCRB4tDGHoIJi
0pJEAQC8ksf9N/+Db1mmHTAV8CZa/sM/xDwJ989NA4DyRZFVAQD+O6pswhT4AsBm
QM4QykI6rtIS0Bi5fec85FFRyaM+fQU=
=XmD8
-----END PGP SIGNATURE-----

--9uYtSDt8UhnpZ+q8--

