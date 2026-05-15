Return-Path: <devicetree+bounces-298485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCrRAaFeB2pa0QIAu9opvQ
	(envelope-from <devicetree+bounces-298485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:57:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0CD555BCF
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59980310C820
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 17:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75074EA380;
	Fri, 15 May 2026 17:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krsDujO8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833C94E3797;
	Fri, 15 May 2026 17:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778864970; cv=none; b=CPaA98sstppfyueNPc6pjFRibpq9pcuVailHx9lgZMIGeJJnk48P9mRJzVU0jXEQu4xnDVsn49xMFK5lnl3PjsD0xlVyaSqyuqDMSkB5vp54Fqffp6Rm7M7UeKgYeaN14PxKmhmXbGU/N59yDBVgt29IfAVKMyLbQLTt5L+05Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778864970; c=relaxed/simple;
	bh=Fns2SznFonb9Py9VHtydcTlcgDaFN6CJlbd+c05s+Js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mUi/LrOi+MraC23ojcadAbPg6B56SptXwkJoXQNp6BUMQSuz0pOpDVCnNUSpDNFENJFsSntAdt0VKIlk4kBuSn2LgShdoe0xUOBdTDgr2JCkXRY8VLq70TgCufgbBfuv0lH9jzw9GLrF/xis+2jq99RcdOjV3SqFnodi+p/tBUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krsDujO8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AA5AC2BCC9;
	Fri, 15 May 2026 17:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778864970;
	bh=Fns2SznFonb9Py9VHtydcTlcgDaFN6CJlbd+c05s+Js=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=krsDujO8Cnm3POqIIFYZZOf+wAOfWFjEJUE9aHMOKlIqdnMQhTMOnlYxnmErtkXu9
	 BUS9COf8+C1znAGfMBcVLAu6dbt8dwEaEcPs/OXje8cz0V4anDFiCuI6cv8RTEJBnK
	 pQaRNltZl6SCC35ReWYwhxip+0zzrqtQAuG6JqoZ6emLRvTwOXzxUNS5HPX8etjHvg
	 2A2OWySfprW8i0kaZK0Mk4y82MgsTNHD1whVI9RwL7Cqilm8mMMNReOxFVb7YDUsGe
	 lWHMnK1aorTGpQ6j/nji0hWx5rPjRnWQ090c+FCOcgZ3HPtUl4ReIPiWH+e5U+GgGI
	 QD727DpXBLCYg==
Date: Fri, 15 May 2026 18:09:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add NEC
 NL6448BC33-70C panel
Message-ID: <20260515-expel-line-8637d4c6e0ab@spud>
References: <20260515-v7-1-topic-panel-simple-nl6448bc33-v2-0-74ab0baa1817@pengutronix.de>
 <20260515-v7-1-topic-panel-simple-nl6448bc33-v2-1-74ab0baa1817@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7KlJ2YL6hZLhvSsg"
Content-Disposition: inline
In-Reply-To: <20260515-v7-1-topic-panel-simple-nl6448bc33-v2-1-74ab0baa1817@pengutronix.de>
X-Rspamd-Queue-Id: 5D0CD555BCF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298485-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Action: no action


--7KlJ2YL6hZLhvSsg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--7KlJ2YL6hZLhvSsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagdTRAAKCRB4tDGHoIJi
0to6AP9+Wy0qXnDSTRPh3EgoPplQWIatAULqXwzMRRxKIRGY9QEAnTH5baXYcVtq
wm4M57V1n8hvEwdn7ZPoADqm3UmomA8=
=xOcb
-----END PGP SIGNATURE-----

--7KlJ2YL6hZLhvSsg--

