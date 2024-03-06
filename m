Return-Path: <devicetree+bounces-48677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8866287308C
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42AAA281362
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2DD05D483;
	Wed,  6 Mar 2024 08:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tde68+9o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F265D46A
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 08:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709713224; cv=none; b=uG8/4ssnYPeBU46I3/SU3vr6K/S1tzcyB7fjizQ/juw2rkk53uhrJUUpIjA7r5ZjfqmE0Zns+Az+RMqLDbIpYPp4qeF6oxeJon7qqdzMnYTmMJ/6KKz5wDU3LKHoFl8H3HnwpUIjCbqgQ9rNw7ANR1rMtC4HjFYKbb+r2Ip541U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709713224; c=relaxed/simple;
	bh=KTDdaS8pSZ7S0Ht19FItkyULUTjJ5smibVaca3J25K8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rJt62sX80QZq31EX+Tquj7BDJGzpasytRYGjGZteeUmvBRGhF00A5e51QgeRq7xWp0+c0rU7sqja9uvrqS5C+im90V8ASIfKlEDHIFrua4WvVCN7nLlEXSD469Ca7v9ZSscnBQiOhITsmEUdklR9Yhl9Mx34vNEe8WIxBWIXIWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tde68+9o; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so6975941276.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 00:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709713222; x=1710318022; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yEWYz4fTnrwGdwxrJSxUI6WQLItdsaHDpjBckmCjGBo=;
        b=tde68+9opuhIpNESgV9JR6CIHmR9Q5DxzeGIr3OLv70vUifj60N03baL6rd5Gy/dI1
         G2Gci1+52t4ASyDJVTGbaBnWe8Db936k9cZBRQUDyHEuA+PTmywNeellsWp9ORYW0v9H
         zd1YDmis8FeR5bFtkxb4SBHWZSLLzjuyhVN62ypqLzL3u4A9W/VngXa8w52LD4ICLgO/
         /8yWrDZC/Ma1wGeiwJofnetjwAP8/CgIF3riltJ4TIb0KWRA6Ufrc42X4/MZoGVOA3w2
         6z3O5Hnpx5ciPxJBmyNHwnQ3OSBpNTVs4EP50lSSP8PGANuD1t0dU94hpKppSR0VVbZE
         NEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709713222; x=1710318022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yEWYz4fTnrwGdwxrJSxUI6WQLItdsaHDpjBckmCjGBo=;
        b=JC9QNwVled4jiE04zzzP5VToIyJQO4xaxBIgd5odeitSbjmEVpg4eibvfNz5UVt13/
         YrMweaAEZs5xh1hTVnnD7ShBTGEs5ESMjRPf5FPfEQppSaIfeXquSMLborfCg/zcTlNM
         Jxj/w443l7GE+liH1jV2r4GMs+BA9aYDYi6zaVl6WfJsyaVPlB++ns7qx8j8bDjVS9oj
         vvVBtzil/aa6Wb5FALmOzK3vhRLjvzSfJ7e4er+8RYqXb/UcEidUQ8p7/Kn0SXQ4wX6g
         4bR3vDcNw0V5u1H+yBhIt2oX5FQIkttPWUQ5cB86wk3uXOopTEeUIQj5wgq8OSAGHz+n
         4FAg==
X-Forwarded-Encrypted: i=1; AJvYcCW57ml5b+pNG+f/dqK9aoI0OEhxp56q+eEX49MXXHzz5rSCH6WUzoik1ADHyAfoacfdzXIZzEgebvkE6hBmLMUvAHXP7kDMjpHiMw==
X-Gm-Message-State: AOJu0YzwleF3atY+lvYAvbs0cxiYsRu9VA/GvLLvGiCzY6+kajCp2ukZ
	xSjpPbWtS7Ch1sjZJk5RXBGP/xknpJLuWe07aTrdTeJdodeogCFsbksw9poroaAz4TvGQ2DyR0Z
	1dZ/icbpkUhqYim5oBDgL7N2AfBMF1Us570YWDg==
X-Google-Smtp-Source: AGHT+IHqaAUVnMg7KxPdK8tkDPA3uORN9IoePxYNCC3cqO9e5WJNI2KZdPGog1tQCvSwi7LWQ6nGEb52GA0R7WzgoEw=
X-Received: by 2002:a05:6902:2513:b0:dc7:8c3a:4e42 with SMTP id
 dt19-20020a056902251300b00dc78c3a4e42mr14807411ybb.30.1709713222025; Wed, 06
 Mar 2024 00:20:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306-castor-changes-v1-0-2286eaf85fff@z3ntu.xyz> <20240306-castor-changes-v1-2-2286eaf85fff@z3ntu.xyz>
In-Reply-To: <20240306-castor-changes-v1-2-2286eaf85fff@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 10:20:10 +0200
Message-ID: <CAA8EJpoYmdfB30byfAW3ngUTw_11-uD+emfdFevVd7kqqFWt6Q@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: dts: qcom: msm8974pro-castor: Add mmc aliases
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <andy.gross@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 01:26, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Add the mmc0 & mmc1 aliases to make sure internal storage always becomes
> /dev/mmcblk0 and SD card becomes /dev/mmcblk1
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

