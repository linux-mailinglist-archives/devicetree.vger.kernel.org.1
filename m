Return-Path: <devicetree+bounces-251112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F34D7CEECD2
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:52:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 207A9300B9A6
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8A0221542;
	Fri,  2 Jan 2026 14:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QC/9nwi2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37491226861
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767365475; cv=none; b=F4eNXpBccUPUMzt0VP/pK1ZCerKNY6T80+NOMRDGGPTV59p6Kb2Nynpbgu84A6GXGNKNLoMQPqYoC805H7l+kKIoxvxF62nCbdpai8Q7WWNcdq9j48BsFOIfgpXpaapt4OBjdl8L7jJ9OOln4L+yPmjUkrnNdIi5Wu/Xp9jCxn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767365475; c=relaxed/simple;
	bh=W9Dd/g/edO3ItkoID8TyIhovk2PkD80xtRR3yDqS88E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CM719aL4mGTzLUiB/HB9EoZihELqGft0kJEB3D1ps82SsPL7rYJHMkw/j/blK+jLnvKjPT8XYBO7pt1+mc99VIn8hiTCt5h41B1N6GzGzgwX8BVjJLa/k/vigOnQHrm2Ux+jK3Did7xhtHaZ1b8tlm+ayU/aRN/SApr6+9Qx1Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QC/9nwi2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFB9DC116B1
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767365473;
	bh=W9Dd/g/edO3ItkoID8TyIhovk2PkD80xtRR3yDqS88E=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QC/9nwi23uwFr81jCyBli/enMvvtu4I46IX7pWr14kQtBnxucyOILwNauNYpBYE5R
	 dASdXzjWQX9vGwY6Drg2rPjLbJ5q4S7AU/0vAv6lHHYRNkFxun9WS3WXVF+FZH3rGj
	 HooHF9yqu3HcE01fANY/JjnDI4T2j5o7c9bEVX3X9DquiNXzJW1i/6g98tFd3ejqT+
	 HLVxcIBylE1ViOKzNI7Njxo1lNKAbm7VXkis2b4UORIQSu9TswEZJGJqHfug86HdDQ
	 3hojxjYp0zXlSAMQxif+dV7JOi6ruGOBeVEbvYDAodpqIfRhPPAqFdOi9PJmXkJXRS
	 XFsqUESW2cE0g==
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-64b83949fdaso16666160a12.2
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 06:51:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWOPSdKF1yssLNeBgylwVqVkuitzdYm6IZ8e6/Adpt4pPBRSe5hkpkFQ3VHO5dSimqV1xApgw1BGwNH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi6UjDPA8LHgPKcMqSgKElqwh4L9ATziGIx1vc7JNoJqZGzSF4
	cKxfj1UrJexfoqArM3GLPZn93w1vivM7lkwdcb7U+NuSJQpA3/OtRrDp3XbOqxWpGlCzOJUnMow
	IolSrQITGRZysPd8dEx/4MmIU++x8pQ==
X-Google-Smtp-Source: AGHT+IGuTLkUmWCRLM2wBlpNGmIQSvJet7x51wmajep97YykTXXPTnxCbvt6CY7CHuIns0nmjWjMEvS5bRBqfCE8G+M=
X-Received: by 2002:a17:907:1c98:b0:b83:3773:e72a with SMTP id
 a640c23a62f3a-b833773ed95mr2339800866b.1.1767365472290; Fri, 02 Jan 2026
 06:51:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260102140054.1088756-1-dinguyen@kernel.org>
In-Reply-To: <20260102140054.1088756-1-dinguyen@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 2 Jan 2026 08:51:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJFwUStZ0vwBY99qMSfV7-FjrW_jAq4FWHJeXGfVKbeoA@mail.gmail.com>
X-Gm-Features: AQt7F2pAOJTMynxjI7Qva-NJSrd2EkqN-19O0yw-AJB81diHRnYsVkNdUE9O1bA
Message-ID: <CAL_JsqJFwUStZ0vwBY99qMSfV7-FjrW_jAq4FWHJeXGfVKbeoA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: socfpga: remove underscore node names for
 base socfpga dtsi
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 2, 2026 at 8:01=E2=80=AFAM Dinh Nguyen <dinguyen@kernel.org> wr=
ote:
>
> The node names in the these file should be using a hyphen, not an
> underscore as warned by 'dtc W=3D2'.
>
> sed command used : sed -E ':a; s/(:.*)_/\1-/; ta'
>
> Used dtx_diff to check before/after dtbs.
>
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  arch/arm/boot/dts/intel/socfpga/socfpga.dtsi | 106 +++++++++----------
>  1 file changed, 53 insertions(+), 53 deletions(-)
>
> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot=
/dts/intel/socfpga/socfpga.dtsi
> index 5dc8d33e8ad7..d439fc3e17a7 100644
> --- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
> @@ -132,17 +132,17 @@ osc2: osc2 {
>                                                 compatible =3D "fixed-clo=
ck";
>                                         };
>
> -                                       f2s_periph_ref_clk: f2s_periph_re=
f_clk {
> +                                       f2s_periph_ref_clk: f2s-periph-re=
f-clk {

The preferred name is "clock-<freq-in-hz>" if you know the frequency.

>                                                 #clock-cells =3D <0>;
>                                                 compatible =3D "fixed-clo=
ck";
>                                         };
>
> -                                       f2s_sdram_ref_clk: f2s_sdram_ref_=
clk {
> +                                       f2s_sdram_ref_clk: f2s-sdram-ref-=
clk {
>                                                 #clock-cells =3D <0>;
>                                                 compatible =3D "fixed-clo=
ck";
>                                         };
>
> -                                       main_pll: main_pll@40 {
> +                                       main_pll: main-pll@40 {

clock-controller@40

Similar on the others with unit-addresses.

>                                                 #address-cells =3D <1>;
>                                                 #size-cells =3D <0>;
>                                                 #clock-cells =3D <0>;
> @@ -166,7 +166,7 @@ mainclk: mainclk@4c {

It looks like it is not just underscores.

>                                                         reg =3D <0x4C>;
>                                                 };
>
> -                                               dbg_base_clk: dbg_base_cl=
k@50 {
> +                                               dbg_base_clk: dbg-base-cl=
k@50 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&main=
_pll>, <&osc1>;
> @@ -174,21 +174,21 @@ dbg_base_clk: dbg_base_clk@50 {
>                                                         reg =3D <0x50>;
>                                                 };
>
> -                                               main_qspi_clk: main_qspi_=
clk@54 {
> +                                               main_qspi_clk: main-qspi-=
clk@54 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&main=
_pll>;
>                                                         reg =3D <0x54>;
>                                                 };
>
> -                                               main_nand_sdmmc_clk: main=
_nand_sdmmc_clk@58 {
> +                                               main_nand_sdmmc_clk: main=
-nand-sdmmc-clk@58 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&main=
_pll>;
>                                                         reg =3D <0x58>;
>                                                 };
>
> -                                               cfg_h2f_usr0_clk: cfg_h2f=
_usr0_clk@5c {
> +                                               cfg_h2f_usr0_clk: cfg-h2f=
-usr0-clk@5c {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&main=
_pll>;
> @@ -196,7 +196,7 @@ cfg_h2f_usr0_clk: cfg_h2f_usr0_clk@5c {
>                                                 };
>                                         };
>
> -                                       periph_pll: periph_pll@80 {
> +                                       periph_pll: periph-pll@80 {
>                                                 #address-cells =3D <1>;
>                                                 #size-cells =3D <0>;
>                                                 #clock-cells =3D <0>;
> @@ -204,42 +204,42 @@ periph_pll: periph_pll@80 {
>                                                 clocks =3D <&osc1>, <&osc=
2>, <&f2s_periph_ref_clk>;
>                                                 reg =3D <0x80>;
>
> -                                               emac0_clk: emac0_clk@88 {
> +                                               emac0_clk: emac0-clk@88 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&peri=
ph_pll>;
>                                                         reg =3D <0x88>;
>                                                 };
>
> -                                               emac1_clk: emac1_clk@8c {
> +                                               emac1_clk: emac1-clk@8c {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&peri=
ph_pll>;
>                                                         reg =3D <0x8C>;
>                                                 };
>
> -                                               per_qspi_clk: per_qsi_clk=
@90 {
> +                                               per_qspi_clk: per-qsi-clk=
@90 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&peri=
ph_pll>;
>                                                         reg =3D <0x90>;
>                                                 };
>
> -                                               per_nand_mmc_clk: per_nan=
d_mmc_clk@94 {
> +                                               per_nand_mmc_clk: per-nan=
d-mmc-clk@94 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&peri=
ph_pll>;
>                                                         reg =3D <0x94>;
>                                                 };
>
> -                                               per_base_clk: per_base_cl=
k@98 {
> +                                               per_base_clk: per-base-cl=
k@98 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&peri=
ph_pll>;
>                                                         reg =3D <0x98>;
>                                                 };
>
> -                                               h2f_usr1_clk: h2f_usr1_cl=
k@9c {
> +                                               h2f_usr1_clk: h2f-usr1-cl=
k@9c {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&peri=
ph_pll>;
> @@ -247,7 +247,7 @@ h2f_usr1_clk: h2f_usr1_clk@9c {
>                                                 };
>                                         };
>
> -                                       sdram_pll: sdram_pll@c0 {
> +                                       sdram_pll: sdram-pll@c0 {
>                                                 #address-cells =3D <1>;
>                                                 #size-cells =3D <0>;
>                                                 #clock-cells =3D <0>;
> @@ -255,28 +255,28 @@ sdram_pll: sdram_pll@c0 {
>                                                 clocks =3D <&osc1>, <&osc=
2>, <&f2s_sdram_ref_clk>;
>                                                 reg =3D <0xC0>;
>
> -                                               ddr_dqs_clk: ddr_dqs_clk@=
c8 {
> +                                               ddr_dqs_clk: ddr-dqs-clk@=
c8 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&sdra=
m_pll>;
>                                                         reg =3D <0xC8>;
>                                                 };
>
> -                                               ddr_2x_dqs_clk: ddr_2x_dq=
s_clk@cc {
> +                                               ddr_2x_dqs_clk: ddr-2x-dq=
s-clk@cc {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&sdra=
m_pll>;
>                                                         reg =3D <0xCC>;
>                                                 };
>
> -                                               ddr_dq_clk: ddr_dq_clk@d0=
 {
> +                                               ddr_dq_clk: ddr-dq-clk@d0=
 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&sdra=
m_pll>;
>                                                         reg =3D <0xD0>;
>                                                 };
>
> -                                               h2f_usr2_clk: h2f_usr2_cl=
k@d4 {
> +                                               h2f_usr2_clk: h2f-usr2-cl=
k@d4 {
>                                                         #clock-cells =3D =
<0>;
>                                                         compatible =3D "a=
ltr,socfpga-perip-clk";
>                                                         clocks =3D <&sdra=
m_pll>;
> @@ -284,35 +284,35 @@ h2f_usr2_clk: h2f_usr2_clk@d4 {
>                                                 };
>                                         };
>
> -                                       mpu_periph_clk: mpu_periph_clk {
> +                                       mpu_periph_clk: mpu-periph-clk {

I don't really have a better suggestion on all of these...

>                                                 #clock-cells =3D <0>;
>                                                 compatible =3D "altr,socf=
pga-perip-clk";
>                                                 clocks =3D <&mpuclk>;
>                                                 fixed-divider =3D <4>;
>                                         };

