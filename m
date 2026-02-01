Return-Path: <devicetree+bounces-261532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHU5Bmz6fmnlhgIAu9opvQ
	(envelope-from <devicetree+bounces-261532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:02:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C108AC50E8
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2BAC830156DD
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 07:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C7E2E1F06;
	Sun,  1 Feb 2026 07:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JBKejBmS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986761CAA78
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 07:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769929314; cv=pass; b=LSTrlCCi9IYjeDjnwUAgsLV1EoqAzO5XVUET+BeH/zjhWDqN3yG/0iihaGzUzczNslboEVb5jflWcNq3N+KiciDvzgEINXlm+srBAoq6Fb3jgIqT6cxcTj3lnxYMeOpocO63p5I7QtImc1uoGgrQFcZJ8kzp2CUoBpuPgzRvtaU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769929314; c=relaxed/simple;
	bh=bHSVbRQDobR7C2o5P+eolgEypYFQdOgjv1IYhW+8fGA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g5ZJQVon+Hr5KHmgqmlEqyN5SxAcDyKhIjc/SF21RQ3BEhjAJPQWvZqvD2H5S7sYTLUMR+QUHl6KdG+v2o125VYGRrRCYNiOyDkmau7h1AHxgxmSv2xHpaAjZrd76l+eRXJKokA/YsR0P/LG2kcKwqxKncDyZJVCK2PdWr7s0M8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JBKejBmS; arc=pass smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b872f1c31f1so441848066b.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 23:01:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769929311; cv=none;
        d=google.com; s=arc-20240605;
        b=NIULyqHC8g8XYlVbhay8E+Zi5kRAJ8g02PYAUa6pss3R4FoFatDqqHPRha7CLt2/2a
         oQxx2ffdG3lPeo5ABJzhVy7ce7odIahlJkUO60xBguPU+ejP0QWVPCGKx6TcdI3COhdF
         CMZSZcZ9J0f7iXjDe6wxeOKED6gRik9riewJIY5is9B1mLaYwZA8Rwfbip/33LhP6JV5
         FxFkcjARgFX0EhY1ZXuHYcQe0dZ28UbH8QFni0GVgw2WJRWCTTY9EOybe/5dr5EjwiAJ
         KgadXxTNNrd92vdSDPMtTLJKRq23wSCzVRyPGoC1iT1cH2f/ZB9VpWOv8sukjnrIMdGI
         0VTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=iAWzb9BbFNy/4m/w6Zwd+njIpZ8M14O9H5IZPS16EzA=;
        fh=6iuJ81HmfgWwLUeg0n61osTaXDeIm9cp9DpC8xwg0Jk=;
        b=ElnnR+dxnl782A4OwJdgMpW6d6Khid3ewLWLW1wKsnESeh5WBVSr73qQOzjO84s3gB
         bDHA9k3m6UmDPqAa9sEoXgIG8fCG+yZ+Xyt3PT3i2KaBxI+RMqRyw6gUQPG3GA/Nf8uj
         zRoW5iHEKqBZcPosd8jSVFPANkCOBirj91vYzoWMWEAmYTr9mh0uRqynp0NmzyFGyvBR
         uyDRbjv951qNHe851qUnZrywf0SdX/VCrsGhFJislXBvvHAaltY5Tzo49TTNTcf+WPR2
         1PpYOyNP+P84rplJbRE7o1E/Ls4GAv5+KEQBWVZJhCncVyiAKMJHTBAJC5VH9porzwcZ
         z6Nw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769929311; x=1770534111; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iAWzb9BbFNy/4m/w6Zwd+njIpZ8M14O9H5IZPS16EzA=;
        b=JBKejBmS4EnrDrrSgo2TZcaWiwNko6dejhSRpqB3coSugLXxkgr19crETgfRrA4ZSE
         oBeD6xlYTYLcRVe2j8yQARiozYUaqztOdjRsLRnjw6x9GbRq/pcR8txFh+Rq9MsR7Bvq
         euACVxPmpd4Isp2GhT0aYyLA09r5034g7/jP4q7uEbA7mFfHOA8o7JzdvcKNESIbixqx
         Fhbqy4+MS2BPYXyhurlRpX1od+D8JrHooCPqHJphyqFoq4ML6c8cbhCeMY5Bqk99Mayv
         PgrnLN9InlhN6UYWN7gwPNxX1hX7WZ99HRl74jlgql3p0F0F9SZfHUTQo8XsqafLeuRN
         F0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769929311; x=1770534111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iAWzb9BbFNy/4m/w6Zwd+njIpZ8M14O9H5IZPS16EzA=;
        b=H8rAwP2QD9BTydB5HWV3vJIYOaLHDeLm7I86X9zhN1ssoRD01CSVuNiiJKxy7SCWjx
         uBhwJahht8naoqMWbagZLdRZEF8AwdcyPRlaMp6PDixQchxSQWZbPjZD/NYLIDnrznNv
         ahydJ2jz4pjO02l12WBioxSx7tzNH9k1mUa2O9+VvUYcpiiUcrD0xYxs51EAqvY+4nr2
         wFBcG5I7zqswOIV7A2XI7dd7WEBSG65D4AUvxEm+T8VV1GsZIUFr7cJfeM5FOWyhmKyx
         Hbg9gkADKOsqOKRntl4xEfg0jYUf6H5wlxtVwtjAjvZWX3IG9xkWRXjAPOWj3VbKCXCH
         zniw==
X-Forwarded-Encrypted: i=1; AJvYcCXkykjf6yGQpTIqtachyWkPAZdRcwkVsjvWzpLZ0VwjOnH8MAOEvMB2d4CYV2+QKQ1D+JWYsBz3Ng1f@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+Nl4duVa8cR7lsGfWTMHwioVxbwk2bBm2rLvrkQE8c92xF8UA
	HLl7BRgNKvu5X/QbH3VeTf1viyeIB4GOJ10vzoE/EyFJfBzQsMFzJXpLsMslLn/8+t3yXdw0JaG
	mpMDoJLogzKdLsWvcKhreVIJQ644lNH8=
X-Gm-Gg: AZuq6aKySS5hS21c/L/ckcEzAlL3ZsoL4nsweDlcQIeXkoNpGDu1LgUvyP1L8SomRr4
	1qaBZPr+oqRbFeSA39iep+AsRCRKFRem1SjWQXWsmsVBhUyj19ZTxPuqYHs4bv2govAC4+mJtuz
	SSFcV7tlxmOrkCfl+v+lPU/vURc2eaxIt2wwNVfMunoD5F/cphbzzVMW3L2ZVVu5BZ6zm82Mc8U
	/uVDZXY46viuGRIGeQ1tB/BDGv8hOFg4ytJ2wAZVXdwEf7pr+QSYGQubaZcVfD0wZtSaeA+
X-Received: by 2002:a17:907:94d0:b0:b87:1839:2601 with SMTP id
 a640c23a62f3a-b8dff6969b7mr517593266b.40.1769929310797; Sat, 31 Jan 2026
 23:01:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125134302.45958-1-clamor95@gmail.com> <20260125134302.45958-2-clamor95@gmail.com>
 <d7938728-fded-4d5e-b23d-a8346e3fab46@baylibre.com> <8cedbb9c-9f72-43ae-a23e-705b3feb85fb@baylibre.com>
In-Reply-To: <8cedbb9c-9f72-43ae-a23e-705b3feb85fb@baylibre.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sun, 1 Feb 2026 09:01:38 +0200
X-Gm-Features: AZwV_QizrzJwmFJ9K3HDRK05t0a_0kaNB1Vjer8WbyjV6HsHfDqBvgFrLolg9pY
Message-ID: <CAPVz0n1uv=2Hhue2zjnXdG=_PyofBBqEhdU+S84+ysYq2PV+qg@mail.gmail.com>
Subject: Re: [PATCH v1 01/10] dt-bindings: regulator: cpcap-regulator: convert
 to schema
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dixit Parmar <dixitparmar19@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261532-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,bootlin.com,atomide.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C108AC50E8
X-Rspamd-Action: no action

=D1=81=D0=B1, 31 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 21:55 Davi=
d Lechner <dlechner@baylibre.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 1/31/26 1:46 PM, David Lechner wrote:
> > On 1/25/26 7:42 AM, Svyatoslav Ryhel wrote:
> >> Convert devicetree bindings for the Motorola CPCAP MFD regulator subno=
de
> >> from TXT to YAML format. Main functionality preserved and added compat=
ible
> >> for CPCAP regulator set found in the Mot board.
> >>
>
> ...
>
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - motorola,cpcap-regulator
> >> +      - motorola,mapphone-cpcap-regulator
> >> +      - motorola,mot-cpcap-regulator
>
> This is what caused me to get confused on the order of the later patches.
>
> motorola,mot-cpcap-regulator is a new compatible, so would be better as
> a separate patch.
>

Rob already cleared this up

