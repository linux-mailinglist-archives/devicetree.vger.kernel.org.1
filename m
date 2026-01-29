Return-Path: <devicetree+bounces-261024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qChIALvGe2m7IQIAu9opvQ
	(envelope-from <devicetree+bounces-261024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 21:44:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D753B4544
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 21:44:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E0B0301944E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0A63587DC;
	Thu, 29 Jan 2026 20:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf/NQ5R6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B908326922;
	Thu, 29 Jan 2026 20:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769719472; cv=none; b=W8VZKMYnQo8yI4M6JPPVWEULk/2DHGb6ZU2kvTkkJv0PQdvwn90CnK83i/yE6jO0p5QZ676GvMM2D7BYA6ush/mNR4FSIlVyLqqpWM4eFCSCxzQ+vDF2oDDss4YsOGZqzM1VT1S+OmtK6h4umRp7QnmQexTP1S/pWqMMcZGWGEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769719472; c=relaxed/simple;
	bh=GdsVRlXM1k21xELKCI7V+gXC1aV8IjxKYFA9ELYBG0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QeX9gqGZLnFMroWPsmTYVkI/IIRqZhQtZiNyWsltq6VJWZnype2Ibzd2uXkGf80NEr6P8Zd/myQ7bGn7AgHM3GMDoTnxgvrnY3Yp0VRRYnxGBWwihMRcOcln7vAvDoGtuLibaSy62nWGM7PMCSuDbfuZeRyDGwRzMLdj5VCQV/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf/NQ5R6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7883C4CEF7;
	Thu, 29 Jan 2026 20:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769719472;
	bh=GdsVRlXM1k21xELKCI7V+gXC1aV8IjxKYFA9ELYBG0Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hf/NQ5R6LhBdJyC4Tj+pWrF0EgpeZDK7GQ1YIe23OiJeRbPFOawP2hDi8e1uUB2B0
	 tZqhuGu8mmp3Uw9UGD5rsQirNya+CFAiowoEf4WEDHhFMtSJY9rBE7maTlCwVHQJKN
	 8K25/UjlnDU3w9wZD2F79qC+oj6W0Rw1JhD+mdcti23J6WwI/C4zlUG8RezLwSE7b+
	 /aFVnIsSONqAx9Zt8Re91XjwxPXXLUiKwYlW0QbwxK/LWGfIC1jHnzSH+PrAfZLEpx
	 hdNPDK3Nd1mGKjTAKVFfqCjpiYBzj1jtvhv7GO1IFzuk01o7EJ21dFrPfCy5K+dl5T
	 NSnIMnCEcQXjg==
Date: Thu, 29 Jan 2026 12:44:30 -0800
From: Drew Fustini <fustini@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
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
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v6 1/9] dt-bindings: vendor-prefixes: add verisilicon
Message-ID: <aXvGrqEs7b2e8zy4@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-2-zhengxingda@iscas.ac.cn>
 <aXpwED5wSZbnIjae@x1>
 <20260128-smokeless-angular-cff7e16ff8dc@spud>
 <aXp2jfkpQVZ94rjU@x1>
 <20260129-riveter-mute-bd981d46d58f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FwYy0f0XsLkZYND0"
Content-Disposition: inline
In-Reply-To: <20260129-riveter-mute-bd981d46d58f@spud>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261024-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_CC(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9D753B4544
X-Rspamd-Action: no action


--FwYy0f0XsLkZYND0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 29, 2026 at 04:50:59PM +0000, Conor Dooley wrote:
> On Wed, Jan 28, 2026 at 12:50:21PM -0800, Drew Fustini wrote:
>=20
> > Are you saying it is okay to leave the dts patches in thead-dt-for-next
> > even though that means next will have W=3D1 dtbs_check warning about
> > undocumented compatible?
>=20
>=20
> fwiw, I was chatting to Drew on IRC last night after this mail so didn't
> reply here.

Thanks for your guidance, Conor! I will wait for Thomas to confirm
regarding the yaml and driver patches before I create a pull request
for the 2 dts patches.

Drew

--FwYy0f0XsLkZYND0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSy8G7QpEpV9aCf6Lbb7CzD2SixDAUCaXvGZQAKCRDb7CzD2Six
DFrnAQDs/4vRK87uN9IOfqxG2KDOzqlXmIEHF9u+1nkktHTUqgEA/5WiVfJCKVCR
dEkdBRJBP1OexTklm9WUzCVeXs5pxA4=
=nJEw
-----END PGP SIGNATURE-----

--FwYy0f0XsLkZYND0--

