Return-Path: <devicetree+bounces-268470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ3NG/4mn2mPZAQAu9opvQ
	(envelope-from <devicetree+bounces-268470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:44:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A2519AE13
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9F0932028BD
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A246D3D7D8A;
	Wed, 25 Feb 2026 16:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mv1NfCF0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4874712CDBE
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772037327; cv=pass; b=GPplRDHHRoypIlqwMNL4uQpvR65unRs4s43gc7xH8wAoSbF9vkfqzRYI4/a6+PCxuxxiSLLGQeZAvs7YdDd5pVlfxuGj1uCenam+YE1Tp/UKfKTrClDv3La2P7Dj/8I3RCp7qJsSarZ251Wbji6fRv/CFVb/CKZvZ0w4G0kBZm4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772037327; c=relaxed/simple;
	bh=5mn5Tfn04nZioLhmX5FA6JQCdLtNk5ymRmu4Pl6FZFQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ggSuyabz9qDI/JCwDR11XfZPL/Wym7N6+jOGt9B99S0RbBqZf44hGf1XavXCzil3WNM+YZ8pacFpNx+7rps8/n9nzv/c2OV3BNg7zVpmIzPERgJr8qXLofasr6FZjwfma53Bb1t80huekT2zY1pwDnVI/L+/Xa3URCDYABRsGMU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mv1NfCF0; arc=pass smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2bdbd13ca01so2568965eec.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:35:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772037325; cv=none;
        d=google.com; s=arc-20240605;
        b=MeXKlXdnFloubR/DJS+C48ySElJKtZtnVRhGpsPHRcebIA490o1jf0Po2a3lAxHaCD
         i0VzUGTJFHVoCAzf6YEsXoCj0kKuwtpOiR8R7vLiAODYH1LbixhsVXm+wdKXbAhRzCZO
         qI+Prc8q9zg7s9l53RG54gwpsChqJJVd9j2Ui34l5h00Om7qJRdXJpCWIJWWlhb2jKN5
         9F+JM3h+DXyApgEVeN22nz1ah2ZV2jqixgQlmUPT2v2Tx5wVyZxBQzHK0dxwSCAKP7kd
         wtCOJC7fRf99IS52bxFGFdke2wL7qc+OuY9LpwiN2plrkIxSk7xb2xS1LxKIaAU3DN1S
         jcyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RuMyK8k/Iub+seZtBM6TPXaM4YVrVm+PvcW0VWb+Be8=;
        fh=57rXe0/oyV0RyO6MdbOjliDcgyu/HHdILoJUM5IvMA8=;
        b=Aba9pCu74YuOyRD0/sZ786i+INKGBRZ3bIyREY3tOurnWi94nB+rmwPbbfwYb8GflC
         BlFy2szN1MghGjeSjhNMEBOEvyHfhF5ZUil9vz6z/wXASbirlifcJaZMbulUqT9iAhOI
         b/he56O+WZEVuOdWJKgLWqJWoJndskT7u+HnxzUiJ3Wjqc5RHsID556+b7ZZweNJAafU
         s/+kiLWMbGLISqdz2kRczBVOkv0DYxYTdDoMuOorpeXCwcPWY3+aEeXGOMW0L4eUZVSW
         dgyjayr5qsosmipZTDTfhuOq4a6B43+be6QMsk8lLZN9F+EiupwNoaV05hnw2rM8D6OB
         J7vg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772037325; x=1772642125; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RuMyK8k/Iub+seZtBM6TPXaM4YVrVm+PvcW0VWb+Be8=;
        b=mv1NfCF0Oszuw2rgMNTU6F2h/wsO5cT0xhXLkX3WaHHjMc0DL7Jv9teLYd3TEBelGN
         aBeZL3ySUxktv3cRSNnOrrpsyU9HvlKzJk+pQD5ih02PNCuiH2AuV4fC73aTGDSjb+P1
         e5nUrq0casCgvKWyEe0gxvYK3fYV4oR17zIfBgMVmt7P9Evr0RsAbE1fSqOZuODK5b7k
         feC4mZEmTdcR4U227r7Pl38z1EUMhtRjg9frJEZxe3uWKwQRV4pmOUOflxCsVwIT13HU
         F5Yu+8pInffnaP9GmFP5d17wTP0T9IdCQYroh162xbV33HcaAwJrH2OgSwhn5sqdUAgI
         531A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772037325; x=1772642125;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RuMyK8k/Iub+seZtBM6TPXaM4YVrVm+PvcW0VWb+Be8=;
        b=WEeCmBFAcBk5z/u2GkMrz3WvWxfW+4nUynh9zbu949VFSLt+oyD3x5I7YBknglz5nF
         EBMPSBPz2sTIB/en8HsGG0L8HlbkrO2XWltN1VJtxevDssWn3YTXImnpSCCqBYk70V9i
         le7MWJXiQNEVFCeMAlGBhs0uM6eoexFIWKv3GHzmdl5HGJhyzVeoLuHkd7/Z2h1aa8I5
         vQGg+FirvxrxUeG0p7TdyfdyrmiN2xmBKISL+X313msIC11Bn7YsJl0ysz5ntKMqEY5f
         gDy84FZ/EgLIIjFXJygvjpNuCib+9jextLrS2GyM2Ka36X8Oe//ieXnGrCsoP3rLowJO
         KoAA==
X-Forwarded-Encrypted: i=1; AJvYcCU20R9JtxWydCdXq75pq8QgniguPXeWy5VFf7zMoQyWXfUw1/sgGQnkNzqu40CLje78UT9ypfR7N7fR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2y6AFDfLshjYESfxwsk0QIbwVFiT0ZSPftZNhykI7ewVP5MjL
	5FloQkuULU1w29CsNAqYRRPgEnpF3NQnlhyvZph/O1jIFcaQhCmykfIrzPEeqERqvTqJDzUXAyw
	R/Z6tmW1mV7rh17SaVSOzVHtCPkaxTPw=
X-Gm-Gg: ATEYQzz/s80HJIo8IIERzHeKDQftIfPwnAzyeUTy7Rieh79fNQyrmnQEcOugcyz1EcH
	cvqPRRtIxkvYpkNqKxXLDVMVB1SZ1OClYNGqs0Mt7Pn3ZvDrDfiBnq+ePNlG2UtOvwmBteYUhUK
	3lQgmiEitiATebzwjjsWuNgp7fH8oGRa0YszB31dNXp94OYXY4QdcU0TpiKim0zRoe5Kg+NJ5u6
	UrSmggeuKcBn30cELoW6g0jJup3SY7+rgiFhL9mCkoYKWqYVY7vUWWAJLrAk3EDgwHBy6bgjlji
	M2FT0LMVMfpFZc9nEg==
X-Received: by 2002:a05:7300:730c:b0:2ba:8018:cc53 with SMTP id
 5a478bee46e88-2bdcc09cdcfmr451942eec.35.1772037325339; Wed, 25 Feb 2026
 08:35:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
 <20260223-panel-patches-v1-3-7756209477f9@gmail.com> <dko7l6iage7blup4zbpsm32d2elvxpengqwbzcsv4v4zedjmpb@rsdrb77acgme>
In-Reply-To: <dko7l6iage7blup4zbpsm32d2elvxpengqwbzcsv4v4zedjmpb@rsdrb77acgme>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Wed, 25 Feb 2026 18:35:13 +0200
X-Gm-Features: AaiRm500k62S5PT-UtPwx_C8A375gU6HJuFS3MnM7OdDg835C8WPOS3XQzbLxvI
Message-ID: <CAHuF_ZrQPZSv=AhK5Cq8aNq1NVcdZhHC3v0ju4sW4whYYP+d+A@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Enable
 MDSS and add panel
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268470-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,mail.gmail.com:mid,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: C4A2519AE13
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 at 04:46, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Mon, Feb 23, 2026 at 04:24:04PM +0200, Yedaya Katsman wrote:
> > Enable the MDSS nodes and add supplies and bindings for the Samsung
> > S6E8FCO panel.
> >
> > The ldo and iovcc pins boot up with a current of 16 mA, but they work
> > fine with 2mA, so I used that.
> >
> > Co-developed-by: Kamil Go=C5=82da <kamil.golda@protonmail.com>
> > Signed-off-by: Kamil Go=C5=82da <kamil.golda@protonmail.com>
> > Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> > ---
> >  .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 94 ++++++++++++++=
++++++++
> >  1 file changed, 94 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b=
/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> > index 994fb0412fcbdf5466f87a325c48b697a37b514b..10fd01143a644004b807fc4=
55d2235f8e6a9737a 100644
> > --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> > @@ -82,6 +82,32 @@ key-volume-up {
> >               };
> >       };
> >
> > +     panel_ldo_supply: panel-ldo-supply {
>
> regulator-foo-bar-baz
Will change
>
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "panel_ldo_supply";
>
> Is it an actual name (e.g. from schematics)?
In the downstream dts it's called "panel_ldo-gpio-supply". [0]

[0] https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/d3766fc8cda2d96=
de2850faa9ce58e5a37ea9f9c/arch/arm64/boot/dts/qcom/trinket-sde-display.dtsi=
#L28
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             regulator-boot-on;
> > +
> > +             enable-active-high;
> > +             gpio =3D <&tlmm 26 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-0 =3D <&panel_ldo_en>;
> > +             pinctrl-names =3D "default";
> > +     };
> > +
> > +     panel_iovcc_supply: panel-iovcc-supply {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "panel_iovcc_supply";
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             regulator-boot-on;
> > +
> > +             enable-active-high;
> > +             gpio =3D <&tlmm 124 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-0 =3D <&panel_iovcc_en>;
> > +             pinctrl-names =3D "default";
> > +     };
> > +
> >       thermal-zones {
> >               rf-pa0-thermal {
> >                       thermal-sensors =3D <&pm6125_adc_tm 0>;
> > @@ -128,6 +154,46 @@ &hsusb_phy1 {
> >       status =3D "okay";
> >  };
> >
> > +&mdss {
> > +     status =3D "okay";
> > +};
> > +
> > +&mdss_dsi0 {
> > +     vdda-supply =3D <&vreg_l18a>;
> > +
> > +     pinctrl-0 =3D <&mdss_default>;
> > +     pinctrl-1 =3D <&mdss_sleep>;
> > +     pinctrl-names =3D "default", "sleep";
> > +
> > +     status =3D "okay";
> > +
> > +     panel@0 {
> > +             compatible =3D "samsung,s6e8fco";
> > +             reg =3D <0>;
> > +
> > +             vddio-supply =3D <&vreg_l9a>;
> > +             ldo-supply =3D <&panel_ldo_supply>;
> > +             iovcc-supply =3D <&panel_iovcc_supply>;
> > +             reset-gpios =3D <&tlmm 90 GPIO_ACTIVE_LOW>;
> > +
> > +             port {
> > +                     panel_in: endpoint {
> > +                             remote-endpoint =3D <&mdss_dsi0_out>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&mdss_dsi0_out {
> > +     data-lanes =3D <0 1 2 3>;
> > +     remote-endpoint =3D <&panel_in>;
> > +};
> > +
> > +
> > +&mdss_dsi0_phy {
> > +     status =3D "okay";
>
> Missing vdds-supply.
Will add
> > +};
> > +
> >  &pm6125_adc {
> >       pinctrl-names =3D "default";
> >       pinctrl-0 =3D <&camera_flash_therm &emmc_ufs_therm>;
> > @@ -387,6 +453,34 @@ &sdhc_2 {
> >
> >  &tlmm {
> >       gpio-reserved-ranges =3D <22 2>, <28 6>;
> > +
> > +     panel_ldo_en: panel-ldo-default-state {
> > +             pins =3D "gpio26";
> > +             function =3D "gpio";
> > +             drive-strength =3D <2>;
> > +             bias-pull-up;
> > +     };
> > +
> > +     mdss_default: mdss-default-state {
> > +             pins =3D "gpio90";
> > +             function =3D "gpio";
> > +             drive-strength =3D <8>;
> > +             bias-disable;
> > +     };
> > +
> > +     mdss_sleep: mdss-sleep-state {
> > +             pins =3D "gpio90";
> > +             function =3D "gpio";
> > +             drive-strength =3D <2>;
> > +             bias-pull-down;
> > +     };
> > +
> > +     panel_iovcc_en: panel-iovcc-default-state {
> > +             pins =3D "gpio124";
> > +             function =3D "gpio";
> > +             drive-strength =3D <2>;
> > +             bias-pull-up;
> > +     };
> >  };
> >
> >  &ufs_mem_hc {
> >
> > --
> > 2.53.0
> >
>
> --
> With best wishes
> Dmitry

