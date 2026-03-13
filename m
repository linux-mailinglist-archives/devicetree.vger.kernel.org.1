Return-Path: <devicetree+bounces-275341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBlrD1QitGl7hwAAu9opvQ
	(envelope-from <devicetree+bounces-275341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:42:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D102028531C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7D8B730087FD
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA5463A6B69;
	Fri, 13 Mar 2026 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GGFSMfaB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4717B3A5E87
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773412943; cv=pass; b=EYBW6dtwDjOMJlfM9ZlLoawJNl9oTfp6m2LgI3TcrMGTBbEOO/wybsoyR9gkcJ8eyzbqLyAmFuvd7u/FLR4a8dmGeOYm1k87RxpRf9xJBuB2JNVFlQfE/1hfzhtZ+Mce9O/DbHRx+E6vc7ogTWiXgFAyC4a2aX/45ie6ulyv/nQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773412943; c=relaxed/simple;
	bh=MV/eXRShZGoChKIqTWx3xRDJY4D5p1GfCWHVtdLntcU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TkbcP5EhKs8oxr+99KgfvzBVczYirGEwKtkJLnaQyf1pBHcLaAwxgRnETTPCMx0960rZxGrBGxWAOeF7zwhzNYnGR1rT0ynPDjfxzNZA98JSjKb5shRgIV/NAfGG5Awhf84P1rr7H3QgKKFtjja25W2hWFJ/Ex/EJDHpT7FPCJw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GGFSMfaB; arc=pass smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-89a1347051aso23654866d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:42:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773412941; cv=none;
        d=google.com; s=arc-20240605;
        b=PIHLS/Vt8JFLPlYat9a3szZjALXjcYA7mZsWhmB9llxGVR1pTDTAO8LjCY3zkOOGcY
         o+AAmsJgB5MToNCTQT1sxZJbO09YCZ+42uYxsfrZ+Cv9AoOUeH0Db6yeHmbvA57ZZYRK
         7/FGPe+HjyOWiFNueJLIcRkq4d72atAPQXg5NKPpKJrQ0yrjN3mGtOQfodIofc7gG0Hb
         QI1A0LRIsQg68L48hFnPWuNOHQ2VUKD4j6JT3P4E34ukgzWJr3IKyw7FLwu871Am98JE
         TUJHQnnNeqK9AKplazOagyoWS4xwfLB+h43erUPX6X41C+AyFHCAEw2Enk2Ot/hC5R3l
         Krgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Qc+mZxTV+FdzmhrCNMAZNBcHZoz8P43EP82OiNbVxfA=;
        fh=4P6QqLQv+GJEIzNiDzTJwmuvNihomM0gYr6C955EgKI=;
        b=PUPl0x4uhrDqURYmPIibVi3rL/5l4zq/4LXDqkLNDR4KYPsIdAC75sBn1Qq7byV7iE
         TxIDgnfzkvAOUu+uxOX9LzPfpBF28oD2DHi9I5X7Y71vI96SpqIejON7BPVKegAoG2fB
         F5hem7NuPht/wtTWsdU24q6HDW6U0rHkb4I9d8+m9rsf0ekEtOF2CbR1uRRdJfOIy7KB
         yrS+BN8y2NwZIX/0+sTgEMozegr94ZEksgpvb8BRGkiaDsPJc5LhEn68BNXOr8dIx5QS
         +Dx5v4F5fzbhMWsnTIbBwLxOk76meTKLUBMmVTibh/EdcUaZedWwkCKnUJjT2KG+Ipga
         dZ4w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773412941; x=1774017741; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qc+mZxTV+FdzmhrCNMAZNBcHZoz8P43EP82OiNbVxfA=;
        b=GGFSMfaBlV/JxTe/0jFPTsEVWBYVyhH1nm+RUwZcTHAVGEbe4fWdeKRBQ7kTeOdTHa
         xgP1Z0XaudAMPir7uZgUFxxeKtIf0AL+Jlf0uzdpdg157snS0oDxN+VNYUfFYrsTDahn
         iYBZ7Y9l5lBEC9n2Ds18tvp0x9qgoH/fUBUM9lvlPyO1xSqsNv1dpO2NuQXzX2zhJKjI
         DBGUO9N4bNPfLL6IEq4FwGNMCpLCvyKM+vWJ/tr+YXtCZ3Zb6HxXV1zhzKI7ux30QGAA
         Vjlsh4vlYCyJ+9zAPxt/lP/e5SrZrxsxYv6rpQp6WADiNCpuOVDFuVpk6gsOOAVIYCuF
         nH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773412941; x=1774017741;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qc+mZxTV+FdzmhrCNMAZNBcHZoz8P43EP82OiNbVxfA=;
        b=TDnJ17SPwWF9mRErPvJmGtjm/FAaXGWX5mPlf1PvNMYMm99ZickUx5JCwT1z+ieHnv
         gv92In8B0Fo4HIhwdxtPaNBNrmz+XPZJOAChzmXZ8HnaBk/szHQnZQIF7ohEZj4FIk3R
         wh87TtvoO9BLICg+DFL1WvVZB1tYsGdHIinp3thHCZhKCKdAWzkbE+/VsYzhdsNxkuF8
         7kNq+RAUwGTc5R/VwFmgAQp5MOEHuJc+gRzTH7vDYsexm+uV/vnfOkvalaSEdSDIR3Vw
         lJFNofhZCXJGBXPnp4t5FSJOFOF0/OcEnMD72zyVFdOcc8twa2h1g1Ahx6W33z3P2GND
         NrHg==
X-Forwarded-Encrypted: i=1; AJvYcCXOeuPGtCJ+bkwX1QuamWl9Cr1qB4xDunZlOVP2rkp0CLodo00iipjAl+sskMMAYx3mwU+E019Fca4G@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/QjdkhBFTKQwPBQFINjEmthsjWpicgnX9S6LTIt+MfJ0JN3vD
	koTUFkmwqGtI2YuRSdq6oC8dExkhwd8FrJ5WOpwBPaVV93dRwdkjxopXpUhJ1j9KzfdEKrEpCRw
	uisrF5Nl3HO910PXgvT3/wpggSQvWlWqO++Ro
X-Gm-Gg: ATEYQzztbbyFISEgueakVOqd2meC2p65Ky0FY/aI9dOFhxVCznBjhjPfwU41fapYtx2
	Txu+IvMtTYF45aTj9SmjZQXvXyjL5GDp9o25AYT8xzqUsAAyrPDdpD+M5Qt50VMuYsCl751DtCP
	8s/NMOQ5EyAfscGF96JW3lIOdK73tk+ma1vQV+saw1d3THaf2fIPqB15TthDVR2wsYtBE0egZvC
	QL68qr5MI8i4mfuwTzPlBabmctkDrauHHn+ckUE7Lr3Nwczd56mfEPkdHre6H1Jar+E+1yD/I0B
	b1d4KA==
X-Received: by 2002:a05:622a:1a8c:b0:503:4251:6597 with SMTP id
 d75a77b69052e-50957cc6720mr50149121cf.29.1773412941102; Fri, 13 Mar 2026
 07:42:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
 <20260309-orangepi-sd-card-uhs-v2-7-5bb2b574df5d@gmail.com> <f2eeddcb-712f-4a67-9687-e217f46f9ea8@baylibre.com>
In-Reply-To: <f2eeddcb-712f-4a67-9687-e217f46f9ea8@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 13 Mar 2026 20:12:02 +0530
X-Gm-Features: AaiRm51P57qcJuyAf0DEi9SoGi5rXwcJCFXanh2EQoeiyawGvbU2ynSwbZwPkSA
Message-ID: <CANAwSgSjsn46p13LokjYZBLdOrUBTFsmDNf80TG=nvkqHWNkfQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] riscv: dts: spacemit: k1-orangepi-rv2: add SD card
 support with UHS modes
To: Trevor Gamblin <tgamblin@baylibre.com>
Cc: Iker Pedrosa <ikerpedrosam@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275341-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D102028531C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Trevor,

On Fri, 13 Mar 2026 at 19:26, Trevor Gamblin <tgamblin@baylibre.com> wrote:
>
>
> On 2026-03-09 07:40, Iker Pedrosa wrote:
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
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >   arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 19 +++++++++++++++=
++++
> >   1 file changed, 19 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/ri=
scv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > index 414b03f5e6480f05f5d7eeaaa0afb4e86425ae36..361135269801f436703b6f1=
d768c91325a52f07f 100644
> > --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > @@ -140,3 +140,22 @@ sd_vqmmc: aldo1 {
> >               };
> >       };
> >   };
> > +
> > +&sdhci0 {
> > +     pinctrl-names =3D "default", "state_uhs";
> > +     pinctrl-0 =3D <&mmc1_cfg>;
> > +     pinctrl-1 =3D <&mmc1_uhs_cfg>;
> > +     bus-width =3D <4>;
> > +     cd-gpios =3D <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
> > +     cd-inverted;
> > +     no-mmc;
> > +     no-sdio;
> > +     disable-wp;
> > +     cap-sd-highspeed;
> > +     vmmc-supply =3D <&sd_vmmc>;
> > +     vqmmc-supply =3D <&sd_vqmmc>;
> > +     sd-uhs-sdr25;
> > +     sd-uhs-sdr50;
> > +     sd-uhs-sdr104;
> > +     status =3D "okay";
> > +};
> >
> Hello again,
>
> Thanks for doing this work. My colleagues and I have been testing this
> on an OrangePi RV2, and also a Muse Pi Pro board (making a similar tweak
> to this patch in k1-musepi-pro.dts). To do the testing on my end, I'm
> applying the patch series on top of 6.19 in a Yocto BSP.
>
> I've been finding that I see issues with the UHS support on my side
> (this log comes from an image built and flashed to an SD card):
>
>
> [ 1.072417] sdhci-spacemit d4280000.mmc: Got CD GPIO
> [ 1.109741] mmc0: SDHCI controller on d4280000.mmc [d4280000.mmc] using
> ADMA
> [ 1.114589] clk: Disabling unused clocks
> [ 1.118421] PM: genpd: Disabling unused power domains
> [ 1.123249] ALSA device list:
> [ 1.126[ 1.129949] check access for rdinit=3D/init failed: -2, ignoring
> [ 1.133284] Waiting for root device
> PARTUUID=3De94bfdd7-a36f-4315-a480-476e2a12403d...
> [ 1.176569] mmc0: new UHS-I speed DDR50 SDHC card at address aaaa
> [ 1.180732] mmcblk0: mmc0:aaaa SS16G 14.8 GiB
> [ 1.276268] mmcblk0: recovery failed!
> [ 1.277351] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags
> 0x800000 phys_seg 1 prio class 2
> [ 1.286346] Buffer I/O error on dev mmcblk0, logical block 0, async page
> read
> [ 1.293891] mmcblk0: recovery failed!
> [ 1.297289] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags
> 0x800000 phys_seg 1 prio class 2
> [ 1.306269] Buffer I/O error on dev mmcblk0, logical block 0, async page
> read
> [ 1.313522] mmcblk0: unable to read partition table
>
>
> At first I wondered if maybe there was an issue with the card itself,
> but by changing the sdhci0 section to this, I'm able to read the SD just
> fine:
>
I used the same example on the K1-OrangePi-RV2 DTS,
But it=E2=80=99s slightly different from the one you=E2=80=99re working wit=
h.
I tested on the latest  7.0-rc3.

> &sdhci0 {
>           pinctrl-names =3D "default";
>           pinctrl-0 =3D <&mmc1_cfg>;
>           bus-width =3D <4>;
>           cd-gpios =3D <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
>           cd-inverted;
>           no-mmc;
>           no-sdio;
>           disable-wp;
>           vmmc-supply =3D <&sd_vmmc>;
>           vqmmc-supply =3D <&sd_vqmmc>;
>           no-1-8-v;
>           status =3D "okay";
> };
>
+
+&sdhci0 {
+       pinctrl-names =3D "default", "state_uhs";
+       pinctrl-0 =3D <&mmc1_cfg>;
+       pinctrl-1 =3D <&mmc1_uhs_cfg>;
+       bus-width =3D <4>;
+       cd-gpios =3D <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
+       cd-inverted;
+       no-mmc;
+       no-sdio;
+       disable-wp;
+       cap-sd-highspeed;
+       vmmc-supply =3D <&sd_vmmc>;
+       vqmmc-supply =3D <&sd_vqmmc>;
+       sd-uhs-sdr25;
+       sd-uhs-sdr50;
+       sd-uhs-sdr104;
+       status =3D "okay";
+};

Thanks
-Anand

