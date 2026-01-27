Return-Path: <devicetree+bounces-259785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHmwOqODeGmqqgEAu9opvQ
	(envelope-from <devicetree+bounces-259785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:21:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C460919D1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:21:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A7EE300B128
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE022D7DED;
	Tue, 27 Jan 2026 09:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UXEzkjDm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91312749ED
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505622; cv=none; b=C0XS6UMe/kQzjx18fw3/R9PzJ9XGARRv/ZjrW+760yq+EauyKF9H7yo0iAXik32paodi3E7ZKhyr9dntq5LVAGBvbmhN93LXFgE9BZju//E+PJ5qr3lAEjUSZrcUxKopSE/zti0f0EcQ7rk8+0vXAtA4i39EX1wOFjASnMT2PlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505622; c=relaxed/simple;
	bh=NRaJIBsOgwkV+eg1RM+W3L4+CnbMHXTkmYHk3spsKPM=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=r1+R6+jYJXmk6XjCPuxYH2B6tDQLVfbl/OXPqdFpGJ9wEMekW38FPbx2H+t/eh4l93y9o8k4j1uk5GnkiVlcSES0OVb3+5X/Q46feDSO7k0lP65jaq4i2e13OC8G6sl27rWurtPrbnr1VuSCD1wF1XfA9AxtbZ9vsZklWNqIv08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UXEzkjDm; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b8871718b00so606938366b.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769505619; x=1770110419; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRaJIBsOgwkV+eg1RM+W3L4+CnbMHXTkmYHk3spsKPM=;
        b=UXEzkjDm6qwK1BqyIrUwDRCx/k+zmjBTxPxSbmozC/Tklkhc1tiNOBK3lC+UOXQEkR
         TqocH+sDDld736nY/D1Osoz4iNDo6/nayIILqksJKNPefHaVqWKuWgoMI/1CCOONWyNJ
         rFj+6LpEoEx2VpnPzwz1aN4fdYdcp7lhyO4i1dtE86qw8VLbZtPSmRPX9Io6RbGw91IK
         dboawPT3z2Tev8GLTA0g3e1vW+5ZmoG1Uo3gs4VHny+6M3yrjEuTpRWrLZ6rNtuzFRBs
         5J5jufiQ5lLQLOGLhdVX7Z7ykMv4OYWvIJtepSqWGHkng05C1crl3vceAKOWvJDnACRl
         VfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769505619; x=1770110419;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NRaJIBsOgwkV+eg1RM+W3L4+CnbMHXTkmYHk3spsKPM=;
        b=kqgEu9Jxa3OMbT9bu6ylvQXzJ34AwlTSRTG/jMTPDnhuzb66kiqvpn3qautKr+y+G4
         iFzuPbR2owsnF1GHLrlbrCur4isaghO91QYRfcNStRiy8IYJLCSrdcm9WTE7ZUzlu1nN
         Eohyha3v0XH1fL7J8RtLAjiEH0Wx6DwhkuLnFWV9FMV2bHwm2kS3CC9JG5M95GAoUkZw
         kv3YJ8ez9Jxas1RZE4P8s6QHYhIm31nqT4p2jGQPfcpTbo5tVRddjchtaOHPbQs8s8lw
         NhDu3zToFwUrnga4hmDGhW14oP5ZVII6wpGSm1+LezvgJ9Ih4thQM95Xbf8rhFLmLE94
         ZZPQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6WNL32nK+FMYZ+c3HizuwD8LubvDX+DCuV+WnmKilKgYd11AGQhbhsVqksGGKKlFAkyZGCxvmSbw1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy80ir6AvY0OvKtpFcFn0x4otZWHd+0MsoP+IiFVq9BOWpMA4xr
	dMJu1jTaHopIWSgUqz9+Agc/EGzA/0nplTGV7BzxHkhtlAyySUFpK10t
X-Gm-Gg: AZuq6aJYPIlz7AjLJINQg76Uw/LAmKXxYmyHrWI9Wq7BWV4OTkN+krSyxIOUF2kC3ND
	/sN//5TGAKoZBa+szFJjmGMM/A6rnxgDp33O97felu5/OyvbJRKkEbqli2mQSVm6u3gNxgVBsEY
	Q41N7I3jvjvy+ZSWRS9fADLohUZlMyhQ8TYtmaR+Cfhzhd1hYGX77uTvbYnFJ4ceCk7eDEPQtYF
	jWItgNTwifs2CrxeK11roj8WTqYGetNtsh4+aXrcoBl1FVGsrt4cJrlGOLs6/axyGujIxH/PUFb
	5f176YyArBu1G2N88MFu08fLdrzUU5+r6NtmqZ1xG63GFWZ3UdDqRQNTWNE8EK+2OEOPi3X6ol3
	Lyuz/W1p+HiWWcF88bTj/L5GdKE5JajsmonUWFcncg6K5z3zIE1QuhovdH5Kd767JQwIHo1xWLR
	NiVShFKpq8fI0t/S1OpOIL7dXpNl2PvffjJDPQifM1fOOMvyQT13/biyk5kWZjY0Mh
X-Received: by 2002:a17:907:7287:b0:b88:5b35:914b with SMTP id a640c23a62f3a-b8dab3d056bmr95912366b.59.1769505619057;
        Tue, 27 Jan 2026 01:20:19 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b700d43sm776257066b.41.2026.01.27.01.20.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jan 2026 01:20:18 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.4\))
Subject: Re: [PATCH v6 0/5] Add support for S4 audio
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20260126-audio_drvier-v6-0-99e350855bc2@amlogic.com>
Date: Tue, 27 Jan 2026 10:20:03 +0100
Cc: Jerome Brunet <jbrunet@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org,
 jian.xu@amlogic.com,
 shuai.li@amlogic.com,
 zhe.wang@amlogic.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <35CAE0E9-4C3F-4B41-BA1A-19761671F392@gmail.com>
References: <20260126-audio_drvier-v6-0-99e350855bc2@amlogic.com>
To: jiebing.chen@amlogic.com
X-Mailer: Apple Mail (2.3826.700.81.1.4)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259785-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,kernel.org,perex.cz,suse.com,linaro.org,googlemail.com,vger.kernel.org,lists.infradead.org,amlogic.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piotroniszczuk@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C460919D1
X-Rspamd-Action: no action



> Wiadomo=C5=9B=C4=87 napisana przez Jiebing Chen via B4 Relay =
<devnull+jiebing.chen.amlogic.com@kernel.org> w dniu 26 sty 2026, o =
godz. 07:01:
>=20
> This series completes the end-to-end audio support
> for S4 SoC from hardware bindings to driver implementation
> and system integration.
>=20
> 1 Device Tree Bindings Updates=20
> Added audio power domain and S4 audio clock support for S4 SoC.
> Added S4 audio tocodec binding support.
>=20
> 2 Driver Implementation
> Implemented S4 tocodec driver for G12A architecture.
> Added S4 audio clock support in AXG audio clock=20
>=20
> 3 Device Tree Integration
> Add Amlogic S4 audio subsystem support in arm64 DTS.
>=20
> Signed-off-by: jiebing chen <jiebing.chen@amlogic.com>
> ---
> Changes in v6:
> - Fix the problem of string for =
Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml
> - Remove clock pad register, and it will be submitted as an =
independent patch.
> - Redescribe sound/soc/meson/g12a-toacodec.c
> - Link to v5: =
https://lore.kernel.org/r/20250710-audio_drvier-v5-0-d4155f1e7464@amlogic.=
com
>=20

Jiebing,

FYI

I applied this series over 6.18.7 and tested on s905w2 device.

With audio routing like this:

amixer cset numid=3D40,iface=3DMIXER,name=3D'FRDDR_A SINK 1 SEL' 0
amixer cset numid=3D73,iface=3DMIXER,name=3D'TDMOUT_A SRC SEL' 0
amixer cset numid=3D37,iface=3DMIXER,name=3D'FRDDR_A SRC 1 EN Switch' 1
amixer cset numid=3D61,iface=3DMIXER,name=3D'TOACODEC SRC' 0
amixer cset numid=3D1,iface=3DMIXER,name=3D'TOACODEC Lane Select' 0
amixer cset numid=3D62,iface=3DMIXER,name=3D'TOACODEC OUT EN Switch' 1
amixer cset numid=3D17,iface=3DMIXER,name=3D'ACODEC Playback Volume' 251 =
251

i'm getting working audio on analog headset.

Great work!



