Return-Path: <devicetree+bounces-35063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 561A583C38C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8978F1C23E4D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22C7C4F8BC;
	Thu, 25 Jan 2024 13:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lBQOarpj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C234F893
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 13:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706189037; cv=none; b=DWCuChFWivAQeB/I9IIqbSe8fMXft35fUHiVbc4T8Y4OcxZhPLK8Lw+CuRypj1S/6Cw7j8ZibP5ocKGy5/Jy2keHRjMnLFq4eI5fANPbB3RNB7DqIJJve9pJZ2M3sFEZzrD/7zEN803at6vhz2Gc9juhbgr2dIAkFflLefTeAcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706189037; c=relaxed/simple;
	bh=9slEGncr5sZ2i+sO83m3sEyUhFhOGIiWij0i1fDgPT4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qOAGZWhDD1nvTumQZqVwiTyz7kTl0uAhkrxgmww3kJksvasFbBpq/jBlpX7jBqsn6lq9n16vL6wYUzpQ0oE7sFzrKDNGWNLJnM+VEjngYIddKZZVM4BTrFcJk4bxTaG1fZ/0PKyR2vj1Ovjo+rAzSyThX0MHWXhtj/sK02jHsRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lBQOarpj; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-602a0a45dd6so16029787b3.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 05:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706189034; x=1706793834; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SKIQmJv3IRL1HN1k5v1jdt5ZpUKF/3uDhIJJ9D50Mw0=;
        b=lBQOarpjyA1FJnCIE0Z18AoNBqAJmpqliteXzsHIPPC+64kiHBhwqXNrHQESWUb2SX
         W9k9XEikVoyH9WFgNMAr76vSnwcfneJ2aQTo+RPv/dMDed5C+ziFRjUoXisqK5hWX6qr
         b8qYWAZU8T560VNM1Q2C3YFcr9jqt8H0pmiTpzvb70s++c08l4yT4iI4j8GVRHlkreNz
         SgP6ysDXjiY25TzGQfopvwWVJT2AsEohNUVZBTrb1mz2KWDyYSIlueYOxqsxgofdnKUR
         gVUWnKtU3m5yb0xoESXhe97kLM/A+wrq1yFchSYAv9DItTd88RRFvkCYLg/s3ku/HDHp
         KafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706189034; x=1706793834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SKIQmJv3IRL1HN1k5v1jdt5ZpUKF/3uDhIJJ9D50Mw0=;
        b=CrU37QmtpTddYrlIG18RyVV6Pibb5508UShdNnQ3YepaOOdm/c1LJA5QHnRYiTJLwp
         9IJZgEN+TrGcWb+gLDB1zXnitvoChO+xnvjNFAqhvE7lU2JmvsOiht8VGfEW5SdCRjFf
         xNj2zVjXOdF29jSg64Hbl6evtUOcdkbHzemTKVP3tPoBxPrdxfCtl+UwsAC58zggikIu
         WOVbyCzhqnr5DRRpeZWZ9App6XMXU20vfG5uLwcARdwPOcAvzG2D2m4mLsFqVQz1TdqK
         LASeJ7yW+RgvGBzxjRBnsg8nfE6FQUS9WhqCxLKjE7wrgsg3aY0+AlmQKI8lzrmZU6w7
         iW1Q==
X-Gm-Message-State: AOJu0YzLCpfWyz91C+vVu/9A7nHfuiGGNVkFRQKVIgV/lCEHCNi/E285
	dOj0OxyJ63QCnQHO/SIw3YAw45yV78PSfu42XrvODnCUfvPjRHsNHbYuy0Goxr5kOi/OF0p+Mmv
	J9fXaTm/1Kc++MnpHTKL8j43Rt4mjIyC/SvaQAw==
X-Google-Smtp-Source: AGHT+IGHbJyy+W+hk2nttEPhM/r+2iuDN2cokkfPGX1Gz3cB4l5gZ9pEXayzRvDCgHB/mdI4i0pwoIKX4YkikR4KGNE=
X-Received: by 2002:a81:ad4a:0:b0:5ff:4842:9ea6 with SMTP id
 l10-20020a81ad4a000000b005ff48429ea6mr664617ywk.47.1706189033971; Thu, 25 Jan
 2024 05:23:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org> <20240125130626.390850-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240125130626.390850-4-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Jan 2024 15:23:43 +0200
Message-ID: <CAA8EJpo_GUgfYZOgmbCyhO0Oe=RRC0+LP2kZTbSV5wHob4X8=Q@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm8450: describe all PCI MSI interrupts
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Jan 2024 at 15:08, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Each group of MSI interrupts is mapped to the separate host interrupt.
> Describe each of interrupts in the device tree for PCIe hosts.  Only
> boot tested on hardware.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

