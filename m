Return-Path: <devicetree+bounces-11314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7975C7D51C6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25834281253
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773B02943B;
	Tue, 24 Oct 2023 13:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="anIJnEFU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3DA125DE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:28:23 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40E1C6E88
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:28:22 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4083f61322fso35405555e9.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698154100; x=1698758900; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DR6/xY9Jbak7of40B8dKrAXIlRqy2AVWzNDpU2vwx1E=;
        b=anIJnEFUUMbODTt6R1E+pEmAjyS2kLgHr5xjFBbGaBE60gqs8Cgm39Lu/FsSb3egwa
         P5nAdlen+eGsDxttv3gKWemy6zj5lKXn4O+vBMqmbEPtcKQeC7pN+JlV9F6z51j2kkxJ
         9VwQ0POHL3y2HKb0/J+/GFJZH4rqpkfYXl8pYLyqSb8AOY7hDkOBuRBKFOOMM/LtKC1p
         BS78J4/doH7BrYSPKH7+xWimnaKK2IYrDwwkgAKlmkFD/U+Ytw54fLg6hzFVjkV0qsFM
         /YwHPslT8Uz2guJkD11k8A5/097n94ViOSCW4vNrp8C4CB3J9H5RLM63AUHzvgYFjGEl
         Mqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698154100; x=1698758900;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DR6/xY9Jbak7of40B8dKrAXIlRqy2AVWzNDpU2vwx1E=;
        b=g3calJdaqOybpM6yccmXAhxuj4JXCYSAzRUk7kivBN7+0rUuqFK/IVCmSMBTwE7qtf
         cYqyIUYjB4hAgS0gpSBAca6o/upu6Doa98MZlYuA9987GIB6sgP3eBuaX37sGGC+SZkw
         StrEoG6K4Rmwzc0g4GQ9xnBqHQC9hMxW7Fhg8DPLz5TRX888pyigg7UzCOgF99DkKkw2
         il05WisZ6zYfuwmGyYlk/m77+qRRt3IaJ8USsgn7TlDJuZy5A0ErDDsf+mZzcj1Gw0d8
         sKjAxbkfOkg6r64zXJ58RCYrSP9yitkwHrt6ZqiajJeXHzM1Ya2Y2fUe4UO3cwGn0kQ2
         L0QQ==
X-Gm-Message-State: AOJu0Yy57EGY5stXg4aQPi3WwOWShMTWgKR5Y1ar95phGKQSrVCJ53fQ
	vo69jEM15f4QZIOgmChJhqJOGA==
X-Google-Smtp-Source: AGHT+IH0J8ruG5BqMAdSO0Rr9j7+eEnJr3xeOgkHD2FSD5PDkQ0fxnDH20ZHA1obZti9LULTeVUCaQ==
X-Received: by 2002:a05:600c:4e87:b0:409:78e:1c3d with SMTP id f7-20020a05600c4e8700b00409078e1c3dmr3353581wmq.41.1698154100541;
        Tue, 24 Oct 2023 06:28:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id t22-20020a05600c41d600b004083996dad8sm16570440wmh.18.2023.10.24.06.28.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 06:28:19 -0700 (PDT)
Message-ID: <7ee1314f-1cf3-4e18-91ef-e8aa617f775b@linaro.org>
Date: Tue, 24 Oct 2023 15:28:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: cn913x: add device trees for COM Express
 boards
Content-Language: en-US
To: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andrew@lunn.ch,
 gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
 pali@kernel.org, mrkiko.rs@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231024131935.2567969-1-enachman@marvell.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231024131935.2567969-1-enachman@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/10/2023 15:19, Elad Nachman wrote:
> Add support for CN9130 and CN9131 COM Express Type 7 CPU module boards
> by Marvell.
> These boards differ from the existing CN913x DB boards by the type
> of ethernet connection (RGMII), the type of voltage regulators
> (not i2c expander based) and the USB phy (not UTMI based).
> CN9131 COM Express board is basically CN9130 COM Express board
> with an additional CP115 I/O co-processor, which in this case
> provides an additional USB host controller on the board.
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  arch/arm64/boot/dts/marvell/Makefile          |   2 +
>  .../boot/dts/marvell/cn9130-db-comexpress.dts | 100 ++++++++++++++++
>  .../boot/dts/marvell/cn9131-db-comexpress.dts | 112 ++++++++++++++++++
>  3 files changed, 214 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dts
> 
> diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
> index 79ac09b58a89..7708658d6ceb 100644
> --- a/arch/arm64/boot/dts/marvell/Makefile
> +++ b/arch/arm64/boot/dts/marvell/Makefile
> @@ -26,4 +26,6 @@ dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db-B.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-A.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-B.dtb
> +dtb-$(CONFIG_ARCH_MVEBU) += cn9130-db-comexpress.dtb
> +dtb-$(CONFIG_ARCH_MVEBU) += cn9131-db-comexpress.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += ac5-98dx35xx-rd.dtb
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dts b/arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dts
> new file mode 100644
> index 000000000000..ed33076a34f5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dts
> @@ -0,0 +1,100 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Marvell International Ltd.
> + *
> + * Device tree for the CN9130-DB Com Express board.
> + */
> +
> +#include "cn9130-db.dtsi"
> +
> +/ {
> +	model = "Marvell Armada CN9130-DB COM EXPRESS type 7 board";

You need compatible property for each board (plus document it in some of
the bindings).

Best regards,
Krzysztof


