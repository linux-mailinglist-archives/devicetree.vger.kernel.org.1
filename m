Return-Path: <devicetree+bounces-317972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YH3TK6j3Q2o+mQoAu9opvQ
	(envelope-from <devicetree+bounces-317972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:06:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8696E6BFC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:06:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b="HMv/7z6x";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317972-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317972-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED608303282E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EDC83D8116;
	Tue, 30 Jun 2026 16:59:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A643D6CDD
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 16:59:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838773; cv=none; b=ecwj4Sub4xaetvwC0n/vGcaeVqitalkKEm3spl+xCajbLwvlm89zEHe5jHSJdCFroSV2NOUdu7iOmL+6XQ/+9OZsRpr1B2kg8nLpPm+ekQyQ8zZOc/noxqRFUekAATcvtvcSyf4L9+xfhtvp5PcMy7POzKIpB7mdWpO1udP1IFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838773; c=relaxed/simple;
	bh=FveIuuZW3MWr0DW5S0AtbDNefqSkX06Xtrdwa3y5Gzo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aqv1+mqF15l8y4daDzMP4xWcqXG2APjj+2GifGO5nBZqTSocAdIhIS7W3f9xsyfEnd10KVAQ2BWazbMwEc7Mz+aEzdYasaDLtYEAU4w/ib+8M5brT+EL09BqL38TWBD/emZQR7pIe/xp0obJbrpZSEfYb8IdcBGqK/LVFs691uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=HMv/7z6x; arc=none smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-47640541585so405374f8f.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782838770; x=1783443570; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ToPfySYGPKghPkEJRrJrIYgPfvQVtZ8t1xpbJGBGmt8=;
        b=HMv/7z6x82U/9firCQd5Xc3oP3uGYVM2fx9TKGFGMYXYnHTvKWKKmfbyZ2z2t7DAvB
         3EAepJB16g7eLUhHebRs95S8JkTZgAYRJL7BPaRKc0BsGG9PDV7yudPm6lbxJcxf0O3X
         SuDzqsCYm9i47b+uEEp6R8x8e7lWtSVd2GusKejdq3kouLQeXYkIYqtQsKkJGox1vZgJ
         XG28bM6A2rAhPydowd/8pKaAfJON4PL4yF1PTLDayUb/sO2PkrhoPpFa7z4RiCb8KJUR
         r04R9pFDfCTBZMeE3eCbIvfbGefKgA++pu8MfwbqQTv30HK+MmYigTXXtBQvcJwg6o9L
         xvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782838770; x=1783443570;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ToPfySYGPKghPkEJRrJrIYgPfvQVtZ8t1xpbJGBGmt8=;
        b=e2x5CMF9us2Fm1oTqwH2K3TUNNyqSe2ipZ3lY/p4PefbDAwMedHIYnZXwtdjEFdb2z
         ss3LifUhcpEcvknXi9qNUekahi/N9qDo0D20TL8/4NmdF+84Gu91VmJdiJDwFmjug8St
         0HHxtITWtk9xquuOCV2QvkatjSV7Nq0N0YvZQn7l0pFaLMj3DDJfthWhjbtU8+wpMep8
         3OOcKNSGmoltu4k6KoqpBP0JXl0CsTw8daFGNBQ16RloMccGA2hNhL4k2BT3pY0wCn1u
         hy2OtJ2XgQjEs1vwbw7jvJafBJ5yWfndudqaMx3DlGlIPforPqfLfF2yTIWIKXgCN4zr
         Bb7A==
X-Forwarded-Encrypted: i=1; AHgh+RoMRfpHJBCkm6eDlXRdEQH6ln1vEU9uDVY2yGhUlY3YPpvDT101PyhBq+Gj3vvJAfCBdejwF03J+jQQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzBgcSqImrhsa0jI40iPMHbc3ny4xY6CN1BI9LXmqAM8sbwNo8c
	GqZMGQXl4ReAnE/btCqoJPnKMj1DCpBVU4JINNpsFvJiTrR7NNcyTX2AyoMD3Eq1wkI=
X-Gm-Gg: AfdE7cmcn4OOdeyYttoPJoQzgPNkqDp5AuRVm6Fhfg5ky99reXCPbTrIZcTRkjDaaA0
	JnP+YhOswWNXzgPkSCHswmVLYHNBNkR2zzX0v7nK4t5nSNixgAzTiJEnpt7vjzE+JAKO3eIF/sN
	8NOhj7qquCkzEJM7sKKoWa5CR2qUaWG3biymHUvetjWZIOFOBCr3ZjAffePx7rPYA+6fFlHPyhK
	sY66JqhlUfXScJ+XvsQQm6qoqodA3bk/pvnsEkGRT+6UQSRYdj0dB7T7/ZdqvC2Gd4BwAbs5PAT
	2QdYTh/wDrG8NdS+kZeaQe0dE9fFczPv8tDUoArtmPJcxHKkW1Zg8GkAOBkht6MQJCFX6gJYLNR
	cogB3IjFDBuUny4vRIVfVyCzQgMSu7o5tr3yUD1Sn6B8s/cBt+AOGTocMvtBBb9A7VTaj54YD8p
	cq0InaD6dUnQ/34RSvIWoot+aE2Toofbpl+KhepNMFYMXcNyPKEamkcZtBiGO0/FKXJJEwvrM/f
	/hR
X-Received: by 2002:adf:e44e:0:b0:473:6e8d:7f8 with SMTP id ffacd0b85a97d-476586d066fmr1739874f8f.14.1782838769975;
        Tue, 30 Jun 2026 09:59:29 -0700 (PDT)
Received: from localhost (p200300f65f47db042a9b551def0a6b94.dip0.t-ipconnect.de. [2003:f6:5f47:db04:2a9b:551d:ef0a:6b94])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-47563d194b0sm9864992f8f.1.2026.06.30.09.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 09:59:29 -0700 (PDT)
Date: Tue, 30 Jun 2026 18:59:28 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Richard Fitzgerald <rf@opensource.cirrus.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, bmasney@redhat.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	patches@opensource.cirrus.com
Subject: Re: [PATCH v6 2/3] clk: cs2600: Add Fractional-N clock driver
Message-ID: <akP1uxP3uDp9er4X@monoceros>
References: <20260630155549.824059-1-rf@opensource.cirrus.com>
 <20260630155549.824059-3-rf@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uank47bqgvhpmjv7"
Content-Disposition: inline
In-Reply-To: <20260630155549.824059-3-rf@opensource.cirrus.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317972-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rf@opensource.cirrus.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:patches@opensource.cirrus.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,baylibre.com:dkim,baylibre.com:from_mime,monoceros:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E8696E6BFC


--uank47bqgvhpmjv7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v6 2/3] clk: cs2600: Add Fractional-N clock driver
MIME-Version: 1.0

On Tue, Jun 30, 2026 at 04:55:48PM +0100, Richard Fitzgerald wrote:
> +static const struct i2c_device_id cs2600_id[] = {
> +	{ "cs2600", },
> +	{}
> +};

Please make this:
	static const struct i2c_device_id cs2600_id[] = {
		{ .name = "cs2600" },
		{ }
	};

to match the common style.

Best regards
Uwe

--uank47bqgvhpmjv7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpD9ewACgkQj4D7WH0S
/k4xTQgAjU7n2LgMUu9Q0GkPON5In9ieUddR+wc8yV7m4IKTBvEFVmoq69UniHC6
uVr+Lp+vDSMKPXAm1ZzppVFCb0C6N2GlZpg++smO1/ssBrCHxeCn0j3WlcgAy3rL
2/o8dMDwYk/kfqYNoXCnYHkGE83aPsfM4zqFlz0BZ6vsOPdAJ1g1QZIgzjPEEGgQ
+VR0HuiIFc3OadpTDVnq/SFN4vZ8ONt889m2O6SXWdnXM6Z3Bcf7CC2EwpYJpwXb
Ov2Qvu+f52plS8czZ++zwS4ZyKpAn/gNY48tAW5Ax2gJHYo+XXq3lC8U6zecvRXc
zHXTvrJLZCC0s46GMcVdh5SbgYP2aA==
=x3xX
-----END PGP SIGNATURE-----

--uank47bqgvhpmjv7--

