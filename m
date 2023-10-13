Return-Path: <devicetree+bounces-8554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E977C8AF8
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:27:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42280B20AEB
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128D521374;
	Fri, 13 Oct 2023 16:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fooishbar-org.20230601.gappssmtp.com header.i=@fooishbar-org.20230601.gappssmtp.com header.b="s3cNDlsl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672661B285
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:27:10 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 421F5210B
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 09:27:03 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c3c8adb27so363928466b.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 09:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1697214421; x=1697819221; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dDChyjARcHDkjDQPX6XB8cVwDI75Vj0OVvNyqfGNTb8=;
        b=s3cNDlsldiqyjzOLg547DBYOsLYWWbgb6vsLhuV0Y8zYJFWObDbWfQayX07PPazwy3
         kj4r4qXeU8T8YUbExJ+PwPRssFn5eIsLRE2yzpK32dBYrWEBECdplmy1+tA0wlSCsQRz
         stE9FPJqLNUju96XVYsoe7bD8iAE87W7WgUASDq7P4qegELjSRlxJXadZ7eq0Vyro9Ri
         hiV79oeRFHXlAwlE86Whb2IKKAtxqaf3hEOITkM4Ok5AnhKZ759/SMyS2SeMWB5mFy6b
         5O/541Ubm1QvqN7VcqHH6BzDk0s8zTOU+x6Fmf3hVHF9BqbBFyHrjCmmK/K5gmgu+BM5
         awsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697214421; x=1697819221;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dDChyjARcHDkjDQPX6XB8cVwDI75Vj0OVvNyqfGNTb8=;
        b=VIudAuojj/vGdHR6JISWB+NHXOWYP/lOXMNgErH+ARp86Sa9yHHbNvlNXZ+86OtWc6
         n3zgtHvGIv4gUoPHQWJVhsLEP1OYrAKzoCsl0wKohDMXHitmqJxIALTfFx8Q2MOVVTLV
         fITPNmt0QvNvsC7r34oEUADziMY7BSRH+VrQagAgHoXo4sR2G/8bEIr6vpjfybDv/+Ay
         jSXhfAbbrXSECObpIiz27TuT+BJ1vb420ZvBLtIGwiCJWPkdT9fkkMIe22FrLdU4Q3g9
         ozQu2/VzaNZodQw4KNnf1CtqbO6nvFyR6OOkcSVGbZnKGC9l6AZ6xHZmufbvpo6oqdzu
         LHOA==
X-Gm-Message-State: AOJu0YyTXb3Mn6eEOgWKKq86CbqUrHvim7l1U82SXx/fXq2iylnbtZ33
	lZ5lGLy7hIfvkuDDZXQyei1ZmTGCyKSuJK1qgeis3Q==
X-Google-Smtp-Source: AGHT+IH4mCWm8Z2elsfB5wPDuFnQnwc2DSuvszMcvKnLJwB6uCPWL0qpI196Srkb4PahcQqJyczrTAjD9wvlQcukgRA=
X-Received: by 2002:a17:907:74b:b0:9bd:bbc1:1c5f with SMTP id
 xc11-20020a170907074b00b009bdbbc11c5fmr1802252ejb.35.1697214421164; Fri, 13
 Oct 2023 09:27:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231006073831.10402-1-shawn.sung@mediatek.com> <20231006073831.10402-5-shawn.sung@mediatek.com>
In-Reply-To: <20231006073831.10402-5-shawn.sung@mediatek.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 13 Oct 2023 17:26:47 +0100
Message-ID: <CAPj87rMUbP12uwzyhV=94wR7LkQK4JfTB4kEMGADq2YJOk8Vrw@mail.gmail.com>
Subject: Re: [PATCH v7 04/23] dt-bindings: display: mediatek: padding: Add MT8188
To: Hsiao Chien Sung <shawn.sung@mediatek.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, CK Hu <ck.hu@mediatek.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, 
	Singo Chang <singo.chang@mediatek.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, "Nancy . Lin" <nancy.lin@mediatek.com>, 
	linux-mediatek@lists.infradead.org, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Shawn,

On Fri, 6 Oct 2023 at 08:38, Hsiao Chien Sung <shawn.sung@mediatek.com> wrote:
> +  Padding provides ability to add pixels to width and height of a layer with
> +  specified colors. Due to hardware design, Mixer in VDOSYS1 requires
> +  width of a layer to be 2-pixel-align, or 4-pixel-align when ETHDR is enabled,
> +  we need Padding to deal with odd width.
> +  Please notice that even if the Padding is in bypass mode, settings in
> +  register must be cleared to 0, or undefined behaviors could happen.

If I understand the driver correctly, padding is automatically applied
to compensate for unaligned dimensions. The first/last rows/columns of
the overlay area will be filled with a specified colour (black?) to
preserve the area. This is unfortunately not OK to do transparently.
Userspace must be aware of this policy decision and specifically
request it. If not, the atomic request check should fail and tell
userspace that the requested configuration is not possible to achieve.

Cheers,
Daniel

