Return-Path: <devicetree+bounces-23715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C2680C235
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:42:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EF7A1F21005
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 07:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5896F208D3;
	Mon, 11 Dec 2023 07:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P7hsf3AN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66EA1F3
	for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 23:42:16 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ca00dffc23so50889641fa.2
        for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 23:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702280534; x=1702885334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uUHFpmWZqhcKOg/uv3kTOlXRnNTjkbhRIshNDjAuCao=;
        b=P7hsf3ANiat7QC1Yn+CnDjPKpqBBS16NhRNyMgxxZo4KQk+rgb1E3ujgfn2vtkBIpR
         oSqLcBqcNSfYRiTSOinqy6d6Eaaytwoq/lm7Pwae1nb8/GHCyhshI+eseUFxVVUhfk53
         XA4QvSZNEGlO+ctNm/hBS0CXyRhdsW3F/770qegKX+4PYcDY+m0+qEpXY7ej1qTiNzcM
         xdtvYEKz0tivK6tgHRXtK1/gDwQXJuDrcGXKBAM+L8rKfS+gLxhgiaJIZR7x7VQYNVFn
         yZLjjHNwxzo7HFfmM8GotkG5k8YjHl4hATBAQd7QiMkcgf7ckbiPqRvZJXsRnj1Vfb9/
         N/Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702280534; x=1702885334;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uUHFpmWZqhcKOg/uv3kTOlXRnNTjkbhRIshNDjAuCao=;
        b=i1ye3SQc8ijaJaZ3rfpeHDgq8ysko028Obb367XSkC80t8OnI4l0DMb3ijDFbaF7JK
         Hffij6r326G1pwwBsDZr2Y2Dpi3PZACT+7z4GEjAseu0n5F28ajZqe59PWwupKVyKJPh
         n4LDiLeUI2NkoYDriusuIvkTxKpVOXHvJwhN3gBVikMvGwQxY/+s3MFAZoXy0CLBSOl6
         /W30OpVXT5OeHhu1KkZ1Jatur9c3xxpGYBi17btBQGtPJT581Ix0cFck1fBtBKG8CFUb
         Ri5k4B0QtW566uWHbNbxyZbNyhIyhFtFls4OI735/NaiToUHGJCI9LDFV7eiJDDRoQL+
         jWJg==
X-Gm-Message-State: AOJu0YxChBEs+XQHxpawNFfBu1Ifu4NcUKPJJHQpsvaGKAp1/EbcRo8Y
	4sJ5br419lMEBTmhvrPyh9e/xw==
X-Google-Smtp-Source: AGHT+IHjjiReYc+IayZnj+luHk8nr7NUsr8MtWRWMkSPYPwtcWJqulRHvFUHM9iJy33hIzVfFlgBgA==
X-Received: by 2002:a05:651c:2112:b0:2cb:2c27:57d9 with SMTP id a18-20020a05651c211200b002cb2c2757d9mr1349578ljq.16.1702280534712;
        Sun, 10 Dec 2023 23:42:14 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id s30-20020a05651c201e00b002ca0217f327sm1116269ljo.65.2023.12.10.23.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Dec 2023 23:42:14 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231210134834.43943-1-krzysztof.kozlowski@linaro.org>
References: <20231210134834.43943-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: samsung: exynos-sysreg: combine
 exynosautov920 with other enum
Message-Id: <170228053300.12030.5356013143015298752.b4-ty@linaro.org>
Date: Mon, 11 Dec 2023 08:42:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Sun, 10 Dec 2023 14:48:34 +0100, Krzysztof Kozlowski wrote:
> No need to create a new enum every time we bring-up new SoC.
> 
> 

Applied, thanks!

[1/1] dt-bindings: samsung: exynos-sysreg: combine exynosautov920 with other enum
      https://git.kernel.org/krzk/linux/c/e4f027756dff6a4e2abc640f276f91219559a3c9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


