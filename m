Return-Path: <devicetree+bounces-91733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E6A94A4CE
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 11:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 722ECB20E70
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 09:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA041D1737;
	Wed,  7 Aug 2024 09:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MIOTrDF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05771C7B92
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 09:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723024557; cv=none; b=U5JnmD0cn+6uXGD+bSfTb0SNSmXJQ0Qz1Q77JulAM2jX4rz6KwrfXIBddVGPXFfQgYLWxQbk7SlhDhwK9yoQoVFap4pBGxX15Fbr5YC61VzJ/FYe6QmuQJ0+Nl0B4ASWcGiyZvxBneu0+I1opKe9APHViaVuzp3d4zBFwQMFWqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723024557; c=relaxed/simple;
	bh=ehlgtPEbv3Ao6RWdftuDpUVvkKtoxTsxyYXUMukjZiU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Ed3lACJqJbHCrOFvZ8tRBzX4m9vjMXR78dc0QleXw4zzm1C0vF05Su0+2ClxX2PWi6A6PnIR6M5kGF7E+Y0Zf4zoXVRGo+hx3Bm0CATgrFBj0d9WtjO1JaGk3hNxL7/PO/EVF3TmlLqmIsx+w2x8Vgvkx5EAggHLWDS+l8VJG5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MIOTrDF5; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-428e0d184b4so10801985e9.2
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 02:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723024554; x=1723629354; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iV0FQP++vqMUtGeFQZXpoV/QuW7m4m+Nk2rBOq2n+PI=;
        b=MIOTrDF5PMWQP4+CsAE2eCN5gIUy/HiHlS1ie9DIgBAR8+5k9uf2PGYTcM+kn8tQ9F
         sIHb1tn0EEIKjzZUk4Cc74+LCIA6QDxS98cHJfgKAtPsoM5b1oKEQyXTEzROpmcFuGJr
         pe6hvH2EQCE0dzW/Aog52wR8IE/HxkUFjjjXiEIi0GfST1D5W/ZDn7F6OZj/K6GereTL
         +slNdWN4gyMGvJxQ78eORJOiI2nyPdDytBUXc1fx2v6ZUe7Jlnjz9W8kLtfaWrQjw00o
         /283BQdk8nittb+2rw6HwaRn4mqjtJld1fJEkaBsfyJs2AUY5QbMn5mE9g5MuDjcmNdZ
         CCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723024554; x=1723629354;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iV0FQP++vqMUtGeFQZXpoV/QuW7m4m+Nk2rBOq2n+PI=;
        b=p/1nLxmsBi9woq9EkN/NkMWZTm48wRj1C0a3zHip2MHSWD0M+WXMdUkgCvaUL/hmSH
         NneEUGKSgPFHVTC4J3leIILFrXxPO4jDOWLW7iSsl/VcLtZgwlAiXlOy9EP+L5K7+zAj
         YP2Og9lK1LfwS3L5tElpEfkh8xsIPAXSc7VVJFLIVD6G3bA2DMVVJSYXat/jIn74GEPs
         rNuMx/Lw0gVQTU90LyOFcDmlULv2In9lhYrRcZj3XF5ir0StPj/9iDWRdkzQyPda5IoA
         ltsfAX+U0Ox1qPFmLYOeyGWqOCZ0E1c8ejqrBU1P0d1eFEg/ZmKmzJ3Olrg5NZnDxer5
         uwvQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5Xm7IJ+OS3mVlX7+quN3g7imD24iPwCUyDjZk3BJHDc7mqRpWI/9/L8NcUOc7d2EgYZw2DIY7vO/mVu1S7R7yWt6H01mi6en4MA==
X-Gm-Message-State: AOJu0YypWuGWUlM6c/DKK5xfvQk17/ZC1VfE5N4xJyvCGWELT1pLFMnD
	8o0upl4HAucYzItoWPDD74Z+4IdkzGhj8/sMPrYNarIPgb6EptOjpAqS3ABS2Xk=
X-Google-Smtp-Source: AGHT+IE3vEUjxKYTmLbMVbVULcwDedxIFTHlJkf/M6s5xb9scxWEgx63NITV0XFFGFGGaB2KdRv75A==
X-Received: by 2002:a05:600c:190d:b0:426:6e86:f82 with SMTP id 5b1f17b1804b1-428e6b31ecdmr130357195e9.22.1723024553869;
        Wed, 07 Aug 2024 02:55:53 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429058026b0sm21194255e9.35.2024.08.07.02.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 02:55:53 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, u-boot@lists.denx.de, 
 linux-kernel@vger.kernel.org, 
 John Thomson <git@johnthomson.fastmail.com.au>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240729080733.16839-1-zajec5@gmail.com>
References: <20240729080733.16839-1-zajec5@gmail.com>
Subject: Re: [PATCH V2 1/3] nvmem: u-boot-env: error if NVMEM device is too
 small
Message-Id: <172302455213.382580.1153614262268282040.b4-ty@linaro.org>
Date: Wed, 07 Aug 2024 10:55:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2


On Mon, 29 Jul 2024 10:07:31 +0200, Rafał Miłecki wrote:
> Verify data size before trying to parse it to avoid reading out of
> buffer. This could happen in case of problems at MTD level or invalid DT
> bindings.
> 
> 

Applied, thanks!

[1/3] nvmem: u-boot-env: error if NVMEM device is too small
      commit: a80f2ebe78d7a81354b1c9d59fcb79b77982df2d
[2/3] dt-bindings: nvmem: convert U-Boot env to a layout
      commit: 1b3f5b88c541318a95fc74db80083b87c1020e03
[3/3] nvmem: layouts: add U-Boot env layout
      commit: 641d6abbe15f96a4d2cce5dc48940fd22916d15e

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


