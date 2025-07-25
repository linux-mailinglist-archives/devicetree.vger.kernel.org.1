Return-Path: <devicetree+bounces-199760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3F4B11E13
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 14:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 225DE1C278B6
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08594242D7F;
	Fri, 25 Jul 2025 12:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aYo9k6c+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794BD3D994
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 12:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753445003; cv=none; b=D5C/O2adxgoBnegSx5066LpNkXQr7WiaIy2/61A1RoNWjJtCM+B+a/3pXfosF2lKVbhw9axLyEZA92ycwq5D5T9YpGq66DAC/zYy7kLVvJfdlK69ojFLT7sS2AY5se0TlAHMRvstki1Zero313W8cVNsVnWsNCnq41wJmGrGQc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753445003; c=relaxed/simple;
	bh=7Lq+L8ybIKzJFE7aCP8K4OUgb0w5TEGi1D/8HV86VOI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NnKz+QAQ5Y5sKQLgYNCQadqJDX+E9lb4Djhx5gT5W+LmFGv/DPYxzF9qUTtvjPXQS6NlmjKSblK/vdJF5tdJyhmS+9A8/PYE08zHri8yVgtbcOFcpXD1hj2KFWhOd5BzyO0+oVl3r/cnTmI6eiBzgYHSz3s4+wbe7HEtZyv/teY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aYo9k6c+; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-73e650f3c31so581583a34.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753445001; x=1754049801; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5hJBa13s79OQWhYLxMwSe1UwJVG9FUdchi7fOARwLxY=;
        b=aYo9k6c+G/ZQplXfD5d0TfR/r95r+PEDeEBDNmjYMXo5Sp0C+ywYQdmTYpl4w0AJ1J
         IzL747oJyrgFvCzM4RySg7VNkBXGAYLZd6gdDtcAyGCYB9LNp1d4dHC8SdJbc4EvY34K
         CI8rqfEVjFKr7wDhScCRC3hz4n2LhTjU6A0mc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753445001; x=1754049801;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5hJBa13s79OQWhYLxMwSe1UwJVG9FUdchi7fOARwLxY=;
        b=sY7DaGKERqi2v6T2RbOmpLHVtimyB4OqiVsua7U4PWPguDQm3aCUFAUYACqH+RHK6j
         sgU/gP3v/36x7JcxAFjmUtlQCjoDNmWtWQYCXQ56g7/yFBu2zok03M7T7JWNmwThtCX5
         9SoMsGOBeUtBkjGWxE6tru2JiRx3nW1ayn/RHCUf3OmaWqCBu3U8wNhkq4zJYwWQZ6yJ
         DWRLMjKkKE2tcy/BsKdaODm34CTAyAcP+x52hhFfdDHeRqVjSXnJygxZQ8jPbizjSySs
         t0t6gv4y2vQvQNsi1YYrt28nX3uemcQQKr2q/RPKhABliP8PpbVdYrB8IhwElJh6nxd0
         xN/A==
X-Forwarded-Encrypted: i=1; AJvYcCWS2HsBbpha49B0oIBz2lADE4tsOJBEiUnSETTvjr5HjGyWvcpX6EKJdBHPA5VJ0W1/IzX9xVn7L81h@vger.kernel.org
X-Gm-Message-State: AOJu0YwgmGuvbvZ4h3i9QuLOpaGo0jv318QHJDjS39obM+s1kKcMRmpB
	fa/C+F/I2lwRUTX4btNa1h/sp7w9XaQez85E40xy3MAN0bTh0TTJMMUyknBuBBEwKMuhzsMzLDc
	/ghI=
X-Gm-Gg: ASbGncsQtB2JQE9Qzr/yCugS9H4jDWkKcWWtbllMfN7fzasqcxWPO5DhJGo4IOqCXYG
	cEJMCIHHBvvv2ArF27P1BDBteuICj+J4WZelTlP+kZ9rGnB3puphzU418wysNYm6w0qP1qfP7eq
	F1uMcvLgoC4xgIs+a0auUqwMb/CwBbJbLVc4eWNXGLdu2qjzJ6b03qwLQni66Q9vF9Vd2H5MgzF
	6eTqfe4TpeOBDpjlsDGxWK6/0J3VlJ56NHT0uRR064MQXZpR2S2A5Q3gtyLlPaOjIH5zRfleXCa
	Bl5wKVw+Wqk46xoUKTMm5/vnDEyZ6dVRmJrGRsckK7YJNgGPhH0VtnLShw6+Z+q7ryqKOGm/Aik
	1cIYQj/JMAuxu9qH4MPaScXX5QhYippB9WaJER+e5vuq1egeo+tYbYgq2ag==
X-Google-Smtp-Source: AGHT+IHMHbH+pggGbQRqY4fIwZpQTa+zllUfMtUoBg/LkTRvM+vkaGyYmNayg8fXpn83aRz2iZC3RQ==
X-Received: by 2002:a05:6830:4487:b0:73c:c4a7:3852 with SMTP id 46e09a7af769-7413dca0c42mr854964a34.3.1753445001328;
        Fri, 25 Jul 2025 05:03:21 -0700 (PDT)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com. [209.85.210.46])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7412d2ad6e8sm645797a34.32.2025.07.25.05.03.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 05:03:20 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-73e57751cd9so544082a34.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:03:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWdQjeC4V2SAo5JVVmBv543SgySoS3cjSn+oPtnyeAbItpn23KBF0v0KLMUtGlYswPC0xJqbxu+e34R@vger.kernel.org
X-Received: by 2002:a05:6102:6891:b0:4dd:b82d:e0de with SMTP id
 ada2fe7eead31-4fa3ff44195mr316348137.17.1753440787376; Fri, 25 Jul 2025
 03:53:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-20-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-20-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:52:31 +0800
X-Gmail-Original-Message-ID: <CAC=S1nguRWyG3ubmSFE95_zgsCjjq4dxGWr5ErV9-Yu2+mTmpw@mail.gmail.com>
X-Gm-Features: Ac12FXzhNEGCOc6TL2wVpoG5kEXhC599YdNWu941VvXlO0dL7_W9Jc4if8EyMHA
Message-ID: <CAC=S1nguRWyG3ubmSFE95_zgsCjjq4dxGWr5ErV9-Yu2+mTmpw@mail.gmail.com>
Subject: Re: [PATCH 19/38] arm64: dts: mediatek: mt6795: Add mediatek,infracfg
 to iommu node
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 5:49=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The "M4U" IOMMU requires a handle to the infracfg to switch to
> the 4gb/pae addressing mode: add it.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt6795.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt6795.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt6795.dtsi
> index e5e269a660b1..38f65aad2802 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
> @@ -427,6 +427,7 @@ iommu: iommu@10205000 {
>                         clocks =3D <&infracfg CLK_INFRA_M4U>;
>                         clock-names =3D "bclk";
>                         interrupts =3D <GIC_SPI 146 IRQ_TYPE_LEVEL_LOW>;
> +                       mediatek,infracfg =3D <&infracfg>;
>                         mediatek,larbs =3D <&larb0 &larb1 &larb2 &larb3>;
>                         power-domains =3D <&spm MT6795_POWER_DOMAIN_MM>;
>                         #iommu-cells =3D <1>;
> --
> 2.50.1
>
>

