Return-Path: <devicetree+bounces-266077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CELJ8VLlGnfCAIAu9opvQ
	(envelope-from <devicetree+bounces-266077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:06:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0748414B294
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:06:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B68EA3015CB8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C1732E6AC;
	Tue, 17 Feb 2026 11:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aQkqd7HO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA11332E73D
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771326397; cv=none; b=V+5RaBq3Zg1+tqBElb7ixGD7a6HysHwN2zZp7CMQcNDUQRG4H6E6SWmamtHRCrhs7wHmB5njulAXQOF1hcErkql8GsHO4pI+KeSzAZgRbIfaGHUNbMoyiA2G2AD2u2BBTc6PVgkcOZcd9zGgOj04TQVLPt8I38uQEs6vSO9wWAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771326397; c=relaxed/simple;
	bh=r+EggPD7wOShkp8YPQaACe9GAgiS2RAP+AMG/TERowk=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=iWThyyVMCMdR7x22y59aSdsQCjEeoki6s1e36tSzVy0DR0XnJodcLnAz45bQp9vblAhx/vCf9p9s0UDhOcDmmJxjHcRkPml3NgPA5OjKOmMLTZlJFTjjHiZlqGXbY81kJjJCBAcdZ94v7vAvmLcH5JAzVM4IbpTcd4e5BAeYMsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aQkqd7HO; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-65a3fdeb7d9so5871920a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771326394; x=1771931194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8lEc5xzFe2JfewkM3XcVcd3+y1q4x0K1q5cHfsFpVx4=;
        b=aQkqd7HOqGV/NIOKu5r79sF31fr+AZgxFjbHojS1gBCp1QmHd0lfLZaZDJxWi7X3qW
         C0AxtInazxfoE0bvmIGsNWW/bSfJ2+fcqqnXacnYy1vPpopY/Foh0YQjy4JUyTWVhGgx
         mb/Y9pWDndy02sjYg7QlHeuG9Wubo7MDFE7Z3xYHVx61yw/Qbks7DcR4Tb0szoXFafLP
         rUG7VgCB3jL343pFneN8LUeG2RAGxT3lbuItGsIq8p9MkyedGhAkqHhPMYzTlBF/93Db
         D18W+67syJCWoB+BVm9ejVwG6AijMB8SYU9bIkwvuhgX/zAaQenbM6oExuiGRVrp9TXv
         QSJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771326394; x=1771931194;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8lEc5xzFe2JfewkM3XcVcd3+y1q4x0K1q5cHfsFpVx4=;
        b=uVEqK5eSmGffHrvy/cMDQfdh1/lZwIOUv8KHOr2Dk7USuMRD8danuzUOhv9nusZOZR
         SNi/6aq2nZVrJn+CZYswn+ftHFP6/iGJ/3B+dFA8ytynbEyzTp1iC43RCGFUmIaVkcyo
         0cfg6Dh8mGjvnI4HsBhxZhr8siod06Iac5UJTKWHqgKBOghiI2DvIocb0fScRmT4TWf3
         mwdDZ986Lwwfp04aBQ73yUd8ZQbx8Q5t9P524i0bPVHsQmsWLPkExKeM1Zaq5QA6rZhu
         4a6MMXGmQus05tA5Oq0pL3VjOaGc9L51TwatHxItFC5mriVmwHM4SchcrcOJ42SkAd9S
         9Juw==
X-Forwarded-Encrypted: i=1; AJvYcCUIWgNctWMFgX1vP+VnGG3NVTv+sNEKBCjUhNL9M14RF5ijJabALLk5SveuvlGfHEXZqqNaYvKUFNn9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjy/+cp88d8P1ppfh2NXdiondGE5htRLmj/Flpe5AboeZ3XM13
	NcZdh/OUXVYX474akCfZEOaGxSGGc2pNCOHYKWHqZsmBozqIpCgKdYAk
X-Gm-Gg: AZuq6aK3QHi0+Vwubddp8eY9svENdtVpnGf2kPzAYzC8fA9tgGhDvCbJxR3zszKXUok
	MGZQisExBz541yx5Dw2DoVrNz5HzQX9kKkQ/TT6n3ao6C9YXFKHIloB/ftLtNVx4jbVfqYOqt1Q
	tWDdAjfs00t5zcyjTMJW0VViqDCvjCLHMsol19bSvaaQCt6jESxz3xw33txVLXJ5aYFE6giPNqZ
	BzaeFYG6UWc+CMvmLrJy3WR9hfwGpvHe4fK70pErxfW6XWyL6nO/Kepy+9u+WaeyMvorMhQkN4s
	yru7NhD65Du8zp0Si2nERP3rpOJ+gnQSWX0me1xBVlIw4Wwjn8CHvEoAfXgouSlNC5aY27VnCXQ
	i/bu4138rqaR5i/hSAUG3O6et+wSHHJ8UTWRKI0z0yILQucIFVs4DYB7j/e9pbzYPeWK1+Vjm9R
	CK9pHNGk6tc+gwxTssgatIeydOYTaTIrU=
X-Received: by 2002:a05:6402:40cc:b0:65c:972:707f with SMTP id 4fb4d7f45d1cf-65c0972752dmr3331588a12.10.1771326393840;
        Tue, 17 Feb 2026 03:06:33 -0800 (PST)
Received: from ehlo.thunderbird.net ([178.137.63.129])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3f137dsm2248870a12.27.2026.02.17.03.06.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:06:33 -0800 (PST)
Date: Tue, 17 Feb 2026 13:06:32 +0200
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Thierry Reding <thierry.reding@kernel.org>
CC: Thierry Reding <thierry.reding@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Mikko Perttunen <mperttunen@nvidia.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jonathan Hunter <jonathanh@nvidia.com>,
 Douglas Anderson <dianders@chromium.org>, Sam Ravnborg <sam@ravnborg.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 3/7 RESEND] ARM: tn7: adjust panel node
User-Agent: K-9 Mail for Android
In-Reply-To: <aZRCamxP5JfS8OsO@orome>
References: <20251204060627.4727-1-clamor95@gmail.com> <20251204060627.4727-4-clamor95@gmail.com> <10344542.CDJkKcVGEf@senjougahara> <CAPVz0n20hHAf9tFqUNYSO18rvvPbbY5nyVRB-KpiKD2ih=Vfpg@mail.gmail.com> <aZRCamxP5JfS8OsO@orome>
Message-ID: <58C37053-93EF-4EDB-80E3-C066DD6E3964@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266077-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,linux.intel.com,nvidia.com,kernel.org,suse.de,ffwll.ch,chromium.org,ravnborg.org,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0748414B294
X-Rspamd-Action: no action



17 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80=2E 12:28:06 GM=
T+02:00, Thierry Reding <thierry=2Ereding@kernel=2Eorg> =D0=BF=D0=B8=D1=88=
=D0=B5:
>On Sun, Feb 15, 2026 at 09:20:27AM +0200, Svyatoslav Ryhel wrote:
>> =D1=87=D1=82, 15 =D1=81=D1=96=D1=87=2E 2026=E2=80=AF=D1=80=2E =D0=BE 09=
:15 Mikko Perttunen <mperttunen@nvidia=2Ecom> =D0=BF=D0=B8=D1=88=D0=B5:
>> >
>> > On Thursday, December 4, 2025 3:06=E2=80=AFPM Svyatoslav Ryhel wrote:
>> > > Adjust panel node in Tegra Note 7 according to the updated schema=
=2E
>> > >
>> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail=2Ecom>
>> > > ---
>> > >  arch/arm/boot/dts/nvidia/tegra114-tn7=2Edts | 13 +++++++------
>> > >  1 file changed, 7 insertions(+), 6 deletions(-)
>> > >
>> > > diff --git a/arch/arm/boot/dts/nvidia/tegra114-tn7=2Edts b/arch/arm=
/boot/dts/nvidia/tegra114-tn7=2Edts
>> > > index bfbdb345575a=2E=2E75fbafb4a872 100644
>> > > --- a/arch/arm/boot/dts/nvidia/tegra114-tn7=2Edts
>> > > +++ b/arch/arm/boot/dts/nvidia/tegra114-tn7=2Edts
>> > > @@ -43,7 +43,9 @@ panel@0 {
>> > >                               compatible =3D "lg,ld070wx3-sl01";
>> > >                               reg =3D <0>;
>> > >
>> > > -                             power-supply =3D <&vdd_lcd>;
>> > > +                             vdd-supply =3D <&avdd_lcd>;
>> > > +                             vcc-supply =3D <&dvdd_lcd>;
>> > > +
>> > >                               backlight =3D <&backlight>;
>> > >                       };
>> > >               };
>> > > @@ -101,11 +103,10 @@ smps45 {
>> > >                                               regulator-boot-on;
>> > >                                       };
>> > >
>> > > -                                     smps6 {
>> > > +                                     avdd_lcd: smps6 {
>> > >                                               regulator-name =3D "v=
a-lcd-hv";
>> > > -                                             regulator-min-microvo=
lt =3D <3000000>;
>> > > -                                             regulator-max-microvo=
lt =3D <3000000>;
>> > > -                                             regulator-always-on;
>> > > +                                             regulator-min-microvo=
lt =3D <3160000>;
>> > > +                                             regulator-max-microvo=
lt =3D <3160000>;
>> > >                                               regulator-boot-on;
>> > >                                       };
>> > >
>> > > @@ -325,7 +326,7 @@ lcd_bl_en: regulator-lcden {
>> > >               regulator-boot-on;
>> > >       };
>> > >
>> > > -     vdd_lcd: regulator-lcd {
>> > > +     dvdd_lcd: regulator-lcd {
>> > >               compatible =3D "regulator-fixed";
>> > >               regulator-name =3D "VD_LCD_1V8";
>> > >               regulator-min-microvolt =3D <1800000>;
>> > >
>> >
>> > Reviewed-by: Mikko Perttunen <mperttunen@nvidia=2Ecom>
>> >
>>=20
>> Hi Thierry!
>>=20
>> This is the only remaining patch from the original series=2E May you
>> please pick it or should I resend it?
>
>No need to resend=2E I can pick it up, but it won't show up in linux-next
>until after the merge window closes=2E
>

Fine by me, thank you!

>Thierry

