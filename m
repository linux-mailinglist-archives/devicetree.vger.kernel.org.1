Return-Path: <devicetree+bounces-269611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIYGBohLo2nW/AQAu9opvQ
	(envelope-from <devicetree+bounces-269611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:09:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B02FA1C7F65
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 98E01311CAA4
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 19:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 727023FB060;
	Sat, 28 Feb 2026 19:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SQkLfZSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006763F9AA4
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 19:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772305927; cv=none; b=YTHWdsShDt9nOR/4XWskkrTbnvqZsiuyJRaNgl5hQem5nrkX0Lf7wV46RdP08cXY1lTHlRHxF5CsAoyoBUZ2gfFjRVLWenXCTmBYWKLtzO02k2x3E83MkHCQ6IiLs3+n0ZecfLHTQ3UKoK37JUAdePaHbXq4n8LHCpwMIVzWELI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772305927; c=relaxed/simple;
	bh=uCBZJM2fAnD/3wRO5BCr9InnsCPcuxyUKxMyds7Z81A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VFebfxrWbHVgpf9O/+JYxqQm6T/5JUoUCEQAoDGuo87qTKIfliMxW64MEGjGFhXrNuHHIcmYqPGS5FPUFRQzgJP0fjm0BRy/7PO1sAZZbK1v4ErZ8xRXXakPVKb8qIbzbsUDn8q/1CbezUw1sKMbpcAiVuy25nEclV0RlDcxCxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SQkLfZSK; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4806bf39419so30294975e9.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 11:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772305924; x=1772910724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uCBZJM2fAnD/3wRO5BCr9InnsCPcuxyUKxMyds7Z81A=;
        b=SQkLfZSKUEUiyZOu/DT+48Hqtd/QfftiPRBfuakTnNfDnwQC17iF8dq9gE+C2rzluJ
         ra55f3ktqYYLNMqY6+Meo5sL3zWPYvKBdUZfy5WrxDsNms3W0rZhkks0kZpHt19Uwc0w
         XkJ2ke6fGMRBxZtwWWmHchtrEPy1JYYZ3lp4HZAH/XbrXpMtd7zr9wuIkrs9RTC2dL83
         95IhPffdGnfD0PlggdVqNk8qPI52nb+2Z4XyNSWhLtlGhDla8HogLi+D2xySzaAL+WCo
         FBWS4XZrno3Qt078i2deFa911Evq5swVi2LeesSs2GvjW7/tzY4KEOxb+YB0t8XrfRl2
         XCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772305924; x=1772910724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uCBZJM2fAnD/3wRO5BCr9InnsCPcuxyUKxMyds7Z81A=;
        b=oyBlT65B/jJvxSbWIz2gEl8uUiWGo1sMTMaP4P+V1tdVNO13jyQprwZxdGQXthKXV7
         nf0jcaKaJhTOn9EWSgYiZbHfpILfgF976yZf0DFW2iTrY06k32CSDGpl4EwouJEM56lt
         ohmfNudGy2ZyTaujCgezgVmsSsAFc9AtvpEjmixv4Mwkv5UyqrpkOaBJcYnClPj21VW+
         1syERv53NkFi6sIAxgvYhBMI6hi6dZzQwfgQf1+S1KZK7WWouDSifFQIb72i+++FFmRP
         UEVBaMvsmhOiAb3FpuGct4fb1wQ75OUwmJ7bDZYNzGv3ZwDcvGyaYMmi4Cu9Nnr3A3IM
         1ilw==
X-Forwarded-Encrypted: i=1; AJvYcCW8sv5v4ADlL+hNYR1PjkpWvUylN+I2CW2Hlg++jhQxJ4Q4wY8O2KmWuSWpg0nbnQIC8ihWt6/fkpq9@vger.kernel.org
X-Gm-Message-State: AOJu0YztH2UBuhKjnvr+V2frAmFuwJP+veapEYnmcCXmAw1VIa6crM6H
	zIlHLrYULh0M3OvbT5seWACTW3wnV5eYCU0+bsahMq3PEuNyaOd3naoQ
X-Gm-Gg: ATEYQzwfR7mMC7+Fyr7pRJEe6BfNMOjXEW7tSziri7iqbkvVRTU7xZ/+3YNNMGI9Vqy
	xozHozQgjfQWnNqT2n+K9+7nFNPfS042NFwcH79GTCr8V0sVF9KMADVkKvzsdo29eqzIsuzyygf
	l4B+x+CzLQYPeIHWjKjUbrcJKEBicR7CjG8xCuV8HoWQwrsWQ8yPJJEJuy7ositgWHXOO8/bxUo
	aHr/8OcuUAPFlOyaHiO1VUSKACpoMH4Uyv34XkiR3KHvElZBDKM7Bi/zowCSAWNSI3xiGa3xzZG
	pT/7AisAMY6ViLZ1iM7zyNwZtvS23gbpqtOypj618KZ5mKXd72t9Wl30DR2gBVJoNsrL4hZhhgA
	a4mb9WglxkVhdzPMXZo5ZYk8Y/wC7alJyNeOmAJm7Puhj2Ebb1bA/ov8nb8btpaNKieWGXaLB4Y
	8tEsTtusUuSAT8T4Sc++ABnyntmXC4Q2TuJy2iq7EiraNc
X-Received: by 2002:a05:600c:4e15:b0:483:29f4:26b3 with SMTP id 5b1f17b1804b1-483c9906a11mr129611565e9.1.1772305924223;
        Sat, 28 Feb 2026 11:12:04 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb85c58sm89513845e9.9.2026.02.28.11.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 11:12:03 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 2/3] arm64: dts: allwinner: sun55i-a523: Add pinmux for spi0 on PJ
 pins
Date: Sat, 28 Feb 2026 20:12:01 +0100
Message-ID: <5968992.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20260227175157.2339758-3-wens@kernel.org>
References:
 <20260227175157.2339758-1-wens@kernel.org>
 <20260227175157.2339758-3-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269611-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B02FA1C7F65
X-Rspamd-Action: no action

Dne petek, 27. februar 2026 ob 18:51:54 Srednjeevropski standardni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> The Avaota A1 board uses spi0 on the PJ pins to connect a SPI NAND
> chip.
>=20
> Add the full set of pins. Even though this board doesn't use CS1, other
> boards may do so in the future.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



