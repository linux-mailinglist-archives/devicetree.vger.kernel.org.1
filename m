Return-Path: <devicetree+bounces-48983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D06A387486C
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 08:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 863021F213B5
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 07:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090601CF8A;
	Thu,  7 Mar 2024 07:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zVn3zxlP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56938EAEB
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 07:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709794978; cv=none; b=BdyeT2PceMqd6XcyJtSyBQ99JXEmVtzInGSO81wnkp98DFxqMguy0FLjbfOOVihtxQE5Jd/MC3PSrgYy2CRxzCKJcFaKkrzJMfP+CYzlHzirs7kceL7+HRr8hUP12qfgu90y9DWBdrRcOg6AqM4eOHz/RXZkohabQ5y8gRb32AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709794978; c=relaxed/simple;
	bh=OBe7iFZuReG8P/0g/nf5f3rbxG1c9+A1XatMuNZhyvY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RjINLu6lqdiQUUD2x/Y00XSEQtK2AKXueK3kjbTqPH6XpPU/xlwbA+ja22KQNbMji7H5IsU4tR6kCM+3jSpdKZ1PoQq5j/WPpkffcN8jrM2E84+DDSU/N+/OAyMjsiNUSZKx7v7KIDwC3lHzw2w5Ez6tiptqqBmEbFwHPN0b+2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zVn3zxlP; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-7ce4512d308so368077241.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 23:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709794976; x=1710399776; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rtVcoO9EdMVwfooxI7FOluwLbnU5D53g+z6OZi75Lq4=;
        b=zVn3zxlPzH7UPC/D++00qKbIH1arhshS1KAuFyj6xvS/6o9yHSm+K7OsCIlS+r3uT0
         yhaiKe06RbWK+nLB/Bg4w/4Q5zfO+T+rngClM1FwsXLpizUwbGarn243pjclhe4cjxSQ
         kAlgUNjffOA2eDax8XLGxyJ+8RJSEVQUfe354BuecQp5FVkhWnIz+eHk4JnCEzRFSdDy
         tzdM8mDky83cP0haGDPB6j1T33vFrxAbRuhio01xhIwnmabrEd8VwNoWDmpv51tLUztU
         QFUKEQiQrpv+A8vvH4zTMk/kFLdBMNUlVsdO6kEBrQFxFiXsxfEQK8xQbjOtO4JSObaH
         SBUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709794976; x=1710399776;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rtVcoO9EdMVwfooxI7FOluwLbnU5D53g+z6OZi75Lq4=;
        b=IQ4KALjhCtolIswq/vrtXyvqu342//iOdOzWar22nmhlYdfoD1+wSWKzd81Xom8Qch
         QKwHkNluHx6jKsJzAS0dDUb62CFj5ZhjFPDM+e53aeBmO/DKbFQhvNAvKBLD3CZ4iih6
         lTst2scJ6LHX1Bh7c9zerPYXo0cbR9tor02GJivJdJ11qECPQIemTrYmQZpCane8yJWb
         Gocxi/35dP42Ln6aQUzOLD/XtNgFQK0HKMk7JtweZt+wyZGomdjt26YdQJxRUPQiY33m
         FmbinOnUtPdDWhRxlgyRoV0kXRmNhDJwxCzD0uEEpF31+P33p0xZ7TFv8UHPf8keCMiZ
         8DQg==
X-Forwarded-Encrypted: i=1; AJvYcCWGwCfYqGjpMrlpLohwUGLmfmQKJ7nnbCvoNTDA7ZRBmviI9CzWfhqafBZmFLonPRWMbbcQjmjn/DUQLrvCZ1iezHPgIhHBSAkpuw==
X-Gm-Message-State: AOJu0YzkfZ8bCzYkoithFN5RwWsef7Jvk2xevFTsl5ZEF8KPmF+kSmRo
	qLB7mQVUljy00Axmvd0UTd+B6Q7/9KLc6jfFzuAOany+4tKng5r+P3OqyPlxXX/SQRfrsTDxEKF
	MPCK8nFf+BPwf4mBhwVtdTf4OjcUj4I2CYpQuFg==
X-Google-Smtp-Source: AGHT+IFRYze7tO1U5koqDn3Os1b2lN61jQUOyyUQbuPdUoRc6ftbDI4kO7dIUuGq9SfX8vhQ8vNrAhsojMO8KHr5g2w=
X-Received: by 2002:a05:6102:304c:b0:472:5968:b670 with SMTP id
 w12-20020a056102304c00b004725968b670mr261914vsa.9.1709794976121; Wed, 06 Mar
 2024 23:02:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306200910.2732835-1-volodymyr_babchuk@epam.com>
In-Reply-To: <20240306200910.2732835-1-volodymyr_babchuk@epam.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 7 Mar 2024 12:32:45 +0530
Message-ID: <CAFA6WYPKJ7N9UUcX607gkcHF7kTswxaQYe4sCcgJXVa_pXSnMw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8150: add reset name for ethernet node
To: Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Mar 2024 at 01:39, Volodymyr Babchuk
<Volodymyr_Babchuk@epam.com> wrote:
>
> Add reset-names property to the ethernet@20000 node. This patch does
> not change behavior on Linux, but it is needed for U-Boot, as it tries
> to find the reset by name, not by index.
>
> Signed-off-by: Volodymyr Babchuk <volodymyr_babchuk@epam.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 761a6757dc26f..c2e65d6a2ac62 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -951,6 +951,7 @@ ethernet: ethernet@20000 {
>
>                         power-domains = <&gcc EMAC_GDSC>;
>                         resets = <&gcc GCC_EMAC_BCR>;
> +                       resets-names = "emac";

I suppose you meant reset-names here instead?

-Sumit

>
>                         iommus = <&apps_smmu 0x3c0 0x0>;
>
> --
> 2.43.0

