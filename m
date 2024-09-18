Return-Path: <devicetree+bounces-103606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADCD97B846
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 09:00:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 470431C23007
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 07:00:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C789714A4C0;
	Wed, 18 Sep 2024 07:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cd932QZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED60200A3
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 07:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726642814; cv=none; b=Sjx5pYE8TP27t88qvefA0TnSbIzl0XevPPX/PlXk8oUq01N9QBtEkcPfVM2+jKhzQNOOpQflBFI4l6ADISEFuUgy9zc+CR0b2WLMsW9YqG9Gi6UL38iTmWl+vjfXKmdBsr0pDMUQ+jhda6cpiUCBKPNVe4vJNnyWJU8V5cxkQms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726642814; c=relaxed/simple;
	bh=VGj7MFbbpbV6gAewaS84mKaTbH5kyGiVAY8srxXcrHA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nreR6AyMydCm1D6tjRLVnqdKZyxgsyKSY0Pa7Y7Pyf4XhYVuKq63Ks78u1Gj+q4TatfGCgsljQRyDr2pfeppJK60yV4qa6QiDGy6VxZW5KT76Ps4KEMf0/vauaevZ7p0bCtYcE4o5Vd4A6QgmifZPivxqt6AyuPAYz19+0Q6srE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cd932QZ1; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-710de2712eeso1362743a34.3
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 00:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726642808; x=1727247608; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZOqc83yMPmUNy7v5ZCgAL4TGfjubvgZuTWuJi6zr/fg=;
        b=cd932QZ1fXLzJLwwBucfEuXoMCvwoZ9Ksk1BB8+8eHudztFWah/Mz8e64RBwsfUiMU
         l+quW7pDdWeI6Ma2/v4WXVH36rkkKZ33XAtvBCv5yV9A8FmAsx65ZsLpTp45zaP04x/b
         8+KuPXnuw//3A/lIUWZBydiqjXGFY5ZeT49fE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726642808; x=1727247608;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZOqc83yMPmUNy7v5ZCgAL4TGfjubvgZuTWuJi6zr/fg=;
        b=Z2SLZuQXjer6PbypK1TMuc8rvMA/1uc2slM7rBgUs2UUeEFPICIUsvtaYwV5Pjjuuj
         og++Oc0sVnFRJNarZhidxWCh1uxGoNGamVQSvRzjvHBdID9nGzaHl/273ZexHqk8B45B
         pETpmBocvFdnxYimSGs7ewPGNpYHIV6U5D6xkf9Qk8bE7eulYrJzCgxSL90nTreUl8zs
         VCTy+ii01fc/Jp0zjECxQx6yQme5OfL682dTm2NXrXN8SOPMGH4zkkWiFNajrNOycaLf
         ZdVXoCg/+5idzQU5L6TNAd2tOMaWYasnhac+FZdDLXDM5LUdgvrJE0QJhT5OQZjpYk0F
         NU1g==
X-Forwarded-Encrypted: i=1; AJvYcCVhzx0fuiCmwUh2JILAb00GPdnfdXEgvvRE0/0q6OnSWQmbIrZzO+DW5n+V5A53vdHoiPfnuImoD+jh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6mjYXO2OfVFnKSZH21vHjDVO/pqxs3As+oVlu6So8y8N7pdut
	cJhv/j5KXfwBOUlpeUgWHSb+HUY6Nll9kF6fERbmc14o0LrEpeqZosDR09jW4/5tq9s9H66TWx8
	6+2A+oJe4puQsDaVqeQc9UZvfGIMEST75Ddxt
X-Google-Smtp-Source: AGHT+IEBksw6fFdlYZ7q/FBpGRgy55uXZtW9PS9HPUQ2weMty0HZGZxThjuKX6anaB5NViscVV3L7qxmQJ9lVWMx6WM=
X-Received: by 2002:a05:6830:3703:b0:703:6434:aba8 with SMTP id
 46e09a7af769-711168e8f6fmr11760759a34.0.1726642808164; Wed, 18 Sep 2024
 00:00:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240916162956.267340-1-alpernebiyasak@gmail.com>
In-Reply-To: <20240916162956.267340-1-alpernebiyasak@gmail.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Wed, 18 Sep 2024 14:59:57 +0800
Message-ID: <CAEXTbpc=ZgF_V9AwxgTTJ8Ki1pb5M7bJ=se2fPE7Qg7s9H7XdA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183-kukui: Disable DPI display interface
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Cc: linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	Pi-Hsun Shih <pihsun@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	Chen-Yu Tsai <wenst@chromium.org>, Fabien Parent <fparent@baylibre.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Jitao Shi <jitao.shi@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 17, 2024 at 12:30=E2=80=AFAM Alper Nebi Yasak
<alpernebiyasak@gmail.com> wrote:
>
> Commit 009d855a26fd ("arm64: dts: mt8183: add dpi node to mt8183") adds
> a device-tree node for the DPI display interface that feeds the external
> display pipeline, to enable HDMI support on the Pumpkin board.
>
> However, the external display is not fully described on Chrome devices,
> blocked by further work on DP / USB-C muxing graph bindings. This
> incomplete description currently breaks internal display at least on the
> Cozmo board. The same issue was found and fixed on MT8186 devices with
> commit 3079fb09ddac ("arm64: dts: mediatek: mt8186-corsola: Disable DPI
> display interface"), but the MT8183 change wasn't merged until then.
>
> Disable the external display interface for the Kukui device family until
> the necessary work is done, like in the MT8186 Corsola case.
>
> Fixes: 009d855a26fd ("arm64: dts: mt8183: add dpi node to mt8183")
> Link: https://lore.kernel.org/linux-mediatek/20240821042836.2631815-1-wen=
st@chromium.org/
> Signed-off-by: Alper Nebi Yasak <alpernebiyasak@gmail.com>
> ---
>
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/=
boot/dts/mediatek/mt8183-kukui.dtsi
> index 22924f61ec9e..07ae3c8e897b 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -290,6 +290,11 @@ dsi_out: endpoint {
>         };
>  };
>
> +&dpi0 {
> +       /* TODO Re-enable after DP to Type-C port muxing can be described=
 */
> +       status =3D "disabled";
> +};
> +
>  &gic {
>         mediatek,broken-save-restore-fw;
>  };
>
> base-commit: 7083504315d64199a329de322fce989e1e10f4f7
> --
> 2.45.2
>
Reviewed-by: Pin-yen Lin <treapking@chromium.org>

Thanks for fixing this!

