Return-Path: <devicetree+bounces-293915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLu7G2Ji/GkqPgAAu9opvQ
	(envelope-from <devicetree+bounces-293915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 11:58:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C46B14E65FC
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 11:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6AD63014BD0
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 09:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC873A7848;
	Thu,  7 May 2026 09:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KMGrqY7e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D73D31714A
	for <devicetree@vger.kernel.org>; Thu,  7 May 2026 09:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778147647; cv=pass; b=iLVpLfIjhuomq6TYY9EDFUzQUxqZHHucg6u86E2Z8i9KYzTI6K+zApkfoe8v0ivLTpGHCTE5roCfEnIRVO4tOMx/7azKeh04W2e3kPFvHiEITA+nCBnHvVG7dnv550s7OjFTvMvkE0lQrtQPbmF5cWLUPeMVJ8JJZ6C3Cb8l63Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778147647; c=relaxed/simple;
	bh=USp5XzZA4eJ5QU73YEjZh5z27WHNeqKawicUWQrwGfw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C3cnaGm0wQgwNGKxKgbViYzm7YTngsrNIa+n+JmQh+6ETcGFENbnSbBjTBX+i+dQZJ4o+/qhFWiCsrAKXuhlI1X3erilYBGUdNTKShHdx1I0PvNDRE6kmwRaiYQPzEqrXSu5MPNm9I44QMcJtJyA1sUdoG2QMqG0Fo+IVdQdH7A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KMGrqY7e; arc=pass smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-651c5d525f6so634295d50.3
        for <devicetree@vger.kernel.org>; Thu, 07 May 2026 02:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778147645; cv=none;
        d=google.com; s=arc-20240605;
        b=CgqoCZWurOnSh/0n/sXscxS3z2uE6kMXT/S+n/6wlq6FjGe6v0xbasJy7PehvXr+Gv
         JviOZYZI5LSGwR2PLvs9qrkyG5JCZ4HVqGZa+cSTlTXPYQF5BJYop6SiJ9EB6N9aJfR2
         BWSYAag5vUMIhRwrej0McTyktFi8Vp2bMMW7nqKIIdKE/8yXC9ciYieAKfLlBZtiBntk
         lO3fGlGZ8SQWjw1wYkPg3S7r69J2sqgoUbI+368d4oJUuCNcNrXzSRN9m5DnABLheBSU
         O7XZQCtjWq6iu3SXD6kYy9VdCS5lQFCT47yGijySX9k4HZuorvlOAZSCP7nph4++uDrF
         W3Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wrndUsEYmqCY5OiromaQ3GnufO56h/c2hiAzI8scZ9A=;
        fh=xBsa7t6lqxMmaHzdAtg3DT8rYzkP2AGlbhC66zkLTX4=;
        b=MGPngSnrLzBzPB2bS6YmFU76ftjKlCd6xGAbXirG467Spg0UmmSfuj2SB3yokw5HTO
         7bnPveHbbuqRcuoK9Oj0XeBgFIoMS+jDxMvhKQOKqVOkRPp+V+xjB/ANRF0RbBn85CCG
         1bl3Bf74jiTYUY94h+SpuKzAKv2Or1eACK6tbJrvsysmzCawGqgn3a8DOJ4sIqTin4ZX
         SXotL4Mbv/4WKurwMa/4b1P0+0/kyz/zxFAJZS9miopnJXwIDl0cLyTqrX4uTkbQnLuj
         FWajLMlEWZk7MQicRY7q39oRieaKKu0KmRBvieTI6C4SQh9yrCXf5clzKHwvvVDphlS/
         cGWw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778147645; x=1778752445; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wrndUsEYmqCY5OiromaQ3GnufO56h/c2hiAzI8scZ9A=;
        b=KMGrqY7ejfdfkvfLBNDr/0hJtukFOX1xA+AEUCwy1n7Pluh+AtZ1pjaBZy1pLVzBcu
         vueawmtL6r1aO1/uwtJ1EFvtxua7vB++XbbW3WVLLwBsOSAYkaS4dNenxtHICB2+GwiJ
         M7unnTLb/9S8V+ywxUscWaZraovN55FBm3Tw30etTI3tMLLBupZC6Q6k5ifwKBGirdx3
         QgZe2SYm/Bhli7YKnDDDGGv/NjpQGc/s5bbsp7CLfoRow/7Fb0jTOouYicNKAaTHuCva
         3AUD5paJs5IQep1aRVdiL0jMs4iCwkaw8Ne4x54rXWKL1Mtkyqoph7XDUnGlgt7CSJ3H
         1Sjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778147645; x=1778752445;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wrndUsEYmqCY5OiromaQ3GnufO56h/c2hiAzI8scZ9A=;
        b=MdYz/b4kUz/pt63zBdj2teafBLFeYuKilLDLu8zrgVu0hLxPeODwhsE34f2wq+9pdK
         R6jSx7mJakktZdjDcUI3Gk/6TN2y42k9ygjIkJp+jEV4iHi7Girm6JxD/lBds8LHG5MP
         MPIkKu8Fv7TBRUQHzSuvh2g5wzZzeISmPkDfv4PFRHxdi0UlJ4K6g/opJBmqrJ43Udqr
         RBMDy3hVp5FsAhx4lEyvGVD/A5+c2BTJKLaRdZG4sDGNv1MRpUCZgk8BFX5LNYTYV2SX
         1XncE+opRzGIuntvZ9SxrKSIyAYpFgJfNHuTpiwJx0HyMvRz/OBupbbUAQZgBxALQEEa
         Q/KA==
X-Forwarded-Encrypted: i=1; AFNElJ8t1sVsP60QXhqnM3e5z7Zz5GcibV+4gKvQ8UyhOQviZbaXRhVV8LMeFj2THOwK4RLdVcFSptXDbk85@vger.kernel.org
X-Gm-Message-State: AOJu0YxRhZGpHpl1RA8RW7t3fX3gCKM9LjsJBn7gHAknV08CWPSbWg0X
	KssVYuPYTBjtehQniKRIlyeK2hqbbFW3+MiurWHF5HZomZimthlZdOikF4QZ/+fmeZTRlDLSz0V
	dVoATIACO1fM4W1UtwDe1N/4DPW5NpmI=
X-Gm-Gg: AeBDievcV43A76NlpYZlb3du07fyMYyE6wifgtkoSw+RE6zpJucZG/TouEJuSR679NR
	bMZdQrEU+61nAhJfknihh5REnUpZj9FlqUKt4Bt1ComV+F2Tb5HUVhtFfZP/Kyxko99d0XYVq4a
	3NdfjTvkQjLGKMGi7XhsH8pzSRZYg/r5JyXGEVAOa474RqS5bXFfmiJv5zWj/eWYpB12KGNtZ2H
	k+8j82Jk3X0R/J6FZ3kyewrwPsLbnU8Gt1iOZCBcMoKFjOAYnvI19A19CHz5G8EHAw5GBuxqJWm
	12oKcxd6aCQRvXdUQEFcd+0p3oRRmg==
X-Received: by 2002:a53:bf12:0:b0:65c:6220:5fcf with SMTP id
 956f58d0204a3-65c79e5a8a0mr5462411d50.62.1778147645342; Thu, 07 May 2026
 02:54:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260413-orangepi-sd-card-uhs-v8-0-c21c40ec16d0@gmail.com>
 <20260413-orangepi-sd-card-uhs-v8-8-c21c40ec16d0@gmail.com> <CA+Xcp4nY9GVMOmtMG-PNhY2vqP4Cc_amAMSa+M3vuDjWUkuCHw@mail.gmail.com>
In-Reply-To: <CA+Xcp4nY9GVMOmtMG-PNhY2vqP4Cc_amAMSa+M3vuDjWUkuCHw@mail.gmail.com>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Thu, 7 May 2026 11:53:53 +0200
X-Gm-Features: AVHnY4LT9e56Cweesam2LzF6uMchLh2zxP8j2JRmkUPbJrDgBoSBvkiVcFsuGIw
Message-ID: <CABdCQ=OsPva9=YPdBd=3HW1OO7=_zJtpXjvaiA0WLEDT5Scs_Q@mail.gmail.com>
Subject: Re: [PATCH v8 8/9] riscv: dts: spacemit: k1-bananapi-f3: add SD card
 support with UHS modes
To: Margherita Milani <margherita.milani@amarulasolutions.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, Troy Mitchell <troy.mitchell@linux.dev>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: C46B14E65FC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293915-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,linux.dev,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,0.0.0.2:email]
X-Rspamd-Action: no action

Hi,

El jue, 7 may 2026 a las 10:20, Margherita Milani
(<margherita.milani@amarulasolutions.com>) escribi=C3=B3:
>
> Good morning Iker,
>
> > Add complete SD card controller support with UHS high-speed modes.
> >
> > - Enable sdhci0 controller with 4-bit bus width
> > - Configure card detect GPIO with inversion
> > - Connect vmmc-supply to buck4 for 3.3V card power
> > - Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
> > - Add dual pinctrl states for voltage-dependent pin configuration
> > - Support UHS-I SDR25, SDR50, and SDR104 modes
>
>
> Tested-by: Margherita Milani <margherita.milani@amarulasolutions.com>
>
> However I noticed it only works when CONFIG_I2C_K1 is enabled.
> Michael Opdenacker told me it's necessary to enable the regulators
> used by the mmc controller.
> Should we add the dependency between CONFIG_MMC_SDHCI_OF_K1 and
> CONFIG_I2C_K1? (Unless some boards don't have these dependency?)
> Thank you for your patchset which was really nice!

Thank you for catching this! You're absolutely right about the dependency.

From what I can see, all current SpacemiT K1 boards follow this design
pattern where the SD card power is provided by an I2C-controlled PMIC.
However, before adding a hard dependency, I'd like to get input from
the community, does anyone know of K1-based boards that provide SD
card power through fixed regulators or other means that don't require
I2C?

>
> --
> Margherita Milani
> Embedded Software Engineer
> M. +39 334 758 9111
> margherita.milani@amarulasolutions.com
> __________________________________
>
> Amarula Solutions SRL
> Via le Canevare 30, 31100, Treviso, Veneto, IT
> T. +39 (0)42 243 5310
> info@amarulasolutions.com
> www.amarulasolutions.com
>
> On Mon, Apr 13, 2026 at 10:05=E2=80=AFAM Iker Pedrosa <ikerpedrosam@gmail=
.com> wrote:
> >
> > Add complete SD card controller support with UHS high-speed modes.
> >
> > - Enable sdhci0 controller with 4-bit bus width
> > - Configure card detect GPIO with inversion
> > - Connect vmmc-supply to buck4 for 3.3V card power
> > - Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
> > - Add dual pinctrl states for voltage-dependent pin configuration
> > - Support UHS-I SDR25, SDR50, and SDR104 modes
> >
> > This enables full SD card functionality including high-speed UHS modes
> > for improved performance.
> >
> > Suggested-by: Anand Moon <linux.amoon@gmail.com>
> > Tested-by: Anand Moon <linux.amoon@gmail.com>
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 24 +++++++++++++++++=
+++++--
> >  1 file changed, 22 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/ris=
cv/boot/dts/spacemit/k1-bananapi-f3.dts
> > index 5790d927b93d..a7d88564630f 100644
> > --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > @@ -220,7 +220,7 @@ buck3_1v8: buck3 {
> >                                 regulator-always-on;
> >                         };
> >
> > -                       buck4 {
> > +                       buck4: buck4 {
> >                                 regulator-min-microvolt =3D <500000>;
> >                                 regulator-max-microvolt =3D <3300000>;
> >                                 regulator-ramp-delay =3D <5000>;
> > @@ -241,7 +241,7 @@ buck6 {
> >                                 regulator-always-on;
> >                         };
> >
> > -                       aldo1 {
> > +                       aldo1: aldo1 {
> >                                 regulator-min-microvolt =3D <500000>;
> >                                 regulator-max-microvolt =3D <3400000>;
> >                                 regulator-boot-on;
> > @@ -367,3 +367,23 @@ hub_3_0: hub@2 {
> >                 reset-gpios =3D <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
> >         };
> >  };
> > +
> > +&sdhci0 {
> > +       pinctrl-names =3D "default", "uhs";
> > +       pinctrl-0 =3D <&mmc1_cfg>;
> > +       pinctrl-1 =3D <&mmc1_uhs_cfg>;
> > +       bus-width =3D <4>;
> > +       cd-gpios =3D <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
> > +       cd-inverted;
> > +       broken-cd;
> > +       no-mmc;
> > +       no-sdio;
> > +       disable-wp;
> > +       cap-sd-highspeed;
> > +       vmmc-supply =3D <&buck4>;
> > +       vqmmc-supply =3D <&aldo1>;
> > +       sd-uhs-sdr25;
> > +       sd-uhs-sdr50;
> > +       sd-uhs-sdr104;
> > +       status =3D "okay";
> > +};
> >
> > --
> > 2.53.0
> >
> >
>
>
> --
> Margherita Milani
> Embedded Software Engineer
> M. +39 334 758 9111
> margherita.milani@amarulasolutions.com
> __________________________________
>
> Amarula Solutions SRL
> Via le Canevare 30, 31100, Treviso, Veneto, IT
> T. +39 (0)42 243 5310
> info@amarulasolutions.com
> www.amarulasolutions.com

