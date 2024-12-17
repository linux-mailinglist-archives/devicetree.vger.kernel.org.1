Return-Path: <devicetree+bounces-131785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 922F09F48E8
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:31:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FFE01890B2A
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54A51D5CFD;
	Tue, 17 Dec 2024 10:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dh-electronics.com header.i=@dh-electronics.com header.b="orFzDA8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx2.securetransport.de (mx2.securetransport.de [188.68.39.254])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420CD1D63CC
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 10:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.68.39.254
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734431482; cv=none; b=jHGm8kppaImSAsoPdUgCSSrZ3EI1SwHJfsPyS5ftxd7Y+PMkHxWOioXm7kIpJbnUUXmbedQDW4uyssJ41rRQW0JjQ1Gtmqi4qwlHNu6wcJ16aaEqfnsvYjMjcS6SCL3qgcI0O8TFzag3Ym+b3k3kR362hpPUXJsHsCQS46w8GdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734431482; c=relaxed/simple;
	bh=hbD80PMc13oQrjjwD3kiRSrlGWdNCWwJzb/2X57VDRc=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=taQgBAAafE/DkLALFOPmZ4R3TzUvxPJZO5Rzl4wlgLLSr6U2v8qKST9Ppc48MB5CUuY8G7aifWzYRsiDSj0Ln25jID0i1VRaExzDO4Wf6KnphwKwNDGXwkvD7xn2DNDp6yVBiMCn+o0aPWpeKZSO+tHFROFdih5cl6Z2lGWdFPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=dh-electronics.com; spf=pass smtp.mailfrom=dh-electronics.com; dkim=pass (2048-bit key) header.d=dh-electronics.com header.i=@dh-electronics.com header.b=orFzDA8a; arc=none smtp.client-ip=188.68.39.254
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=dh-electronics.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dh-electronics.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dh-electronics.com;
	s=dhelectronicscom; t=1734430907;
	bh=8SBd5SJv87i4jOo+5k9uOKrUg6sUQ45A9jsFMVMrJ2k=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=orFzDA8aSiVmjuOLI0FczHf+sV6rgHbBwY1rCLoQZmN26RYgL8j2l+X3/iatdnKmY
	 b8xoAYr56vlGH60Ft6JeBplQUpzhM40PlzJfTjbHedeSxJdabLMGJCbSdHHixcphi1
	 lb9E7LRcfOgG2yq8vh7PQWtwuyEPxoqMurXdC9Kwq5ORhdK6MpFfzAtZQ9zVkfrtD6
	 TPj7Qb3S/WcXNcjSdr1gd/QrjiY2WJuGIDAk5IvCcqmaVzeHjzDsszfXwcIcv6osD4
	 wJPUa1C/p8SqxiNZIErbJs9gq/mrmhBCHLyQopmkKF7TvAMHnJrpalgvWU7PTcZCZ+
	 JAEERiw5hHxIA==
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: Marek Vasut <marex@denx.de>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
CC: Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley
	<conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Maxime
 Coquelin" <mcoquelin.stm32@gmail.com>, Rob Herring <robh@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, kernel
	<kernel@dh-electronics.com>, "linux-stm32@st-md-mailman.stormreply.com"
	<linux-stm32@st-md-mailman.stormreply.com>
Subject: RE: [PATCH] ARM: dts: stm32: Swap USART3 and UART8 alias on
 STM32MP15xx DHCOM SoM
Thread-Topic: [PATCH] ARM: dts: stm32: Swap USART3 and UART8 alias on
 STM32MP15xx DHCOM SoM
Thread-Index: AQHbTa+SkhqBiEt7mEeimKcVLbuCf7LqPx2A
Date: Tue, 17 Dec 2024 10:21:35 +0000
Message-ID: <2a960747f48e44daaa3cffe93ceb8ea3@dh-electronics.com>
References: <20241213223658.99802-1-marex@denx.de>
In-Reply-To: <20241213223658.99802-1-marex@denx.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

From: Marek Vasut <marex@denx.de>
Sent: Friday, December 13, 2024 11:36 PM
> Swap USART3 and UART8 aliases on STM32MP15xx DHCOM SoM,
> make sure UART8 is listed first, USART3 second, because
> the UART8 is labeled as UART2 on the SoM pinout, while
> USART3 is labeled as UART3 on the SoM pinout.
>=20
> Fixes: 34e0c7847dcf ("ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1 =
SoM and PDK2
> board")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>  arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
> b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
> index 086d3a60ccce2..142d4a8731f8d 100644
> --- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
> @@ -15,8 +15,8 @@ aliases {
>  		rtc0 =3D &hwrtc;
>  		rtc1 =3D &rtc;
>  		serial0 =3D &uart4;
> -		serial1 =3D &usart3;
> -		serial2 =3D &uart8;
> +		serial1 =3D &uart8;
> +		serial2 =3D &usart3;
>  	};
>=20
>  	chosen {

Reviewed-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>

