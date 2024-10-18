Return-Path: <devicetree+bounces-112893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B81D9A3CDC
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 13:11:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 050A3B23AAB
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 11:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B840820102B;
	Fri, 18 Oct 2024 11:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="XLiBRYFi"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEE0201101
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 11:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729249355; cv=none; b=ixpyi7zc9Y7l83GLLJSCsYzFp8ILISWPTDnVnSppKUxEiUsxl1RtJlrAoQJOBPzpLcOwYrMS0Ub/EwkJI6eAQ17eZmHxFL6ZgElPLjb+OJ3sgun4Qa9R/dcKtmEqVSIQu8TD7rNZ0ewYdXq4zapibGbLO2Xivz8Hdb9qG/cPAP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729249355; c=relaxed/simple;
	bh=keQCMaVIBMLJvHIUShkBPx6cMdpAcRXT99HK0hUsyrI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Yddz9r/GzMM1O86opESc0yqb7rGjTDxbQ8f2vkxKFJqFdHiOmHO9tczoA2ucTBNUqBBG4J2p9ssUP/dTOnh0NytZ4uU4kHjWsWB8UCeXNcLAOKypGlYt8ZWuwI5Ggf9s7PA4vg30kdjSM62cnfcMtGPzoh/TvSazHbtdcqFNU5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=XLiBRYFi; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729249351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uhb6JFEsEkYqpat/UzeB+/KqQjRlouZcaozRbiFqXDY=;
	b=XLiBRYFigwomp0WPP7/pXbir9vcVSafBBPgC3mUBITV0JOjEkOpDBewqLdiGBOQNnTmsUY
	edeiPnCjlMj4u9j8dcKAwrPZx+pvlXvBnnhjTqkl6+KbmoWBjYgFywGIihh6JEsJlLsu/T
	47TVPGNcM5+SeY5ifCpsuyyLgPcubUbCNVSqiDl3aC8NV/3UR47PgjJoSPNbTsRxcJUaIe
	VK++qPedxrL+GDikHh3KUcrt9hhxVEwid8DzZDgFL4uYrEIGT1fyzw5vyFMjO+EYs+sSaG
	zrH8Pfo23oaSvuIit+j80oMB+Y+z7+ZWLn6yHkkI/ltDe2/2p/aOYWhwKHprbQ==
Content-Type: multipart/signed;
 boundary=c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Fri, 18 Oct 2024 13:02:21 +0200
Message-Id: <D4YVQCPZN9MJ.1TXHJU33TV5ZZ@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, "Samuel Holland"
 <samuel@sholland.org>, "Dragan Simic" <dsimic@manjaro.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct GPIO polarity on brcm BT
 nodes
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Heiko Stuebner"
 <heiko@sntech.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
References: <20241018092237.6774-1-didi.debian@cknow.org>
 <dffb5226-7d57-406b-b20b-991deebfc295@kernel.org>
In-Reply-To: <dffb5226-7d57-406b-b20b-991deebfc295@kernel.org>
X-Migadu-Flow: FLOW_OUT

--c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Oct 18, 2024 at 12:11 PM CEST, Krzysztof Kozlowski wrote:
> On 18/10/2024 11:22, Diederik de Haas wrote:
> > The GPIO polarity of the 'shutdown-gpios' property needs to be
> > ACTIVE_HIGH or the Bluetooth device won't work.
> > This also matches what other devices with the same BT device have.
>
> This should match the hardware.

Fair point.

The only documentation I have for the AzureWave-CM256SM is a datasheet.

Para "3.4 Power up Timing Sequence" of that datasheet has the following:

"The AW-CM256SM has two signals that enable or disable the Bluetooth
and WLAN circuits and the internal regulator blocks, allowing the host
to control power consumption."

WL_REG_ON:
"When this pin is high, the regulators are enabled and the WLAN section
is out of reset. When this pin is low, the WLAN section is in reset. If
BT_REG_ON and WL_REG_ON are both low, the regulators are disabled."

BT_REG_ON:
"If both BT_REG_ON and WL_REG_ON are low, the regulators will be
disabled. When this pin is low and WL_REG_ON is high, the BT section
is in reset."

From that I conclude that BT_REG_ON needs to be high to get BT in a
working state.

But that datasheet is in its 19th revision, so can I assume that it now
is correct? (genuine question)

That's why I also looked at devices which uses the same hardware:
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git=
/tree/WHENCE?h=3D20241017#n2973
and those all had ACTIVE_HIGH for 'shutdown-gpios' in their hardware
description (ie DeviceTree) and if they were all broken, I think we
would've heard about it.

And my own testing showed it not working with ACTIVE_LOW and working
with ACTIVE_HIGH.
I just messed up my previous patch submission process, which this patch
is meant to correct.

> What if the Linux driver is just buggy?

Given the amount of 'spam' I get in `bluetoothctl` when it is working, I
think there's a real possibility that that is (also) the case.

Cheers,
  Diederik

--c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZxJAQAAKCRDXblvOeH7b
bq1uAPwIaNb0Dv46K1fvki+joThQjlgD5Cq+SrY+x3llpiES7gD9G7/HmuttviND
mQmBGybopdIvP68AEX+rv0i+b+luJgQ=
=WlbO
-----END PGP SIGNATURE-----

--c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7--

