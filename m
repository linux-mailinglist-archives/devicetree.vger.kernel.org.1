Return-Path: <devicetree+bounces-302362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLIYOpJ3E2qLBgcAu9opvQ
	(envelope-from <devicetree+bounces-302362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 00:11:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 436605C4866
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 00:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFB0E3006B27
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 22:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E09B314B9D;
	Sun, 24 May 2026 22:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3JBvmlH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE4D3101CE
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 22:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779660688; cv=none; b=pYkHS5d0BmmMn2xDH7Gp+UwkIb9YluUvkchwjJUvQcnwri9mcPVRXja/ya2SVtbaSwBIue9qMPLa+v+969kxxNgOogAtHpH4RWV4DI3F0L5PQFTt+SUapLbPc/5Cxk4+BG5ImLgNVr8uMJo0anuK/gKYaZQ5Ry8RwGBizYjJ/Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779660688; c=relaxed/simple;
	bh=YwkkEYxqrh832l7uoVpIOEVx7uBQVkWWWwm+pECmgNE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Gba/G0mB7qU7q0oOhta9ULu+n5rdIKUafYZazhdQcV/QWVYMU5xBjUMw4tsym1ahaCsnGD5iLJ+BIp5lBfbT66CpqWdhLbDQl51my6Z3uatO1dsuLxua0oy2mNJ9AvRqxJxdKPQjLY14ij+YoZNThgt74H7H82PwbCDzMElbzFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3JBvmlH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA3471F000E9;
	Sun, 24 May 2026 22:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779660687;
	bh=2Uj3lvSZceGxKrn21unNUX/9fIXv5xVH+vgFoxfcJdI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G3JBvmlHDPNQ2Aqud2O24R4myA8K0qj2+UGIR/zHbQOYTQTdmVKgNx9QSw5BPZ8gM
	 BZD11zi79wbTUWDoHfdDoYUBX0nTGLjrDgVIlG5LMNnBAOwOIUaKlJfbM49IhSikOh
	 puRbIvzgAfRxWx6ByzOBiEQqI0HXPiFJ/fagq+vjrFGvJfHkfCdwem0RNf7RShJvlY
	 YhR2VearvxWeMEGVxI26H16iXsKOKZVmRJh7YJJOxsXShie3FOVCCTmcCiN4XmobVY
	 Z3GMCHojaYWe62YU9+G60g+d8RIzEYvVBJYxyY2FhfPe4U7u9eA6rLJD9CbofC6Utz
	 W2lb6aMj0sq7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: iio: light: veml6030: add
 veml6031x00 ALS series
Reply-To: sashiko-reviews@lists.linux.dev
To: "Javier Carrasco" <javier.carrasco.cruz@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260524-veml6031x00-v3-1-29165609b2b5@gmail.com>
References: <20260524-veml6031x00-v3-1-29165609b2b5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 22:11:26 +0000
Message-Id: <20260524221126.CA3471F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302362-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 436605C4866
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new entry in the MAINTAINERS file breaks alphabetical sorting.
--

commit c75afbde2cfc8b7f8986709a43e0d1e7b6d9ebe5
Author: Javier Carrasco <javier.carrasco.cruz@gmail.com>

dt-bindings: iio: light: veml6030: add veml6031x00 ALS series

This commit updates the veml6030 bindings to include the veml6031x00 ambient
light sensor series. It adds the new compatible strings and creates a new
entry in the MAINTAINERS file for the driver.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2fb1c75afd163..94a23bac568d3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -28381,6 +28381,11 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/light/vishay,veml6046x00.yaml
>  F:	drivers/iio/light/veml6046x00.c
> =20
> +VISHAY VEML6031X00 AMBIENT LIGHT SENSOR DRIVER

[Severity: Low]
This isn't a bug, but does this insertion break the alphabetical sorting of
the MAINTAINERS file?=20

Since "VEML6031" comes before "VEML6046", should this new block be placed
above the VISHAY VEML6046X00 entry to maintain the standard lexicographical
ordering?

> +M:	Javier Carrasco <javier.carrasco.cruz@gmail.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/light/vishay,veml6030.yaml
> +
>  VISHAY VEML6075 UVA AND UVB LIGHT SENSOR DRIVER

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260524-veml6031x0=
0-v3-0-29165609b2b5@gmail.com?part=3D1

