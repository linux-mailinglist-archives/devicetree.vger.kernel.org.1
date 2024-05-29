Return-Path: <devicetree+bounces-70246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6533A8D2EFE
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAE3FB2389B
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A048167DBA;
	Wed, 29 May 2024 07:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CSapUuEn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D1B1667C1
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716969537; cv=none; b=E6MNj3qPUu5eBRqzpNi0ZPxImICZcvloCT5Ad78beXbgMUG9UDq8HgN7qdFypA1PHgfw3syWwNFtl2AAdbxH0tBaGvUy9i7xSxpUOWUI55brdwpTv7F2VL38+VCny+1kIkN5tN1qrphPfGuNFiPJ/1r5yZxfbfSDc4S0zsTjXOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716969537; c=relaxed/simple;
	bh=eV+TNUFOPSfrYTI5o/AT0Xf0B/1eVTyXgi/p7HYzCZ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qVftvm5mMfu3ajlz24aCEScAo+Tu3A+J54g8H8WietFRWL4ktCHhs3JTWmyh6+eQHrfdxDPbimr70E7xserzWSCyVnUI8BpV0Y5ps7EtElJicrqGZlsTGe669L7WA0aG0cYG97CEN55A00OB/KbGgeFeGn8ICJLkTd3e6PoCRtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CSapUuEn; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dfa52560cb3so24967276.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716969534; x=1717574334; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GT8+P4efjvmYbXaUJmIzbqIMG2b455xekjxbQfC1iiU=;
        b=CSapUuEnkLxIDRYPzlmgDUYCQXwHj2EoNWRp1wPZAbEy0F5LkQI8tdc/SR7QYki8lU
         ObCs8C/QzR2abZNeSKwTI6+NO2SdG737RlGFE2QeHvsbIV41NG4q1zfk3xMRNqHQdHf6
         mh8+nRNe7vuA8Ii9gO61N57Tpkj9uxyKanNdu3TEITaIJJ6AE1Wt41uIG9Osn6relYT/
         E5dkzFT6mBZK83bO0Hp5ugYyghBcY7XJgZQ/DEc9KWNbSvxbmNrhZwrFZ8xK7tqnQ4pw
         MdcZuefHH0YBgMFYnlNwRwoC2G04SNhf8yvjjFnvco5lPEojQt6Wfio2EPllMOljeGxz
         NrCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716969534; x=1717574334;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GT8+P4efjvmYbXaUJmIzbqIMG2b455xekjxbQfC1iiU=;
        b=FNU31iPqvM/vNqQL9ScLntURtO54v8aajlsw67o8m5deUL5cYrLjEfeISlqZ45Z0JA
         drzE6wg2XF7h+44ngiBndLtr4j2HX+e1L7heDuEBl6XEFCyfJUN3JcQkXWxZ2RQkvVM5
         8hAFAX7ghlxUOdUy2JFEwexPTd3jr8tPN1dxuUzaaPvdNe7N3Myu7WWHcjNUvZ5MNm8o
         rw5lZgYKwSAR00LfizBJ/y4AP5COulokdz1xyQPGJs+Y3Dss35ZvaNH6QekyAgF10zs9
         D1jNxi4d5/po0kRVQfidgrXMOgbnB6CQwwuXSSwahlpSBoAEx5nyAfHLvUwLS3zkD4yR
         xzyA==
X-Forwarded-Encrypted: i=1; AJvYcCUJzjY2EaI+6Z48xbNIBALzX+HQt+Jg0TmSbT8Z4j0t2JLVLO0vPMXww32m6UGmXcScFWlH7N4kg1MUGhnvJEfIZDgrBE//aTDSag==
X-Gm-Message-State: AOJu0YwUjRuAmZtwE33f2zYRTl6RlcjEmh+rhP5PVA7PVLvhts7A2uHI
	mK88Re5bVK3flh92C9AO6jEWSrNT7WvNsfVedPa8aaRlEDdQLnDlQjfkA+SYpKO1dQuOsi3PL7n
	PT/h/15aC07m6V6gpY2D6enFO/0deoF5ODKQgzw==
X-Google-Smtp-Source: AGHT+IFr9iaSo3OLjDZIJEEcFIuIAb4qCzBlRghHqswxxDMpC2NQvQSUVQp1F/1cySEOwsza82fXospyKoYSnOhYZHA=
X-Received: by 2002:a25:ab26:0:b0:ddd:7456:d203 with SMTP id
 3f1490d57ef6-df7722176bcmr13800190276.41.1716969534655; Wed, 29 May 2024
 00:58:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
 <20240528-qcom-gdscs-v1-1-03cf1b102a4f@linaro.org> <9a1bbcbd-7f46-4266-8f08-5650a42234d4@kernel.org>
In-Reply-To: <9a1bbcbd-7f46-4266-8f08-5650a42234d4@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 10:58:43 +0300
Message-ID: <CAA8EJppu8kKC_zXRBAK9XAaPZ7SYShiZwpfQGYpC10Aj28Lxjw@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: clock: qcom: split the non-PD schema
 for GCC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Robert Marko <robimarko@gmail.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 29 May 2024 at 10:34, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 28/05/2024 22:43, Dmitry Baryshkov wrote:
> > On some of Qualcomm platforms the Global Clock Controller (GCC) doesn't
> > provide power domains. Split no-PD version from the common qcom,gcc schema.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
>
> > diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> > index 788825105f24..e7ec15b1780d 100644
> > --- a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> > +++ b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> > @@ -14,27 +14,14 @@ description: |
> >    Common bindings for Qualcomm global clock control module providing the
> >    clocks, resets and power domains.
> >
> > -properties:
> > -  '#clock-cells':
> > -    const: 1
> > -
> > -  '#reset-cells':
> > -    const: 1
> > +allOf:
> > +  - $ref: qcom,gcc-nopd.yaml
> >
> > +properties:
> >    '#power-domain-cells':
> >      const: 1
>
> So what's left here? One property? Not much benefit. Triple-schema
> (include something to include something) does not make it readable. Just
> do not require power-domain-cells in qcom,gcc.yaml.

And add it to the required list on all relevant platforms? Ack, sounds
fine to me.


-- 
With best wishes
Dmitry

