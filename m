Return-Path: <devicetree+bounces-249652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F167ACDD9DC
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:47:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFC9C30014D9
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 09:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49E6C3090C9;
	Thu, 25 Dec 2025 09:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HKTxPqDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD057757EA
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 09:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766656044; cv=none; b=JTrPGHBl5zaSM4kHM0k8N13RnvbigAzzsQVO58p4m7gl6lTdMrkcUYHLP4vU3L3SQ5XoEK9L6SeOOs3/fSuWlfaDC0cCmEmTi+Z0EFGRCBrYiIbUw3sS3a/az+wRLLD5J4bg2fBWb8LPxAXpad9kWeB+qCpS2ZZw6s/DT4OioCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766656044; c=relaxed/simple;
	bh=QKa9KQ7FO/tsemjtCknLrkpa0TdfW0VpUhBoNFEUXjY=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=tncMbFlcGW3ghe725odYkvsg1Yz50NJ/zEa4wKw9FAyRIFjJPXsCY4zRALCOLdqdF6e7ydHg7jK2ZtT6a5cTOQgvjXjQuB2JR+NeiQywxQ20tB0LW1LatxjuPK2R9L8IfCqdTJ8h4Q9i9Pt1nvqEMwLhOW7JLOY6xFFmdRWLCrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HKTxPqDA; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a12ed4d205so57518415ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 01:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766656042; x=1767260842; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CJbqjKEBanMRME2GndVRpSufrs8pVvgREEbvcdz3cEc=;
        b=HKTxPqDA3b4iGjBOvS7W1f9JA5P26ZUKI5YZIb4swsc9DhiPgixmuT1hc27Dms3/GA
         Wya9CAfP4dYX2XdqR4disgPczJbFDoNEzY2D3NWVaLoKbbyplN0PT1ADtpxdGqoT24Fg
         GdwqHiRJ5iD3DLgoEgpVo5a7WljVjgpxW8b0kB1yN/mQpxyGHjcitstzQwc4GA8HgRPZ
         Duj73PDIu4bEslRZi9cbeeSdGeIiNwZCc4TSU1RtLC76egQY/PWyfPgX3lIIjb8HGzEx
         7rD20IWJvGYpIhyjCKarDcq3gBh1o4nbn5IC10/B7zI+I5yk6NFri9pkMI8Tjrdu+NCB
         ZxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766656042; x=1767260842;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CJbqjKEBanMRME2GndVRpSufrs8pVvgREEbvcdz3cEc=;
        b=VSYRZdfYHjd7jDpHbbV8YxTbeW4oMf98NgO/39UCFAP6kdoczKy4MU7H6GpPrpPwGH
         GFUT68dYez2nvMoSNyzvBbHZy9OFfe1AmUXNcpiWmGAlRqD1nPwU8J10/O64lmlQAOft
         DVnYY4YYZ7k/BCsdRfJsNSgH4Ezca/MlDA2uggR+CSEFSoP1QhvK3KiGxmzDCrNnE9aU
         pBn+OgOvpSZ8uK+bs2Q03kA8sw+ycFTN+jnJt6sY7/dF5kfqA+CbsHDSuh9ara4OP6I/
         sMHWXbYVhAufe2MHTjmzDHioqMVOD+4DwShyXnVIBuot+J2ju1/XOSdm4aMf0hsHVHYS
         fA3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXkLdndsPC8TpJ5ruIl2rDIXGW+ZGFxNspFNn3fiVy7ffXO1+JfuImEAVHlpKepsr0i3PuC7Wb2NRHj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8nuF+VFrvqOomFsk3GN/+IQDmpspr+iUMql+jSumjVqeejx53
	OArvW7cwIJuqEMwJpYDv0/kgP6Yrfa4lP/QmlkEpoLF6goBEwnsI0Nqu
X-Gm-Gg: AY/fxX5dMq5hN8wW0psO5kN2Ycflq385S/jl9wncpspVEVO9c6XapXzaR541JxKq4YH
	rnIH50EMejWDvB2MfKmUXkMMXp/MXFWKXl3D+NSv+m5I0y7VlYlAnRGVkkC/Qef4GlYIndg+L2d
	H+v+JSS7PzPo8kUkBfe9S/7Vp3++z9l90WulAzHGoFfISXzlq3J7F0uDFxqqS8q3sXP72jXyw7P
	R2iqx6fBzS1b+yXJFQ4Moh00o/2tsStISF3NkY/wJX0FZ81TgS0mG90qEHRYUU8AHk7Ud03DlKT
	8LY5Wj5BC6SCuJ9Zqd1w2McQkFPsXf7PtVDam+/j1qG3f8JmV3i2qanlGnm7JE4NRuX1YtW7dNQ
	8BkHI9tJauOt0p3w96Bha6/o6yTVC7GL08P0QzaDMz7+qmJAZOseadSzfDoIqnr93JL6SN5TV2/
	FBgqZsmcDks3Mlv8mPwYJrRqGz/EFeu65WEW4TBqzBkGAFXhRDwCxDzLQL6OIzSPsunOX0mCGiV
	NqDtVodMBDjO7Lvsg==
X-Google-Smtp-Source: AGHT+IGqeIuBv9OWXNokteJpQ08DeKnV3oR28EBjTWNiLAcYj7iu6vP4q7amwT6MeNCYNytD88Eu2A==
X-Received: by 2002:a17:903:3b86:b0:295:5945:2930 with SMTP id d9443c01a7336-2a2f2205161mr202892715ad.2.1766656041808;
        Thu, 25 Dec 2025 01:47:21 -0800 (PST)
Received: from smtpclient.apple (125x103x213x40.ap125.ftth.ucom.ne.jp. [125.103.213.40])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c83961sm177814725ad.38.2025.12.25.01.47.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Dec 2025 01:47:21 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v4 7/9] riscv: dts: thead: lichee-pi-4a: enable HDMI
From: "Han Gao (Revy)" <rabenda.cn@gmail.com>
In-Reply-To: <20251224161205.1132149-8-zhengxingda@iscas.ac.cn>
Date: Thu, 25 Dec 2025 17:47:04 +0800
Cc: "Han Gao (Revy)" <rabenda.cn@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Drew Fustini <fustini@kernel.org>,
 Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Michal Wilczynski <m.wilczynski@samsung.com>,
 Yao Zi <ziyao@disroot.org>,
 dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Icenowy Zheng <uwu@icenowy.me>
Content-Transfer-Encoding: quoted-printable
Message-Id: <EEB07B95-C9D7-4B8B-9FAD-105A0287CC6F@gmail.com>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-8-zhengxingda@iscas.ac.cn>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
X-Mailer: Apple Mail (2.3864.300.41.1.7)



> On Dec 25, 2025, at 00:12, Icenowy Zheng <zhengxingda@iscas.ac.cn> =
wrote:
>=20
> Lichee Pi 4A board features a HDMI Type-A connector connected to the
> HDMI TX controller of TH1520 SoC.
>=20
> Add a device tree node describing the connector, connect it to the =
HDMI
> controller, and enable everything on this display pipeline.
>=20
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> ---
> Changes in v4:
> - Rebased on top of v6.19-rc1.
>=20
> No changes in v2, v3.
>=20
> .../boot/dts/thead/th1520-lichee-pi-4a.dts    | 25 +++++++++++++++++++
> 1 file changed, 25 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts =
b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
> index c58c2085ca92a..7cb7d28683bce 100644
> --- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
> @@ -29,6 +29,17 @@ chosen {
> stdout-path =3D "serial0:115200n8";
> };
>=20
> + hdmi-connector {
> + compatible =3D "hdmi-connector";
> + type =3D "a";
> +
> + port {
> + hdmi_con_in: endpoint {
> + remote-endpoint =3D <&hdmi_out_con>;
> + };
> + };
> + };
> +
> thermal-zones {
> cpu-thermal {
> polling-delay =3D <1000>;
> @@ -121,6 +132,20 @@ rx-pins {
> };
> };
>=20
> +&dpu {
> + status =3D "okay";
> +};
> +
> +&hdmi {
> + status =3D "okay";
> +};
> +
> +&hdmi_out_port {
> + hdmi_out_con: endpoint {
> + remote-endpoint =3D <&hdmi_con_in>;
> + };
> +};
> +
> &uart0 {
> pinctrl-names =3D "default";
> pinctrl-0 =3D <&uart0_pins>;
> --=20
> 2.52.0
>=20
Tested-by: Han Gao <gaohan@iscas.ac.cn>=

