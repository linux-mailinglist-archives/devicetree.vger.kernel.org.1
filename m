Return-Path: <devicetree+bounces-80165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0126E917F14
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:02:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7FE21F21360
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 995E817C7B5;
	Wed, 26 Jun 2024 11:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="DJkv4B8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C637A74BF2
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719399748; cv=none; b=mVszrGMNpg9ylVQTPxim0fh2RaSwQ8FqQseDXU7CKU4f+cEGt1a/FZ+YpoHAokv6QlNNdcHm34IZaqI7t4v4eJLeOSYZwz0HcUGohyTJEywbo3cjmaA4b8Furk9P0/k3JaOSqe0PXhtI5JJNuCvrYXT0LZ13gFivOuuCul6SN20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719399748; c=relaxed/simple;
	bh=iHKo5jSf/IdRTguJc6dSMvj0EoFBMTutpyv41hTOCGs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i9s0YUH7S9M3J9qXctJWeXg6kU1Af+sJlboLobXT2XyrtDR1gyvPj73VGzvzqIGr+s/8Vqm+XZW2YmBOYAkpObTmZxRaW8yFo4G0L4XzReDEu+mT49KZjY69l5W37Wm56IkWT7qGXXOzZv4JLbpRk/hwovGscf5mQcuWhqeOU0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=DJkv4B8W; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so86747181fa.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719399745; x=1720004545; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VDswRBBP2Qt3ekSLsvBri2VGbmBXgiH4bSSikEURQGY=;
        b=DJkv4B8WUXXrUF4H/7lGJ7vjZ5dUtnQxDPWzL1BunBARWdnw0PHNMyRIvrRhQeJBZc
         aZyoN8AusIj5ad67RN8kfG2yoASZaTEh2Dt+vpZFI1KPodR1RBiq2sDU1W3Fei6YJHpX
         SDPENyRLpsYH/LCFoaFuOPauO0g8ApJ1SUfBTbfDl7zZ7esNKvR6LBTLMrWBGWKWgyal
         55EZ2qCpdwbenMRWOPKlQhM0IjuXiVSGClcL5ay0O/43GH0BO3txKgvO6Zdl3Vn8mkJh
         BBOtJ3hmeoXU2W9XMteA23v952u9Pba03qqCo8UyYzXQXIX8LHYLO53BXCW4VxnR+VWF
         ifWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719399745; x=1720004545;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VDswRBBP2Qt3ekSLsvBri2VGbmBXgiH4bSSikEURQGY=;
        b=u/ckVnnLyTAIu+sH3r9XI0ziBy91mt+wp83Q+53VEY4glP2FQOe8BxeOiyRfr04De3
         Edqzr3vJapwTFRepheY9yZLsYv6lT3nWZhvIwKxBPYQMrQ2o8YJZcxM5jz2aHb7hqvNO
         JU1fbj8GFPbTKRr/Wt7taKsVLee2A2oERPec9qE8sSsmV/BLyiWlqjsTvfDBa5PIEowR
         /IrtkEcw/8dYruvlApNPGI/RYoKp0O+A91cUHwf9nNAXdJRwFXKioHEYrNnIQvMc0Xtw
         UvC14kOH7Mj1lGisun0gygPxT6p+bR19WSMr1ZYc6TSy2wuKxgFNHdK7nBn64ppfep+A
         UWMA==
X-Forwarded-Encrypted: i=1; AJvYcCVRX89B+V8oTi34h/NwDkgp7VfHmybfGFdQZ2rHzd6f2lqQOGEWF6vquk8dc9gwaMmOHdu24eO0+HjrluFu7u0cU+Cm5yTiU0mhcw==
X-Gm-Message-State: AOJu0Yxwu9byXpEq/9PpzcxsFdiYZv2+LorE3RgWx+mNe3LvuR7GjM0z
	hGK9iLiqG6ZM4bhbBvgDg5k1x7QBtGGja4KBLJF9Jb5EdzcE8yhdz3gNHq+JwdW0IbWMYBXojtQ
	uK4gyYKzAlto3XDLwQnrVwwj9/EohJ8nNN5KYcw==
X-Google-Smtp-Source: AGHT+IHOZFXD0xS4qZO808BfSHcTBiGzJgw7SoL1DC7zM8qFILuyWWKJM3LJtdXgtfsaOsNad2MuzEsyatICH5an/Aw=
X-Received: by 2002:a2e:854f:0:b0:2ec:49b5:50d5 with SMTP id
 38308e7fff4ca-2ec5b357a00mr72949841fa.41.1719399744869; Wed, 26 Jun 2024
 04:02:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240625151430.34024-1-brgl@bgdev.pl> <20240625151430.34024-2-brgl@bgdev.pl>
 <f4e055e6-8903-4bd0-96da-b5247678ad84@kernel.org>
In-Reply-To: <f4e055e6-8903-4bd0-96da-b5247678ad84@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 26 Jun 2024 13:02:13 +0200
Message-ID: <CAMRc=Mc5TX=bRpSDpAaMdcbR8rXgFi+aoWCWSn-co3tHeVb3rg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: qcom: add sa8775p-ride Rev 3
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 11:00=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 25/06/2024 17:14, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Document the compatible for revision 3 of the sa8775p-ride board.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Document=
ation/devicetree/bindings/arm/qcom.yaml
> > index ec1c10a12470..000037f4a712 100644
> > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > @@ -895,6 +895,7 @@ properties:
> >        - items:
> >            - enum:
> >                - qcom,sa8775p-ride
> > +              - qcom,sa8775p-ride-r3
>
> The board is not compatible with earlier revision?
>

In what way? Can you run the same DTB on both? Sure. Will ethernet
work in both cases? No.

Bart

