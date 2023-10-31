Return-Path: <devicetree+bounces-13111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCAA7DC949
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E4B5B20C9B
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D0D13AE2;
	Tue, 31 Oct 2023 09:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TW56cz8G"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9144713AD6
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:19:51 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36BCEB3
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:19:50 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507a98517f3so7574960e87.0
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698743988; x=1699348788; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXhk8j7RgMYbDOudOHh/s7hOM+xUoPUnDadljYQRfhA=;
        b=TW56cz8GzAsWEJbTq25R1HfIkf0e/tIPCQLISTne8cbIm/82DlexIrMv0lfQ5nzNJX
         a6DeeFAb/tmhcHmQLUwhxZtQVKq9gula3IbGjPVq9y/B81+WUh1WbFXJ+oMyLLkZ7a3T
         TVErSHkZEwuF7NY9td7DBWrv4Zbk0j0MM2KWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698743988; x=1699348788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXhk8j7RgMYbDOudOHh/s7hOM+xUoPUnDadljYQRfhA=;
        b=b+z54iY91sQv/sDEYzxVDrfmbBpq/LkZirq4uKjKSdvf/e79DMC78BvRvm4gXT+YF/
         sHMdDk3CWc8mi4b3hOpKEi7sZ7eEKhOMKz2SCw2cbK3mwpGBiwjT8/LJpYc3NpIewOmn
         NO5Vy3TbMlBQZmCHBpwtKxPCB9OXffii++R33i2tm/iffuisnta09G/+XLJCzbHBeUNi
         weShKXoWJ327ZrTWO04fdj6aR88972z/d7YNSjTLpXlauLg0Ctg6Nk9Wy81z30R8agPC
         QzDGuJm29+JNW6WusPpyrTCFJAbb4Z9T25KWV9yE83h293pGW5sOfIKiOIj3kszrQhrb
         GzEA==
X-Gm-Message-State: AOJu0Yylo9jgwfftf5XZHWnzNHPidHRyLKpC5bXMjuPHvaHu7sTa6v/K
	GDP4lUduACfBg8Cpr8V8dla9CGg1Sm8yiS/XXd1bvg==
X-Google-Smtp-Source: AGHT+IFn5yWC2uhLfXCKgv1dEdMIAEZF0taqktQ/pQKq4j66LgSHNMQAoiTD3AocqF86NDROFv5aLWYwvNc/v9aYlPM=
X-Received: by 2002:ac2:498e:0:b0:507:b935:9f60 with SMTP id
 f14-20020ac2498e000000b00507b9359f60mr9079538lfl.57.1698743988383; Tue, 31
 Oct 2023 02:19:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 31 Oct 2023 17:19:37 +0800
Message-ID: <CAGXv+5FWPZYjsXse58k5HyMijkrKBDYw0k4wpdfGv99ur8=5yg@mail.gmail.com>
Subject: Re: [PATCH 0/2] MT8195 Cherry: Assign MFG vregs for power saving
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: matthias.bgg@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 30, 2023 at 9:25=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> This series assigns the right regulators to MFG0 and MFG1, respectively
> VGPU (GPU Core) and VSRAM_OTHERS (GPU SRAM), and removes the property
> regulator-always-on from both.
>
> This allows to save power both during runtime suspend and during system
> sleep; specifically because:
>  1. The GPU SRAM regulator is switched off during runtime suspend
>  2. The GPU Core regulator is switched off during system sleep
>
> Of course, in order for those power saving actions to actually take
> place, it is required to also have the code in [1].
> Anyway, even without series [1], this will not introduce any unstability
> as the Vgpu regulator will simply not ever get turned off.
>
> [1]: https://lore.kernel.org/r/20231030132257.85379-1-angelogioacchino.de=
lregno@collabora.com
>
> AngeloGioacchino Del Regno (2):
>   arm64: dts: mediatek: mt8195-cherry: Add MFG0 domain supply
>   arm64: dts: mediatek: mt8195-cherry: Assign sram supply to MFG1 pd

Tested-by: Chen-Yu Tsai <wenst@chromium.org>

on Tomato without the power saving patches. Regulators are correctly
requested and I can see the SRAM regulator get turned on and off with
GPU usage.

