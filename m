Return-Path: <devicetree+bounces-259280-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOqRIt1kdmmVQAEAu9opvQ
	(envelope-from <devicetree+bounces-259280-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:45:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6B181CA9
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:45:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 05CEF3000FE5
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 18:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10B901F9F7A;
	Sun, 25 Jan 2026 18:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="bi7v9Sa6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3CB3BB4A;
	Sun, 25 Jan 2026 18:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769366747; cv=none; b=AHsBr9isDKk8nU4DsqC1lmrTtiqcXIqaT5E3JEcZaX5/OQTVlQIBkC8ET1zzZTjUBmw4N5q1WckKw7DgTSP7M3ws/8wZLQfZCWH6T7N6/AjvfehHQrhHzyV0rzzjZiXLcVIZybMF8jGZ2sNl0AlFRBWWXFTPKuxgh+1TA0vb+lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769366747; c=relaxed/simple;
	bh=YnVhlENE6DzFRMCPYRF1FXmt11W9Y0vAdCxHVZseQyw=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=hU+vJufwnT3nODNlKRPAF/A9VySvD6PenLZuZsZ4UxubYYv71ad4VIGyYRkzFlO31KL6mKWQLXuahovNOwtI1+x4f6bVIBSSam0MiGgSvr1NTALaT5xYxft1j4YmZpGDpd16Zt5iS5WlXDSzN9WRHb4CKPu4TVthx7/pSVLoXN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=bi7v9Sa6; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id EBE8141B4A;
	Sun, 25 Jan 2026 19:37:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1769366252; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=PN7cFYtYsOCpeUwMlZ0LtZz5pvDAZSFd5KI1Prsv4Cw=;
	b=bi7v9Sa6qR+Op8b1axILuxj7zi82VTGJqqKDreAXzJg6QaWDEv/JBDinEgV8R06FWYEuNN
	Ak26KLA7QHy4UNMlluOO53YDHn1UaD1rUCuwYfXTM8zRg+uQ4PxbLtfhke93ChLHHMaybM
	4Xz9+VelTcg1NQTJG+k5rrNHffKyyV+DqFXIwKwTL7qRemqvT7/yWtB/AlCF4tkX3YYloA
	E8g3s4Txn9ndQ1S4akLDBYAjeE9+f5G4Fj+67dsEi7YfsnpeqTmJj5rUqp0b34V92fXGmc
	JOnO5Txco3H2CJyZJspF+SIK2pCPZrD+ybsN9FDkmmLhDH1i809mV6/F6dQrrg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <6235f7ee-d0fa-4c46-b98b-54af4d9d5ce8@gmail.com>
Content-Type: text/plain; charset="utf-8"
References: <20251109192128.72527-1-sigmaris@gmail.com>
 <da6721a3-8f59-9c0c-762c-bc02b39ac472@manjaro.org> <6235f7ee-d0fa-4c46-b98b-54af4d9d5ce8@gmail.com>
Date: Sun, 25 Jan 2026 19:37:27 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Alexey Charkov" <alchark@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Hugh Cole-Baker" <sigmaris@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <fe32b221-5bc3-0505-49d1-5bc374cf2267@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= add pwm-fan for NanoPC-T6
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[manjaro.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[manjaro.org:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259280-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[manjaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
X-Rspamd-Queue-Id: 2C6B181CA9
X-Rspamd-Action: no action

Hello Hugh,

On Sunday, January 25, 2026 19:04 CET, Hugh Cole-Baker <sigmaris@gmail.=
com> wrote:
> On 10/11/2025 00:23, Dragan Simic wrote:
> > On Sunday, November 09, 2025 20:20 CET, Hugh Cole-Baker <sigmaris@g=
mail.com> wrote:
> >> FriendlyELEC offers an optional heatsink and fan addon for the Nan=
oPC-T6
> >> and T6 LTS, which plugs in to the fan connector on the board drive=
n by
> >> pwm1. Add the fan as an active cooling device for the SoC package.
> >>
> >> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
> >> ---
> >> Changes from v1: https://lore.kernel.org/linux-rockchip/2025102619=
4858.92461-1-sigmaris@gmail.com/
> >> * add the fan to the base board dtsi instead of overlay (Heiko)
> >> * just use 2 trip points for warm and hot temperatures (Dragan, Al=
exey)
> >>
> >> References:
> >> FriendlyELEC heatsink with fan addon:
> >> https://www.friendlyelec.com/index.php?route=3Dproduct/product&pro=
duct=5Fid=3D305
> >> Vendor DT with trip points and PWM duty cycle values:
> >> https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b62f=
5aad139fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-=
rev01.dts#L75-L90
> >=20
> > I think it would be better to move these references to the patch
> > description, so they become directly available in the repository.
> > It might be the best to use the "... [n]" form for the references,
> > which puts them as close to the backed contents as possible.
> >=20
> > Oh, and I think that "arm64: dts: rockchip: Enable active cooling
> > on NanoPC-T6" as the patch subject would read nicer. :)
> >=20
> >>  .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 39 ++++++++++++++=
+++++
> >>  1 file changed, 39 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/=
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> >> index fafeabe9adf9e..9164a0ee6228e 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> >> @@ -11,6 +11,7 @@
> >>  #include <dt-bindings/input/input.h>
> >>  #include <dt-bindings/pinctrl/rockchip.h>
> >>  #include <dt-bindings/soc/rockchip,vop2.h>
> >> +#include <dt-bindings/thermal/thermal.h>
> >>  #include <dt-bindings/usb/pd.h>
> >>  #include "rk3588.dtsi"
> >> =20
> >> @@ -89,6 +90,14 @@ usr=5Fled: led-1 {
> >>  		};
> >>  	};
> >> =20
> >> +	fan: pwm-fan {
> >> +		compatible =3D "pwm-fan";
> >> +		cooling-levels =3D <0 35 64 100 150 255>;
> >> +		fan-supply =3D <&vcc5v0=5Fsys>;
> >> +		pwms =3D <&pwm1 0 50000 0>;
> >> +		#cooling-cells =3D <2>;
> >> +	};
> >> +
> >>  	sound {
> >>  		compatible =3D "simple-audio-card";
> >>  		pinctrl-names =3D "default";
> >> @@ -591,6 +600,36 @@ &i2s6=5F8ch {
> >>  	status =3D "okay";
> >>  };
> >> =20
> >> +&package=5Fthermal {
> >> +	polling-delay =3D <1000>;
> >> +
> >> +	trips {
> >> +		package=5Fwarm: package-warm {
> >> +			temperature =3D <50000>;
> >> +			hysteresis =3D <2000>;
> >> +			type =3D "active";
> >> +		};
> >> +
> >> +		package=5Fhot: package-hot {
> >> +			temperature =3D <60000>;
> >> +			hysteresis =3D <2000>;
> >> +			type =3D "active";
> >> +		};
> >> +	};
> >=20
> > It should be better to use 55 and 65 oC as the trip thresholds,
> > because people often report around 50 oC as the observed idle-state
> > temperature of their RK3588 SoCs, so increasing the first threshold
>=20
> Were these people using the heatsink accessory on the NanoPC-T6, or w=
ere
> they using some other board with worse heat dissipation? I recorded t=
he
> package temperature on my NanoPC-T6 with the FriendlyELEC heatsink an=
d fan
> and even though it's not idle but actually running Home Assistant,
> OpenLDAP, PostgreSQL, Prometheus, Grafana and Nginx, the temperature =
ranges
> between 46 and 48=C2=B0C, and the fan never even spins up.
>=20
> Then I ran stress-ng and recorded the temperature under CPU load, wit=
h this
> version of the patch and another version with 55 & 65=C2=B0C trip poi=
nts. [1]
>=20
> I suspect if people are seeing 50=C2=B0C at idle, they're either usin=
g a less
> effective heatsink, or in a very warm ambient temperature. When talki=
ng
> about the NanoPC-T6 fan specifically, we kinda have to assume the
> FriendlyELEC heatsink is used, as there's no mounting for the fan wit=
hout
> the heatsink.

Those are all valid points, the overall thermal performance depends
on the room temperature and the actually used cooling solution, while
the latter depends on the specific board.

You're right that, based on thermals you observed, raising the trip
points to 55 and 65 oC may not always lead to the expected improvements=
,
but let's keep in mind that it actually may keep the fan spinning less
in some environments, which is good for both the end-user perception
and for the fan's longevity.

> > to 55 oC should be beneficial by preventing the fan from spinning
> > when the SoC is actually idle.  The second threshold is usually set
> > to be 10 oC higher, so it should end up at 65 oC.
>=20
> I'll send a v3 with 55 and 65=C2=B0C trip points, but I doubt it make=
s any
> difference to the fan activating while idle; from my testing it seems=
 to
> just let the SoC get a bit hotter under heavy load.
>=20
> [1]: https://gist.github.com/sigmaris/2d5590271cf26da8ec6cfc7ef8e3e8b=
c

Having the SoC running about 5 oC hotter under load is still fine while
it possibly makes the fan spin a bit less, so it may all together be
a reasonable compromise.

> >> +	cooling-maps {
> >> +		map0 {
> >> +			trip =3D <&package=5Fwarm>;
> >> +			cooling-device =3D <&fan THERMAL=5FNO=5FLIMIT 1>;
> >> +		};
> >> +
> >> +		map1 {
> >> +			trip =3D <&package=5Fhot>;
> >> +			cooling-device =3D <&fan 2 THERMAL=5FNO=5FLIMIT>;
> >> +		};
> >> +	};
> >> +};
> >> +
> >>  &pcie2x1l0 {
> >>  	reset-gpios =3D <&gpio4 RK=5FPB3 GPIO=5FACTIVE=5FHIGH>;
> >>  	vpcie3v3-supply =3D <&vcc=5F3v3=5Fpcie20>;


