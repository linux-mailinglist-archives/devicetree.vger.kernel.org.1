Return-Path: <devicetree+bounces-126446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1740D9E16F3
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF709160E7F
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 09:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AED61AD41F;
	Tue,  3 Dec 2024 09:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zt4846W+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D671898E9
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 09:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733217370; cv=none; b=ANY/ogfZnBtGFyeR6u3KXiAYUsIwmgSdmx7yib+cTe2mBNtFuWapICXR7tzWLiaYYDN3twRSLFW+SmLWyW1PYUfJAEUb42maR83Qu5xxUcCD1WajAuxhki5LEupsbBGJHuffDtCje0My/ekStVJNIFmSZy/eN15cUIj/23vCap4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733217370; c=relaxed/simple;
	bh=Ynw/BXgvGPSdFG5UhefPcou+uPZ7b5PbzWEqBuapC6I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kHGOUNWyKK5hx6vy0Tja4qmtlaZ5N6QtodgtJcIxqbZHdlQ0+ayCKBiPy6Mhn+xAzpssygd12ivgi7u4c4oUBz0QDw35cKxuCIIv/YgBqhtqLAF/bM9VVrXI1IROW1Drg2gM4pq+yot5uVVvekNnIvOec++GnxtLu1tpMFgPX4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zt4846W+; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53dd9e853ccso5529857e87.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 01:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733217366; x=1733822166; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tKpX/3oOMoY2CpjSV1lkQJtqW/CgZx6kTl37vj9RWvQ=;
        b=Zt4846W+gXINDWFvYq9JH6nTldtbdRbrJnH4mUfp0EqlmazMWVBchWLyRNsh/C9VTw
         fIM1eARbYnr0r0Sg45QGRnKdmc4LV9EH6NFXuYkSUw/jgiC3CI0RMkxOqRKh458pYjh1
         wRCD2xjQ9MQDFyQyOFThAjdh+Glbwe19vrdOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733217366; x=1733822166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tKpX/3oOMoY2CpjSV1lkQJtqW/CgZx6kTl37vj9RWvQ=;
        b=ncFfpDzykLBzQCGrWf9ue1XZA2PohbEwcvLNhZQBGYSOF4h+BHMi+C5szWVCxKXjer
         jV4WhlKEsP1a43uXCqm954A6/Eg6OeaeTB0v4MvueK6HNmoHg/qV0/7UhSX7PQo8dNqL
         STTS52yKmfTD8/A7V0XNKViUkLotLslgKtz+ZrJd7kgP/TNcbJJ7UPcEf3EeujMhJJT0
         aOffERTi5zW/DtWOMVjgKD5HdRgZr443tPp9jJcrQdwVcz6iiKs7me8yZFeJ82UIb1ge
         aVxyKVUHO0kE1sJ30ml40yBPI5nQrN4mVhd2p80yTKCgyBXr3mJjr4W0LF82pE/+957Z
         129g==
X-Forwarded-Encrypted: i=1; AJvYcCXsz010bqURTNTWd8MrLFoRz2PZDFQkWPs7EFuJm/gqtcSdz38utdXUj/bq/yY0lTThHnc3Kt/XJMmG@vger.kernel.org
X-Gm-Message-State: AOJu0YyfAuAxuFsWcv6xm+Z4D2+uokIbQHU+OgWeF85Cn0/eEHJcvKkI
	IRvjvIsI5Mj1mk8jJNWkeM2DW6JFirLYpmIWpZVNTFF3luMmAdfif35Df2zBzY8EpZzOrVHoAaW
	0RAY0O362oIzRBIj7PYfIAqjTGcXnbuHU6kZk
X-Gm-Gg: ASbGncvVlS7l8X531cb7nyxdCGXER8gnyYwqzLJ3odpKvTH2mXYOhc1OZCy2iPrc4/o
	O51BT1jMgA8GOo4ZCOmEQ4PtLTGmq4MKxCrP11CyZwEc4nbOEE8pJ7/7WfJQ=
X-Google-Smtp-Source: AGHT+IHblgyX3h9C40czpfBFU4FlCVyQGCJtmnMsdRZhtqjaXaMQ/snRbicpRd77CCHWP8KcHzPutSl+2EBTyk0stG8=
X-Received: by 2002:a05:6512:474:b0:53e:166d:bdf with SMTP id
 2adb3069b0e04-53e166d0c7fmr436640e87.14.1733217366415; Tue, 03 Dec 2024
 01:16:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com>
 <20241202032035.29045-4-xiazhengqiao@huaqin.corp-partner.google.com>
In-Reply-To: <20241202032035.29045-4-xiazhengqiao@huaqin.corp-partner.google.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 3 Dec 2024 17:15:55 +0800
Message-ID: <CAGXv+5HsOgRCpGOFxEJorVD+=-6GbW_=K3AChkBSxTs27fNJ3w@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: mediatek: Add exton node for DP bridge
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
> Add exton node for DP bridge to make the display work properly.
      ^ extcon.

Same for the subject.

> Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com=
>
> ---
>  arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm6=
4/boot/dts/mediatek/mt8186-corsola.dtsi
> index cfcc7909dfe6..e324e3fd347e 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> @@ -424,6 +424,7 @@
>                 ovdd-supply =3D <&mt6366_vsim2_reg>;
>                 pwr18-supply =3D <&pp1800_dpbrdg_dx>;
>                 reset-gpios =3D <&pio 177 GPIO_ACTIVE_LOW>;
> +               extcon =3D <&usbc_extcon>;
>
>                 ports {
>                         #address-cells =3D <1>;
> @@ -1656,6 +1657,11 @@
>                                 try-power-role =3D "source";
>                         };
>                 };
> +
> +               usbc_extcon: extcon0 {
> +                       compatible =3D "google,extcon-usbc-cros-ec";
> +                       google,usb-port-id =3D <0>;
> +               };
>         };
>  };
>
> --
> 2.17.1
>

