Return-Path: <devicetree+bounces-220462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFD9B967D7
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 17:04:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 542FC16B6E9
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 15:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B362475CF;
	Tue, 23 Sep 2025 15:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kZmfPz7/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F314220F2D
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758639817; cv=none; b=pd6rw9Qbegq08w5bKMkPK4VOQb4HOl21qtUjr9gFwpr/oswu9UTbyhNwKpkPU5aIW8F9zrsgEJISXkjCrsLoOSHfAIXHOBkWS2mcFoA/DAatp2IRZtED+M86zShnbSO0ywo+MPyI0Ktqb1ILJH0jBDXdx2sBu+W9PaEgtbdt/NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758639817; c=relaxed/simple;
	bh=zQWTB2d0cJCKk/rrYKC1U8EECVIHzoagaVY6jLMFFHg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M+y8gjlx5LDvM5vLzCpivgeBfgdyhUpO22OkUzKKbyAntnV70o7OfsqdBNPeI9Pe000ewCBx7CCu4YEEW8WR/3/m5zO+VgY4C/w3o87MNb2NDC0Bk/PrgGwAIIxGed1rmtJo2Z4+trv9guNF+ipNkjXvZLwzWEb67ifAhPveOoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kZmfPz7/; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-71d71bcac45so38575617b3.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 08:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758639814; x=1759244614; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YcYie2cAKkOnUbqZ9iZ6V6CL9Gzada5AicC5iMnOBfQ=;
        b=kZmfPz7/HQXut4TJzw4U3NWVWbx1fM6XXw+IJJ8ctWBwE3XuHgZtHAkC8msht1tc9m
         Bd3kjcm07VwstT4oVs/f0wS+TxTwv16a7UGwRLTGQaCNMyI2l2bm6Q34mtSSiCGFIO6s
         ft6/YfVwiymdv/AeB3JSZ6MsFbvgv7JFzx5jHjR/sMRL0jigA22H2ICVXUcR1nx/y7Fd
         u8WFX47mfiix1j833Jhawu2LVBBiWsch+nJq7ljasSYjpb/iEurRc551YM07VWbVT/Lj
         Y1dFqSvyKtEnM/QhEModt8dlvxXtcJcYr4MdmKW1CRagKvHZ34MlkHCc1We8nHj+mASO
         2Eaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758639814; x=1759244614;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YcYie2cAKkOnUbqZ9iZ6V6CL9Gzada5AicC5iMnOBfQ=;
        b=nEaw3Sw8hI30/79x6g6wmbmQVpenm0w7VWrHwnTKzTsf9MnM9qc8WkhVSpkrET7IDR
         GcDVfEe9cUvMciQviYPbdmqqbDsE9ctA/pmEcTFdtfG9yhmsitbwNarbcxMrnNa1op4+
         ux8SmB8G2QPR6xp68ZG0NlYBLXLHel7Q3wZIgNGL5hj7MyWLIU9TmoymbNpw48jJrrWi
         WwMjozmHWbNkrIG0ct90hpqhu71Q/9gDv2SPIAIiOTiyxzZxavLWHzuyNW+zn9ad+9vv
         EmLO0jI2yuXW8yHlKp6E3ueOp4oZse8lixj9gMV3lRpIXwGHS5NQzjQTykepp/8SvsxQ
         2BLA==
X-Forwarded-Encrypted: i=1; AJvYcCUgLSTc/yle+qsZ+mvCvsxY7HHLm/T3bpH/yyY4IaGI4HCCAHMaezYi6upvZCNn8r46qRJkcVwUNbsG@vger.kernel.org
X-Gm-Message-State: AOJu0YzD2gL463sPGlsBN0+RmfDaNAZmBPXMKHSP+1nuKyKvWJFRqt8L
	2goGfh0pqCWamBNaoOE6uvVmByTWLSFtjeA66/CX02Ks31Qis1jtkUuhFJR7YeWqrw8nnmxEvnz
	8YrK0me8oFtHGXddViClhHBEuGbeTQjoK1wjGG2RZ9g==
X-Gm-Gg: ASbGnctVPSzp+6GVvDhHVSF+pKwpfdFM27QigRn2h3hL11r6ShjRPo5Nr8/eGUpBkSy
	3lRufVyT+R/3O+fWT84DMdtilnZB/AhbYNbFm1X6VbAXsM6+3Yg/0fDzU2oUiQsKRsG5MPOup14
	r2ROSDgCPCO8aWT/jxdkvhs+98pihMIgTD8feJGMn/g2YCHvp0tK3PJKd2I5O0iN2x7ZBJ28akw
	w/Q9eX99Bi1aazsvlBMT32sR+I=
X-Google-Smtp-Source: AGHT+IFHn90x28JHbA7vjSDiwfdoTTPXMbOARP3I17KAJBJ/rJ5XITQcCBtsYmuIRAiIfgX1fgiiGgjUyy0jEa80iZ4=
X-Received: by 2002:a05:690c:6c91:b0:725:1bc6:7cae with SMTP id
 00721157ae682-758a43264a8mr27454997b3.41.1758639813938; Tue, 23 Sep 2025
 08:03:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250914131848.2622817-1-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250914131848.2622817-1-ivo.ivanov.ivanov1@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 23 Sep 2025 17:02:58 +0200
X-Gm-Features: AS18NWARyvKgXOeXvo9XZeI4u88VSQ5LHm-6zhc4kVML80ebLhJCorioq3hgWH0
Message-ID: <CAPDyKFq9F6u5+aT_CkRG7rcOLrRWv-9wfw8tcT+w72kB8QVwAw@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: mmc: samsung,exynos-dw-mshc: add specific
 compatible for exynos8890
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>, 
	Jaehoon Chung <jh80.chung@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 14 Sept 2025 at 15:18, Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> Add samsung,exynos8890-dw-mshc-smu specific compatible to the bindings
> documentation. Since Samsung, as usual, likes reusing devices from older
> designs, use the samsung,exynos7-dw-mshc-smu compatible.
>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

Applied for next, thanks!

Kind regards
Uffe

> ---
>  .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml          | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> index e8bd49d46..27c4060f2 100644
> --- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> @@ -31,6 +31,7 @@ properties:
>                - samsung,exynos5433-dw-mshc-smu
>                - samsung,exynos7885-dw-mshc-smu
>                - samsung,exynos850-dw-mshc-smu
> +              - samsung,exynos8890-dw-mshc-smu
>                - samsung,exynos8895-dw-mshc-smu
>            - const: samsung,exynos7-dw-mshc-smu
>
> --
> 2.43.0
>

