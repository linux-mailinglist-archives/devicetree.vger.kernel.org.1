Return-Path: <devicetree+bounces-48048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FC786FDA5
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D674228393E
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751EF249F0;
	Mon,  4 Mar 2024 09:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N1FtDhoe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7039241E5
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709544409; cv=none; b=HktdiEfzcDmy4efCZdc68juqysjcTf3ZW/BCXdNrpJpW1N5UJee0TGY7257YOkAFxRi2HoV1koxX8A3bTY8cDPKTijMnUce8WhoY1PWO8Gf0dkpilxsGmqbDW+cIe2flSmPzKnLIKWjI7YADnMd1e1tFY1+d8PJdb5H4iWDD2Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709544409; c=relaxed/simple;
	bh=ryXeKJw4iy3UVLpne9eJ1l4gNk+sRKCmF5OtA5i44uE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MejbHuLAa0LCZI44gI9QT1/DOiVyjQcW1hH4JnBQpY7j1X90LkCeFNAtLCXSGiS+5adFAs/59eeFNHe4Frn5XCB305qpOBF4mUp2ut2te5njW/BildUqxburEVptnNf0Vzl6pPCONnZ96+pPQkHjwV7eRuvHOuD0fwEKqRExwy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N1FtDhoe; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-60978e6f9a3so39976377b3.3
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 01:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709544407; x=1710149207; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uVMXMp5GXf//8orzDkeuICE4lRexQIrg1Lif5wkwjnQ=;
        b=N1FtDhoezai/Bw3f3eWeQN/fIs4hKOhj05qSYKr8aV7NsEsOpZcSpEPoDZxxc/LVG0
         W2ZaO+tQbljsBW53tAHU5fDF9HnsctuIR4cTMrEfBlc3HAeE+WkzXTP6lVT8Beat2oB4
         Qu4rA92rHMtsKE/TUIwhB4wAHvrfdFxgt5KnpW0zj2LTmgnHawYYWtmJ3/ySrMxSBpaO
         b63+gPfrTGe5t8moL1+azE+QSNLmWwPRhIcMn2UrameZnfPtENFA0htM7/i9qtSttkQv
         W3IK3dIyByo7YH3l72ooRWdj7dF8EFeeXTdKhtp7JwkkecO/indlVWXPfPC1NTPIlcUG
         UIHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709544407; x=1710149207;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uVMXMp5GXf//8orzDkeuICE4lRexQIrg1Lif5wkwjnQ=;
        b=IC1Wocip88DYcJkzLfbxFLDvDBKWBwPpE+zqr7IOpjDVg0A0JBgZlKuXRWIusXoUC2
         BDnMOE6OxNG8Yn2TET7P6AWI4jtJEQem7L4/+C6Hj5Szo/8bxLeFuY/4dolZZRpjEyyU
         Wn8SzMnOqKTMBQIcuRk52dwXEQRoq12Z/7GNw7yMsb7Fkl2/WKmqyCVxwWLVplbzKUat
         GL1cZfHHl3Edx6Dixem1xtovDRmaSafr3nL5HKT2lvmGfBbkNMzaiSsT7edLTjuca8H1
         72/gnk0/tIRf2amudvmz5ekMbgHYn4plTLl4KHeEbhaZVXBhrZbYl6TaaDq5smw8N9n4
         ygfg==
X-Forwarded-Encrypted: i=1; AJvYcCXZW8lTvbdvzVHQIiqjsea459poJCReq5hEfZVEP6IYHIQD2NRRQZPGGN097Y8LErB2t7VNR+qcJKgZRTY+tJwhnmMeDwktuIGvbA==
X-Gm-Message-State: AOJu0YxXN0PlwnNoVvMFd71g8n6aVpzV7yhc/WQxD4Yk87CuIxjP+gMB
	Bv6V1k/dEeogFfwJloJvUWD/c6j7XRZW38/EIL39X0OUPKC1hBneqejJi5b+Y6DeEwv0/BedveG
	FI6w4uJI4vFdeY6caFOMaz6ERpJxgerqUgQ53fg==
X-Google-Smtp-Source: AGHT+IHQFQoTq3QFgov9rUkgv2gPMwLnUo/V33Y0pWtYI9Bmu1SYWRGOQ6V4Ce4vhTaUkv92lE9/v2HlEmv0hYBqm4M=
X-Received: by 2002:a81:6f03:0:b0:608:7a9c:9a82 with SMTP id
 k3-20020a816f03000000b006087a9c9a82mr8055053ywc.47.1709544407024; Mon, 04 Mar
 2024 01:26:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-pm4125-typec-v3-0-fdd0ee0465b8@linaro.org>
 <20240221-pm4125-typec-v3-2-fdd0ee0465b8@linaro.org> <CAA8EJpps9EPCgwBF8d8DbVzSZQ5tbEnj3RyGcJ=ua0eigDWQzQ@mail.gmail.com>
 <CAA8EJpq=Js3vtRQrUDWi1mOgL3C1iEsaAQs+dwHg=hLyE0U-rw@mail.gmail.com> <2024030452-detail-curable-b5a4@gregkh>
In-Reply-To: <2024030452-detail-curable-b5a4@gregkh>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Mar 2024 11:26:35 +0200
Message-ID: <CAA8EJpow3a9rDRgia+D7e3mp1GQGTS2UmTzBufewRcS0ZgqiZA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: usb: qcom,pmic-typec: add support for
 the PM4125 block
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Mar 2024 at 10:32, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Mar 04, 2024 at 02:08:19AM +0200, Dmitry Baryshkov wrote:
> > On Wed, 21 Feb 2024 at 02:00, Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> > >
> > > On Wed, 21 Feb 2024 at 01:58, Dmitry Baryshkov
> > > <dmitry.baryshkov@linaro.org> wrote:
> > > >
> > > > The PM4125 PMIC has the same Type-C register block as the PMI632.
> > > > Likewise it doesn't support USB Power Delivery. Define the compatible
> > > > for the TypeC block found on PM4125, using PMI632 as a compatible.
> > > >
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > >
> > > Making a fool of me, for v2 there was:
> > >
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> > Greg, as Mark has picked up the vbus regulator patch, is there a
> > chance of you picking up this patch?
>
> As it doesn't apply to my usb-next branch, it's hard to do so :(
>
> Can you rebase it against there and resend?

Done, thank you.

>
> thanks,
>
> greg k-h



-- 
With best wishes
Dmitry

