Return-Path: <devicetree+bounces-296623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONDvDFYKBGqKCgIAu9opvQ
	(envelope-from <devicetree+bounces-296623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:21:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 828E052D80D
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CF37301349B
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 05:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840913A4501;
	Wed, 13 May 2026 05:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8CrScUm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEBC39DBD4
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 05:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778649683; cv=none; b=j5aEybPOXzsVO6PpWsNnNLDCzQP8UMwK0z5NJfTQoHrkI3thZ2ZR/rt+ex7ZgARA85uILTublr1y1vBIzBrz/UnG+haYTE1xjnoxLgb8SLUl0E6L0hlOjgeY9YuBdmMG0CNeccCTUjppF2iSJRSdw6FMyLoTn1czZ60aLOt2YWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778649683; c=relaxed/simple;
	bh=wG39Ji+Evy4auwV08BQ91JK+X5T6r322YoiDD9mHSjA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e/Lc868g+KAWaGa/OFCXak+c8jXjgjvv/MZW9RwxGKhV2OS6E8bnZ2UdXjKtViYmgd7QiYp9h4q57kkin3Nv2vq4dEsGp2u6vWirnS0M4XFCgPif3c2kq/eXKrhSBKzAQtEcF86UvXw9Mw0n+MZmxq3FCfyH0KlyG+Rd1PO/tCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8CrScUm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15EBCC4AF09
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 05:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778649683;
	bh=wG39Ji+Evy4auwV08BQ91JK+X5T6r322YoiDD9mHSjA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=N8CrScUmNYnIHpxJ6lc171g+eJphe2OhWMe8MuvTj3QqqLSF1jTAEh/h4ImFWhC4i
	 zfFi0iMugiMIXpDz0c/S1sh5fN+ZTa5ybY6e3NW5BNGAHvlK5Lk3y5ZKld9eOpD/fm
	 Y5VkRKxct2VWVuxJOvv5hu3UJ8CBHOBYXXVJoeOEKGsiBUZZlIPsmO74k692V3Kok/
	 uQKVj0NVIkJ9oHQD8kZm99OPFkLyJUjUTxG5v7XIxckSQmGHNvNRATiHRmD3q5Y7Rk
	 ao7l+1YUnCgXX+BjBbUl9hyShcHKzHYd3GZ50WcDvfvXaJ380vQRrqcHiO7RVX6+u6
	 4pxIcA4yJISVQ==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-393a49d2e5eso53654111fa.2
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 22:21:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+2vZ5FS9G7Dh6jKGELcqPMahxF+P0i+UW7Odq1LHEh7pN+wtMvPQ8gxw3NuWb1TrziD7kNdaCNoK+x@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5smrZwtIQZbodScZI/CEkgJMHJ6aHD69x8UEYLRc7laZSHWFS
	4v/Xzao4ty1v1dkYmcv9oCLLYf7qSRV/BORGH4xe5kBOIm+mFJfKmH9P+C9bpThmADKrmo7lQ58
	rljvvNC/dfQlhp8287sAWV6zHmdez0Dk=
X-Received: by 2002:a2e:8a89:0:b0:38e:6:4f89 with SMTP id 38308e7fff4ca-3944ea49693mr2922681fa.25.1778649681511;
 Tue, 12 May 2026 22:21:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260511221741.25888-1-andre.przywara@arm.com>
In-Reply-To: <20260511221741.25888-1-andre.przywara@arm.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 13 May 2026 13:21:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v64u4sqwiiQcEBg-XvmJ2DLEpSj-_AWNbp14RAp-GXP7OA@mail.gmail.com>
X-Gm-Features: AVHnY4LNzDSVxvL_bMTBGmDtpC-1_N73M3ApcObKe_HI8JqQNliaOIug0_HE6VA
Message-ID: <CAGb2v64u4sqwiiQcEBg-XvmJ2DLEpSj-_AWNbp14RAp-GXP7OA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Cubie A5E: enable SPI flash
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 828E052D80D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-296623-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi,

On Tue, May 12, 2026 at 6:18=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> The Cubie A5E board comes with 16MiB of SPI NOR flash.
>
> Enable the SPI0 DT node and describe the configuration.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../boot/dts/allwinner/sun55i-a527-cubie-a5e.dts  | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts b/ar=
ch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> index bfdf1728cd14b..7ad22fc85d1fd 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> @@ -344,6 +344,21 @@ &r_pio {
>         vcc-pm-supply =3D <&reg_aldo3>;
>  };
>
> +&spi0  {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&spi0_pc_pins>, <&spi0_cs0_pc_pin>,
> +                   <&spi0_hold_pc_pin>, <&spi0_wp_pc_pin>;

This whole thing needs to be an overlay. The HOLD and WP pins
conflict with eMMC usage, so it seems that Radxa only populates
one or the other.

If you look at the pictures on their official website, you'll see the
SPI NOR chip populated, but not the eMMC chip. On the linux-sunxi wiki
page, you'll see the opposite.

And you probably want to enable QSPI, like Sashiko mentioned.


ChenYu


> +       status =3D "okay";
> +
> +       flash@0 {
> +               compatible =3D "winbond,w25q128", "jedec,spi-nor";
> +               reg =3D <0>;
> +               spi-max-frequency =3D <40000000>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <1>;
> +       };
> +};
> +
>  &uart0 {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&uart0_pb_pins>;
> --
> 2.46.4
>

