Return-Path: <devicetree+bounces-70239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F9A8D2EE7
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3239B26D4C
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C983167DAA;
	Wed, 29 May 2024 07:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qiIEorw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C15167D9E
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716968932; cv=none; b=B94SgWq08BnDMQLYTYTzS+GNj6BcTAncskNgVvTxQdktcOPrc0QaFVM8jfjjlDq0l0A46FP/tQ9QtZCf/20RX0snJRHyPx4Xn371jZu0kTFI81zpOX+1dhHfiLBmxLh+4ICyUXQI3vosyIP0IwT6EYgyLQP3HzoaByal9WjupcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716968932; c=relaxed/simple;
	bh=wyD9HqZtSq4vczMlJ+45sDNKk0qk+SBg5VNyok2uFx4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UKFbemtmGgdpT56R8FViZhzHMozjcQmXA/mx2OZi0TiLxntSeskWY0YmVGc/fmiPfnWif8lxhjYVhc13cpX64f2C5++ocrWticHuDUraXnb462/gYUe36X0Rxu9Hozr1C30k/StqaIu5132GSTIgNFpdjn/NIbk50sWNzL+v66M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qiIEorw6; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-df771db8b24so1674515276.3
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716968930; x=1717573730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyD9HqZtSq4vczMlJ+45sDNKk0qk+SBg5VNyok2uFx4=;
        b=qiIEorw6Es7+sRGiA+XtA0Sso/uPB7/PpZdmyk93jrBrSjRG5sI9tZC1PJvry2w1Ek
         3urjsX5iFMnLiBYugIjTYD7JkHX1frl5ExFLYk9SQsZqE2wGKD71Uqf1JWOnItEmCG2D
         SNQp/e9CpIQPZnMK801PFnDG+GjyQnjNr0xRSrDHn4BKwFjHe1USKh2HidT+KZGUu4h/
         C/JIO1nhZeh6CJOucPkS6lo1MDEifXJns4ARx0soqg0wq21C2TRJRECVuAqTUMifTngu
         k2Yh/4JsuJdwrrPsEoMUm6RrVyYsKGUbMyvZ5vpyzoXsQ9qT/EAs6ToTGoxc/mbcin1t
         4YmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716968930; x=1717573730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wyD9HqZtSq4vczMlJ+45sDNKk0qk+SBg5VNyok2uFx4=;
        b=ujx+ceaoSRaLPPVMmk/n+eL1ANodFpLB6nXdvo0ffIoP4DDvqMw+cC8k7DHCTlU0Wg
         WiIkcReZAicjyeBdFboCHw5eRfIMjWwtqb44GNIAN78l8JROnQ5bMNl+7ndsprhky65l
         ylNcoe4eFK0Q67MeswcosEVBSzKUWnNl1cZu8+Le5lY2S58z0SFTAnHYKmleswoYLaIj
         vhpF7pszOfbMpKi/Mh1/gcGv4Rwvuycq0qrvDp2HND7kbjG0al7eDs7b+tZ9y1fcWiSz
         bZ2qiiZPuzGDjvAml/3r16eGWlU17pNEMylAY9pNBte/juFDG4hj+1HKFLO6k/MsinDT
         pWcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkpy5U1vl78hWE/OoqyRmh0OC1wJk/FdXquF1t3uOBYpQCC6Yn7e0jO4KCsbX3U+YHOCbDpCeHNG2fgr4uch+3b49WaFBYNprsFA==
X-Gm-Message-State: AOJu0YzhNQl5M4nx8R1ML/AHkO6Hxxx8mJFABE3QRz1h5M+/Bx8rN6Ao
	YOjjgehgikEFLN9UWEOd9rEfywp0EawHiuaJaGQ862+FEIAREWN4efwPIOrx5a/3TCyWmJi1scO
	SmnL4nesukEQ8YV6pGmHHxAKATVoVtoZ0aqcp+w==
X-Google-Smtp-Source: AGHT+IHSd/PXVXnQLhPVNg7fFhMrsdBcZFygKj2F8W4r8xr+nErsQNh+mjoKNVlbSYTvLms578njjoquRxDdDDoH63I=
X-Received: by 2002:a25:ad8e:0:b0:dcb:b072:82d5 with SMTP id
 3f1490d57ef6-df772267f49mr13018047276.64.1716968929711; Wed, 29 May 2024
 00:48:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527115933.7396-1-zajec5@gmail.com> <20240527115933.7396-3-zajec5@gmail.com>
In-Reply-To: <20240527115933.7396-3-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 09:48:39 +0200
Message-ID: <CACRpkdaSsY0PnAU=UKJ0ZGLw0gJnBu3M9hQiQVBWjZF48cBO9g@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add OpenWrt One
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sre@kernel.org>, Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	openwrt-devel@lists.openwrt.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 2:00=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> OpenWrt One is the first ever OpenWrt product. It's based on MT7981B and
> has entered an early production stage.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

