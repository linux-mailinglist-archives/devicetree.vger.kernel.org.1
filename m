Return-Path: <devicetree+bounces-17270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D497F1DE2
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E16F91C20B8F
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 20:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39240358A5;
	Mon, 20 Nov 2023 20:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="RgP6LbXN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21730C7;
	Mon, 20 Nov 2023 12:16:02 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2c88750e7d1so10141321fa.3;
        Mon, 20 Nov 2023 12:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1700511360; x=1701116160; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UN/JaGs58VC/59LNr+VTcKEJIUnlEUBkYK0zXNn4XiM=;
        b=RgP6LbXNj8T/rWOEBj+R++Mu7IMJuqWdFn6TUIlD6NNy3Kks8f2op+6RUbhjlIasDz
         Itt33d2X0W/SO8vvbx7Jh39rK0Mv85+gvMWw/k8hqNER3biUd8zkM3XnbM7sodxGZS27
         I60kvj+d/iARZWLGQx1T6KsJnwBm7PVSXXdJFeSETX6NvUfygsX1AYU+ORb6wZ6mSsoB
         GtS0Lgdsa7PnzHcAAHZXT/K4EX8EF6699iCQvKFWYpZXer1gTeVPNpi84VRK1m+YY+8Q
         FxZcrq2fuRFuHNf1GUX4HQgnB7661+Rfgb0J+qyuftVLzqEbKt6aLazdOcxIe+lEMCQM
         Qi4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700511360; x=1701116160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UN/JaGs58VC/59LNr+VTcKEJIUnlEUBkYK0zXNn4XiM=;
        b=W/S+c20oGZXInKuQZfjBzr7fHBXcuKRvftCmkZRtxVo/ZTrKVjsiIPoBmXp42W5qx8
         oPEE7BGzbKAGOJnYkn+GSzRb7IyJEGXHCscCjpa/L2aV1lh5eFOGzT1rR8lbUEvHUV86
         IQAZm9+1Mt2y66m/q7bLEGGxMkuWwIhL659sV1xBQIc8K3sSATIGHmc6GYYEvZCKgqXO
         ihqLmZkljz8tVHYO3/gMj0NMCruMSaEnNJ5MDwmQV9GuBlRDsZB5RIdC3mduvp4/LuGT
         7Phhe31SdKvyGYW0uiGBJgb405QOUPwc09FvB1eZ8uQfcd8Ra3ZtGpsvNB5pSLan+A5e
         Z3Ag==
X-Gm-Message-State: AOJu0Ywh+LKRwUpT3HtgMCk+7IW4hXKxsDovGWIvhLX8KegALgxhHsKt
	egBWjwLEGeK6lYGtnmwOKrG5RCXgTT+j/MgFHGg=
X-Google-Smtp-Source: AGHT+IEl/IXOE7od2X9WWhu+ZG0SDFd09Zq8exF4njB3w++Fo4CbFsOu9XbAGRiMyS6YdIDcYfwLVlLccZYXYBThqaE=
X-Received: by 2002:a2e:a30c:0:b0:2c5:ab3b:d676 with SMTP id
 l12-20020a2ea30c000000b002c5ab3bd676mr6035262lje.9.1700511359989; Mon, 20 Nov
 2023 12:15:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
 <20231114-topic-amlogic-upstream-isp-pmdomain-v1-2-f01e6fca67a0@linaro.org>
In-Reply-To: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-2-f01e6fca67a0@linaro.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 Nov 2023 21:15:49 +0100
Message-ID: <CAFBinCDe3yoEBd6SzozNZtC=zGaUHt4VeO_uhV1s5XBaWp0w1Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] pmdomain: amlogic: meson-ee-pwrc: add support for
 G12A ISP power domain
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Daniel Scally <dan.scally@ideasonboard.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Neil,

On Tue, Nov 14, 2023 at 11:19=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
[...]
> +static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_isp[] =3D {
> +       { G12A_HHI_ISP_MEM_PD_REG0, GENMASK(31, 0) },
> +       { G12A_HHI_ISP_MEM_PD_REG0, GENMASK(31, 0) },
I expected this second line to use G12A_HHI_ISP_MEM_PD_REG1 (note the
number at the end: 0 vs 1)
Is this correct?


Best regards,
Martin

