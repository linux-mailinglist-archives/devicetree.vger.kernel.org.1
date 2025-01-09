Return-Path: <devicetree+bounces-137024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3B1A07475
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C777E188B49A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D4D216381;
	Thu,  9 Jan 2025 11:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sjoerd@collabora.com header.b="WxtasFGf"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CC0202C43;
	Thu,  9 Jan 2025 11:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421493; cv=pass; b=mIxwWRLxSYYwjNE9F2mDnYTq3jC9+Q4LU9TTTFtPN2GeVK6E4IyROzOoSBtC+ksbpsHvTcUX31uF+oAZRbKeXoAnIsyDtu4ahBVJsFgdjm+tCYwND4cKzWoOwT3QtbrTB7U6WqE9bSTOWThn9WbSgL+y77JycByuDEZBhvCVZ2g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421493; c=relaxed/simple;
	bh=AAyJMEPGFicQjxjBLs2Jg6RighRP0xnvkCEDgFav9yI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QUw+d8KeD3ay2mBO6LRVHGtmFfRyJ5e4Sc2UEtBcZpmvcFkk+0itH+yXRsbEoENBqcl0KTAG1yujRoFDH7BT+SHwjaxPW/4l38jG4hRjjPAg7oZze4QOFNvJFP+gJJwkDwIe5O2efCwW318sAwyZnp2xECQ99Xv4xLy520LfbX8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sjoerd@collabora.com header.b=WxtasFGf; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1736421472; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=FU5KSMf263TKumyWxFMqLfNE+cFtnJw2a8dV5Kh2qp5JpedheEaovznh0fS4U5LktiWX89afhauEQR8N9h8F/0lgsDWftj7fqAQ7R2w5h18W8hCY4NLeFqxyV8WZqg7YtCmYbUYXyXiG5QhODZ9CXrKVlTRSp4Bjkg2S1stEPfo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1736421472; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=MTgw6gbVtvZdS5LhGt1QizBU8c5RNoZ7cW3EzXYxH7A=; 
	b=MAZnIEhEOymSuKYFA3wL+4r+D/u7nQpnIIgVcFfVTAhsI3KtXySW98jYJTBZ/XREHXZqcJayW9pXtdvf/c0TQFxNY7CbeEadT7vhfC0F4C5W1MY1zlDloCbL1LnB7lB93n1ESFNfPmfdEkDj32MQPzRHi3OCn9CkDa/uue0hSpE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sjoerd@collabora.com;
	dmarc=pass header.from=<sjoerd@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1736421472;
	s=zohomail; d=collabora.com; i=sjoerd@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=MTgw6gbVtvZdS5LhGt1QizBU8c5RNoZ7cW3EzXYxH7A=;
	b=WxtasFGfhUpiFmmRjWGErQ7dGMIsN2BuA3gSex+y2+dlVrD0jx5rWgUFcC0OpR9f
	1ZvJkb50leCAyqUWv1+5S+mzdw5BiBAmZe6j0lgYPu2KcJ0Cyv2KzlrbxobIAok33Xl
	HLPwQ9SpBvAwtkxaIkCQTdSOLq+rsWzyqJdV/bQo=
Received: by mx.zohomail.com with SMTPS id 1736421470387292.3010936205511;
	Thu, 9 Jan 2025 03:17:50 -0800 (PST)
Message-ID: <4c0561dfe414720c979058802cc2930c9d0c08fb.camel@collabora.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: mediatek: add display support for
 mt8365-evk
From: Sjoerd Simons <sjoerd@collabora.com>
To: Alexandre Mergnat <amergnat@baylibre.com>, Chun-Kuang Hu	
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann	 <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Rob Herring	 <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley	 <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,  AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Jitao Shi
 <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,  Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Simona Vetter
 <simona@ffwll.ch>,  Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Date: Thu, 09 Jan 2025 12:17:44 +0100
In-Reply-To: <20231023-display-support-v6-6-c6af4f34f4d8@baylibre.com>
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
	 <20231023-display-support-v6-6-c6af4f34f4d8@baylibre.com>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External

On Thu, 2025-01-09 at 11:37 +0100, Alexandre Mergnat wrote:
> MIPI DSI:
> - Add "vsys_lcm_reg" regulator support and setup the
> "mt6357_vsim1_reg",
> to power the pannel plugged to the DSI connector.
> - Setup the Display Parallel Interface.
> =C2=A0 - Add the startek kd070fhfid015 pannel support.
>=20
> HDMI:
> - Add HDMI connector support.
> - Add the "ite,it66121" HDMI bridge support, driven by I2C1.
> - Setup the Display Parallel Interface.
>=20
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
> =C2=A0arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 236
> ++++++++++++++++++++++++++++
> =C2=A01 file changed, 236 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> index 7d90112a7e27..70bd49a9d02f 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> [...]
> @@ -131,6 +156,88 @@ &cpu3 {
> =C2=A0	sram-supply =3D <&mt6357_vsram_proc_reg>;
> =C2=A0};
> =C2=A0
> +&dither0_out {
> +	remote-endpoint =3D <&dsi0_in>;
> +};
> +
> +&dpi0 {
> +	pinctrl-0 =3D <&dpi_default_pins>;
> +	pinctrl-1 =3D <&dpi_idle_pins>;
> +	pinctrl-names =3D "default", "sleep";

Would be good to document that these pins clash with ethernet support,
similar to what is done in the ethernet node.  Also some notes on what
nodes to enable/disable when selecting either ethernet or hdmi output
would be appreciated :)


--=20
Sjoerd Simons <sjoerd@collabora.com>
Collabora

