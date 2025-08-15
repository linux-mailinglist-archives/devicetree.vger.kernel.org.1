Return-Path: <devicetree+bounces-204939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA28B276B9
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 880F33BE939
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 03:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CDB42BD5B2;
	Fri, 15 Aug 2025 03:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UTy90Jwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CECB280308
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 03:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755228354; cv=none; b=NbXGJ2mLONgXUnAJz8P9Xa9Ph9rLwZOnbr6QSxn7JbeXUF/xOVzqV0ccRh0zMFrPnfDtwMlo/dGNGYofFGy2iN6+a4vg1KI1xrAUCGFBKM0V+48+jvA7BtEmV3prlVJk7gf92bJ8wyuravOEJYl0Wvc9Ukgk8fGSPqE5z6bZ2EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755228354; c=relaxed/simple;
	bh=PJdg2qnj0enHiTuyutu3+3woV8+hTcgzDCVgV816pbw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nM6pkYRFG/Dy+VRPLo5WKGVVgSxq6VGi03XDWnm+If5skkM3cgLwvPrhjcmVfO/0lr94fReifPn1K2lm9MPtJ6sT9O1qDm3I/161eBtRW6dw2N5h0iLRzKz42uf2oxLtwWCvmJfjAMbEYahGI6IjkTVQwfeX2rEbXbSRBZPoi+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UTy90Jwe; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55ce526627dso1653955e87.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755228349; x=1755833149; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PJdg2qnj0enHiTuyutu3+3woV8+hTcgzDCVgV816pbw=;
        b=UTy90JweiHk+QihDlHIv3C9zyQDP2jNFuoORTcldb3m/DzIXDysredFO4TFamtPMXs
         g/DSVFGgouORpZzJBb/m/OyXK1gYWwOB9dImTzBJWx5CIfavyV7vW3yUUyPoBgRRcbnF
         IVwy9Nz4E4vr2IReImGxIECqKcIG31yKvw1IM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755228349; x=1755833149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PJdg2qnj0enHiTuyutu3+3woV8+hTcgzDCVgV816pbw=;
        b=neGvoMwTiC30avPS9Caw3IvAhHIPsYv1BR+q0EMl8zPFjM3lUTP4CHAS0u3yHAoA7O
         lIdWRt8SQHkS0uBPL1gKG/ra1SaOzwSXXPj4wi0mM6mdsPsC3fOdSjUEUh3gGJHePohL
         JFFoP2EALZp5Z5eu8+refwigEEANEzY56nRyAE1K+xopF9UbjW/EPG9mNBP8gGUtl6rk
         y9FY2yfcBRSgULOb1p2+JnoPrx/bayoXtUXOhQFu/m/WMNjjs3YiAmjozocUnB5Fb4yM
         3vp4IrymQjZGLdpua49pA6mIrEz4HF2qtt56g11av8mtNj+QnOMH8jsF0u5o4lXKEXlc
         P8Ng==
X-Forwarded-Encrypted: i=1; AJvYcCVdhBvjA8snzi8QH1zm+bs2pJL7C9VxalZXy7wtIvs4Ryw6nX5nqQ5TkF4tCuQoj4fo3J8OWauUYbch@vger.kernel.org
X-Gm-Message-State: AOJu0YwY35PGW0mUx5CuLEGne/xLfG2tuBGneMZ/PuturrF//OuIyMBs
	upo1L/JhH8LXLALJd137NbhsCa5RacDBQMblIXdCtgnPGfPd/4xnuWWpdRI23W5ihNpSX/Msbp3
	0HITZDfb6IS6JURhw4/H7VtrOI/Dri0b4ueQ+uRdh
X-Gm-Gg: ASbGncuew5+JSFaaFCwXjgcUDbi3DPVu19Xng+lm1kg1feLZ6PMAqGyR3jiHkuLab39
	S+6W4YOfz5xK/wvhUsciR+Fig4NjmZiEi9WzgGO8lT1Gc3Bmg9XSXXz8COGa8eroElSZHpxn6y/
	jvKAUv6zMy2+4kHsI1dLEt3vqadzIcqyeFbT0t/G98MwB67sAW5b2xtkhXFQeaOO1B9DlJ+8mgL
	VzY4P08G9gGXWayDVraNMzTn3PJJL2iFNGMJKtFXqraO5qD
X-Google-Smtp-Source: AGHT+IHML+FnX/LTF4Glnv3hTMjadeJlzca/Pry92PrR9MSNtfqTK7+3shW4DsnQEIw8uD+VwPOVAyVIaNye6SvIV90=
X-Received: by 2002:a05:6512:250d:b0:553:3a0a:1892 with SMTP id
 2adb3069b0e04-55ceea26136mr167317e87.15.1755228349428; Thu, 14 Aug 2025
 20:25:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805135447.149231-1-laura.nao@collabora.com> <20250805135447.149231-5-laura.nao@collabora.com>
In-Reply-To: <20250805135447.149231-5-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 15 Aug 2025 12:25:38 +0900
X-Gm-Features: Ac12FXyNFrgNnv9v_gZ4B-DIdoLeQQJfDCsM2y3l0UccKVx-_zcaQDAz8pYASzA
Message-ID: <CAGXv+5F4r+tN4vFVFcL5U=o2WrNZHUQN_VNTy=qLo4MKTrjmcQ@mail.gmail.com>
Subject: Re: [PATCH v4 04/27] clk: mediatek: clk-mtk: Introduce mtk_clk_get_hwv_regmap()
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 5, 2025 at 10:55=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> On MT8196, some clock controllers use a separate regmap for hardware
> voting via set/clear/status registers. Add=E2=80=AFmtk_clk_get_hwv_regmap=
() to
> retrieve this optional regmap, avoiding duplicated lookup code in
> mtk_clk_register_muxes() and=E2=80=AFmtk_clk_register_gate().
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

