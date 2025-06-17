Return-Path: <devicetree+bounces-186577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB9ADC633
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:24:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9C9116DC45
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 353FC293B7E;
	Tue, 17 Jun 2025 09:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j4sK07r3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2761C7017
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750152253; cv=none; b=Qin67fbb1QrdJkmg0KZwVIFFffd3rVSMEndc1qK9kufXYbZlPfwPXADcd+ZZ4hhMQRGOv+8mt3jfkvMM0NdT2pdag6W9Wq7clzkdE6G+ATScFbQaXRAabulcN4nlGIt+1ClzFoUeoyV1Z+C1U0hCzIE5EOlo/LR9w7q8BifZvc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750152253; c=relaxed/simple;
	bh=0FVH0nf1hFWs5snO5t/bUXQFon9Yjbecd6o+YdwqYHE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l1XBydHz2MsvLldjfAWsZ+Rby1bPMSJjCYXq299SlGqT4ccj4QKheCpKZflu88oYdxS9futSxZ7GlbILtm1UEll6HIlj8Rxp7WtNVx+RGk1K6HUpb7387UgwEMWYs3wQad1eJmF6LByFcg+QNebkSdHrG55OfShIZ4Bxgl0Z+U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j4sK07r3; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-60780d74bbaso1041965a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750152249; x=1750757049; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5qmCi5AjNmyApPkeggD1UBIutb08W79XxmIwYywNdyI=;
        b=j4sK07r3C3B34LEq1JlcgfnUK/UE/dCLXuO4dz8YQQJGIno2LQys94N5/ZyMTCAFOh
         MGcyy2PEMp8eBZjP0jJMMQ7Ij3t/OnoPzEWbh6/Mactd2fke2/MYh5e80Bud7d1yBJMf
         /zpP8SbMEIEdZnfEz0+XyiSSsqLhK2f6FmOLhS0P20EY9hVBFW15w7z3gn8N+ScU0N3T
         L0d9Tv6ZDkNjXSz6pY7nUFgRItZiDVe9Ua9MfiE9Bh2LeV9OBUjRUrebINV3KPPLNE/9
         I+IENTwKfwK38QsrUHY+lM8foI9HuT2WUk5YufntXLPKd1TtHZxuZtc/7BbZg1wY2Uu9
         S+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750152249; x=1750757049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qmCi5AjNmyApPkeggD1UBIutb08W79XxmIwYywNdyI=;
        b=G+wrrcWT9AyXWrwk/fCteBwhIBEOjWE83cWIgzlnbDPEylTz3OKiTfpGYZdd1k8gpU
         9p54nQcicGUs1MEnRNvYKspalJgpD6hiDGXEYVCQ0aRnO1f1/KepgN7eeoiqm2Y3/VcU
         VqmkBM3NcV9t3TO6arivMPLgGtP0LGoAuKmnpotmhRuzRYE7Ws88XzSxUESk+EflJomJ
         e1p0T+MJE3xo/3JOcDNDTJbCBNOAGkNzpjDS4xbubqdoRXJUZU3R6eCaBEaAXNVZlz84
         0Axk1eY0XtAk7hJR/yd33PiSFH7jaOx9Y+sq8H0k+fQDJFNLIo9AzZ7MJXSod6hqVOEk
         UQwg==
X-Forwarded-Encrypted: i=1; AJvYcCVstNIpsZc2ck22KL40Pgp+SY4lJITV94KZxE7QcgsQTs76Z9NhpfJ+iZQw0H8smjWB/Nsw1Jo3GIFu@vger.kernel.org
X-Gm-Message-State: AOJu0YwLZfOkNVLjLmmS/lqoqgztyVrDHB9P/gRy3yzOQxHbjsO/HMF4
	qdA42G5FmdIWyzojuWsthU/Mkliw00nAhxpzZeOXWAUqHA5eYf3OXFcU3w7DEyuo/4H9c9GDJbZ
	F7hV3
X-Gm-Gg: ASbGncsj0gTQzCo7fPH0XUFSJLQx2XbQEsqXU3HuN+8C1vBOs09VsJfJYSU4ib26/aX
	14FEUuqPeUTdsX+1rjJPJr1XHuBQajSpfBwYcnRHfZiHsMJ+NTjTgYvSaAOfEZum4uz9G5Do/0J
	tVhYqaVIb2yIsw4zoZdouJXp1dw5TscXO/axX9Odzfr2nq3uleOOjX9WaoVrFsuKbJRgtfMRHEM
	1E9tJtXDCw/34SWGhxhsNPmk7QUhQShU/HdFr2XcYwQayh5gi4C+kHimRoQZ2Y/UgUjHU5iUkgU
	Uyl3LlIiGqU7HIMRMXiX9U5XD0B1gwA0/I1n9YwgZSkpZTLIc76ERmnpgZM=
X-Google-Smtp-Source: AGHT+IEnQHxM84ovHQi50egnS9UEgVOz9GmXYcPlKnLN4jCfbnYv7EbdDH2huGe6x+oNGIph9jx7kw==
X-Received: by 2002:a05:6402:34ce:b0:600:129:444e with SMTP id 4fb4d7f45d1cf-608ce49deb8mr11863903a12.4.1750152248723;
        Tue, 17 Jun 2025 02:24:08 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-608b4a5b6a5sm7931639a12.40.2025.06.17.02.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 02:24:08 -0700 (PDT)
Date: Tue, 17 Jun 2025 12:24:06 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
Message-ID: <aFE0Nu8CKFBlCCrd@linaro.org>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
 <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>

On 25-06-17 10:26:36, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

