Return-Path: <devicetree+bounces-204201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C714AB246A2
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 12:08:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E31B63A7EB8
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 141222D0623;
	Wed, 13 Aug 2025 10:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BNwN8S33"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2F02D2390
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 10:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755079415; cv=none; b=nV4zi2xdMy2FGHooPARYaKH6CtL9tOPZV3YN6Z35eqFXr/4AOzMeCTqLuSOVEa8X9ivUBHt/HKMNxZG+NZTWeoLQ/jIMdBc1+8xvAAKC/jBlRjzqFlIWuJ7ZlFjKnzQWT8vO6jiUKVykDu/FtV0oHUKuN7VZyBLZ5MQJvYFIpmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755079415; c=relaxed/simple;
	bh=XJ18+y6IN20URNsWOGtZC0DCI/fLtzEWGfVrzsaSDwU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YzvONg34oDaNf0feUIWoEDNevqlhcC4hhf/F4HbaiIWBQSOS6nyj4dXdSTN8KXT44xR0qB4kFv00qCDgoV3dIBG6JpaJmJ0qnQ4bMLOootMeTjSLe6ScInCRFPbkhJE1AkIWjnryz2he/jn5eaBpJ636Es93Ukcehph6aADWR+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BNwN8S33; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-5393aa6c5d4so4249859e0c.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755079411; x=1755684211; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JpOqTr/H8i5iWZL4dLpviHUqjl+PiTBlvfyP9LcDKi4=;
        b=BNwN8S332Tz3rJyCoPUjkAaBdSocFVYsC5CMP1c/cRkir38iIYc+N1Kun6y9V2yCLJ
         MEARBqotFvSLoAwSvuXSpwi2A/TwMOVjjyjw7SLUqOHebkST5b0PoRem4Gm1zQFk26LX
         4YcDTLrdUDAVk3iWQr1sS3LiRGyFQysc1gmx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755079411; x=1755684211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JpOqTr/H8i5iWZL4dLpviHUqjl+PiTBlvfyP9LcDKi4=;
        b=V30ryu2XODl/KssgT2qY288nAYyO3RruL9voDvvgQKIdMB72qyOcxef+YQltl7Ue1J
         noKzBnq8V7He+WHknKx1tStKHEgm73rxF90LgnEPA5gmLBHKQcyMjB9vzuBMWVCinRap
         HNFqnWv81zhgcUffD0Mf///e9fBj5JfQpiWyHaEHmVXzmghSXkwJ1bHFk0pkxExgKEN/
         Wjg42aRst0SVfafEjz4nVQiCfPXzL3jBvfiiDhFb0YL9PfBJxeuHmuc9Cz8cEGx/R2jv
         2eFgoV2t59KKcki2VyeaArLa0vv/YHifXuIPOMcMUE5qR0KedPAz2dG0gWCL2bwON0Uf
         zUDA==
X-Forwarded-Encrypted: i=1; AJvYcCUqC8cPRwUODOo+0ZBfIOntGF9MbJyfSH3a4vbdsSihzcyxUc6+ISmP42vbMNqfmIyu0lBg6W/88YCS@vger.kernel.org
X-Gm-Message-State: AOJu0YzHNe8IMouFtUQfcqoYk8+X1hkEX2UprQwPkpy1FbPx1t47e0yj
	kfHob0GAWAZ/QyweP/CTBT2ZWetyceemj3Y4d7Kjh+jj8BDk9i93fQrUkOgKisWWiNFqy9N/qqi
	ICec=
X-Gm-Gg: ASbGncujcaiybK2Zeb4f7VSIDWzYCa307j15bmjcgVHbslEVLMSmt8yvDebi9G3OalI
	y+RaO6lcvumqAXYNfSXl/qrVQTBtUsL5PU1R2jEYVQ6L5GjMPCFcGq9zr9XozY9q1UIIkNAulpJ
	3YSoZCazgUDpxewNqaET/BDUJryF7xhPKXi0ub8DGTwoBB1KTKvUSLzQo60xPojI4+VkyYsPEPr
	XBx20k3qqbj+FUak7630FOD+opU6NoKUD7rEM9JUfQOAv7Jqbfpmt32txGjJDz7ZwxA95+9SQ8P
	7OG9BPg/IqXXbg7OfZ+og23PxIyjsetGySthlfO/ityQNClMJGDrZFthqOR3NHpYBKVV9vIWftv
	jXGMP1OeD67rjNKe6L+zkS08jqCj/jFWRtGNMDkdQXCMqV5b7+fXFgfstqQ==
X-Google-Smtp-Source: AGHT+IHK06r1GMBcoSzy7F4qY4yUz0RZ11VUhKJZELTxGem2+seqh+PXgmM0imDklNSmGrJTqFhDSA==
X-Received: by 2002:a05:6122:a03:b0:539:46e5:cfba with SMTP id 71dfb90a1353d-53b0b5f6357mr609660e0c.7.1755079411481;
        Wed, 13 Aug 2025 03:03:31 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-539b01b6352sm3771844e0c.14.2025.08.13.03.03.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 03:03:30 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-88ddd1c6178so3691691241.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:03:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVf1bcWGHPGS35Cu1rlUNMem79EbzSP10RlzNLRBw3uykCv5u0piW++Rj/wWCY26bWjaPSfs0/QkSew@vger.kernel.org
X-Received: by 2002:a05:6102:580f:b0:4e5:c51b:ace4 with SMTP id
 ada2fe7eead31-50e5069ec3dmr831455137.20.1755079409916; Wed, 13 Aug 2025
 03:03:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812085902.3309160-1-wenst@chromium.org>
In-Reply-To: <20250812085902.3309160-1-wenst@chromium.org>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 13 Aug 2025 18:02:53 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhG_ExACJRpJoqmO7nn+P24uiaha21SFEyR3aoKL-Pjgw@mail.gmail.com>
X-Gm-Features: Ac12FXxcH53--yUF4XiZyOJVA9MjGchb9U9zLHe6JnSsrI_-dNHmZMaj3Vdi_pE
Message-ID: <CAC=S1nhG_ExACJRpJoqmO7nn+P24uiaha21SFEyR3aoKL-Pjgw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8188-geralt: Enable first SCP core
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 12, 2025 at 8:39=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> The first SCP core is used to drive the video decoder and encoders.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8188-geralt.dtsi
> index c5254ae0bb99..10764786bc21 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> @@ -164,6 +164,12 @@ reserved_memory: reserved-memory {
>                 #size-cells =3D <2>;
>                 ranges;
>
> +               scp_mem_reserved: memory@50000000 {
> +                       compatible =3D "shared-dma-pool";
> +                       reg =3D <0 0x50000000 0 0x800000>;
> +                       no-map;
> +               };
> +
>                 apu_mem: memory@55000000 {
>                         compatible =3D "shared-dma-pool";
>                         reg =3D <0 0x55000000 0 0x1400000>;
> @@ -1146,6 +1152,16 @@ &postmask0_out {
>         remote-endpoint =3D <&dither0_in>;
>  };
>
> +&scp_cluster {
> +       status =3D "okay";
> +};
> +
> +&scp_c0 {
> +       firmware-name =3D "mediatek/mt8188/scp.img";
> +       memory-region =3D <&scp_mem_reserved>;

It looks like a pinctrl for SCP_VREQ_VAO (GPIO 98) is missing?
Datasheet says it's for "SCP to PMIC normal voltage request", and
MT8195 and MT8192 also have that configured.

Regards,
Fei

> +       status =3D "okay";
> +};
> +
>  &sound {
>         pinctrl-names =3D "aud_etdm_hp_on", "aud_etdm_hp_off",
>                         "aud_etdm_spk_on", "aud_etdm_spk_off",
> --
> 2.51.0.rc0.215.g125493bb4a-goog
>
>

