Return-Path: <devicetree+bounces-199371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B61B106F5
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B56F1C20A11
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D73A0256C70;
	Thu, 24 Jul 2025 09:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Sx/xulJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009EA255F52
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753350601; cv=none; b=mTaG+KLofNPZbPwthkXyvpqC1jfW2PSk8pLAM0Oa2vNiVwXbek5nK8aK9O/cxKFK5PzQGzNHzk824JY+Kmq6bEwGoYD91HJ34GKo0FpAkxLaCfH9toBW2+X/AMeWGUsHHIN+Utfo0ZbKYl9GkTlS72wSh9wyhJ5QqXWZwW2MjfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753350601; c=relaxed/simple;
	bh=+1yeaes/5WO9C98Ce+RQRl+sqAXx+8dUlJLLdWKreso=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H6PNU3UbQqGWbgfFlmN4yXoFvMiOQ6ifbfNVuYb69FI6FehtN/JyypcsiGmmOuB445yFVDs6qlFpQZeNnmqQxSYdYf39QnhFvgXQmzmQ9qpoIiVmYPXQiilbT7Z7FBeTeDBuoTDAZkx5z/N/68oDhN2Y44p3hJZzkFxdIo3O6Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Sx/xulJh; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5551a770828so822626e87.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753350598; x=1753955398; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1yeaes/5WO9C98Ce+RQRl+sqAXx+8dUlJLLdWKreso=;
        b=Sx/xulJhXt296mnd751zlozvO9hmHj6VxjVSAz8m6yTaPTLv9QBPC0UptAjx0eFuVc
         XmD/9IGcm1tSFFDgNReWTVEZf+hA+8drt6emVomXJ7FjbsSwi83t3hHFemM7lEdWVSOt
         sB/lZmGDjPF0DhLo9GZr1YyTbyTdsnurUXtf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753350598; x=1753955398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1yeaes/5WO9C98Ce+RQRl+sqAXx+8dUlJLLdWKreso=;
        b=m72nEIyuuIR/rph67aM2coKqqCuaOUQrl2BFZsQSh8msc4iyRfyPjBarfPlmX3uS/6
         NYQ0wyNSGwfQUFYKCZkSQ4AHvBrUSyQSUL88PyPAfmajxumKl1ZJyLUcKwrf7qbaZ6F5
         JSXxk4/umN39iVNYJuUwyG2Cf/pg7TbQ56Nopa0M4l/ofu0SpHsaFryAVemAxtIJde/v
         DY+n2HWWoc6AAYrtjU+NejYFcYSr2fs/s6c/mfRTfc2mbGHpW+mXwylSgN+oeYryJGmO
         NvsOEKHm34uQGjVCR1miTk6gBVttZZabJkurEkC9VJ/XVmbddXW8U02Y7LP1p6EU6Frj
         pqmg==
X-Forwarded-Encrypted: i=1; AJvYcCVqwR/vshLFDkcnqB6KyrTnd8TRjC4vQwHDcVYL8Me8aIsk/PjKDf4ScDDPyQf1H/FSq4MDFCS4CvDC@vger.kernel.org
X-Gm-Message-State: AOJu0YwEJwiRdVVCmTIoiqfaxFKuWhlxMGH7hd2vUE4OVaR32rd5NHcB
	CGO/PLAH5onn/FNoE6eHMsGlyqbfSKerHRxU72yQcBCbOfyEIKaEzQKx+K7pCdcU4AhFILw5B9E
	KcatMYg6N1FrRkQBAW+WnogOEp7limU0pANA2K49S
X-Gm-Gg: ASbGncsmsLf9x1V15o0tlZnyC0YVWVGIi5+PPraEtnWQVufONUnMpUvB23mVluUg14C
	Fp+IU7HIS+7c3NUctRXJ5q1Y3zp54+gV5bcEagRDfjveYxyLAnRnlw3VNsnSE/uqdnECVB9KjSc
	n7bP0UVioVt3JxAmJhzunFXr943FipTzk7V5FHqq5DDRBdHpf/aIqFV+Sasa+MCeryNimuyqaP6
	Se8lmURYOKLYGJoGL2S5GPSJ5TR31/IhQ0=
X-Google-Smtp-Source: AGHT+IGItj9eON5joXD9a2IIIdgBC35OTh38AkPzmXEBTTEZMPnEPcqJK3Z5OhBEkyMLKp8WCCWs6kzvOlePUXbqfGg=
X-Received: by 2002:a05:6512:239d:b0:553:2dce:3ab2 with SMTP id
 2adb3069b0e04-55a51354ddbmr1925545e87.6.1753350598082; Thu, 24 Jul 2025
 02:49:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:49:46 +0800
X-Gm-Features: Ac12FXyptxSYdnZvhVmVzcLhUSOXFaRzx8la2O9AgbSx3nJkJt7JLwM6IxluTrU
Message-ID: <CAGXv+5FWV+RtWUJW=e5pJKiSpeK57fHpTrst38bN=1OSgf6P9Q@mail.gmail.com>
Subject: Re: [PATCH 03/38] dt-bindings: mailbox: mediatek, gce-mailbox: Make
 clock-names optional
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 4:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The GCE Mailbox needs only one clock and the clock-names can be
> used only by the driver (which, for instance, does not use it),
> and this is true for all of the currently supported MediaTek SoCs.
>
> Stop requiring to specify clock-names on all non-MT8195 GCEs.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

BTW, I see that the cmdq driver has support for sub-nodes which was never
actually used, possibly originally intended for the MT8188.

