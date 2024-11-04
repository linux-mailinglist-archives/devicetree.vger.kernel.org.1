Return-Path: <devicetree+bounces-118710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7589BB538
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:00:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 890AE1F20D46
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 13:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 262011B392A;
	Mon,  4 Nov 2024 13:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BQtLYRqh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE8E18C907
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 13:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730725254; cv=none; b=uP9a+Mqno7p3FjMndGI0isyhDdK0XXjUISz5uOzMJ6trZKN1UUWMNPMgA5zZ+WXtWnm4oagnekuGKL33TFxonS7d8CJByqRAAML7YLZVcvyNNy+RlXQjqI+ZgYjpePRoMcx95h80rVC34XsE7M0s/2zqSZi6n5tH3TbzYU8S7JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730725254; c=relaxed/simple;
	bh=JhQ2PWN2Y1EFf7Bbt6XnhgOueYeaz3vhV3MZ8+CoaM0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KpWFeI+nUg/Fx5sg9Ky5rvs+VNFYXXfC3mVp1n39Q6ycVf2PalMA6ud/BbXDklsw/KLOBDeqLkB+wsFk1YxpVrchtdgounCO5gO6W+6lolHaGtCImPF5OJyPxk94De8wMFFEQ4lANWpcdTTrRwcIs707R4NfRlybqaUFiuhkzJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BQtLYRqh; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f72c913aso6724146e87.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 05:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730725250; x=1731330050; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+nWI6Xd/q/LZwmtaLVMw4xyJRrOQePjMO2FUfWARW0Q=;
        b=BQtLYRqh1kfutTaexWkm7NQi+uUkV4bTu7tZ9SuFVSMCx5vUnFDXRsVNoBO6WqEavK
         odGncTYYOoq0iftkLro4CxESxFU8bEvwePfZAocA1FAjvheaaUQzlShEZTm5zlqrVltH
         t6kpCFcBtrYLlesVeN0SHLXvj7zBql3wD88e8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730725250; x=1731330050;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+nWI6Xd/q/LZwmtaLVMw4xyJRrOQePjMO2FUfWARW0Q=;
        b=UVSwd03X56RI+f4YxnwzKeD8OSTPx2ZMFs5y4zJDNBH0dGXezdubzzGAXor6ELcSs3
         wcv9SVh44Aet/kPL2IGAXGHv0Co6v3N0rtG1kq3WTMxwOJgOW002ot9TdXgzUfsHlfdv
         vMnKcrBZRGWR9CL2VQ3W9EBoYpPp7KFz9nz25li3nuwvBF758pCy04/suG+14iTrMtFW
         lbQcEDcLnJ5v2uWQfWzeSesZq+i7HpOoi00WYOEO+n2juzphbVEYZtaOCIl3sjhSUoIV
         mzdGUVH1U98QoyrUUoJo/vh53D/lP8PXtJks4bUNVMsJRNylWDHOS6o2ekXnwoQGbPDk
         n/2w==
X-Gm-Message-State: AOJu0YwNDIyIym/lHxfS4DB3DFmLKJMeaW6GfCEIA278EW2Dmo/kHTnk
	iuCQS82qzyxYS7VRTlV9eiLgBpluqOe8mgZy+/UUa+eP23pdK/GMBwWwSxWAh2S7nZv0EiZPrQr
	ml/w+OZi3y6m2NNa8vXhQaIL6DD8YLh9ziqvr
X-Google-Smtp-Source: AGHT+IEaB8ZZda+xiJN8hKjO+7R4XsS7rVORV17qPKkGoFiz7+eoeVha8v/dIRlM1DAoeMrrYQuRDQrFwr1eS5hM8ts=
X-Received: by 2002:a05:6512:3404:b0:530:ad7d:8957 with SMTP id
 2adb3069b0e04-53b34b36e63mr15028995e87.49.1730725249927; Mon, 04 Nov 2024
 05:00:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241030070224.1006331-1-wenst@chromium.org> <20241030070224.1006331-2-wenst@chromium.org>
In-Reply-To: <20241030070224.1006331-2-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 4 Nov 2024 21:00:39 +0800
Message-ID: <CAGXv+5HVy41qee6kwVUeLV_DfA0=wk2X77kv81rBKAZDGE6mww@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Drop
 pp3300_panel voltage settings
To: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 30, 2024 at 3:02=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> The pp3300_panel fixed regulator is just a load switch. It does not have
> any regulating capabilities. Thus having voltage constraints on it is
> wrong.
>
> Remove the voltage constraints.
>
> Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

I see that the other three patches were merged and included in the pull
request, but not this one. Were there any concerns?


ChenYu

> ---
>  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arc=
h/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> index 783c333107bc..7bbafe926558 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> @@ -35,8 +35,6 @@ pp1800_mipibrdg: pp1800-mipibrdg {
>         pp3300_panel: pp3300-panel {
>                 compatible =3D "regulator-fixed";
>                 regulator-name =3D "pp3300_panel";
> -               regulator-min-microvolt =3D <3300000>;
> -               regulator-max-microvolt =3D <3300000>;
>                 pinctrl-names =3D "default";
>                 pinctrl-0 =3D <&pp3300_panel_pins>;
>
> --
> 2.47.0.163.g1226f6d8fa-goog
>

