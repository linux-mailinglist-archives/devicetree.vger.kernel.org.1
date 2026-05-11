Return-Path: <devicetree+bounces-295880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMOWB8JmAmqhsQEAu9opvQ
	(envelope-from <devicetree+bounces-295880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:31:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96D5174C6
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:31:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE3CA301DADA
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:31:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E602D6E72;
	Mon, 11 May 2026 23:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N90clGnV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA8C2FF66B
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 23:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778542271; cv=none; b=IVu1oRUbXnOSsgRtTNFGAxMwJ9T+ilP1NRPrko9EmaLN3NrliATBP8kO4rUcklAAy4SqiYsCnGkSSgJpB08ssjsZX8Ofl3z+FVstqsk+ruCaFvaBHli+9iP+K8fuTI1DpF/Io6mRAvP+5Mvy9H29nPaNUJ2KzOi7Ea1iE+PutzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778542271; c=relaxed/simple;
	bh=HvVrJZRhvOXQ5WGlN8OqQbVPwD1+uIkhVAC8WUku1no=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R+F7xAI8MqhXWPs/bWP1z9MaOso3s1aUEpLJo+I0/0651syJg/S38HsRyOQf+uyDAUwSQMtwZA9i2RcSvKTiPoslUFOQZl4b9BGb964keqoUI+rX6gNVws+NAU7yAH181Z3lpPYqfTgipBBgNwkZOObNGZvOSCHXRpX1dyk1K6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N90clGnV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A317C2BCB0;
	Mon, 11 May 2026 23:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778542270;
	bh=HvVrJZRhvOXQ5WGlN8OqQbVPwD1+uIkhVAC8WUku1no=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=N90clGnVllJGoMcGuPXYjc96fTw/QOK7K4dLwA3XdUOUgrWgW4SJkvK46FJ0jJNX7
	 MnBUnkWoa1hyoyJ0GbnIoAyMIxeK/0qvDR3a/42sN5VE3IRTgzfzDZOK6hDuyDrhsF
	 U6vNrWsQ5TiVSjZhg2HelVe2CBF/KNSh4Tc+tbS/+7Ow27JSwDP//csLyR2NfX0CmQ
	 G93UkovmlifKo203CJ8QTODPWEpzzEVBvtxfhKkZ82Z6DWHyg4+qkYRuDP3PtpdTp+
	 BWoM3c5Dle65iS956uWc6Wy9vHDWZW/aFUWeAtiPhQY+y8yTz/gXEBK/dYmzG5kNdv
	 ZTldwmRZPwFKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 11/11] Documentation: ABI: testing: add common ABI
 file for iio/frequency
Reply-To: sashiko@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510-adf41513-iio-driver-v12-11-34af2ed2779f@analog.com>
References: <20260510-adf41513-iio-driver-v12-11-34af2ed2779f@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 23:31:09 +0000
Message-Id: <20260511233110.5A317C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6F96D5174C6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,analog.com:email,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295880-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The KernelVersion for the moved `out_altvoltageY_frequency_resoluti=
on` ABI attribute was incorrectly updated to 6.20 instead of preserving its=
 original 3.4.0 value.
--

commit 59c63b99530f4ce70f9ab8349bf07c68787a1bfa
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

Documentation: ABI: testing: add common ABI file for iio/frequency

This commit moves the out_altvoltageY_frequency_resolution ABI documentation
from the adf4350-specific file to a common file to be shared with ADF41513
devices.

> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-frequency b/Document=
ation/ABI/testing/sysfs-bus-iio-frequency
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-iio-frequency
> @@ -0,0 +1,11 @@
> +What:		/sys/bus/iio/devices/iio:deviceX/out_altvoltageY_frequency_resolu=
tion
> +KernelVersion:	6.20

This isn't a bug, but should the KernelVersion be kept as 3.4.0?

The KernelVersion field documents when the sysfs attribute was first
introduced into the kernel, rather than when the documentation was updated
or moved.

[ ... ]

> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-frequency-adf4350 b/=
Documentation/ABI/testing/sysfs-bus-iio-frequency-adf4350
> --- a/Documentation/ABI/testing/sysfs-bus-iio-frequency-adf4350
> +++ b/Documentation/ABI/testing/sysfs-bus-iio-frequency-adf4350
> @@ -1,13 +1,3 @@
> -What:		/sys/bus/iio/devices/iio:deviceX/out_altvoltageY_frequency_resolu=
tion
> -KernelVersion:	3.4.0

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510-adf41513-i=
io-driver-v12-0-34af2ed2779f@analog.com?part=3D11

