Return-Path: <devicetree+bounces-50845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7CA87D5D5
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 21:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAD881F2695F
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 20:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60EEC56B8C;
	Fri, 15 Mar 2024 20:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d92Ucujo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0259D57333
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 20:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710535784; cv=none; b=UH+QfN7nYWMITv5TTv78aS2OU3+PrBIfZul7Ee5nuSvk8oxpYh3z/ASz1+D0SPJf9LM5U0ersWQldck9E2YA3QSvK75UBwTtSRBmBfhpC5wePHJvulCWDzqIm0bIKP0bpVwut3Zaw3McAwSDjIDM3ijBzTlESL2ZOZhaum5sZEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710535784; c=relaxed/simple;
	bh=Rut/BAraKFn7EzjJl52R4XRiSgrwnmytZ5kfoG42EdU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AZKz7u0SGpc4RR/O7UbYbP6Xd7NIqjBE8L7A5KFScVjFeJ6MJbdO56d1bCn+nVmUr/Lq/0o6e1UC/h0pNNOCTZOybcjzY3vEC20VLSIRTmVxSpbycrHLlvJ/a5AoJrhwHuMuu/gbrTD6874w0+muJepEH4w4TCmlZiSMciJm3aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d92Ucujo; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-414006a0115so10696595e9.3
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 13:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710535779; x=1711140579; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=evdMd0PT9+KX7ncy1Up7YwjVyPPKavdHQwvEaxViPvA=;
        b=d92UcujouT9aKhjIh8Btc0is+RJ7B7yw6UYgnjTGyV+aJOdqmihq5rJwEVCmZkzPdF
         meWzvh4vyCD7UeaM+GNLk1hzqa+36gyu6Whk+10l3RD6th8/7yFC9AghVaGwdFH/Mx9b
         +xlAhoZLNS4WxdVOs0wF767t9owuXTxJHZWWuTcdeQAYmIIglnhN1Jcov5Efd3KoT7M3
         TPjWN+FfRcN5/WCEV1340yBHNBrE2WHYomOSL1klPs6EGRsd4rjMD2zPiaoP6G80fwSO
         s3V4Kj8AcrwPu560oGAckfsp+nEJtBzbqKPdsaSSaai9w6R1FzuMdyBJznl2BN8Fgd1J
         F8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710535779; x=1711140579;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=evdMd0PT9+KX7ncy1Up7YwjVyPPKavdHQwvEaxViPvA=;
        b=bCq22nakdMQAnpPfRuNvcEuBO9eNhCWfVuTeePC6t+TZ6Ay6Bat5BoZyjo7D7i1UNg
         QHkA9q+K3fbpzrhGtpyp7r/GV4E6y1uNaMqH2R4j1zfLAY53tN6BszxXKDXFUE1YL3OA
         nl2FBXt8w7tLtFkGf3N4COXyWO4qEJbpi/z/mHKKaMpS98nrqlCC5rnKknlmloZ+oE+l
         v/M5IfyPr98XFUztnAmHQcIbEx3tpmYRtClchZBdQQRIyd2SpEtujT/9SqM9xiAJMpRe
         3P56A8aVSfy+0V2joJI0oaD3Zr+f8nutACEWvQXKHld6JXhYQNc1/kv8Lyu1IZ3ZIrJD
         jWUw==
X-Forwarded-Encrypted: i=1; AJvYcCXV2jiFOn91FtY/xTvZ1lXVNEBw3ihnjJ5nCRrvKa5LXZYhSEL49GcPeqpdUQUAk9/ej4rbLFAR6v1L0hFOQZfdifVUB4aQnrxIcA==
X-Gm-Message-State: AOJu0YwiBgLFVWkj8verDNdZzsjvegDjI4cqrrVXuebmO9Pz4j1A0jmK
	7BZccAaH1uAqecJgT7lB+rkfzjzxKSyTZAx1drJ7MhFjYj8XvAzlU6lxObsbyx4=
X-Google-Smtp-Source: AGHT+IHW/ZhLoW9dVsP03e/cfzAFm2l0UodLy8/jk0GAphAW9PjOYbi/mCIN40Y0gjbTVAhL7S0e+g==
X-Received: by 2002:a05:600c:b59:b0:413:f1a4:d412 with SMTP id k25-20020a05600c0b5900b00413f1a4d412mr194865wmr.14.1710535779319;
        Fri, 15 Mar 2024 13:49:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id h10-20020a05600c350a00b00412ee8e2f2asm10091282wmq.9.2024.03.15.13.49.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 13:49:38 -0700 (PDT)
Message-ID: <b4fe2ffa-bd36-404a-9441-8781f0a81d26@linaro.org>
Date: Fri, 15 Mar 2024 21:49:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] dt-bindindgs: clock: nxp: support i.MX95 Display
 CSR module
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Abel Vesa <abelvesa@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20240314-imx95-blk-ctl-v4-0-d23de23b6ff2@nxp.com>
 <20240314-imx95-blk-ctl-v4-5-d23de23b6ff2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240314-imx95-blk-ctl-v4-5-d23de23b6ff2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/03/2024 14:25, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The DISPLAY_CSR provides control and status of the following:
>  Clock selection for the Display Engines
>  Pixel Interleaver mode selection
>  Pixel Link enables
>  QoS settings for the display controller
>  ArCache and AwCache signals
>  Display Engine plane association
> 
> This patch is to add the clock features for this module
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../bindings/clock/nxp,imx95-display-csr.yaml      | 50 ++++++++++++++++++++++
>  include/dt-bindings/clock/nxp,imx95-clock.h        |  4 ++
>  2 files changed, 54 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/nxp,imx95-display-csr.yaml b/Documentation/devicetree/bindings/clock/nxp,imx95-display-csr.yaml
> new file mode 100644
> index 000000000000..9a5e21346b0d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/nxp,imx95-display-csr.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/nxp,imx95-display-csr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX95 Display Block Control
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: nxp,imx95-display-csr
> +      - const: syscon

Why do you create five different bindings with almost the same contents?
Do you plan to grow on them, like add more compatibles here? Otherwise
all this could be in one binding.

Best regards,
Krzysztof


