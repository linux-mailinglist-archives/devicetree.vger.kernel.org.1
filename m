Return-Path: <devicetree+bounces-320259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RpxFMFHmR2o7hQAAu9opvQ
	(envelope-from <devicetree+bounces-320259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:41:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF1F704598
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:41:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b="P7GJt/29";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320259-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320259-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 91D9C30309AE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 16:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5A5301486;
	Fri,  3 Jul 2026 16:38:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C99305968;
	Fri,  3 Jul 2026 16:38:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783096700; cv=none; b=Li+sdZfaYK71y7DdqHCb+SLAua9+ipET8Umx99/TClBKynfzVvf+m1TFUF6eao/aYzUCz4jKPsD82JgfnGRDftB1VHzu5cbOlpu/D3vkmKlbu3nLSLt++san30J0O0/owICtL98b0/j71mHx8XKbYrluXNGzodVI4fNKGiBF+3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783096700; c=relaxed/simple;
	bh=ToR7m2ZQp/tqicaI6DwvRIcuqKj//2vg2Bv3OmonXyo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=B0CSGy2SYCaVL5dllpNbBq1BLav6C9Sy6H5MtSQU1T7Y+GATW03KMcjKAUjcmVXZr8wyw27Umsv9PLWHMT99dikBQU62UKMyvhA3Da4YfwVOF/SOIfUiYQiUlkeqczy8GFdmrK4biRGRfqoAOzudHTEYprAY7xIiRbmwh/syLZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=P7GJt/29; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Cs75p+IM1gwfpKthc4TEByeHqgqGfc4z5ObGktLZjdY=; b=P7GJt/29oVsv5I7SJHYT0CN4RH
	mAFDRwiTLxmI3sztsWqfDq2nvN+eB0y2pLHeQFVUjhkrbecEWh5ASwNITjia1JVtzf8mFnGF0O96H
	FHogpOEvJlg5FgzB3d+9UqaToTkFIa7OHMHnK9p4MRx9IdJWgV09+HseUqdq/xc6mm9ZJcHZDaXH3
	fa3ZYaj59NiM0B2akAbqIdDKr/OaM35cFw6JprEnngN159dzKqk8m+jVy9XVsQSaOrxGL3FgGJDlZ
	Mgjip2xWHT+neyMXruRTp9dqk10Anw8C6lBRjbHZ+LqZg7wCOAmpto0WpRBfEVaXgF9UNFzz4bEla
	/cvslYPw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 1/9] dt-bindings: display: vop2: Add missing reset properties
Date: Fri, 03 Jul 2026 18:37:45 +0200
Message-ID: <8183064.gsGJI6kyIV@diego>
In-Reply-To: <fe8038fe-940a-4c61-a551-082534ef9c51@collabora.com>
References:
 <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <DJC0L3CRJ0WL.IZEYVLPROMM1@cknow-tech.com>
 <fe8038fe-940a-4c61-a551-082534ef9c51@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:diederik@cknow-tech.com,m:hjc@rock-chips.com,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:cristian.ciocaltea@collabora.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-320259-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[cknow-tech.com,rock-chips.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com,collabora.com];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[sntech.de:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,diego:mid,sntech.de:from_mime,sntech.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2CF1F704598

Am Donnerstag, 18. Juni 2026, 10:39:14 Mitteleurop=C3=A4ische Sommerzeit sc=
hrieb Cristian Ciocaltea:
> Hi Diederik,
>=20
> On 6/18/26 10:58 AM, Diederik de Haas wrote:
> > Hi Cristian,
> >=20
> > Thanks for this series :-) Just 1 nit (at the end) ...
> >=20
> > On Wed Jun 17, 2026 at 8:52 PM CEST, Cristian Ciocaltea wrote:
> >> Document the VOP2 resets corresponding to the AXI, AHB and DCLK_VP0..2
> >> clocks, which are common to all supported SoCs, plus DCLK_VP3 which is
> >> provided only on RK3588.
> >>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  .../bindings/display/rockchip/rockchip-vop2.yaml   | 42 +++++++++++++=
+++++++++
> >>  1 file changed, 42 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockch=
ip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-=
vop2.yaml
> >> index 93da1fb9adc4..d3bc5380f910 100644
> >> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2=
=2Eyaml
> >> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2=
=2Eyaml
> [...]
>=20
> >> @@ -289,6 +321,16 @@ examples:
> >>                                "dclk_vp0",
> >>                                "dclk_vp1",
> >>                                "dclk_vp2";
> >> +                resets =3D <&cru SRST_A_VOP>,
> >> +                         <&cru SRST_H_VOP>,
> >> +                         <&cru SRST_VOP0>,
> >> +                         <&cru SRST_VOP1>,
> >> +                         <&cru SRST_VOP2>;
> >> +                reset-names =3D "axi",
> >> +                              "ahb",
> >> +                              "dclk_vp0",
> >> +                              "dclk_vp1",
> >> +                              "dclk_vp2";
> >>                  power-domains =3D <&power RK3568_PD_VO>;
> >=20
> > Place reset* props below power-domains (like in patch 9) ?
> > So everyone who copies your example has the correct sorting order.
>=20
> The example doesn't strictly follow that ordering either =E2=80=94 see e.=
g. the iommus
> property =E2=80=94 so I placed the resets right after the clocks, which k=
eeps the
> related properties grouped together.
>=20
> That said, I don't have a strong preference.=20
>=20
> Heiko, is there a convention you'd like the Rockchip bindings to follow h=
ere?
> Happy to reorder if so.

Please just use standard devicetree ordering, as described in the
documentation. We generally don't want to invent new diverging things :-)


Heiko



