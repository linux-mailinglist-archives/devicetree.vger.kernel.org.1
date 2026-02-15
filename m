Return-Path: <devicetree+bounces-265602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HIjHCs1zkWluiwEAu9opvQ
	(envelope-from <devicetree+bounces-265602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 08:20:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0B613E360
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 08:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D818D3011849
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 07:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA42296BC9;
	Sun, 15 Feb 2026 07:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jw2zn2dd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022AC23EAA5
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 07:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771140042; cv=pass; b=Z4f0lLVzTC05bBXai03ykLDqVYSrLboWTX6G3Mz85tX1RwamyFfbWMFolhwKpcW1mm6O7jEgrrdzW8u5lKWglb9P/hE4YjifB66XYKLhG1Siu1avDDsadXAMjuI0+HCNvGXjiV0dMIGzeuid3uscag0DY1cZweVUk3cxGN0CW1g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771140042; c=relaxed/simple;
	bh=zH4HBbbxg7c5SpB1wbJ9DMfeN1jn35YMQAtU8Uamq5Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CTJpNaBCuqDtkQqEAAWZeIYbu/dI5oupzUHFeZ3O60prd/+85Z+3X3UqtIaDYRAfqiWdR3IDR9xzcgNK9v846S8JhUfOnOjwOVU8BsUExfepPU/6x55BXBU06LpcqttRnhe1Kyr+tTGWRI+n8q6US9R+5yI8PXoKWpRdBbKl0Bk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jw2zn2dd; arc=pass smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4359108fd24so1481827f8f.2
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 23:20:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771140039; cv=none;
        d=google.com; s=arc-20240605;
        b=eLhgAEAhjgUyPp0boOXUVwzNzwuDRtS0L2XcFXKZ7rHFt5Bu/lMLNEZJyp+mG5CSQy
         jWPUvCm2jXZNsCRnCmySgsqj1JuiZ7P8zuXsFddxPKTxmyNgVy47gr1RqBRn+dDHTyS/
         pctQI4YngquKIRMObWJfuRvGqDHAxceA0nwBFxUjAccr2iQYKvkqY0qEPO/0ByX5b2HY
         D4ePixl743XiX8StlZdbhqqOflVHyL7wHWsTiEesrv1mNZkEEMqm6Yfz0ZGely/dKxtR
         NgfM0IM1uG2YV8s6dBk7YadQVOfU1A0Z6Zk//BYLyLqe7tkLE9TvZ+hrLh12x/7ya67M
         8JJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zrl8aWdaaVOiH5RwKkza6kCyl+a95ccxt2cwlIZXNr0=;
        fh=xOBvtXWtTa9dss7p/fsKlfXUk14yV5vBO5bAepy4Vz0=;
        b=SqmQbZ5WMeyhTRnPKfkCZHpR0mQxgJSz1g+TKSmoyBwOFYVOs0MM69h1Jqq2KKDAW/
         +pyLPbBBdaOddYeF+YOrAwp2/v/On2AL/eewDw0exv61yUNyqYwJM4fUzkMOsxJvg0Xi
         OW9hXTcP0Fe9FYOkxRsinnyI5wpVKeYocLepR1Xa5uqyiqqW47CUfq0QieD4vO2XbiQT
         PT5uuPDRiAkGvCPQHV9F3frbvBqG+1/75j9Z2ZMrK8DKzZgYj18CIGUkHJbGcZwQGxtP
         T4glJaHD5xgjB6kcrPUhEIZwRj6TjTZtzmJ7ZneOdycd/C3IGHnUBxVOSebQLdDLMuXk
         VFKg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771140039; x=1771744839; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zrl8aWdaaVOiH5RwKkza6kCyl+a95ccxt2cwlIZXNr0=;
        b=Jw2zn2ddDnQ8gsVEysucpao+XB1JKeSR/7Dsiur2TmnoIzWfQvgp/iZIQAbASrhKK0
         b7MIQ76Z1327PyR1HwdHgkPWOXU18ewkd6fTFN2llGGpXum90BUFXmnW8WcCcZ+ZeYGY
         BjZ5zdIF69SooFUtMRbupdTbCMQlFp8kACbBs0PTnZiOzo3bnRqSZpk/loTkfRRsZKXJ
         E+A+NRDwZRblstZeirrR+wzSyIAyl17xfevfL5Plb9cJkrJCSthOifSazFVsA+EpQ3Di
         FcF89MCSGatjTb/ONuGCdKAMCbjyDLh2nnEUKY8PD7eS1BvSn+tHULkVA2drbOTAQ/tf
         Rtdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771140039; x=1771744839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zrl8aWdaaVOiH5RwKkza6kCyl+a95ccxt2cwlIZXNr0=;
        b=An+i0esOZqqTORZfAtgIXc9AY8041z/BUVLhewJtB5bvacJJ1121E65pMfPdtCNE+k
         8Jxutto796SqM8sKzG+CQGngZyF9LqaTy2Lmt3j5mHzKtZtJC/f2t6Hd22x6GMS2elOo
         SsXPqgvc5wkLJprexMsWK1Kqcry0mWQdnrLe3Pm629f+eLwWgoOHRSrIlDu9GxYrLkkr
         eJdgLP+mAB/QtK+Cpxq7LKGjy8SYN30PdBe7Xg/EasEga6MUYlZCW4zX5c9JuKjBl4rf
         vNvpKIXaiHDx8snRpHpkeZ/mHFOnZ8J+CQnH/Hiv+nMFe99rjPZ95NpppQWS33J4sS4n
         mF+Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+Rg0jTIBYRZFDd0WhEAHjpbVUnG2/7mEYNKSMS1IODlX2uxCiVnmTO6qtcw0FUSH2dcp4654g0KqW@vger.kernel.org
X-Gm-Message-State: AOJu0YwffT2FS7+L6/Plh01OngRLEHvxiid0MikGnJuWZfOC9Z7NruBp
	+2HDjGFfksv52Rb08GLXTGCSLLIcsdy4hvKaaaLlRWPHflo20D74ufhw9WoBPzty89qt7NYtvws
	FTP4N9wRvd3tmGKEl02UD37/dF6FmYBQ=
X-Gm-Gg: AZuq6aI5tAL8HSPTe6ywan/jE9PTFOOAnT9vnKdksE4ZFDMMS51cMh14AIO2fBaqcO2
	jv7t3m0vrq6WfClff+6g0pZlqSucTmh/9+7i+STVN+Sjs53RvXgDq3bEs/avMoCzC3HP6X/EXMl
	cOw0r1PWIuu3FLa5KcV5r8rJOKCfNwfFnB+ysIp1CKmxD88sxr2eqVV775uJho//4ORpbjn0jvo
	ZswFxHN++ukHdsrmAGDIyZ0tmx67XlLajTBkDSyMqB6sGApVYkAhbsO+/7yS1adPXqyla0EsbE7
	Cwtq5xn9
X-Received: by 2002:a05:6000:1843:b0:435:e3bd:5838 with SMTP id
 ffacd0b85a97d-437978dd2fcmr12170774f8f.25.1771140039258; Sat, 14 Feb 2026
 23:20:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251204060627.4727-1-clamor95@gmail.com> <20251204060627.4727-4-clamor95@gmail.com>
 <10344542.CDJkKcVGEf@senjougahara>
In-Reply-To: <10344542.CDJkKcVGEf@senjougahara>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sun, 15 Feb 2026 09:20:27 +0200
X-Gm-Features: AaiRm51pnGpJ3XDXTbcvtaOsnyvgv9p2WlCbpT_dV5xTzz18pENDfpMLAaczCh0
Message-ID: <CAPVz0n20hHAf9tFqUNYSO18rvvPbbY5nyVRB-KpiKD2ih=Vfpg@mail.gmail.com>
Subject: Re: [PATCH v3 3/7 RESEND] ARM: tn7: adjust panel node
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Douglas Anderson <dianders@chromium.org>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265602-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,linux.intel.com,nvidia.com,kernel.org,suse.de,gmail.com,ffwll.ch,chromium.org,ravnborg.org,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E0B613E360
X-Rspamd-Action: no action

=D1=87=D1=82, 15 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 09:15 Mikk=
o Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Thursday, December 4, 2025 3:06=E2=80=AFPM Svyatoslav Ryhel wrote:
> > Adjust panel node in Tegra Note 7 according to the updated schema.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  arch/arm/boot/dts/nvidia/tegra114-tn7.dts | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/nvidia/tegra114-tn7.dts b/arch/arm/boot/=
dts/nvidia/tegra114-tn7.dts
> > index bfbdb345575a..75fbafb4a872 100644
> > --- a/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
> > +++ b/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
> > @@ -43,7 +43,9 @@ panel@0 {
> >                               compatible =3D "lg,ld070wx3-sl01";
> >                               reg =3D <0>;
> >
> > -                             power-supply =3D <&vdd_lcd>;
> > +                             vdd-supply =3D <&avdd_lcd>;
> > +                             vcc-supply =3D <&dvdd_lcd>;
> > +
> >                               backlight =3D <&backlight>;
> >                       };
> >               };
> > @@ -101,11 +103,10 @@ smps45 {
> >                                               regulator-boot-on;
> >                                       };
> >
> > -                                     smps6 {
> > +                                     avdd_lcd: smps6 {
> >                                               regulator-name =3D "va-lc=
d-hv";
> > -                                             regulator-min-microvolt =
=3D <3000000>;
> > -                                             regulator-max-microvolt =
=3D <3000000>;
> > -                                             regulator-always-on;
> > +                                             regulator-min-microvolt =
=3D <3160000>;
> > +                                             regulator-max-microvolt =
=3D <3160000>;
> >                                               regulator-boot-on;
> >                                       };
> >
> > @@ -325,7 +326,7 @@ lcd_bl_en: regulator-lcden {
> >               regulator-boot-on;
> >       };
> >
> > -     vdd_lcd: regulator-lcd {
> > +     dvdd_lcd: regulator-lcd {
> >               compatible =3D "regulator-fixed";
> >               regulator-name =3D "VD_LCD_1V8";
> >               regulator-min-microvolt =3D <1800000>;
> >
>
> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
>

Hi Thierry!

This is the only remaining patch from the original series. May you
please pick it or should I resend it?

