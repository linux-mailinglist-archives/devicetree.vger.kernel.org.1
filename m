Return-Path: <devicetree+bounces-302608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NmvAq4rFGraKQcAu9opvQ
	(envelope-from <devicetree+bounces-302608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:59:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F955C98A2
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BF65300460C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 10:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368963DD872;
	Mon, 25 May 2026 10:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsCOy4RJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5E6373BE8
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 10:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779706706; cv=none; b=t9bwa3RpW2+EaQIAERhZRuJW+eN77O2Wx20weBvx3UlFCYc4dLzEyGA3P733OHSbKSsSeGXygXFriEpATrHnGMjIAZinS7TtVZoyfxPJCbF/w3LU72dLb9jZReglFHiKKMfdl8csl1IkjDypVFi2X8mvKaOFgavttNzMDEDhs6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779706706; c=relaxed/simple;
	bh=Dc+e9pKqRc6y7AdRt6UwDYu/Gr0MYMvHl751FF592S8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oI5E1aVsb+N4P6xTaPP0rOMqOUbIquspnJFqYkX4DXJlZpPVzzbe65zRgH6UhyVlgcfQhk5RINkRedhx/8xqdQUmYpZ9RJRKltz/GS6Xh0Wz1ykidFIviu5T+CLMpeEg/Bz7CHGZOJ+PlYixAa/7teJ16FtRG2uPeHu++OY5axQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsCOy4RJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFC501F000E9;
	Mon, 25 May 2026 10:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779706704;
	bh=2FI0OgXHvwzNPRa/bz2QcfBjRwR+N6hUsJED4ZnS0Ms=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AsCOy4RJcyJJ2X3D2ZerK1vHysL95r8HzZzztYGRtKx+v7wc6qu+5txkT/dW2v2sD
	 HNdf9yuFjsNmtBgsVPtgUUhDtA09xCpllzAweCLWjwVeN76W7yufczKBnxnRpUWj8D
	 B8tmxDX7MgudO9578uQXo2QFJVhkzvTjY4TjRXjVxXtZy6IhYlH5gEg4XnlM9hVXga
	 7R6CAQwraRWEDYQWP9ykMY04SFSMnlch3+cRNpzLIpWDpd5RRv7LNQrG1EqqDzGSu6
	 GJF1g9IJEygBXaEp+kXR9ukdpGQoVxt0pjI/eF2LZ9tewrLw3gHy4WJyvKkko0vI8x
	 BkKUqq7exKTaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 02/11] dt-bindings: iio: adc: hx711: add VSUP supply
 property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260525105127.180156-3-piyushpatle228@gmail.com>
References: <20260525105127.180156-3-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 10:58:24 +0000
Message-Id: <20260525105824.AFC501F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302608-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 52F955C98A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message only mentions adding the `vsup-supply` proper=
ty, but the patch also introduces the `dvdd-supply` property.
--

commit 08268b52281271722eaa018a9daabd0f4d0e5e0e
Author: Piyush Patle <piyushpatle228@gmail.com>

dt-bindings: iio: adc: hx711: add VSUP supply property

This commit updates the avia-hx711 binding to document the optional
vsup-supply property used by the on-chip regulator.

> diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/=
Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> index 1ea60dff98d59..0baf620e90572 100644
> --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
[ ... ]
> @@ -33,6 +33,19 @@ properties:
>      description:
>        Analog supply voltage (AVDD).
> =20
> +  vsup-supply:
> +    description:
> +      Supply voltage for the on-chip regulator (VSUP).
> +
> +  dvdd-supply:
> +    description:
> +      Digital supply voltage (DVDD). On the HX711, DVDD is a
> +      board-supplied digital rail; it was missing from the original
> +      binding. On the HX710B, DVDD must be greater than or equal to
> +      AVDD; when DVDD is a battery rail and AVDD is a regulated supply,
> +      one channel monitors the DVDD-AVDD difference for battery level
> +      detection.

[Severity: Medium]
Could the commit message be updated to reflect the full scope of these
changes?

The commit title and message only mention adding the vsup-supply property,
but this code also introduces the dvdd-supply property and references the
hx710b device.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525105127.1801=
56-1-piyushpatle228@gmail.com?part=3D2

