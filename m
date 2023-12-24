Return-Path: <devicetree+bounces-28288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A98E81D80E
	for <lists+devicetree@lfdr.de>; Sun, 24 Dec 2023 07:20:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0596A1F21A87
	for <lists+devicetree@lfdr.de>; Sun, 24 Dec 2023 06:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DBFE10EC;
	Sun, 24 Dec 2023 06:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QfkufzGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EF1ED2
	for <devicetree@vger.kernel.org>; Sun, 24 Dec 2023 06:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-78132affa95so99353585a.1
        for <devicetree@vger.kernel.org>; Sat, 23 Dec 2023 22:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703398829; x=1704003629; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dY6JLnVxrEsnmNyVP0wd7jgyz6XGLyt39+/qdJ/qmgc=;
        b=QfkufzGZXbFVF9F4h0qH6TjT/YyPtImUaAsvOrl0LwpRMv8ryJYHPu9z0amfjh85Dl
         aI6wzTldNqgTbFH6eRALOJcshNCNTmj7OAkD6wRZ4E1xoXJf4mBatqDYWa/jZSZNyuzP
         /aG0VDjhTG0YIVAq9NW6ttvIeljmUEsZfnGj9HysOrFUn7llcyhtCbPU+ZXm84KZ8+k1
         spdLOSYmHPBv0U6BNeI9oBgE3gPiq2HQcGxLL7rZ4iURlPgm7/kA/Xd2sY6RmnAd9Wbc
         Rbg1VXM6ccYnWSwOodOr4lof387UxujycHta++dnB8GWaeQAEhOaDl9W1a7bXaGIDb1D
         Qj5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703398829; x=1704003629;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dY6JLnVxrEsnmNyVP0wd7jgyz6XGLyt39+/qdJ/qmgc=;
        b=W9CkR4hU9gqd17p+MOE5bwreyX4dc7P1QaMQRoEwUjyNSqgC4wvF68ddW07RC3BrDU
         P4Fm2L4iPoN1R3znq8CnwMVjakWPo/wuKMej060WWkLemmBId4EeyBtVeX7YuQB2PJbO
         D7WbnquzKUEy4jFX+lSeGEs5HRFU/jDh6JtIbZDwfrErXRIE1+eR1S4YFK7qUq49j8pd
         6NM1ld1BzDqZwIa3pkSPS3Ea32Tle8zlED0KUig3+CbS3aWqWK0HBticb3/Deh1e5xsJ
         xCx+NPI8LsNpLOtto5gjBvJCzDhYr/OZ/noX215FXvGpwwvx7Vd9rAJpeNhpJdDcetdD
         JTYw==
X-Gm-Message-State: AOJu0YxACC8ZRKJn+/8rGBfO+KER4RHQiU1H8AG06BU7nFWzfo6KxEfA
	IjB6z5/SxayHu4vkyAzR3xrxFTUmMLz0LkPMAtDXwCtur/GUG49V3iy23iXXnVVQNyI4
X-Google-Smtp-Source: AGHT+IFOkGjgfNXHmSpOEjsFf/qZU6hAt4ef5UIQN1lp0Pp+H580Mc1NlscQ7QMxENom9HXHMQhwDP2uIW4atBCUMuI=
X-Received: by 2002:ae9:e214:0:b0:77e:c67:32e4 with SMTP id
 c20-20020ae9e214000000b0077e0c6732e4mr4045914qkc.23.1703398828926; Sat, 23
 Dec 2023 22:20:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org> <20231223-x1e80100-phy-pcie-v2-3-223c0556908a@linaro.org>
In-Reply-To: <20231223-x1e80100-phy-pcie-v2-3-223c0556908a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Dec 2023 08:20:17 +0200
Message-ID: <CAA8EJpo_mFVvvB09e-nLT_GuTAdd_XfVLeVEzGbUV26hJ=C9ig@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp-pcie: Add support for X1E80100 g3x2
 and g4x2 PCIE
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 23 Dec 2023 at 13:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add the X1E80100 G3 and G4 configurations.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 173 +++++++++++++++++++++++++++++++
>  1 file changed, 173 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


--
With best wishes
Dmitry

