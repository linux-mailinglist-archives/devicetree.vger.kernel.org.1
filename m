Return-Path: <devicetree+bounces-52883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C0788A4A8
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:35:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A1B91C3BBCD
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97E118D884;
	Mon, 25 Mar 2024 11:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ubO3c8P0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16541AD552
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711364324; cv=none; b=kIxmd2/uPJU/+6+D8BtNOrgHr+zehWVdQU/gfUWl9v0nxecc3YiFyNoy6SIaW/en6ytQKLaI+2DXInTB+y8bQ0tboi/PRnDw/lBVWJvsAgzDcAEsZ8Z8KWpv+s7/qoQpkVxDvnEofM/IQHTujIvZ8Z8f1iNzs8JV5t6AF8ttoGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711364324; c=relaxed/simple;
	bh=XL25HA/rMlyrHNwpF1lAFH+pCOsV21peUzjqYOvTZl8=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=O2MoP1dnMx9b/GCmjSY5TJ2KJn0bXNi7WPST0mV0dhU/1QQcVGwvkduBqyCwvo7XXvHLqnmNdEUooF80MI52MLNd21AKv5ka03hRD7Nm2Ul4tkJLeNStB1P143SqSSWgRdUUaAjZsv7aYvi74bZnyw3quwdLjfX7/Op8Oe+22rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ubO3c8P0; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so548616266b.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364321; x=1711969121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+JNuKywlvftNSqF5b7Cj7QzF+9URkW2/+w38BGlUpg=;
        b=ubO3c8P0QQ515B+i28nRNAd09dhgCOo+ohLNR6cnWEkz5F7iTr5KXs/X543YjtJ343
         deEss0Y2kwq6zp7LvJvEvbAX9nmCpldkYcb6+EKl6SYOvgrO6GWc5DTI4wedeA4eO+Vi
         joQsjqTVWS2Z2U0xCGPrS5t6z6pnTQcw9X8o8Be9IG1bMjmDW8UKS9/q7nRYwwNbWOgm
         5+k+2Ez04oaCdD3kzZKjYH+u3sCF1eOWnH3VqprJhg6sZbAJe8Ul20/WrAePGLRhFHAR
         Zf8j82dDCkIQNYBYnB/RUbFfqdN5MRZtSetGQpgEzAP5XSi8yjIBoXcbyzd/DzU2tzi3
         UOVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364321; x=1711969121;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9+JNuKywlvftNSqF5b7Cj7QzF+9URkW2/+w38BGlUpg=;
        b=AiB1nbcSflp7wvsbXkZ9plgipiFyunX2i6/paE3FonU+8jSAXLqZygs8qCa/mBP1Kt
         SfP6Cy0Mx1cH9130AjDlZl5qUotQ7iNwfBe38sGJPDwSHgwei0CgySYXGKeK6trJVGux
         9ozD0727aep5KZbscunCHHGSA6DQBjbzmrfLN+CCgGbdfegA61ukcs0lcu5ZYLW+FZ83
         JvTmo4oUAh9/qtOJr4tAlpYNDkxvFJ8hqX03W2GN1kcRcnRgbjGJ+OIa2m6KY7edoDsM
         dMv8S897pVsquZ4WPzQAXyqgtN1Ay8ECyprYtq6L6m53VY1IkzFdxHN6PkdirpAS6Vfa
         ACEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjMJvfeD2fYPJyMi/P5jnseYT3f5tjSL2cxjopZw6Fu9al932WexDLeLHPMuMCDN3kYz4Ob6W8FKYI3ZkXuhzgPnx5GBSRGD9ohQ==
X-Gm-Message-State: AOJu0YzhYAqPnmfyD9kE6EYocS5q6oxIJmYxDz/kihyOwR4XAe8c4e/A
	PSjrT5792yQI4gzC5JseRzmKhWVosoJ8QbgbSkAhY6f2qD8dGMmBd0kYqvyuKLs=
X-Google-Smtp-Source: AGHT+IGRdluR+ctpxxP9cfjdQCuYGJCipeL0daH2dPwa0geRThKN5t2BbwP0SMuxIbKj6UiewWaR8g==
X-Received: by 2002:a17:907:7283:b0:a47:4c82:edb2 with SMTP id dt3-20020a170907728300b00a474c82edb2mr3384870ejc.5.1711364321216;
        Mon, 25 Mar 2024 03:58:41 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id i1-20020a170906a28100b00a4668970f74sm2935707ejz.108.2024.03.25.03.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:58:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240312164428.692552-1-krzysztof.kozlowski@linaro.org>
References: <20240312164428.692552-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: pinctrl: samsung: drop unused header with
 register constants
Message-Id: <171136432013.35586.992518195753048545.b4-ty@linaro.org>
Date: Mon, 25 Mar 2024 11:58:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 12 Mar 2024 17:44:28 +0100, Krzysztof Kozlowski wrote:
> The bindings header for Samsung pin controller DTS pin values (holding
> register values in fact) was deprecated in v6.1 kernel in
> commit 9d9292576810 ("dt-bindings: pinctrl: samsung: deprecate header
> with register constants").  This was enough of time for users to switch
> to in-DTS headers, so drop the bindings header.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: pinctrl: samsung: drop unused header with register constants
      https://git.kernel.org/pinctrl/samsung/c/4184e4912ca69d4f18a800144539af3b37c6a663

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


