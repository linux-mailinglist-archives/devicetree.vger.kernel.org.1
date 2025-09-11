Return-Path: <devicetree+bounces-216140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC999B53BD5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 123025A5B0A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52962255F3F;
	Thu, 11 Sep 2025 18:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bruhMaGO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875A62DC79F
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757616407; cv=none; b=kNRtpAWLURIVXOTfYgLyylvVI9QxAsZ/0E8762PlaKLCpVY73KeAcQHwpFkO/CeAN1MPYs5Ibuf1trvDDGb9p+00/wVIn+hXaLM5xmatqQXh8psdBSfwCfwkX6bRF7wuKbXIvmWU+MDssuDk0FESjt+HQkRGqbUEWa+yOzsTaBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757616407; c=relaxed/simple;
	bh=vHuwkKXYwD/cpOelPHVBXDenAhVWLgTP21RN1N3bYw4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CAV/BJAqpDeis7evi+icOOs+RWeAfDEWgCbg9KpkmIXB4WJYqYXyL+5c+1Qiy7c4ViWAflDDJorI9M/KfLONJ3Om7wXHxbRZt1q610lTk8PZR/P9hMyxc7Rdt0sVFi5W8oIZo32f/prkjOTzevP9wEWeoCqOyd3L4p8VwGc+diQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bruhMaGO; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so9324095e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757616404; x=1758221204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3Kk5PCcvdUwK+/fsu2vdafHJIiHRXspA2ECOuACp4w=;
        b=bruhMaGOAuwDUwHqHp7Welvx0uj2y3fdN4/en2LO10bUW7eDYRJvnXxLYn5l6ZTRlR
         jUHL8oA3iXikpoply/FJI8A3GPd8EKDOgotraiK1/UpVfniRJRH26O5mMKoaFn/RWi9n
         7NBsmk/j2r9XHXqyIyA+LeZJFwiYTX9FhoWz2qtWR1185xpBHDUs+ks53+cJjEJaE8uk
         JUT07taNRktzcPCf+U4+eERZPcbka7DjE0/CkvT71qP3WlvG7rNkD2Zfb2hB3DqKWQlo
         fQyXqTkU+UnhZRM0UMrpwaDHstctf9mpIP5Yr4CGVjDy2bg2cgLVbu+TPGQPUslc3QxN
         UlPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757616404; x=1758221204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3Kk5PCcvdUwK+/fsu2vdafHJIiHRXspA2ECOuACp4w=;
        b=tEdNz7CcDuRcfR0uMorqbxORUvWlqcDuOX+eKjDUadf+/EfE5ng5z9ee1g494IffHg
         7KkbcvpAivk+lgiuWarddXFKiWlkLaE0Sdv9iK9ghi0i77swt/HBN4TjFkGZJWcb46Bq
         t44LMMGbsTF3aV/DYPRDB/i+/kEqk67iHOKMeD1wbC5JiRcBYfnFzBcUBxFhOJfqKyHc
         JrdctESdGKFp6o8H8KeVi1O6Na3CiJJkmshcSMy3ZkcCRCKdBznO+WdToYomSuTACS/5
         OTvPl8zAviV6ZG1DlQy5h2AKM0no8EglwEjpgkSNGHH7dcqcUdLujWeCOu1UtRJiQk1l
         Lgdw==
X-Forwarded-Encrypted: i=1; AJvYcCXqecEx4yL/y1FfRF4tv9O6C50rDrPauIL9E0023+psBC8+MAUTbEDm2rhoEMEO2pQWUdsdSTl1L2ph@vger.kernel.org
X-Gm-Message-State: AOJu0YxxLI2UtjVN2LOeCQ4QdJjSuVcAcfC+shnaEI0QtAKF1nkDZvnU
	hVzZIpSBfRIRAhpgPEF8d7uo7e9hK1d65dzMQ5c3P+R6BPC8ExtFvLBo
X-Gm-Gg: ASbGncv+mmfj3PiT9IcEXhgHOpIivCNpdAfj/ATr7nAdWEXryFiGU4IkF6aZxvA5+Se
	9tWMu4BkstRHSso3oD9HaQ0YSOkYeBUHyvmeo770cMfysnkdRxZE5YWONWfTpfww+eBX4QTZZU1
	MrhjA9hvviLG3rZ5gcbfdc00jsNtt4/P+FnTg4YL4SuZgOpq/kC2iKibdx4+/5P3CLY/m8rW1BV
	fGMS9aOJj5otvvNXP7ROexHqgVRdKikOh425KsuWvDmcVqzKmIRrsMqghTsY++CMAXOaf8kv/qp
	HZGzX3dA4c41Ux7TiEhKuKftX0X5+jG1ATBiSEDATNySjKNRa+Yhgh0jE8VZBp+cV/LbsFNPxOl
	/Yc2bjlQPCsKZIMiWUgMmcIstG7OuHzXZdF4cZyTVuFkAuh3QQ5KgtxZNxAanV5wipA9ISokiLQ
	hsMJrXdMtBZY0hucYeYnA=
X-Google-Smtp-Source: AGHT+IGPPdj04vc6Z8WnuiT1sf/ZoXQr56xVPN5ocFP5ISIHChh24Q+/p9n0LHx8H0kAPJH/zR+ueg==
X-Received: by 2002:a05:600c:1d03:b0:45b:86bb:af5f with SMTP id 5b1f17b1804b1-45dfd5b59c2mr43153985e9.6.1757616403529;
        Thu, 11 Sep 2025 11:46:43 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0157619fsm36045945e9.7.2025.09.11.11.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:46:43 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>, linux-sunxi@lists.linux.dev,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a523: Add NPU device node
Date: Thu, 11 Sep 2025 20:46:42 +0200
Message-ID: <1930957.tdWV9SEqCh@jernej-laptop>
In-Reply-To: <20250911174710.3149589-8-wens@kernel.org>
References:
 <20250911174710.3149589-1-wens@kernel.org>
 <20250911174710.3149589-8-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 11. september 2025 ob 19:47:10 Srednjeevropski poletni =
=C4=8Das je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> The Allwinner T527 SoC has an NPU built in. Based on identifiers found
> in the BSP, it is a Vivante IP block. After enabling it, the etnaviv
> driver reports it as a GC9000 revision 9003.
>=20
> The standard bindings are used as everything matches directly. There is
> no option for DVFS at the moment. That might require some more work,
> perhaps on the efuse side to map speed bins.
>=20
> It is unclear whether the NPU block is fused out at the hardware level
> or the BSP limits use of the NPU through software, as the author only
> has boards with the T527.
>=20
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>


Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/=
boot/dts/allwinner/sun55i-a523.dtsi
> index f93376372aba..9676caf9bd4e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> @@ -852,6 +852,18 @@ mcu_ccu: clock-controller@7102000 {
>  			#clock-cells =3D <1>;
>  			#reset-cells =3D <1>;
>  		};
> +
> +		npu: npu@7122000 {
> +			compatible =3D "vivante,gc";
> +			reg =3D <0x07122000 0x1000>;
> +			interrupts =3D <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&mcu_ccu CLK_BUS_MCU_NPU_ACLK>,
> +				 <&ccu CLK_NPU>,
> +				 <&mcu_ccu CLK_BUS_MCU_NPU_HCLK>;
> +			clock-names =3D "bus", "core", "reg";
> +			resets =3D <&mcu_ccu RST_BUS_MCU_NPU>;
> +			power-domains =3D <&ppu PD_NPU>;
> +		};
>  	};
> =20
>  	thermal-zones {
>=20





