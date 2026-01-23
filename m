Return-Path: <devicetree+bounces-259086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJWtMy2tc2nOxwAAu9opvQ
	(envelope-from <devicetree+bounces-259086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:17:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F8B78E7C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 274323019131
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337B0265CA8;
	Fri, 23 Jan 2026 17:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrZakUyx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1072A257845;
	Fri, 23 Jan 2026 17:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769188650; cv=none; b=Z9hQ3Sgsun9ZE1dDHAKL6Qbn1ess0eEJYUhzJ1kq3mZ4PCnjmlMx5xArog8dASlj0YR7x8vF0uzvV/laNE9jfudiFChBqXRUHt9VpHlrzIhQ80VFrYjde1bC6oHYB0RfCAh8jqBmkB445rsDeAyWcDmZqUpHEDR0UttSN+NywH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769188650; c=relaxed/simple;
	bh=P5Hnd/WZNQUOKrJvfeoeqb81cI2VIDOte7u5QYMbQK0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YSWzLYfVt1BEs811XUNtl0wGiHxuxjRA/8k0CX/Avo1hW/tpv4a/3Nz2Dk5VVOfq5z3iEIBXaauzchJnTUUpdvbE7njxL2hGYsDXUGZDbhIXi2XxSnBqOgoxPpqF3rM3Shtk433YZrYHkMHCFw3MAWKOmlUFbXHOxjai711jNeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrZakUyx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 993F7C4CEF1;
	Fri, 23 Jan 2026 17:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769188649;
	bh=P5Hnd/WZNQUOKrJvfeoeqb81cI2VIDOte7u5QYMbQK0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DrZakUyx/2UKDr2/T/bKUkCVE1NsUp3PkGvc1VV81v3qdvT1kMjeJyBxA8Em/Njsw
	 pd25vLx4vVe6EZkofkUV+gJ9YVNmJxQZiWetwVJfW2P05TCFvUqiDDukCQzD7Z0glL
	 9zU5Ju/TcdgS0Dtuz42sv2Ygak8Mrl2N4YVRxV/U9tOinRUFn3QSOiDgIOajisVMGe
	 vtHIAFEUa5KId/LM9mT/L4sbP7d44TfzL+u1Qfaq6Oh9kkGmZ6IxafpnrxTSWVD0YJ
	 BCr2bw4y6KB6jR3tUC+F5sb7Bq/0wqMqIqhj5GF2cp3swR19j5CAwbiCX4+4VBltwp
	 spuhYvw3SzwFg==
Date: Fri, 23 Jan 2026 17:17:24 +0000
From: Conor Dooley <conor@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/1] dt-bindings: display: bridge: ssd2825: inherit
 dsi-controller properties
Message-ID: <20260123-museum-punk-fa9bb00752a1@spud>
References: <20260123073411.7736-1-clamor95@gmail.com>
 <20260123073411.7736-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="18YRWdJoT28j7wFE"
Content-Disposition: inline
In-Reply-To: <20260123073411.7736-2-clamor95@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259086-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.975];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 37F8B78E7C
X-Rspamd-Action: no action


--18YRWdJoT28j7wFE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--18YRWdJoT28j7wFE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXOtJAAKCRB4tDGHoIJi
0n4XAQCKAooHvLYH7COuGFIalm5782vhTjy784OiLMcRnTV3aQD9EjqIwdi68GtQ
W2588T4fzjSlKJ1UAWm2QSHNam3PpQk=
=oQLV
-----END PGP SIGNATURE-----

--18YRWdJoT28j7wFE--

