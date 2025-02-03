Return-Path: <devicetree+bounces-142528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C91AFA25A68
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B8121647A4
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98871204C31;
	Mon,  3 Feb 2025 13:10:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC202036E1
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738588229; cv=none; b=phe4X2VLZbJtKlIzQBlBgR+LOx0vl34U9LsT/LBYl8DgpgdfRVZit6MuA5Q9qTvjeKXKxrJL2lmaGGi0+W+Jj1NWcI9nxDOzCyVXrzHlO3YSspcOBan0u3Kox0/MVLZIDikRvidtgbsR/xtEeQePeUarNLOBGtM3dNabyZqjUiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738588229; c=relaxed/simple;
	bh=3V9EWmDSZmuk3+piik4gYUDhM6wjBadbX05witTb86g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PVvvB48TD/U8HitmmMblTthd4LDNU8hVYFcIaqL4GxT5qdCzmYqk3zAzW6Iz+8/pl1xJ0/RY8iOli0JZQcRTwHSWbhmurwobSGuaufF+xGU5oZtUfwVqLQR/mCwgwGQbkcm8n1CYXonXzRiyVPAAI1jgpIb85ppnQ3RzgXeJ6Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tewDL-0003ae-Ae; Mon, 03 Feb 2025 14:10:11 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tewDK-003IYN-0p;
	Mon, 03 Feb 2025 14:10:10 +0100
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id BB1113B7A82;
	Mon, 03 Feb 2025 13:10:07 +0000 (UTC)
Date: Mon, 3 Feb 2025 14:10:06 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, 
	linux-stm32@st-md-mailman.stormreply.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Leonard =?utf-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH stm32-next v3 0/2] ARM: dts: stm32: lxa-fairytux2: add
 gen{1,2} boards
Message-ID: <20250203-congenial-falcon-of-destiny-43b5c0-mkl@pengutronix.de>
References: <20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de>
 <173764775141.3793586.6690578690442295161.robh@kernel.org>
 <20250123-urban-belligerent-bullfinch-2fa9e6-mkl@pengutronix.de>
 <8f28bbc1-1ada-41b2-bff2-5ad549c934a5@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8f28bbc1-1ada-41b2-bff2-5ad549c934a5@foss.st.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 03.02.2025 13:00:13, Alexandre TORGUE wrote:
> > > My bot found new DTB warnings on the .dts files added or changed in t=
his
> > > series.
> >=20
> > This patch doesn't touch the offending file "ste-hrefv60plus-tvk.dtb".
> > Might be a new warning, but not due to this patch, could this be a false
> > positive?
>=20
> Can you reproduce ?

Nope!

> On my side I can't. As you said the reported error has
> no link with your patch. I'll merge it.

Thanks,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

