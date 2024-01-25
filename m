Return-Path: <devicetree+bounces-35061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EE083C37D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C91C291B0D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5875D4F61C;
	Thu, 25 Jan 2024 13:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zOiTqsvU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E8650A82
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 13:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706188810; cv=none; b=JBZo9LnZkfqdEPmGhW+t8o9tCPNh9NEV9JmK05mpwsM8WRufuVxA9byKAX53aryWhIWFWLx5WT4j5Ti05CQsga7KM6dAx0KAD2SSdwdFMh8YH/zWpKTNOEUViZLjkAMgvYOHqIYs6od3Cqe18+2oDqhclGPMaJ3VaiYABIEGEzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706188810; c=relaxed/simple;
	bh=S9obOTKrjUqUMQiPL8GQ51whw4F2/NohekxPdiJhNe8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AFR4OuK7vndXzyMWWN5V/iYR5QgHZNMBMydIopolO8r4SljZTu82kRbw8ofu3OGZNDub6WJ/gStOhEqW6Bt49OxKsqGnxpaEfM3lHTFa30Y6/GXmnA7ab19+qm4ZQz49QGvDq4hJnTPyJYV7dz/RnWzaQD2incPHbcaw0cK+1ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zOiTqsvU; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5ff821b9acfso61329207b3.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 05:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706188808; x=1706793608; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3CKtTpe0lg1dzYJsgEE0y2jcm0FxOp4goGp7KqAraJU=;
        b=zOiTqsvUz++u2XH/+YKzZmZ1Ld0X8qWM3Boj1j3KfD9aY0RtNZrZg5XLryWmTbhR2w
         zYm2DDitmyqig9L7LdtWpfuc8XQ4cgE5JFLcp2Ql4JTqOcDOcyOxnBMzhNFDihysspl7
         WDg4tMiilk1A51yGPDpfRRZPUPvebNv0mScXWLTK8X4N7owvOIr1cRm74AgpmHf9mCRD
         l8rzA/10/ZT+8MKU2r2ga5IFjUPiibCQIE0zoOjy8uLh9Yr2d1WOGeMibshg8fWpxU9i
         vh/v4x9wwk+2R3aT2lIcNLab14wPJfek6uWcsk0KKswHdhCKI66J9c9FxnWiKZh/Hjaq
         rcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706188808; x=1706793608;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3CKtTpe0lg1dzYJsgEE0y2jcm0FxOp4goGp7KqAraJU=;
        b=Az/mIwMo2zhl7l/z8LeGNteVO6s9IVzag60MXxufka4SrJMTsMAI5DAUU80SGgVcDm
         ZPJSr3iiYzQRtu/2tqiDN+pqfQ0Q0w2b8+EeOoBcFapP7I0msWSaDJUm+l9mFq4u8TfH
         1hynnT83Z2yFaoTviTngsCsdJS3tC/EgERIUKck/G0r6pJNEuPam6OQUm8ry5hefodRO
         rMa82HHUNMnTMyvrNM87ipeCTV/4zfiXwDYiA8vH7WYxLWSv1eURnu2WcV+tvVeky56y
         1UbrORefWSZ+R4g1kQ1yrSt6gj75aJzO4Baml/kYXBZnSuMbkcGtdGvhYmYKaB4UCKeM
         q8Uw==
X-Gm-Message-State: AOJu0Yycb4yqLP2SGTHVf6oDzNH5jxCSUIM08HjA6sVdCqClCOGfMAWb
	kbJLqIOsJhcFYLBvAxJxFLI88iSKy2+I06CSZuHmyBscWH5qikVyAnsOgvuwCttoxUNv/MEFYJh
	oNm3yNOmzO9x3J6khRCd649fhpU6RWk06dNRNMQ==
X-Google-Smtp-Source: AGHT+IEyGLW+JElJR51TVbXxUU/aTfr+dA2yiYSzlayKLSuCSMTVC8vrWKCRlA1khvQBkYnCJCYNAg1/YWU5tYccGbk=
X-Received: by 2002:a81:6d83:0:b0:5f7:c08:5c66 with SMTP id
 i125-20020a816d83000000b005f70c085c66mr703699ywc.81.1706188807694; Thu, 25
 Jan 2024 05:20:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Jan 2024 15:19:56 +0200
Message-ID: <CAA8EJppPYtATntmtQpeR_7_Yu4bTsVvyRc6aQZJEuZ-43Y_=SA@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: qcom: sm8150: describe all PCI MSI interrupts
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Jan 2024 at 15:07, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Each group of MSI interrupts is mapped to the separate host interrupt.
> Describe each of interrupts in the device tree for PCIe hosts.  Not
> tested on hardware.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Bindings now expect 8 interrupts:
> https://lore.kernel.org/linux-devicetree/20240125-dt-bindings-pci-qcom-split-v2-0-6b58efd91a7a@linaro.org/T/#t
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

