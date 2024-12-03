Return-Path: <devicetree+bounces-126378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 121389E14CA
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 08:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9812164655
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 07:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175F51CCEE0;
	Tue,  3 Dec 2024 07:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Bp9cDtKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432B81C6F56
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 07:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733212630; cv=none; b=HoFc7Pn+OqvV4DPyu2SRLA1cH0tnJ7KAxC5ZJeQdWTgHsuqKzCy4K2XXz0n8cGpRiIlGqLBuWYqs/QHUv5Jsgk3RS0M1iM2+VIt2SPwLluqTTUa5Wffx+Mzm5N2adn2MxhXUkJkgDT/IW3K37sQEDlWAWMo78KgvPFV1pVbRj6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733212630; c=relaxed/simple;
	bh=BN9oqBHKXYcufRO+eCasqfzBY8zLc9V3aSmv0W/2EC4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=neGT5OFI0gparBnegJ6GJgRq2imIyWThA0fp3HOlng3Q8pMzJw8n66VcEngnGjk5kP0uxWgxLLsJf+ilxKcyBcIKENo0UyMVjgkipJNljElXmCJJtiafeDLhAZ/Rj5MT2juZ7Ug99O5CCd0Xi29AnRSBAYx8EvXaEMb80NqIhfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Bp9cDtKY; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53df1d1b6e8so5351667e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 23:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733212626; x=1733817426; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7WSM6TGpmmItz1uM+DrPz33P+iBBhPav9/6+0hNpzfY=;
        b=Bp9cDtKYIulZYLJVsMyF4pbX80JXp7spNIRLp4Z3kZZEjnIn3jlZ0HMyVF3kMzayq2
         wOF3k7XrBBw1vjbeOOLaTynL7BI+r352g7ZouMhhK7bn6DdBX3rsFNRC2VQuHwgkVk/O
         USaav2g7eV97nFYkw7/gDAHYL0EKww5/Xk1Yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733212626; x=1733817426;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7WSM6TGpmmItz1uM+DrPz33P+iBBhPav9/6+0hNpzfY=;
        b=qe56iy9Ik7I2Yba0qBv7N6Lt3H2R8JKI6X0BjCKmvBPuEcCwy8CZ0RbWVqpcsqUmSO
         8wmipMo1phhsY176msKnOMqx3dKa0Vg8x3Ud5HsLJZ91SvLyQU4ByMLqnJQFQ4R1Mey1
         8+lTyAqvsOTZSxLKT/LnXa8HZwOnV007+5DwqnmFEbUbda5VUCjd6qLIvvX8rokbggld
         PPbdt3rGc6btyl3Yphhaf6qNSfPrdxHzMzu1D3G2fozXjlReUqD5iDfgfJkfJ9SKYski
         FCOvT8B4x0LXwzlaXxE+sxSpHhtsFKAPaghJvkINniONl0MBLbg75fhkR6ts7tiF6nj+
         QXuA==
X-Forwarded-Encrypted: i=1; AJvYcCUqZPVVQufbpp/V+/z5ov6vPCcm1tIbmqIDHh0qPxza0jovY1hZkqP0nwF0l+kKopQKtiXSSAm3Qs8o@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1zoXnI4gD5eqhlfC9Y3TD7PtsG9R4OkINs8B1L8b/mEVIb3Nh
	NzmcVM2yOyQQQcMtxaje48u6nejshvFk572jvB/nQnBC5uJH19oxzf4thdBHlvHcf9Q0rLlT2w5
	kezNazzOxmMn59aEeUul3N16ZFzfRX3+txRjz
X-Gm-Gg: ASbGnct+tEIAYqPrXNncINJCK9fi2Q51y16z5jDmQzrUNgLg9xs7jqvXbtEcFVGGoxf
	4+iGKvVztEygQq/WYjA6Xx03PHIYLW8n06X/Tdo/RdHpMmY+ecRrjMAn71ZU=
X-Google-Smtp-Source: AGHT+IGpQFfklgML0v0C4LtaU2v74NIo4jtxn8wZdpHFLuloc5xneMzv1C9DI4bftKit5brhjQgwO+p7wVaG2CY8JIk=
X-Received: by 2002:a05:6512:138c:b0:53d:e5f0:32bb with SMTP id
 2adb3069b0e04-53e12a3929bmr524178e87.51.1733212626459; Mon, 02 Dec 2024
 23:57:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com>
 <20241202032035.29045-5-xiazhengqiao@huaqin.corp-partner.google.com>
In-Reply-To: <20241202032035.29045-5-xiazhengqiao@huaqin.corp-partner.google.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 3 Dec 2024 15:56:55 +0800
Message-ID: <CAGXv+5Hp030iiCXDYHYX6F1mD5WnsL=EziHPfM7Hm4kMxnhgXw@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] arm64: dts: mediatek: Modify audio codec name for pmic
To: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	hsinyi@chromium.org, sean.wang@mediatek.com, dianders@google.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 2, 2024 at 11:21=E2=80=AFAM Zhengqiao Xia
<xiazhengqiao@huaqin.corp-partner.google.com> wrote:
>
> change `codec` in pmic (in mt8186-corsola.dtsi) to `audio-codec`
>
> Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com=
>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm6=
4/boot/dts/mediatek/mt8186-corsola.dtsi
> index e324e3fd347e..cebb134331fb 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> @@ -1276,7 +1276,7 @@
>                 interrupts-extended =3D <&pio 201 IRQ_TYPE_LEVEL_HIGH>;
>                 #interrupt-cells =3D <2>;
>
> -               mt6366codec: codec {
> +               mt6366codec: audio-codec {
>                         compatible =3D "mediatek,mt6366-sound", "mediatek=
,mt6358-sound";
>                         Avdd-supply =3D <&mt6366_vaud28_reg>;
>                         mediatek,dmic-mode =3D <1>; /* one-wire */
> --
> 2.17.1
>

