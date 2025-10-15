Return-Path: <devicetree+bounces-226835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8DEBDBF4E
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 03:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B085406E81
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 01:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F332F6176;
	Wed, 15 Oct 2025 01:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ut80++C5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5302F60B6
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760490447; cv=none; b=i94vQ9jA+KHlBa6Cn+tahNzRK7uKDC7urlHtARyaN07tMS2ywaBk5zY1JOAFZwDfYLJLpOBvWVCg3wqOehz6sfp+sVV8jprs5A1zqsQJqm9Cvi+Xbcgtsh7qT3eygjpEvbXldsMg/LRsKkeoQrN1WMKmRRsCcRTRCUFuoJmMtSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760490447; c=relaxed/simple;
	bh=xY+ze6fHA9Rf3jL29Ykl6MCDANvjndaE04zu8qEa1RI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tXiG2/7nOz18THwjq/fwMX5ezVmc/2CnolE1NDbONw0JakNJR090CmnfPLMlCDLZCxdjj39rdyAtqSlj5PhXHGXqwRiXFrqoPD0joG0Zs7cFHdfq2XhZqVkmf6RzvYKWpoIDofEU7G8DXuk4wUl87zrC/OH+BvNmEmQXQpu/a7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ut80++C5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3505C16AAE
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760490445;
	bh=xY+ze6fHA9Rf3jL29Ykl6MCDANvjndaE04zu8qEa1RI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Ut80++C5Y6q/VNJaxhej2OETDFw+mq1fB5/cYtaeiAks2W8s4TcYaGOujT4dHwaxn
	 y78aqX4dic8bvDKdSN4cSH+G4ChrhKyelLlJrpNfEjMz6cVlEZ6sq6LzgWTG9fJRPn
	 URYNCsr58HdNwIJ4KReP2klU/leUOjPeEdNNfkfNDAtlE0qO98ZxEKf0lDgvLeBbCo
	 mB4TddbmbVtZB5k489Hd5URmoivQ+2SamfH3ZIBP+ix1udtz1nWEmOTGNPWody3fNF
	 u1x8GoJPFD/Zwtsh8bmpimeYh56hq2aSA8tkkJcCFybfY3mEp6pOlXHcWIhJEEmGJP
	 E2e1DRNFViSEQ==
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso5552630f8f.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 18:07:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXip7OCMeBCz0xrYtWTxTpE/IeP4d6v0vEaBqhXkk2ecyTEUwfpYWls5XvtGQ6pMm5s+HIoss/tcXcz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt1Sa2Oip4QZz4ig2BAieN3FAiqVB33uGtj0lZ7mmCLFIdZ3d8
	OOxwGNeZtGLNzs0aSyAbdnIL1FyCl8BJL8D3AV8fqVvmKb2CvVFIgAwK2T7vk7iJjg5vMC1FvW8
	Q0erexDG+GyCTQ+F4+PraKMh9R8kITHE=
X-Google-Smtp-Source: AGHT+IHwvormcZdElu5C7IsFzc0BjjpZQylsJXFDkKp7gK1zxNAzYaPTNmtdqtw+AnNzsoYEYdgRm0mjKHqOEWalWaw=
X-Received: by 2002:a05:6000:25c6:b0:3ee:1118:df7d with SMTP id
 ffacd0b85a97d-4266e8de439mr17402019f8f.47.1760490444460; Tue, 14 Oct 2025
 18:07:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014131032.49616-1-ziyao@disroot.org> <20251014131032.49616-6-ziyao@disroot.org>
In-Reply-To: <20251014131032.49616-6-ziyao@disroot.org>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 15 Oct 2025 09:07:12 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSQ-F6nBWV0ZTsFFsHATBAPQO=hjC1Gws+=+_x7yWGQnA@mail.gmail.com>
X-Gm-Features: AS18NWAr2bxoHiZNoK45bPhaq7a9ecYsouPhzbOoevcye2nhg_fXbJNYwcxyQIA
Message-ID: <CAJF2gTSQ-F6nBWV0ZTsFFsHATBAPQO=hjC1Gws+=+_x7yWGQnA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] riscv: dts: thead: Add reset controllers of more
 subsystems for TH1520
To: Yao Zi <ziyao@disroot.org>
Cc: Drew Fustini <fustini@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Michal Wilczynski <m.wilczynski@samsung.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Icenowy Zheng <uwu@icenowy.me>, Han Gao <rabenda.cn@gmail.com>, Han Gao <gaohan@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 9:12=E2=80=AFPM Yao Zi <ziyao@disroot.org> wrote:
>
> Describe reset controllers for VI, MISC, AP, DSP and AO subsystems. The
> one for AO subsystem is marked as reserved, since it may be used by AON
> firmware.
>
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 37 +++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/=
thead/th1520.dtsi
> index e680d1a7c821..15d64eaea89f 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -277,6 +277,12 @@ clint: timer@ffdc000000 {
>                                               <&cpu3_intc 3>, <&cpu3_intc=
 7>;
>                 };
>
> +               rst_vi: reset-controller@ffe4040100 {
> +                       compatible =3D "thead,th1520-reset-vi";
> +                       reg =3D <0xff 0xe4040100 0x0 0x8>;
> +                       #reset-cells =3D <1>;
> +               };
> +
>                 spi0: spi@ffe700c000 {
>                         compatible =3D "thead,th1520-spi", "snps,dw-apb-s=
si";
>                         reg =3D <0xff 0xe700c000 0x0 0x1000>;
> @@ -502,6 +508,18 @@ uart2: serial@ffec010000 {
>                         status =3D "disabled";
>                 };
>
> +               rst_misc: reset-controller@ffec02c000 {
> +                       compatible =3D "thead,th1520-reset-misc";
> +                       reg =3D <0xff 0xec02c000 0x0 0x18>;
> +                       #reset-cells =3D <1>;
> +               };
> +
> +               rst_vp: reset-controller@ffecc30000 {
> +                       compatible =3D "thead,th1520-reset-vp";
> +                       reg =3D <0xff 0xecc30000 0x0 0x14>;
> +                       #reset-cells =3D <1>;
> +               };
> +
>                 clk: clock-controller@ffef010000 {
>                         compatible =3D "thead,th1520-clk-ap";
>                         reg =3D <0xff 0xef010000 0x0 0x1000>;
> @@ -509,6 +527,18 @@ clk: clock-controller@ffef010000 {
>                         #clock-cells =3D <1>;
>                 };
>
> +               rst_ap: reset-controller@ffef014000 {
> +                       compatible =3D "thead,th1520-reset-ap";
> +                       reg =3D <0xff 0xef014000 0x0 0x1000>;
> +                       #reset-cells =3D <1>;
> +               };
> +
> +               rst_dsp: reset-controller@ffef040028 {
> +                       compatible =3D "thead,th1520-reset-dsp";
> +                       reg =3D <0xff 0xef040028 0x0 0x4>;
> +                       #reset-cells =3D <1>;
> +               };
> +
>                 gpu: gpu@ffef400000 {
>                         compatible =3D "thead,th1520-gpu", "img,img-bxm-4=
-64",
>                                      "img,img-rogue";
> @@ -681,6 +711,13 @@ aogpio: gpio-controller@0 {
>                         };
>                 };
>
> +               rst_ao: reset-controller@fffff44000 {
> +                       compatible =3D "thead,th1520-reset-ao";
> +                       reg =3D <0xff 0xfff44000 0x0 0x2000>;
> +                       #reset-cells =3D <1>;
> +                       status =3D "reserved";
> +               };
> +
>                 padctrl_aosys: pinctrl@fffff4a000 {
>                         compatible =3D "thead,th1520-pinctrl";
>                         reg =3D <0xff 0xfff4a000 0x0 0x2000>;
> --
> 2.50.1
>
LGTM!

Acked-by: Guo Ren <guoren@kernel.org>

--=20
Best Regards
 Guo Ren

