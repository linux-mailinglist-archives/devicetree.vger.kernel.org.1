Return-Path: <devicetree+bounces-156861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B88CA5DB6D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D158177666
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9451C245008;
	Wed, 12 Mar 2025 11:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H/69/ZqT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075722441B7
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778724; cv=none; b=tTrkIzhCrS/d5SjIlQAWe43vakElfPIViInLrByVRwXVOwMm8DMQhZIM+HPaXNNXV3fCfaDMTjypH/9T+xxMwFereS9+c9vWkAkajDnyQK0o5oQg5BaHVlqTOVcwVBFUI7bE62wMBL9lJ+xqOao9VTs7hScM8Ueqnt+jaFPLiFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778724; c=relaxed/simple;
	bh=/RhKTxmR7DPjGeSaHLhrD5HO/cS4tcbus8dYscpFo90=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MC+K9Jj0sCUIfNsQrQfgscjktDr59ZHt85KwvP8QbqRoohSiT2usOzsixH6Vrh+WWjW/zi3oSk1XbVZrjR5yG7kF58PpvlPkq78qm1m/SDXJcqfbySzlciTknLxYVZNDaphswSev+zwGU19LFf2skgXKEzSVpHe5WtJSDY7Wbk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H/69/ZqT; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6feaa0319d8so48031067b3.2
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778722; x=1742383522; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/EF0zDFUflzONesty7VuCi7dpM8v0C1RgMUVQ/Huc38=;
        b=H/69/ZqTpuFErBCCv93u0JDMhKxcLlcBzo/5RXJr3b+ozudnvvBXNo4PDdbWvBoBd3
         0dSqzGfkCOqdByizKIbXgrV5r+UEkH7htwLMMtMNUDF965MwRf78Lpz4QxcLIWjqtMx2
         /HPNoH4fRTyIbjpkbRs6InH699xDY7VfrMVUL9PueBLKxXKY9gK6YOvXdla6wSO5j+08
         dtj5oKZMeXo+GGuDwuwl0bAFLDJLtDWCPaQEHxhJ9CHjXxOlqjirfPQZL3Qsb6DB616K
         Z6wnMEDSo2YI6j6SN/38nXjt27MDGateU9Z2kGh3QGciOZrvpkRIMrePCO/Xx1S4Bjd0
         Bjew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778722; x=1742383522;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/EF0zDFUflzONesty7VuCi7dpM8v0C1RgMUVQ/Huc38=;
        b=QDtz0AoAw8nDrt0HDRwmm4y+Hsv8o38Rld1gACO4RTyOK/k3dZzPWtLLEVQMect0IM
         WbC1EXBzDFPdk6Zp1nFJXXjdvtWJDyuy5f7WlfMTDnjYfxKzGoQwVstbWUh+BjEeV94f
         lmJCU5AC3yGJpNii2LQ7fYh56oi2DKbhRmYZc4NeNtMHoveRzA5RlkZV0ZQp1NiXHAq3
         WU4kMK0pb1MLwJKuj7F0eGE9DjhZqAAITqpyAAhMHTZd55Sq2yohRNnO2lWJRCmL2dYr
         WUz4DkEnhBUawUgayb1xVBUNG2HO/Zlc5BehZsEj49Ut8gmqhuvH1OL6tgbc480zxn13
         C+fw==
X-Forwarded-Encrypted: i=1; AJvYcCX++8sL3M2AYI5inWV1o/eK5DlTOFwg1Yqz88iCopwM7O0MGnB0GR+fb8RG79wFwN7tEjDP7dFbGCTE@vger.kernel.org
X-Gm-Message-State: AOJu0YzXzjCR2tvanlB7xzeO4qZDbGKu0Ae6B76nDiHdgzEi3+MJVvnv
	GVhhrrR4gVmIRMeBrxO+lDzl0f2egl7nf0mzCNfxnaDNJakCbtLJ4gfefBnIQv3LgSLCEIVOgBf
	jjDdsfpfT92NyBV6ti02QMPZ6tJpxIQVu2cGUzA==
X-Gm-Gg: ASbGncsDFx/nce54/yzS40BeL7H2FXpXvliVSnbgEBYYTDKQCZwk+pDUTSrrojuFr3p
	azfKL6kAliHXZgh+RZbQc2Sfq1nOc9/sNbDnrisT1uraENVdWecjDI/mgfpFHFkg4RjK+g2Rnye
	ZLhghchMLud0yQbipuRbOZuMhqaFM=
X-Google-Smtp-Source: AGHT+IFqygKUb22qwAr7SdPFa0reMvPuoDMxSiqht7LJBAA6dNVB//vX5+hUcQlzt9SsFOYTACa28ZoSjTZLQK0COho=
X-Received: by 2002:a05:690c:7441:b0:6fd:385d:5f10 with SMTP id
 00721157ae682-6febf3b354bmr296734367b3.35.1741778722003; Wed, 12 Mar 2025
 04:25:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227111913.2344207-1-kever.yang@rock-chips.com> <20250227111913.2344207-4-kever.yang@rock-chips.com>
In-Reply-To: <20250227111913.2344207-4-kever.yang@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:45 +0100
X-Gm-Features: AQ5f1Jo1-FHRoh7DeYJjPWlq5FRe7dVaoDojoDTMYnsv82KnWlepC9mm2gadUoA
Message-ID: <CAPDyKFqZeup0hKqeHFV6qOMpFYZLQOdj3xT_6PdSNWJiW48fsw@mail.gmail.com>
Subject: Re: [PATCH v3 03/15] dt-bindings: mmc: rockchip-dw-mshc: Add support
 for rk3562
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Feb 2025 at 12:19, Kever Yang <kever.yang@rock-chips.com> wrote:
>
> The dw-mshc core on Rockchip's RK3562 is the same as the one already
> included in RK3288. Extend the binding accordingly to allow
>
>         compatible = "rockchip,rk3562-dw-mshc", "rockchip,rk3288-dw-mshc";
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3:
> - update commit msg
>
> Changes in v2: None
>
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 06df1269f247..772f592291bf 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -38,6 +38,7 @@ properties:
>                - rockchip,rk3328-dw-mshc
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
> +              - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
> --
> 2.25.1
>

