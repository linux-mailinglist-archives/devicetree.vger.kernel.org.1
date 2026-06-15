Return-Path: <devicetree+bounces-311625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CE6TFCqQL2pCCgUAu9opvQ
	(envelope-from <devicetree+bounces-311625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:39:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C876838AD
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:39:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ft1EVUXD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311625-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311625-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9AE9300AED8
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 984803A7F58;
	Mon, 15 Jun 2026 05:39:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85FC3AC0EF;
	Mon, 15 Jun 2026 05:39:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781501988; cv=none; b=LhSXDckj2syrrK35zwOBbvPSbs2RkKJq0QSEemxIYS10LsF4Gpmm/TFN3OizxK1g4gRbcGNF6ibD+b/GQ0zt7DYZK6cTCjJEPIUw14x0d/I2S1JejtOPR/QJUXo1ygmYmuh6zeTBacKpn4cMgo4uPPjSLWgJrPfExpQx0S9HOhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781501988; c=relaxed/simple;
	bh=aEF6Uxs4PezwgrsigNr9pS+CEPBWCWyBGIkrB+KaDFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A9JijKtJBn4nAEQTyjpm9u6kCHk2c54SOPpXuX537HN+GnIfFB4d0o6TN2bkR6gG6MBFji2GX6IGqZVefzmAv7wsqprW6YxeE3M1R2RiWeA4KAEgPZ2xTnoLUHy3XN+u3mQ0CpFM5FxuCjnhjeLzENqCzEWvrUBzCAF3q4mU7Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft1EVUXD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34C8A1F000E9;
	Mon, 15 Jun 2026 05:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781501985;
	bh=ERkEO9VIx5uSJjdM+32cpS9CjGbH5ZoswAyC6QclK6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ft1EVUXD0kq0QWbOzwfjY8rJUQfH/oj/zpPK7mPCsRgU2mbuIxJ0kAuIf8pcgEwin
	 wgQlHLN1EBwoALjc1SgWzYpDXnwFtR7FXItT1aKCGXIr+LPLbxLvDjNAqZHrd1WeVr
	 e7vVL6LjW1P4rexm5jIdSz5hnPRL15e8xvtir7W/Ra/7Q+k3UOjgkVVr36E1Wnd7z4
	 7qNMM7OpETuOgKXmTP0XtBebaqu6tv4PGxcb6JZanNlrVcuE5zLFSTH7fmU5R41zpQ
	 pbCdmN04gZiGG/QMmdEIofWDyrD555zrvG2p90n2ZU5QLHlfa7hNS9/oTNk+Yjy/7p
	 k8z359kGeET7g==
Date: Mon, 15 Jun 2026 07:39:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org, 
	Amir Dahan <system64fumo@tuta.io>
Subject: Re: [PATCH v3 2/4] dt-bindings: display: panel: Add documentation
 for lg,sw49410-lh609qh1
Message-ID: <20260615-outstanding-expert-koel-3dc2ac@quoll>
References: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
 <20260614-judyln-panel-v3-2-07f4134441bd@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260614-judyln-panel-v3-2-07f4134441bd@postmarketos.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sajattack@postmarketos.org,m:neil.armstrong@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:jesszhan0024@gmail.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:david@ixit.cz,m:phone-devel@vger.kernel.org,m:system64fumo@tuta.io,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311625-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,ixit.cz,tuta.io];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B2C876838AD

On Sun, Jun 14, 2026 at 05:07:59PM -0700, Paul Sajna wrote:
> +    dsi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        panel@0 {
> +            reg = <0>;
> +            compatible = "lg,sw49410-lh609qh1";

Ah, and you never tested this, so I should not even review it.

Be sure you test your code BEFORE you send to mailing list. Our build
infrastructure is not a replacement of your testing.

Best regards,
Krzysztof


