Return-Path: <devicetree+bounces-274509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIjyMHOMsmkQNgAAu9opvQ
	(envelope-from <devicetree+bounces-274509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:50:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDDF26FDFE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 294E930DD346
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D02B3BA25E;
	Thu, 12 Mar 2026 09:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gt5yhmH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8583B7B97
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773308974; cv=pass; b=E4xuhLW2jw67ihKGvWGuwkYGnokqlrqMHRxchoQY6iHfQpvEy+ZC1ufS2mWQmTf1zvEVO4DMycv0hVmIlYLsbi/qikaDopcomDSnQGbuPgCtUKjJmMNIFgDWGYl06eGT1Mw8WfOzwDuVg3fDjaV1zdmuMC/p3/FnmiW3QSuKv3o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773308974; c=relaxed/simple;
	bh=I5YR2k0W1ulybpXJBmWDZB5GMpxTcVL88d3EYxbBDfM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CxOi+i4s0tWYnHnbNORoFriG7rjO3IweNOZdYTbQSm+qeLOgyAyyTWGCkNIrAjOnIKvzkZZMPNU4cFZYcw7uiozlGBpxF16c+u7rH4yj4eHVSc5BiBji9MkRfdQcdgkb7FAGTA+3qG9PNMWBN1PHwCBzlDlhMysB2D//VepfAvg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gt5yhmH6; arc=pass smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2ae82df847bso6399225ad.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773308968; cv=none;
        d=google.com; s=arc-20240605;
        b=YHkQgaO7Dab3Qt4OgrwrYm8HRSM/arNgfWFiHBN95gNltPmtdus46cS/+4uQB5tb9O
         EvMh7fQuEvJqbgITyuWxh9kZpCIYEtiwt0/41N+UvTRpVevxYjT+yzhyDJd/sCbm4OVK
         G3rrdmLCtWVV0fGji1gsN9oRM5rPKcJWabpgg96IYjHLltphFv9zgTSALQPpre7w1R57
         ctwIirMwHv7nFT/onWEuEhXOyNWyxBI1iRWAnq40NLFx//2zo0SjXYrBFiLoJkGucHiI
         xdhk+WpCAj0ONLG6+CYdJo+t/zqx47KHKzgAkEIb/q8YEZJxs8KJn93ohGggFvHRiNtU
         kZ5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qvkQ2gOXPfEgvVdYXifa8peVJAvhJSw87S/AMCZBBQs=;
        fh=/512++SyoFyrrP2ntn1k4JdmIZIRgx+IfgWoqQ3S1Bk=;
        b=gX93/z+2ctejnm7gauc7h0I01bb+XHnNR9vX0XUDDkhBU8xiUHOqg3ak6D0XD+YA0O
         n8uWwDSG6hMUMsd+zatH06ve97nuO7CFut2rI2rjPB8TzL7SAto2jAuf9x9et2ihLDcu
         PAgX2CZ6RHqRsV0H5yvRSUKH8B7dRLYfWAp4/OKTHqv9mpHcG7XfMcQ8YMcv3PO5cWBl
         C9EFIZEgjIQYo6ea+TdI5kqHpY0SaNsz46fP1R248ikwqqryTJJjlSQdDv4TsxMzQxi8
         rNqiqIZmps1ToWKnjbiT63v8rfQ9XgrAwsSrKHg+9cd0VanmTV6jZX9hQb0to0RWDJkR
         gaSg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773308968; x=1773913768; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qvkQ2gOXPfEgvVdYXifa8peVJAvhJSw87S/AMCZBBQs=;
        b=Gt5yhmH6Pm+9XXvmhUIS1baM7uJaQxFE/oaWL5y5XSfqXjZzUAfXnqo29J7hkXGY9T
         ah7NQdSFyJip5Suc8rfBAUjOgTRori3XxQKXEi5g0cW84NcJoUA12zcckPwEeDuIhE8s
         RoDf4ILIoJlujV25WeBfiJypiSi0GglNvD1QJBza+den2ba+842YJrUsSsZ5TJImiRWa
         bnmwJDkECKDohmrB/ycbBA792rh+BdlGzOJMTVdA+8wZ00iRpiDu6ZHred54nMVWeUQD
         uGjJfynQZGfeHrECgteh4T46mxRLgmLYZ6KzF4Sfc2H1XAeafgxl5VmZ2Odp8ZMcUhym
         zrCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773308968; x=1773913768;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qvkQ2gOXPfEgvVdYXifa8peVJAvhJSw87S/AMCZBBQs=;
        b=NwNk8vKygiEe60A+2RHajVp0WQMl+EXgPSqfUj+OwnyaK+jgpT999Ddpss7jgynPdk
         hrWpo7Ezv4bwUqiQcS2wSqxKYgC4YCvjJiRQLA2OgG4p/nzNPJ6X+UEwvkdVVzfF4QiO
         CXycd3BAIFgfW1uuZ2ARj9N7uh+N1ZfZjX2O6GXIPm22OFcwmem9B3AgbxLGiYNFceqB
         C7rFwmbQGhGTXxopEvAD7vvBSAVo7673Zuyfiok9q9pOQl3ogXs4jJBLncyK7p8O4Ks5
         80mv/xoGgMBCqyo1AigMNHXvcoaXQQ5fXYgsIoXuK0V2Hxxv2y/ayz19FpllXa0r/lyl
         qR7g==
X-Forwarded-Encrypted: i=1; AJvYcCUsPJtWwNSYu2PdOlrgthUT9yL0/eGFm6KGGQ91ZGvbHl/+Qht0UfzKWFn0FtfGQc//xMC6GrRWwE8a@vger.kernel.org
X-Gm-Message-State: AOJu0Yw83rCa6Ao4dCT5SoH1ea8XqVjz5/sTkwdAMPFmtRPqYpMALFnp
	VfGG915IZBUYiFGcpKefRQupte+0A/wlHCgFvLuR+HRJKLkxUwNB9A2TqiBJaNjakKucOfmJfNI
	GtkrgiSGtPW0YqzOmOBaUPuGjy4f/Sxs=
X-Gm-Gg: ATEYQzyHHstB+ZJNWjQ+/Gk0jy6ezjPil2Ax4Ehz/FRPGj9RbDswes+sKtRg6yv310c
	SheIJ/CH1dYw94GoQcG+/kn66DpVcVYxE4uBQofcozdrs3bgeFXqzfrV2y0J8TaNw+0BdqjMcFp
	NSD/Lqz8vJ2fKAhnJOepkHQZbBEx+W0bKxNQJvHg2qspabqRbyDZQLqgnp0bLYaMO36NaVX0rxg
	dHqTxYVSEPiIkIVJ47g3t9+fbek2sFfiMqYEZbfvqj4RbVSEAf5TTwCFkjH0cAzKeoclhcoYC0O
	GE+8ths=
X-Received: by 2002:a17:902:db11:b0:2ae:572a:9f39 with SMTP id
 d9443c01a7336-2aeae7ae390mr54703625ad.18.1773308967815; Thu, 12 Mar 2026
 02:49:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312034912.4007057-1-shengjiu.wang@nxp.com>
 <20260312034912.4007057-3-shengjiu.wang@nxp.com> <3918649.ElGaqSPkdT@steina-w>
In-Reply-To: <3918649.ElGaqSPkdT@steina-w>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 12 Mar 2026 17:49:09 +0800
X-Gm-Features: AaiRm50CUazvc_T7zmj0XI6ARnrNtJthYpyJMVhYBvsd-m3gH044OghfQFK0Z8w
Message-ID: <CAA+D8AP=cobxaw=0CuM=J_Q+3LMtJoO-B5LvScQWqE-9NswKXA@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: imx952-evk: Add sound-wm8962 support
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Shengjiu Wang <shengjiu.wang@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274509-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,tq-group.com:url,nxp.com:email,mail.gmail.com:mid,0.0.0.21:email]
X-Rspamd-Queue-Id: 2BDDF26FDFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 5:45=E2=80=AFPM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Am Donnerstag, 12. M=C3=A4rz 2026, 04:49:10 CET schrieb Shengjiu Wang:
> > Add wm8962 sound card. By connecting with ASRC1, the sound card support
> > sample rate conversion.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx952-evk.dts | 119 +++++++++++++++++++
> >  1 file changed, 119 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx952-evk.dts b/arch/arm64/=
boot/dts/freescale/imx952-evk.dts
> > index 509704c23e89..ef0058b98573 100644
> > --- a/arch/arm64/boot/dts/freescale/imx952-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx952-evk.dts
> > @@ -110,6 +110,15 @@ reg_vref_1v8: regulator-adc-vref {
> >               regulator-max-microvolt =3D <1800000>;
> >       };
> >
> > +     reg_audio_pwr: regulator-audio-pwr {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "audio-pwr";
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-min-microvolt =3D <3300000>;
> > +             gpio =3D <&i2c4_pcal6408 1 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +     };
> > +
> >       reg_usdhc2_vmmc: regulator-usdhc2 {
> >               compatible =3D "regulator-fixed";
> >               pinctrl-names =3D "default";
> > @@ -131,6 +140,51 @@ reg_usb_vbus: regulator-vbus {
> >               enable-active-high;
> >       };
> >
> > +     sound-wm8962 {
> > +             compatible =3D "fsl,imx-audio-wm8962";
> > +             audio-asrc =3D <&asrc1>;
> > +             audio-codec =3D <&wm8962>;
> > +             audio-cpu =3D <&sai3>;
> > +             audio-routing =3D "Headphone Jack", "HPOUTL",
> > +                             "Headphone Jack", "HPOUTR",
> > +                             "Ext Spk", "SPKOUTL",
> > +                             "Ext Spk", "SPKOUTR",
> > +                             "AMIC", "MICBIAS",
> > +                             "IN3R", "AMIC",
> > +                             "IN1R", "AMIC";
> > +             hp-det-gpio =3D <&gpio2 11 GPIO_ACTIVE_HIGH>;
> > +             model =3D "wm8962-audio";
> > +             pinctrl-0 =3D <&pinctrl_hp>;
> > +             pinctrl-names =3D "default";
> > +     };
> > +};
> > +
> > +&asrc1 {
> > +     assigned-clocks =3D <&scmi_clk IMX952_CLK_AUDIOPLL1_VCO>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL2_VCO>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL1>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL2>,
> > +                       <&scmi_clk IMX952_CLK_ASRC1>;
> > +     assigned-clock-parents =3D <0>, <0>, <0>, <0>,
> > +                              <&scmi_clk IMX952_CLK_AUDIOPLL1>;
> > +     assigned-clock-rates =3D <3932160000>, <3612672000>,
> > +                            <393216000>, <361267200>, <49152000>;
> > +     fsl,asrc-rate  =3D <48000>;
> > +     status =3D "okay";
> > +};
> > +
> > +&asrc2 {
> > +     assigned-clocks =3D <&scmi_clk IMX952_CLK_AUDIOPLL1_VCO>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL2_VCO>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL1>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL2>,
> > +                       <&scmi_clk IMX952_CLK_ASRC2>;
> > +     assigned-clock-parents =3D <0>, <0>, <0>, <0>,
> > +                              <&scmi_clk IMX952_CLK_AUDIOPLL1>;
> > +     assigned-clock-rates =3D <3932160000>, <3612672000>,
> > +                            <393216000>, <361267200>, <49152000>;
> > +     fsl,asrc-rate  =3D <48000>;
> > +     status =3D "okay";
>
> Is asrc2 actually required? AFAICS this is not referenced.

Yes. It can provide memory to memory interface to user space standalone.

Best regards
Shengjiu Wang

>
> Best regards,
> Alexander
>
> >  };
> >
> >  /* pin conflict with PDM */
> > @@ -185,6 +239,27 @@ &lpi2c4 {
> >       pinctrl-0 =3D <&pinctrl_lpi2c4>;
> >       status =3D "okay";
> >
> > +     wm8962: audio-codec@1a {
> > +             compatible =3D "wlf,wm8962";
> > +             reg =3D <0x1a>;
> > +             clocks =3D <&scmi_clk IMX952_CLK_SAI3>;
> > +             AVDD-supply =3D <&reg_audio_pwr>;
> > +             CPVDD-supply =3D <&reg_audio_pwr>;
> > +             DBVDD-supply =3D <&reg_audio_pwr>;
> > +             DCVDD-supply =3D <&reg_audio_pwr>;
> > +             gpio-cfg =3D < 0x0000 /* 0:Default */
> > +                     0x0000 /* 1:Default */
> > +                     0x0000 /* 2:FN_DMICCLK */
> > +                     0x0000 /* 3:Default */
> > +                     0x0000 /* 4:FN_DMICCDAT */
> > +                     0x0000 /* 5:Default */
> > +                     >;
> > +             MICVDD-supply =3D <&reg_audio_pwr>;
> > +             PLLVDD-supply =3D <&reg_audio_pwr>;
> > +             SPKVDD1-supply =3D <&reg_audio_pwr>;
> > +             SPKVDD2-supply =3D <&reg_audio_pwr>;
> > +     };
> > +
> >       i2c4_pcal6408: gpio@21 {
> >               compatible =3D "nxp,pcal6408";
> >               reg =3D <0x21>;
> > @@ -312,6 +387,24 @@ &lpspi7 {
> >       status =3D "okay";
> >  };
> >
> > +&sai3 {
> > +     assigned-clocks =3D <&scmi_clk IMX952_CLK_AUDIOPLL1_VCO>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL2_VCO>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL1>,
> > +                       <&scmi_clk IMX952_CLK_AUDIOPLL2>,
> > +                       <&scmi_clk IMX952_CLK_SAI3>;
> > +     assigned-clock-parents =3D <0>, <0>, <0>, <0>,
> > +                              <&scmi_clk IMX952_CLK_AUDIOPLL1>;
> > +     assigned-clock-rates =3D <3932160000>, <3612672000>,
> > +                            <393216000>, <361267200>, <12288000>;
> > +     pinctrl-0 =3D <&pinctrl_sai3>;
> > +     pinctrl-1 =3D <&pinctrl_sai3_sleep>;
> > +     pinctrl-names =3D "default", "sleep";
> > +     fsl,sai-amix-mode =3D "bypass";
> > +     fsl,sai-mclk-direction-output;
> > +     status =3D "okay";
> > +};
> > +
> >  &scmi_misc {
> >       nxp,ctrl-ids =3D <BRD_SM_CTRL_SD3_WAKE            1
> >                       BRD_SM_CTRL_M2E_WAKE            1
> > @@ -402,6 +495,12 @@ IMX952_PAD_GPIO_IO27__WAKEUPMIX_TOP_CAN2_RX       =
       0x39e
> >               >;
> >       };
> >
> > +     pinctrl_hp: hpgrp {
> > +             fsl,pins =3D <
> > +                     IMX952_PAD_GPIO_IO11__WAKEUPMIX_TOP_GPIO2_IO_11  =
       0x31e
> > +             >;
> > +     };
> > +
> >       pinctrl_lpi2c2: lpi2c2grp {
> >               fsl,pins =3D <
> >                       IMX952_PAD_I2C2_SCL__AONMIX_TOP_LPI2C2_SCL       =
       0x40000b9e
> > @@ -476,6 +575,26 @@ IMX952_PAD_SD2_RESET_B__WAKEUPMIX_TOP_GPIO3_IO_7 0=
x31e
> >               >;
> >       };
> >
> > +     pinctrl_sai3: sai3grp {
> > +             fsl,pins =3D <
> > +                     IMX952_PAD_GPIO_IO17__WAKEUPMIX_TOP_SAI3_MCLK    =
               0x31e
> > +                     IMX952_PAD_GPIO_IO16__WAKEUPMIX_TOP_AUDMIX_TDM_OU=
T_TXBCLK       0x31e
> > +                     IMX952_PAD_GPIO_IO26__WAKEUPMIX_TOP_AUDMIX_TDM_OU=
T_TXSYNC       0x31e
> > +                     IMX952_PAD_GPIO_IO20__WAKEUPMIX_TOP_SAI3_RX_DATA_=
0              0x31e
> > +                     IMX952_PAD_GPIO_IO21__WAKEUPMIX_TOP_AUDMIX_TDM_OU=
T_TXDATA       0x31e
> > +             >;
> > +     };
> > +
> > +     pinctrl_sai3_sleep: sai3sleepgrp {
> > +             fsl,pins =3D <
> > +                     IMX952_PAD_GPIO_IO17__WAKEUPMIX_TOP_GPIO2_IO_17  =
       0x31e
> > +                     IMX952_PAD_GPIO_IO16__WAKEUPMIX_TOP_GPIO2_IO_16  =
       0x31e
> > +                     IMX952_PAD_GPIO_IO26__WAKEUPMIX_TOP_GPIO2_IO_26  =
       0x31e
> > +                     IMX952_PAD_GPIO_IO20__WAKEUPMIX_TOP_GPIO2_IO_20  =
       0x31e
> > +                     IMX952_PAD_GPIO_IO21__WAKEUPMIX_TOP_GPIO2_IO_21  =
       0x31e
> > +             >;
> > +     };
> > +
> >       pinctrl_tpm3: tpm3grp {
> >               fsl,pins =3D <
> >                       IMX952_PAD_GPIO_IO12__WAKEUPMIX_TOP_TPM3_CH2     =
       0x51e
> >
>
>
> --
> TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Ge=
rmany
> Amtsgericht M=C3=BCnchen, HRB 105018
> Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan S=
chneider
> http://www.tq-group.com/
>
>
>

