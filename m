Return-Path: <devicetree+bounces-16063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B697ED55F
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10237280E8C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36C4381BF;
	Wed, 15 Nov 2023 21:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="asAgb2Zb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C016E2111
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 13:04:42 -0800 (PST)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7789577b53fso2033285a.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 13:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700082282; x=1700687082; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IR68rbCqUw8CtYPmfdb5YCDkKax7BnU7bOcQgQ7EGfk=;
        b=asAgb2ZbzVdqpzKnTb1wFtIn2jKtNIzr+5waCn4NwgrkfDFpntf4sIxoF1xlWNtSdT
         w5BJ1rytFwJQxkA5ci3MhADryCrSUqSF1Unj5ESBofp1A6Mmo4Nh9mXs17XxZXMWglVo
         qwZEwJtBtcMvr2ZPC+XgRiUIzYLIz+CriILtFd5BqDkR9MpUl6VkA/fkC8M74jZhX9Z0
         YO20HymLxfLSjhi1LmVLAVbPY57MK/cUzg06EzsSfJ+L3zMjGXjk8D9Fs07xsssE75+A
         mq/vwolxHETd4USCNdQPRTKZpy2BPrq9IhxgW4PtGJb4C2kfvwa+aYoArdJTIke0JdrU
         j6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700082282; x=1700687082;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IR68rbCqUw8CtYPmfdb5YCDkKax7BnU7bOcQgQ7EGfk=;
        b=a4U7ppU72uMen2srbBkH5BrO9f8yMBV+z58oOD18mQu2T73NyuKxIqfZFC0+sxzSaf
         /csIkx1uIB2eAuBylO17NNnec8wP/G9Vaw7pR/XkCpr9IddqbM39kThcRGQKeIoC2IwE
         OzxUxSRaWwsXVDpzUKUEc4pwfqIIeQz2MLmQzKtqOTDYnCofPjfxdtHyZ1VlsixxEnoW
         1yQgovXbNqUkfE9rsrNdv+qgTq8OCQdxejo/X4yleZpbnhPYfOrAGuoPx15nIxh8UiiK
         swRcb9hIDpZVkAyJmucQpGi1OXWrm2pzeSG8VVP0s3FlB27hXO92+ULfD7lk5yV52pLU
         uifQ==
X-Gm-Message-State: AOJu0YzD2EjpNqPyW3scuVS9b8WFdULfe4x8o4RTSKfq3TEdEysyl+E2
	zhKxoS4g8Prrlr4yoPQbXl/CZw==
X-Google-Smtp-Source: AGHT+IH2GDwTuyCy4xkB7EKUOALCaivIacHBI9Ecram8jzDmeEaK9Si8AF1rguzBVaPxi+EqNG9aLg==
X-Received: by 2002:a05:620a:953:b0:77b:e020:2fcc with SMTP id w19-20020a05620a095300b0077be0202fccmr7517718qkw.31.1700082281899;
        Wed, 15 Nov 2023 13:04:41 -0800 (PST)
Received: from [127.0.1.1] ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id i6-20020a37c206000000b007788d2f3d4asm3752793qkm.39.2023.11.15.13.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 13:04:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: thomas.delev@amd.com, michal.simek@amd.com, robh+dt@kernel.org, 
 conor+dt@kernel.org, Kris Chaplin <kris.chaplin@amd.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, git@amd.com
In-Reply-To: <20231107180814.615933-1-kris.chaplin@amd.com>
References: <20231107180814.615933-1-kris.chaplin@amd.com>
Subject: Re: [PATCH v3 0/2] w1: Add AXI 1-wire host driver for AMD
 programmable logic IP core
Message-Id: <170008228111.6293.10665140667009011469.b4-ty@linaro.org>
Date: Wed, 15 Nov 2023 22:04:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Tue, 07 Nov 2023 10:06:50 -0800, Kris Chaplin wrote:
> Changes since v2:
>  Updated binding patch commit description to specify that version is detected
>  using a register in IP.
> 
> Changes since v1:
>  Updated IP name and binding to axi-1wire-host and filenames to match. Comment
>  pruning where operation obvious, additional comments where not. Unwrapped
>  helper functions for register read/writes. Removed un-necessary device reset
>  on fail to add device. Fixed duplicate clock disable in remove function. Move
>  bus master structure to per instance. Improved hardware testing with multiple
>  w1 instances.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: w1: Add YAML DT schema for AMD AXI w1 host and MAINTAINERS entry
      https://git.kernel.org/krzk/linux-w1/c/3427fa5b32bbf54e51a2fde347a88161ff16a641
[2/2] w1: Add AXI 1-wire host driver for AMD programmable logic IP core
      https://git.kernel.org/krzk/linux-w1/c/271c81935801d6449bb7bab5ccfc6cd38238c62b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


