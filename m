Return-Path: <devicetree+bounces-48676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A03FC87308A
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDF0B1C2096B
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268DF5D49C;
	Wed,  6 Mar 2024 08:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qZMxQRxZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FE12E641
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 08:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709713207; cv=none; b=MwSS+VQNnI3v4mwLhstPW2aTBEOfxOQ5c/f7xIC5Y0GxqkPgRChsA6232AxbL0D+dWFg3FDgjuzTlUnwcBT7EPwoCseSOy1tBCRHTAeMgTr6Yvn0vEoeCPvUXyVjxpSJpSFRKYVEemF+4+isXizxGtHUkvGOy03wh5KwQEWVeho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709713207; c=relaxed/simple;
	bh=eOXVyxGTQKrr0a/9S0g0Hrk5vw/Jn0sNrPViExOVtVI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T0RjsbwB/VwlK9itrfWlMqEV0TF+x6IkuCDO5g0xMygHlqNEm+t0reK8qQLPwGYwAcKZOqq04NpQASZSFBJOy276C81rl/3bmNdp4W6Q8f7mSutJy1vK/BKYT5b/Upu5GIabnH0swd9UqI6G8KcyDIQvQ1ahsI28wca1jiuEW8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qZMxQRxZ; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-60943ad307fso61312447b3.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 00:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709713203; x=1710318003; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uZBC76fSENwy+KneqSdW8FRSfPWe31aQehHnjGJ1/Zs=;
        b=qZMxQRxZVf5ajm3d9RwRzJ8sZwVHluZ+yFozJFYQdC56hQHzVU7AMsVvtjvMd1Y3IN
         wFXGy6porYIm+B3F6dTvUDElq/L0vcz+sezeYH+d1To01FPxc/EjHuPmxJQwPZFzvZAb
         KPFbHh1+DRs6m2Z2Yo2c+z7aK3sh/ztMu9cUvCBzauRo40scXhn2IM3g1D3U5PmMjSQ0
         SPlSmQ2pAXGGw3u8aHUsmx28n502LUb9sjzmhHj6z0VP/moNZPt84OvGeXtUhAEZk/i7
         NRMCN147gUVlljMpqAE6NaMpJ1mn5oWVBdnLwTtZs/oXBUcSXGoo+zkFp3PNMkKK+ZMt
         kiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709713203; x=1710318003;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uZBC76fSENwy+KneqSdW8FRSfPWe31aQehHnjGJ1/Zs=;
        b=QFClKXTBmCQrD26trj41KMHWF1CSslHdx1xRxdS0sA039MRChDmXqB3p0Evp+HPFaE
         fmr6IY9m158KOyMGwd6/AXadGWfZf62dlbfp8SsqTmICFwyp9uF/UbJBtYG6KHpaFojA
         0fz/1ai/14xhLUQLGiZzGW7lfK5ZMyUrku3t6NMjk6pg3xnaJR4n5Yacs7wbySGmGvX2
         qHNqcB5dZ8X1jg8SyRO/ZRVYym+2fDctaujdJoQpznB8OqlsOpKAUQpKUoloPq2DX5VI
         SW3VhxbFUucuPp58nzM/anbdyv1jg8ATYXE7TVprf4dejxE2zDlj5wM76Uph0/nu09UK
         BlCg==
X-Forwarded-Encrypted: i=1; AJvYcCVGxP/ogR3tLC3cpN2YK+TUMNRuhVFxSG1j3LV7fXQ3jvuSqgis+5F1LqSNnZpP+4JbXbyqwsyFjlIhuKW2jqq7G9hGauIUiHAFGQ==
X-Gm-Message-State: AOJu0Yx6/X4IynTY/yEJml5Bh1bkw40WE8BKsTb1zjJCnTLBguZRC1Bp
	xDUV/r2D+OSC+jLdu44hyp0CqY6+J0BT7DL0RVwX80HEMFouvL92p8PXXjmWt9IzGxwMtt/GWkx
	baPlY7M0Gw/zZLnoQkSlNXmVeqPGs0VZ8lcoT9w==
X-Google-Smtp-Source: AGHT+IHmSEq4j6J3wCtEWvd0nDZ+HJhTa6lo6OjGsJL8RlcpCjZPLN6kBAKWI2pyqgguTpS58xSFj4shg2VyfA6Y9G8=
X-Received: by 2002:a25:9d88:0:b0:dcb:aa26:50fe with SMTP id
 v8-20020a259d88000000b00dcbaa2650femr11041610ybp.15.1709713203375; Wed, 06
 Mar 2024 00:20:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306-castor-changes-v1-0-2286eaf85fff@z3ntu.xyz> <20240306-castor-changes-v1-4-2286eaf85fff@z3ntu.xyz>
In-Reply-To: <20240306-castor-changes-v1-4-2286eaf85fff@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 10:19:52 +0200
Message-ID: <CAA8EJpqBHoGj0Brfiu8GQbxBKfB=v0-x=udMTE8wqVbO-rRjXQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: qcom: msm8974pro-castor: Add
 debounce-interval for keys
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
> Set the debounce-interval for the GPIO keys.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts | 2 ++
>  1 file changed, 2 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

