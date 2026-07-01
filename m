Return-Path: <devicetree+bounces-318579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eCbQIA8RRWp/6QoAu9opvQ
	(envelope-from <devicetree+bounces-318579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:07:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE4C6EDD72
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:07:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=kfXmbI1B;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318579-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318579-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFE6B30C24C0
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1FF481651;
	Wed,  1 Jul 2026 12:50:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11693480DF1
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:50:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910249; cv=none; b=Fhg84x+rU6XgTjCEA2ASubMj3n2/QPlP9JYSOA30P0Ixlnt6octGS5mkCr/MTVDS588Q6azRkdaMav9eezLpsFZmXt4W/dhBjnsAONJ/Ws5zRZzzSaLQ3O1457ddWOH0wR7HXS91VWXK62Duz3vZqFqz9NEofTxRtAusItfpFU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910249; c=relaxed/simple;
	bh=3CxgZa80fpwtad1NZVQIKM5jkc/BDhNkyW4UZ8cWOoc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=nW3mcV+V0uKFkgvmFw9M+cTOctsMLxYXEVbQo3kGW0XvC7TdH1iSpxWE3Vu1ksUNJ5E5fqC3rKOk2l8DCnZhbnnD2IdczLDEXD759qLWy1ZCmv7GeYpbKDq1yobbdGaT9ESl5XzSLG5tRN6ej5bibioZDImNA8o73T/l6b/Ixjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=kfXmbI1B; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-493c1950518so3261855e9.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 05:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782910246; x=1783515046; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MErk0SB6y7nvDuzL2sNtUk9wfZP7Spym0Y2C6C35Ids=;
        b=kfXmbI1B4/uvwVS/mcgcj0kbeBw7Uf66W6YlHlU0KH8kPWnfFLlctUjmxkxC4oOqq9
         Ef7fzNMyhuzHCuPlOVBuE6L3x3qglsZ4uQABbI7cQOcOjATAAYJFyi5UpELUot+dI6OP
         vC8l3owr2AZn9y9G8BETF2jCOGHWopJl2SrGQaDyI4E9UlR1vr73YECxc7UEG182x/by
         NSMouiJcx0YTXV852hPSwXu9dpHrZ9eFv7pVHS1TpRS1hcx7+2MG4dZ9xfcv92fjtO1P
         e/zM96Nt/YvZRMYF6IHZLOBtRFm3tHnSzuCxy7toXN3/6n6BdKdbYHJXs95ULFKnvoj+
         0b0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782910246; x=1783515046;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MErk0SB6y7nvDuzL2sNtUk9wfZP7Spym0Y2C6C35Ids=;
        b=DqWxRZQcEtqHKS8FTmmmRW5s6VI6dXR7N1EWKH+M9OnXFkfYZdbUzeQgDfpgSyfF1t
         8ms0xD2jAvH+IIKVzVLIJEBQnM2N1rmNboK1FMMzN3TKMJXr+3bHTV+NyMsIGIR8gN1h
         KzJGl9crygpnQpvQvZHuEBVr3f1CrdnVyuNGHoQUFMtRZvRJYAYDlpkgaWx6P0ZdUcwk
         fxmY/tD4Rlx7jvhIYTNxaRwmJkaUK6tTa2AQQCC/RmxIqLSffzv8vOMVUziMKdjaWtIe
         8WGYiqwQoX7JprxNNTl6mmhX3W3ZAoY7miwaQxuE326Iz9lC/x+0jVwSfQU3N1W0q/I6
         Ewyg==
X-Forwarded-Encrypted: i=1; AFNElJ/igZwdfzpvQGcCrSDXaSuPU+KIqRuUTu16zG92/CUHIsJFbeadVv3NY3ym2bw+ZW6towBii4XcWLMq@vger.kernel.org
X-Gm-Message-State: AOJu0YxM7scBJ92iG3Le4iSl7wlP3h4s8u2dVcIY9jUBEMBBVkkAyJKY
	N0ouDckIhb5jwbHUzmbHrQzdstn6WcVCDk7kXnQEDjE9iTz3/BYXoFX38Xhk3gwpH1k38lP0IlH
	jIEg7
X-Gm-Gg: AfdE7cnoNjg1JwGYdBWgK4VYY/em+WOyyCWy3hbUcvoan7B6EUR2TY67ru2qZzEvFXS
	3OBFEQ1+kfbg8P4/4LfeTcdlkxCS1OY/LP044eqBYHJG+qK1IwUTtwYB7kxBx1HdPhxiZtdYrA7
	Qa/0ik7SxXrysjjwuyReRuE+c4iVet2HtSqBPch7Cg86ZgvraUv9CjGvXigpMKVQrKTCs3nL9Mi
	O3MK0E5rsPK5VgpfWsPDvCzyNhfTNvx417EqTPigtrgGRZG8HT3zk9ZeGbRIK/lvjjWAhJhr+Wc
	utZazclWUo8y8a6XAsM3qIRRDIm+2Jce8k/IJ+lqjCpTDwvivc1JPNSUHYIUEoQxGXTA7VRJlYW
	aunQZt1SIyH6IPC/i9igE74ZClL1fMb2ayEyekECYNBQWCw3q/HeiABo/xbzOmIFK1Am03DYMCI
	mRz1FkNoxF
X-Received: by 2002:a05:600c:3501:b0:492:3fb5:3a17 with SMTP id 5b1f17b1804b1-493c230baabmr23336985e9.2.1782910246414;
        Wed, 01 Jul 2026 05:50:46 -0700 (PDT)
Received: from localhost ([2001:4090:a246:8638:9d68:67c1:6cf5:ad2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493bfe616f5sm34364775e9.1.2026.07.01.05.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 05:50:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=9bb7aa0e7bfaf132bd9bdf17c0d5ffceccec2a4b8d712d499eeac40c7796;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 01 Jul 2026 14:50:38 +0200
Message-Id: <DJN8XK5EIKU1.3FAVGBD6W2L2B@baylibre.com>
Subject: Re: [PATCH] arm64: dts: ti: Rename DM firmware reserved memory
 nodes
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Paresh Bhagat" <p-bhagat@ti.com>, <nm@ti.com>, <vigneshr@ti.com>
Cc: <praneeth@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <v-singh1@ti.com>, <bb@ti.com>,
 <u-kumar1@ti.com>, <anshuld@ti.com>
X-Mailer: aerc 0.21.0-146-gb5c16ebe1835
References: <20260630150919.457160-1-p-bhagat@ti.com>
In-Reply-To: <20260630150919.457160-1-p-bhagat@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:p-bhagat@ti.com,m:nm@ti.com,m:vigneshr@ti.com,m:praneeth@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:v-singh1@ti.com,m:bb@ti.com,m:u-kumar1@ti.com,m:anshuld@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318579-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFE4C6EDD72

--9bb7aa0e7bfaf132bd9bdf17c0d5ffceccec2a4b8d712d499eeac40c7796
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Paresh,

On Tue Jun 30, 2026 at 5:09 PM CEST, Paresh Bhagat wrote:
> Rename DM reserved memory nodes for K3 devices.
>
> Example:
> memory@xxxxxxxx -> to dm@xxxxxxxx
>
> This allows U-Boot to identify and resize these regions using
> fdt_fixup_reserved_memory() as done for TFA and optee.

How will this work for the updated detailed layout bindings that got
merged here:

  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D91ddd97e1bb26937a5c15fb51ec8f6b65dbe94b8

This splits up your one memory region into several memory regions. Here
is one patch that uses that new memory region:

  https://lore.kernel.org/all/20260701-topic-am62a-ioddr-dt-v6-19-v7-9-e9db=
8b16821a@baylibre.com/

This basically breaks up the one memory region into several regions.
Wouldn't this break the fdt_fixup_reserved_memory() that you are trying
to merge into u-boot and make this patch unnecessary?

Best
Markus

--9bb7aa0e7bfaf132bd9bdf17c0d5ffceccec2a4b8d712d499eeac40c7796
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCakUNHhsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMiwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlNa
9gD/RaHbD4yV3M+ODYbnqHOmPvOHI4Bgvy3v44f5zEBwHesA/1OoQNGICWQsmQsU
W2DtMnel9cjfAM+hs/vWQ3uB4ZAJ
=WZES
-----END PGP SIGNATURE-----

--9bb7aa0e7bfaf132bd9bdf17c0d5ffceccec2a4b8d712d499eeac40c7796--

