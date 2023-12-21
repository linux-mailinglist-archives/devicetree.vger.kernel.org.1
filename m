Return-Path: <devicetree+bounces-27550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AD081AB93
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 01:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF40B1F238FE
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BA339E;
	Thu, 21 Dec 2023 00:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TemH2zDY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73183395
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 00:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a2698eae0a9so23822566b.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 16:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703117811; x=1703722611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nx51Lf1EjqWvC8rwAJ0h4wGEFzTa9kT6CKikSA5ehKQ=;
        b=TemH2zDYRqL8UTxxr3Oxjvl2eDhWY5TxOVKdDbtNxnf33EsA+GSjbyVqy4vrtC9qhS
         Ck9ohip55sAlJM9mOU2xGiA1LgX1N0qGm0okMw97eeP0hTjkbXazAI08cmmcU/U8000Y
         vNivxHOqXhxwMj7y7tmr1ilidaiOwl4AF7mB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703117811; x=1703722611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nx51Lf1EjqWvC8rwAJ0h4wGEFzTa9kT6CKikSA5ehKQ=;
        b=Q3ShifzSOnYmRAvx2UxyXN4yCc9uYpLrM2ElTTcBbFnyUGZ9ViZmq1Jm744IrSMZ98
         +8mIb0cQPTH34lEjajGY7Ga6DRpmOGxsVV712iMFAwFDddjxOYxkLnl0vwBCB+UquUDh
         IPtlzSPZkvJdtTOSWXJ72UxlrjCR6YGUxJPIB8t12uHnuya/pZiQbpE9FJmUogWK7hON
         xE6seVVMCeKE2iNEhySiZ5Bb2z477kTp0x3bj1S7agzj/xlwr9HigyAibYxac8h9sev3
         z57Qhko7Y/30x6cpbxCVNeN91R7OF7tGtxrMsPMH0sLGY+KN4pX0jFKv8DxOon5e2zQ4
         kFZg==
X-Gm-Message-State: AOJu0Yz91Zw22tXM/GghmV5wFwOd8wrb3XlPuSZi0XzWcupEo8KTrO3l
	EWcNl+iZWl2NOoxSKdLs4bu9QCfBb3zDHFr5ybS9ay+P
X-Google-Smtp-Source: AGHT+IGeVkwq7UPX1V3AZMdLuiG7lobNaOiKGRGp3NPvwl3lwbakHLUCtQLtHlO2BxDuzU8lir13wA==
X-Received: by 2002:a17:906:74c5:b0:a26:99a5:91a6 with SMTP id z5-20020a17090674c500b00a2699a591a6mr824154ejl.134.1703117811548;
        Wed, 20 Dec 2023 16:16:51 -0800 (PST)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com. [209.85.208.51])
        by smtp.gmail.com with ESMTPSA id f23-20020a17090624d700b00a2371908713sm341877ejb.181.2023.12.20.16.16.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Dec 2023 16:16:51 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-54744e66d27so4824a12.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 16:16:51 -0800 (PST)
X-Received: by 2002:a50:d69c:0:b0:553:d734:3f5a with SMTP id
 r28-20020a50d69c000000b00553d7343f5amr2325edi.4.1703117439793; Wed, 20 Dec
 2023 16:10:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org> <20231220165423.v2.13.I2ee94aede9e25932f656c2bdb832be3199fa1291@changeid>
In-Reply-To: <20231220165423.v2.13.I2ee94aede9e25932f656c2bdb832be3199fa1291@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 20 Dec 2023 16:10:27 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vv450bQ+GrUh9Gr1nRcg5K0t-J_eoPpxJ=GmqOQavGYw@mail.gmail.com>
Message-ID: <CAD=FV=Vv450bQ+GrUh9Gr1nRcg5K0t-J_eoPpxJ=GmqOQavGYw@mail.gmail.com>
Subject: Re: [PATCH v2 13/22] arm64: dts: qcom: sc7180: Enable cros-ec-spi as
 wake source
To: Mark Hasemeyer <markhas@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Raul Rangel <rrangel@chromium.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 20, 2023 at 3:55=E2=80=AFPM Mark Hasemeyer <markhas@chromium.or=
g> wrote:
>
> The cros_ec driver currently assumes that cros-ec-spi compatible device
> nodes are a wakeup-source even though the wakeup-source property is not
> defined.
>
> Add the wakeup-source property to all cros-ec-spi compatible device
> nodes to match expected behavior.
>
> Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
> ---
>
> Changes in v2:
> -Split by arch/soc
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 1 +
>  1 file changed, 1 insertion(+)

It's hard to get context with just the dts patches, but digging up the
cover letter and other patches from lore I see you point at
`Documentation/devicetree/bindings/power/wakeup-source.txt` which says
that devices that can wakeup should have this property. ...and our EC
can wake us up, so this looks right from that point of view.

Also the yaml file for cros-ec says it's fine to have this property. I
think it was used when things were connected via i2c since the i2c
subsystem needed it. ...so from a bindings perspective it also seems
fine to me.

...and looking at the code in Linux, I guess things work today because
cros_ec_spi_probe() unconditionally calls device_init_wakeup(). ...but
even with the code today I believe it should be fine to add this
property.

So with all that, this patch looks fine to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

