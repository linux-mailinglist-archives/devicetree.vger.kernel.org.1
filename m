Return-Path: <devicetree+bounces-77901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE841910599
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 939CE1F25987
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E15F54D131;
	Thu, 20 Jun 2024 13:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jtvq/OrQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB161E49E
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 13:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718889317; cv=none; b=Ze5dqL6ysETJAKbrUweQnkngm4sR7nQq2EBgOtxQpPxY0+In+UyajK/RY+64nQ4D8CyTHjMWCCUL228tf36tZwEyysz3gApt3KXL+7etXljMdcZBzEC1iPsHw1wO3ssdI9AM1ZNtO3nDISyGncG+MczvDIyF7LODG9M+vWd7U5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718889317; c=relaxed/simple;
	bh=kBLzfspHe7hKHDfbBHbG8TW9qCmp7NiEtdiB3iW7K9Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=quhre4d91+c3rPJXxq1e49b3PHroZORECAuWv6lgG+ThLNzRE7LHo1CYWKQPNGXt/xxo6RTDfBpz3h1tadN4XBeAGOINC7aAV6uX7zxsGD6ZS77kpnA+cxHXI9JaA4e959nTvE57iG3F2UNchyRc76ewS7uIQGSmNqmjayhtZ2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jtvq/OrQ; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-62a2424ecb8so9907367b3.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 06:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718889315; x=1719494115; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CkSFRwhot+Q+s4R6yyDj4mTZYzkLcyxsGikvlN6BeU0=;
        b=Jtvq/OrQrOUF7Cv0JzvV6d9BN0Rudj8Rylfq5CB5jAd8u+YetnMGVjIXEP8oNUxxEr
         T3Tu5xxrqSowg3UT4zPbAvzpcPZ2PTaQNlC9Cv/4RYxcpPELrv3hMF50IQ5DhxW5+hFT
         lQnallWqddrXA3xpvlKhDlYLIbQefIwjpELes5zT68vcYaJPzBn59+q86mCADPYDcpoO
         QxZehRciIHdZvoWaIPd0hDZbmxrrbUosPdbdQBIgS15LmDQYDklvJj9C4Cgpaze3D/yO
         RMtvxH5G3LZrnbAg6aJB4mzMTki4Rt85fv6tlZxiq3ZOxlw4ClerJl1HdlijLaT+5ItT
         ilGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718889315; x=1719494115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CkSFRwhot+Q+s4R6yyDj4mTZYzkLcyxsGikvlN6BeU0=;
        b=rR9lTVsMtbV/Lt8oSJjCj9X8UN4XCYIBd4RW7bPJP+xxkOI2MHPvcz0NuEUOLdgOqR
         Dotzv9F9ysAecHK2gHPDwzby7yRSjVYZLhH+i/TJpZLoX7SXCU/JHwjeLRQD++7ffYt5
         2cZbs/DxDqdkUQZpnGzmkocsp55KID6ScwszGjCZat5aGIACe+b/b5d0OzjX+qcMTPqn
         T9i3t8Dsy2uNjszM/9HXkOhqS0AG7sSAsHz8sUo8xQsmuUv0A5nTH7gSPV2h6hogE9fL
         RhShMJ8zY4ao4AURyvzPC3ltuhC6Oa9Uh8Hms92OvFcWnVKtspEYf6KYIDG3NP0eckYy
         95mg==
X-Forwarded-Encrypted: i=1; AJvYcCVuc4wwtIRJYnWdmIzZzwOlkcgfumogING/l0QVv0ofYuq4h/TVuf1nx+rHRx2gGqPslsyG9Y+pJ+RFa9r1fqFHLp6L2Gx5NKdMpg==
X-Gm-Message-State: AOJu0YwLZfRfi7w1JpyC60pfNhXAs20odagp/ij4v0i9Rc4ElCDKJEWo
	/M4GLaf3TmOq7bQPKFw4B8FWFk7pKoaURHR92gZQPxostyVN3myCs2qUJamci0j8b5uBPsjWoMn
	kDgeTNDwBBMBXxOkjFA9xAkYmTHyN2kLdsdsY8vnlZqDoGDsXow8=
X-Google-Smtp-Source: AGHT+IGlaxOg+qhS8w/dfjzjflLigb7w15n22/6LqN/Z3zeD60eqK5Mqhbk9OZg4Q56aWj4Uad7s4AzBlrZsGGf1e7Q=
X-Received: by 2002:a81:e249:0:b0:62c:f6c6:d5fc with SMTP id
 00721157ae682-63a8e6af304mr51597497b3.26.1718889314811; Thu, 20 Jun 2024
 06:15:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240619-rb2-fixes-v1-0-1d2b1d711969@linaro.org> <20240619-rb2-fixes-v1-2-1d2b1d711969@linaro.org>
In-Reply-To: <20240619-rb2-fixes-v1-2-1d2b1d711969@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 20 Jun 2024 16:15:04 +0300
Message-ID: <CAA8EJpo94qg0dDR-H64v0yC7jLKHuD9O59m3hG2tNR4v3NAkLA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qrb4210-rb2: set role-switch-default-mode
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexey Klimov <alexey.klimov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Jun 2024 at 23:33, Caleb Connolly <caleb.connolly@linaro.org> wrote:
>
> Give a hint to the OS which role we prefer. Host mode generally makes
> the most sense.

Why?

>
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 4 ++++
>  1 file changed, 4 insertions(+)

Would it make sense to set this for all the RB and HDK boards?

-- 
With best wishes
Dmitry

