Return-Path: <devicetree+bounces-259281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOOaNPxkdmmVQAEAu9opvQ
	(envelope-from <devicetree+bounces-259281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:46:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EA181CB7
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:46:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5E6230038FD
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 18:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6095C22B594;
	Sun, 25 Jan 2026 18:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="GRhGLAso"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC80D288AD;
	Sun, 25 Jan 2026 18:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769366756; cv=none; b=cdPZV0p7OkDvtJOIqyVwQIH8wDwLgcko8VxhgaGwG5yxqpd6bhcEyn+eGfdfoBQ8lkNQnc9+Ray8EcMSYT0jgn7aO++Q6mazeWg49SLO5/dwakr+ZjVjAgXWAQGKDvrWp5Yq2/EPcBpiFCOekOkhr1NX5htf8EUsJxobdb3pKOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769366756; c=relaxed/simple;
	bh=G5ewcjPBPV/BC3fMWMRVlSKL+K0EQnmgHRBe0FYeCrc=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=IZZZ9beqd77H/Nz2/Bf7V3qem0NSL/cm6H0hvO2gjHo6QpDnzxxDNrZo7zXXsdwkGboT/39TCfsI9MYajrJDUSJQOIHSNc0unRLomDS9hCvu/RA2KZ6kD1Iv/VgZRry9DBdWMcS+JjT4hPtzAQB0Iw9o1v2CbdddXcRGbhEJVYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=GRhGLAso; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 5E0F641B4A;
	Sun, 25 Jan 2026 19:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1769366752; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ZrG6WDsV+mJXUtMhDV9DQtV1cfGpkAXeDDeqY6eDHFk=;
	b=GRhGLAsoB0NY3YG2IuRCx3e9PAqd0NKFa3vesTIaHF5rkGyeIgJPillci5hzU87ywXXxQj
	97jJj/cAp1OhCCW7VLzDqVoEwju0X7UcHyl2MBOYfVWXtsjw6gSQxlQoM+UWSlKbaoJ45Q
	QnH5UAReI7bPmTj7j6znid6Kba5zSi2vmQbPYx52qHntuhaR3S2YcDfiTf4Q5+sEW8RV1s
	knaPhlp+T+k64OiMV+mD/VfLFY0DqL4Pw9Il8D3pviNP7PK5JoYkjFBqOrtegvkcKccSHj
	IWfRw3DVsiF0BZgpefixgTaJ0EAOABg7ijpX5SaNqQGp4teqJu3nmHmBjxBQlQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260125181228.25145-1-sigmaris@gmail.com>
Content-Type: text/plain; charset="utf-8"
References: <20260125181228.25145-1-sigmaris@gmail.com>
Date: Sun, 25 Jan 2026 19:45:51 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Alexey Charkov" <alchark@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Hugh Cole-Baker" <sigmaris@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <8b1a5b5e-c917-f101-6472-9071afb145d0@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= add pwm-fan for NanoPC-T6
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[manjaro.org,quarantine];
	R_DKIM_ALLOW(-0.20)[manjaro.org:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-259281-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[manjaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dsimic@manjaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 21EA181CB7
X-Rspamd-Action: no action

Hello Hugh,

On Sunday, January 25, 2026 19:10 CET, Hugh Cole-Baker <sigmaris@gmail.=
com> wrote:
> FriendlyELEC offers an optional heatsink and fan addon [1] for the
> NanoPC-T6 and T6 LTS, which plugs in to the fan connector on the boar=
d
> driven by pwm1. Add the fan as an active cooling device for the SoC p=
ackage.
> The PWM duty cycle values are taken from the vendor's source [2].
>=20
> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
>=20
> [1]: https://www.friendlyelec.com/index.php?route=3Dproduct/product&p=
roduct=5Fid=3D305
> [2]: https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b6=
2f5aad139fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi=
6-rev01.dts#L75-L90
> ---
> Changes from v2: https://lore.kernel.org/linux-rockchip/2025110919212=
8.72527-1-sigmaris@gmail.com/
> * Set trip points to 55 and 65=C2=B0C (Dragan)
>=20
> Changes from v1: https://lore.kernel.org/linux-rockchip/2025102619485=
8.92461-1-sigmaris@gmail.com/
> * add the fan to the base board dtsi instead of overlay (Heiko)
> * just use 2 trip points for warm and hot temperatures (Dragan, Alexe=
y)
>=20
>  .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 39 +++++++++++++++++=
++
>  1 file changed, 39 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arc=
h/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index 90e7fe254491b..84b6b53f016ab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -11,6 +11,7 @@
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/soc/rockchip,vop2.h>
> +#include <dt-bindings/thermal/thermal.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588.dtsi"
> =20
> @@ -89,6 +90,14 @@ usr=5Fled: led-1 {
>  		};
>  	};
> =20
> +	fan: pwm-fan {
> +		compatible =3D "pwm-fan";
> +		cooling-levels =3D <0 35 64 100 150 255>;
> +		fan-supply =3D <&vcc5v0=5Fsys>;
> +		pwms =3D <&pwm1 0 50000 0>;
> +		#cooling-cells =3D <2>;
> +	};
> +
>  	sound {
>  		compatible =3D "simple-audio-card";
>  		pinctrl-names =3D "default";
> @@ -590,6 +599,36 @@ &i2s6=5F8ch {
>  	status =3D "okay";
>  };
> =20
> +&package=5Fthermal {
> +	polling-delay =3D <1000>;
> +
> +	trips {
> +		package=5Fwarm: package-warm {
> +			temperature =3D <55000>;
> +			hysteresis =3D <2000>;
> +			type =3D "active";
> +		};
> +
> +		package=5Fhot: package-hot {
> +			temperature =3D <65000>;
> +			hysteresis =3D <2000>;
> +			type =3D "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			trip =3D <&package=5Fwarm>;
> +			cooling-device =3D <&fan THERMAL=5FNO=5FLIMIT 1>;
> +		};
> +
> +		map1 {
> +			trip =3D <&package=5Fhot>;
> +			cooling-device =3D <&fan 2 THERMAL=5FNO=5FLIMIT>;
> +		};
> +	};
> +};
> +
>  &pcie2x1l0 {
>  	reset-gpios =3D <&gpio4 RK=5FPB3 GPIO=5FACTIVE=5FHIGH>;
>  	vpcie3v3-supply =3D <&vcc=5F3v3=5Fpcie20>;

Thanks for the v3 of this patch, it's looking good to me, as explained
further in my comments on the v1 and v2.

Please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


