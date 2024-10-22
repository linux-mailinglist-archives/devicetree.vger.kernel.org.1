Return-Path: <devicetree+bounces-114147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CB89A9EB1
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B75EE1C2439D
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E6A157487;
	Tue, 22 Oct 2024 09:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DECCXxuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDC3198851
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729589921; cv=none; b=KVshqWWlSF8iWYOeTuzO1qtziKdZYqXp/Dz4zdbj3c3E7+JE4cmSO9RVCNpoSQdh7Nifk1RX+cjOMboCyqUncOaSP+3ZHkVq2w25vkQpjbAiZVCrk6aJFStvMhvs+0VN4K5JIJfvaW4yP4uLxeHjbT5aO4EXtgt/iRj7dWw0e9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729589921; c=relaxed/simple;
	bh=jtL+q1k/uNxoSxNFpXI2oLIDpt4U4O6GXFFLuZ2PuzY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P2qPsUucSlDBQkGtUpLraRcz287l4E28zW8IiLU+MTjFZA/xLFFOGAmeQLUZZd7d1YsbyQZF6B58jtIrB61QbVRf9l2CP0+oVbMvUgipU6FMuT3W6o6+TFCz4HglNTiuOXuMZzz4NzPerhV/lcue76nCY0ZCleFLCef6HlNmGVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DECCXxuD; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6e5b7cd1ef5so41228637b3.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729589918; x=1730194718; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N/5Dg47fBjY/YhFPEspJexC0cvl06u9WdqmPSroLAzY=;
        b=DECCXxuDCv12XfhmXec7uJZKwdDohA7QlODHM3tW+ShwMFJRkERBxzTn1h1PgGi/JZ
         4VFxq0toK/NQozgUlEM2Az87dvvIomBmoPMGs/EiE/K1787934h+/5kuINBm+1fFRDbV
         iasRCDHL8i9aVEKror6MxSgKyN/j+NTdG2bZjHXaF6EvvD+rdjik0yKCjmBFmZBhcokd
         38TFHqkHdPuUNPflC7KE2j4oAk5Z9so8+JfjTwQDDhH7N06CANOKtulAA6zyd6vU8io5
         6JLYc4ac7Uv29sK22xodCwQTJoZd8TDbOYYSSOjyH2rSe37kczejuDN4on10Ox/0yEfm
         gGVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729589918; x=1730194718;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N/5Dg47fBjY/YhFPEspJexC0cvl06u9WdqmPSroLAzY=;
        b=jbuOOWMw0dbEERzgfo5kqgTdtx4MEvFP5F8ZvcKx8UPedJQe7k4fQZ7EqYOoVGKOUK
         P2C9hQO2CETsp7LfcQhFWXQzmoC1uhDpIvzo4yX3UI3hjsthWmQNss5PO8b7Anmis/mp
         RsqleBZ6ZFc55hPgodnE1HyqT4Ag7ZemUO/rTeREWbvEttHwj1fV99TI9Tga35ef2ruh
         0Ot/lVQGP/fmWiBXfNMJ7QH+tlQcjUSh/OtyyHX1GuRIIlBiJPD2l5vcrNxd0KncGGjW
         Ojzu7HCYUoNdxMssGe6g9hp9kqgHgmolZAZVCyx9HpkGzITPvpPjMFiW5qo5FgwR77x7
         krpg==
X-Forwarded-Encrypted: i=1; AJvYcCVbsjEUwX+lTt5aKbqpOfDrUVjzOgJlfn7HMpK8HWVNtzyOSuz1onoz790ZHS12hIKjNT1dTSZ1g6tA@vger.kernel.org
X-Gm-Message-State: AOJu0YzWNNUCPRn9xKNsjnEB7PUxfB6p0gk92XiLVmwlxpRL3FYdyuXd
	e+kabL5DY3JpwAfVo9YiJFFLJauuxWsoE0JQm4YRfoVx+URWjTm763LX1z4wNWaolwDG6nJlEdq
	Ojzxg2r5UINgat6cPRYGxjPbEntHY4QpnHBOgZA==
X-Google-Smtp-Source: AGHT+IFOJm8RAn0EsBkDxk6LqZTnRur9nRUufhWOLHK1CxgpCVThwipByBxtIeBw59Z59ke0ZItxJl9xZjd0Aa6JrTs=
X-Received: by 2002:a05:690c:ecd:b0:6e2:1467:17c0 with SMTP id
 00721157ae682-6e5bf632349mr128695137b3.8.1729589918568; Tue, 22 Oct 2024
 02:38:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241014-adds-spmi-pmic-peripherals-for-qcs615-v1-1-8a3c67d894d8@quicinc.com>
 <p7fw7jjfawbnk2vb7zdtr2dp3ni4g2uuiwvt6o4qva53zyrpvd@kokibgaidfzb> <5c23a6bd-e233-4b02-86cf-902d2c57c382@quicinc.com>
In-Reply-To: <5c23a6bd-e233-4b02-86cf-902d2c57c382@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 22 Oct 2024 12:38:27 +0300
Message-ID: <CAA8EJppdQsGe-R5JKRJ9LJs9xGTdhkCGYc5NyzVSLA1bWvvUwQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: Adds SPMI bus, PMIC and peripherals
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, kernel@quicinc.com, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 22 Oct 2024 at 11:26, Tingguo Cheng <quic_tingguoc@quicinc.com> wrote:
>
>
>
> On 10/14/2024 6:53 PM, Dmitry Baryshkov wrote:
> > On Mon, Oct 14, 2024 at 06:08:17PM +0800, Tingguo Cheng wrote:
> >> Create a new file qcs615-pmic.dtsi to add on-board PMIC and peripher-
> >> als in the PMIC that controlled by SPMI bus. The peripherals include
> >> GPIO, RTC, PON, power key and resin-key for QCS615 platform. The power
> >> key and volume down key are controlled by PMIC PON hardware on QCS615.
> >
> > Why do you need a separate file? Unless there is a good reason such
> > configuration should be split between the pmic.dtsi and the board file.
> >
> One reason is that I use upstream as
> template(x1ee80100,sc8180x,sa8775p...), they all have
> platform-pmics.dtsi alongside.
>
> On the other hand, qcs615-pmic.dtsi contains only the PMIC's
> peripherals, creating a new file can eliminate duplicate code if there
> are any other new boards with pmm6155au as their PMIC(similar to
> x1e80100-lenovo-xxx/x1e80100-microsoft-xxxx, where "x1e80100-pmics.dtsi"
> has been included).

And this is pretty unique  to those platforms and it exists mostly to
facilitate the case when a platform has several instances of the same
PMIC. In all other cases (mobile, IoT) usually there is just one
instance of the particular PMIC. In such a case pmic definitions go to
"pmABCDEF.dtsi" to be reused by the platform and then board DT can
include that file and wire it up according to the platform needs.

> > BTW, what is the PMIC id for pmm6155au? Is it a real PMIC or a version
> > of some other PMIC?
> >
> pmm6155au is the PMIC id(Silk scree). It's a real PMIC for qcs615.Maybe
> I should use the name qcs615-pmics.dtsi instead of qcs6150-pmic.dtsi to
> align with other platforms.

Is it the same thing as PM6150? Or is it a combo of PM6150 and PM6150L?

> >> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>

-- 
With best wishes
Dmitry

