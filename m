Return-Path: <devicetree+bounces-324143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0EU7EaQMUGpZsgIAu9opvQ
	(envelope-from <devicetree+bounces-324143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 23:03:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA8F735B71
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 23:03:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=J1ORaDSW;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324143-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324143-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01F643070D1B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 20:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A46843E0749;
	Thu,  9 Jul 2026 20:54:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240263D3337
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 20:54:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783630480; cv=none; b=cv2zPZXiU9peNC4GAHW+81hQfCGEJM9CRFi2A7feIAcJS9PEo/LS7648Ml29YSlMUpO9cj/wwgb9ki0x/2g9vqZ/RetBn2Q90Wf5TaQViONZtuAX6/sXU6sJRM9dC2XF6mwYTALz4vLE0H2qyPeM8UD4IwwF/8WVs9ZEPGOzfzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783630480; c=relaxed/simple;
	bh=WAkAf0NeAJ4TcMO1B/ogNRcOFYsvhoiZs72Fsfrq2U0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qqCkNCCBtbkvqKl8V7+BXn3nFW8j9+MEQcI88TUqF6T0w/ZHTxjxfUvcSwLvJV7BqOO/OYFyXx9+3LBYftaPzAkaHx0D6eRIqqHTVQRct9+ksF4m8XP81Lm1JJ2hl2zDotY00sr7FaMk6lP4Hc4clAEg6lBrHnwTMh1rQWziYUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1ORaDSW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B2051F000E9;
	Thu,  9 Jul 2026 20:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783630478;
	bh=6Nbo3uv52rQX8JnAdKp+0O4JbNIKPKZElFiE0PbagHU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J1ORaDSWsrx+DD3Xe8xbSg6dcpGeVZdLOgQNkWikV26hNopxB75rI/REPtPGV/CeR
	 4K2HlHX/WxBYzX6IgTFmXxpbcPSEVjBsVI4EmN1AAT9h4TTVIt8WMD8fUk/HE2sTim
	 jXn7qTOVE+PQ+OmMtfEtRVq6uNubHzQDXzZoPSWbk4eI4Meay18alRmNTAz033uROz
	 F9X6JFR7hb2dKU8EKJrKJdcJiVGXBnYBrT4i+i1dvmQ+VF47Ew8gL2KH6vtu6dq2Lk
	 gnPbjPZkNSrRm5EpDKaHnBuNRLgn43MynEbLijsBJ5ACvmSvz1z4YAFgCJ9E/yB0vX
	 iUiG1ZGytfdzA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 17/19] Documentation: ioctl: add CMH ioctl
 documentation and register 'J'
Reply-To: sashiko-reviews@lists.linux.dev
To: "Saravanakrishnan Krishnamoorthy" <skrishnamoorthy@rambus.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709203037.1884436-18-skrishnamoorthy@rambus.com>
References: <20260709203037.1884436-1-skrishnamoorthy@rambus.com>
 <20260709203037.1884436-18-skrishnamoorthy@rambus.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 20:54:38 +0000
Message-Id: <20260709205438.8B2051F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324143-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:skrishnamoorthy@rambus.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,rambus.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AA8F735B71

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Introduction of a vendor-specific custom ioctl UAPI for standard c=
ryptographic operations, with a stated plan to deprecate it later, violatin=
g the 'UAPI is forever' kernel principle.
- [Low] The documentation omits the C structure definitions for numerous PK=
E, PQC, and SM2 ioctl commands, rendering the UAPI reference incomplete.
--

--- Patch [17]: [PATCH v2 17/19] Documentation: ioctl: add CMH ioctl docume=
ntation and register 'J' ---
commit e840789907bd334a011304ecafd76c3e8f7309d6
Author: Alex Ousherovitch <aousherovitch@rambus.com>

Documentation: ioctl: add CMH ioctl documentation and register 'J'

This patch adds documentation for the CRI CryptoManager Hub (CMH) driver's
ioctl interface. It covers key management, KIC key derivation, PKE, PQC,
and SM2 operations, and registers the ioctl magic number 'J'.

> diff --git a/Documentation/userspace-api/ioctl/cmh_mgmt.rst b/Documentati=
on/userspace-api/ioctl/cmh_mgmt.rst
> new file mode 100644
> index 0000000000000..b0968ba6b1533
> --- /dev/null
> +++ b/Documentation/userspace-api/ioctl/cmh_mgmt.rst

[ ... ]

> +RSA Operations
> +--------------
> +
> +CMH_IOCTL_PKE_RSA_ENC
> +~~~~~~~~~~~~~~~~~~~~~~
> +
> +RSA public-key encryption.
> +
> +:Direction: ``_IOWR``
> +:Number: 0x10
> +:Argument: ``struct cmh_ioctl_pke_rsa_enc``
> +
> +The public key (e, n) is passed as raw user-space buffers.
> +

[Severity: Low]
Is it intentional that the UAPI C structure definitions are omitted starting
here?

Unlike the earlier key management ioctls in this document, this section and
the following cryptographic operations (PKE, PQC, SM2) reference an argument
structure (such as struct cmh_ioctl_pke_rsa_enc) but do not provide its
layout.

Would it make sense to include the C structure definitions for these ioctls?
Having them in the documentation allows reviewers to easily verify ABI
details like padding and 32-bit/64-bit compatibility.

[ ... ]

> +Migration Plan
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Several ioctl commands provide operations that may gain dedicated kernel
> +crypto API bindings in the future.  When those APIs land, the driver will
> +register through them and the corresponding ioctls will be deprecated
> +(retained for backward compatibility but no longer the primary interface=
):

[Severity: High]
Could this proposed migration plan conflict with the kernel's guarantee that
userspace ABIs are permanent?

By introducing vendor-specific ioctls for standard cryptographic operations
with the explicit intent to deprecate them later, this establishes a
permanent, redundant custom crypto ABI that the kernel will have to
maintain indefinitely.

Should these operations be delayed until they can integrate with existing
kernel abstractions, or propose extensions to them, rather than implementing
temporary ioctl backdoors?

> +
> +- **EdDSA** (``CMH_IOCTL_PKE_EDDSA_*``): will migrate to the kernel ``si=
g``
> +  API once ed25519/ed448 algorithm types are accepted upstream.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709203037.1884=
436-1-skrishnamoorthy@rambus.com?part=3D17

