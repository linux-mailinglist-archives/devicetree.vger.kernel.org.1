Return-Path: <devicetree+bounces-52455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BD1886A92
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 11:42:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89CE11F21C73
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 10:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A773C493;
	Fri, 22 Mar 2024 10:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D+YL2wp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23FE383B9
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 10:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711104116; cv=none; b=odOzL1rJFPbB5I51PGO6f5nfE+1kyBneB5sGzSlw/VPwRnhL3aSAQzLnvsg1P9AteNpwZYgAgyqv9PSzME1zu8o9hBkuHZtCREZparqsaM7vQxwwjNrZuxEelOfYlXiQhYEb0//ES+prU2At9+b7QcKgROnQPbzWt89zgSqvmuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711104116; c=relaxed/simple;
	bh=XgOxXIIS8s1afwdjn0g6jOtbTTYtoWP3qkygqGIn09c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RBhOfrAzBXEcHNorbBrVq6EVy+/bSv52qogeXsF4uLP4HizllVAbKIGZVoQAvGcKjY9NM4mupbETAJq5kA7mRvRwLuXuxFi83G+RMl6fYz34iIUDm22RHacqYHvLu4pUEw/RjFy6y2JwWLd3cOzb9LkU34uu+iT/QkfoS+8PJ7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D+YL2wp5; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso1947206276.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 03:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711104114; x=1711708914; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qJ1G2x/oaXXsE8SC8MGGRjcMdOfVG6tRQLbgz1tdtwI=;
        b=D+YL2wp5o60PTdT3GxATJnMcNpa5PGJUE8+YO8wXIv9yZVB0IF1bT7GYcPCQowvawX
         CYNOohq4R24rBTligYNCBxqGQDX4d2kHL0OiZYw62YbRXgvqALGYpszO4Q4owYIZCK/a
         mtnbOMarWZ7I87fTEEIj4e0B6PRlJHnbuyM6eRpHkWzyUwF0+d7u+puTjDq2xbqYMMM4
         /wSIwNqZcUWZAYQync7rOvFQ/nJQCLBjQ31IOCoGdueCm1fUrWv8N/uphKFru88NBVlo
         3RXrE/uri8Sa93ZLlQWifL00R6c6fop2YG6fx8W96LQIEC5m6Q9jMUTA4pioDcq5iage
         /xFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711104114; x=1711708914;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qJ1G2x/oaXXsE8SC8MGGRjcMdOfVG6tRQLbgz1tdtwI=;
        b=mOouCLEikEC+w7Qplck3NI6IsSvMusKa0x4zfcJab0f5oSt1gYEnT8PfIq7zWgaMZ2
         O4RcHYKOHMibO02prWLB60ZmGN7Qb62CM95dBUOjyucCw5XeSFMg84Kc9eohUL/sbWLa
         tLYar3NQsd81LuFcI9Dyw2lmZTcLJ4SnZGbbE3ptiE59TE/L0zxTtdRF1SDa5+zQgrJ3
         SGWQh3jBj0eJGQdUcz2juGlBJ0BcB/lktMKd3vFBNzZolJLs6UZZHVGedmJM5dwuOZ1a
         MZXNeU5MYzeuuOTfAzGLeUxiLS3CafviNqBYbyOq8W9H5u0r17g0gJ4l1rJuhpCoJ73v
         CSDg==
X-Forwarded-Encrypted: i=1; AJvYcCXdOb/gWYyn1RYNGtqUm3CNbU0ElHdcXpVPecrJAsjO6HGxn2gRQchq02JRYZga1BE2govQvoC6Ud/KBi1MwbIVZT1IYx/snYvAVA==
X-Gm-Message-State: AOJu0Yyo2kqdUctpKpY1eYz9Z3QEuypoxXPLFA2V8VE8wRf/mSDLRata
	5W0BhNd8gEpLxj2fQ1YltaC0OMPWZoXCyxQ92u7L6jnZET0kyvj0AJnBoo5wIGj1YvYJqap8XnA
	3VoidKqrf1t0RoiCQuxfPlCP97c6Z/Xrmsaf+XQ==
X-Google-Smtp-Source: AGHT+IF+DVq3nhDm54jpxuWlZ1AandcnO6fyhOF34a+zdn1HBb50LNm0GahsR5m0NoIZpPjbkOLpfMdQkKElsW4T2Ns=
X-Received: by 2002:a25:b118:0:b0:dc6:d22e:ef4c with SMTP id
 g24-20020a25b118000000b00dc6d22eef4cmr1726459ybj.17.1711104114082; Fri, 22
 Mar 2024 03:41:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-4-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-4-3ec0a966d52f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 12:41:42 +0200
Message-ID: <CAA8EJpoY6V=g2TpP0goj_96Yhg3Hdo+T3iDL-fK2WZCuZW62aA@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] phy: qcom: qmp-pcie: register PHY AUX clock for
 SM8[456]50 4x2 PCIe PHY
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Mar 2024 at 11:42, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> enable this second clock by setting the proper 20MHz hardware rate in
> the Gen4x2 SM8[456]50 aux_clock_rate config fields.
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

