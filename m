Return-Path: <devicetree+bounces-108195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 776C0991FD0
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 19:11:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C6D81F2162B
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 17:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A35EB189BB6;
	Sun,  6 Oct 2024 17:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XJC1H1Yf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60EA17CA1D
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 17:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728234694; cv=none; b=U5/cDEuJTS06nkg23QJt+2q5JN64LIrNGNfZQXhNzqSPzQNSWz9MHIvTY+yXJaxznOl3W3xaGLyMxQ8aLqzja6cTHQ0HiOHorHKAqAxOEYqcZPO+/18xS+50J6i/Jt+Q2u9UqO34czfbLQseTwjMTsgwLA0uvD/vEBXOqbKTFjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728234694; c=relaxed/simple;
	bh=3id98dWfPMqGRosAsonLO3shESXmQU5V73Lu5hbyTVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PcrHUWB4wugnqTntNgJRuZKVhr1A6Iu0OTtJwdy5t8aQU3NFv5qVdhNZg9Qr+m7O2sbnCxwghadPQH6mDMN7jsMChGXoLCAWUYcGwwUk+pV2T+eJBh6vO8S6t+2LOG8269TbSCD/vZp8eetOStd/VYrKZ1FR4Dvf3tARH+lnCGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XJC1H1Yf; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5398c1bd0b8so4466018e87.0
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 10:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728234691; x=1728839491; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HORmwBmgfdl05E9vDg1kc4I3kqXYteqYbjrn/dZeplM=;
        b=XJC1H1YfSa4X6VM5x+JBWxey1xRnJ+EUbz28qX5WD6krYtuhNu4lX2Tyn3xWcCH67j
         hv68oZQTaJZPvHjUe9eP/DqrJt4dRaOKUkHToj9n0yVJiUdX96s8wrnGvdrbWFxaMV+c
         dLtAzywG3KBnTSpCZnm7dflvGy+hUJpV3X0xNQFs7an5y5ZQMoAjJT+IYnqGaXTBkgFC
         RhrtH4du+nj8XNSeoJWtLIxM0cMC8Qanprp2oAJgeBeR9pCGFCo8sWI/DEzfVImCs8IG
         gMbHA+rHBZSzegKABjmt+qXpFm3sEysxaVZf9wuPTdh98pzeLxvmhXGyabzSxMmHZqPL
         WI4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728234691; x=1728839491;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HORmwBmgfdl05E9vDg1kc4I3kqXYteqYbjrn/dZeplM=;
        b=fPWwvf4SAp2+slyHrh0P5zOjnan4tRuROU3rPmKOk0PUxdkxQcfoLgoxG0CVIjsdR+
         3BWCu7XLpS40UTCwYbojCcHfwiO24ZeTFdTAH8UiyxZvKM9ttlo67nZ0OmH0sCpOP9JF
         B/WWayi3orjOj853apgXr7+g/SmG+sCvXdYYODmHQKuiOegW0YkmUv9G8CPDxBqESDuN
         N/+rtmWcdgq5eNsFkQHsdFEnEME0yXPoW8e/zFa9G7Sx7ldkEUQcpS9TuW8IqhVfoxw5
         MerMOjmPlGdPtNP6B6qBw1ZIgu8J/VLv9qUJvAlLa5Tx8aAxvFh+6oSU2PXuQ6gjFI4u
         xlog==
X-Forwarded-Encrypted: i=1; AJvYcCXHe66sv6AzDt0fUHQm/eYcOXLIiKgAezZ0lnrViTaxyEbiKLGZp33MyfEt+j0V3+6FPiaYuIaQ2fL7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2/9pP03vxJ3Bo6WNQH8nZcnQ6FOBJVF0mVr0akuGSTEN/YpwA
	gbHFZtuv8OigHapWdDi47p73VdsmU9JWVYhdy40tJ9O9LRaHDKIb4tg3CFW1gis=
X-Google-Smtp-Source: AGHT+IGAcVGzz3f7BDb/2j93VyI4nWnEvGMl+6HSIyG3vXGDdmlsXZ0thd5pVAWVdkXAUKAbGwnmHQ==
X-Received: by 2002:a05:6512:b90:b0:539:93e8:7ed8 with SMTP id 2adb3069b0e04-539a626a412mr4126081e87.15.1728234690926;
        Sun, 06 Oct 2024 10:11:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff282casm565156e87.273.2024.10.06.10.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 10:11:30 -0700 (PDT)
Date: Sun, 6 Oct 2024 20:11:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Shivnandan Kumar <quic_kshivnan@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Ramakrishna Gottimukkula <quic_rgottimu@quicinc.com>
Subject: Re: [PATCH 1/3] dt-bindings: mailbox: qcom,cpucp-mbox: Add sc7280
 cpucp mailbox instance
Message-ID: <kzlhhovfffvg227oxbpl3nv6q2lyn53pz2fyqis22brkd4bkkz@vqprudcdfunb>
References: <20240924050941.1251485-1-quic_kshivnan@quicinc.com>
 <20240924050941.1251485-2-quic_kshivnan@quicinc.com>
 <20240924232526.GA563039-robh@kernel.org>
 <2d4e47fd-0aaf-4533-a96f-95ada853d9a0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2d4e47fd-0aaf-4533-a96f-95ada853d9a0@quicinc.com>

On Thu, Oct 03, 2024 at 11:13:02AM GMT, Shivnandan Kumar wrote:
> thanks Rob for reviewing this patch.
> 
> 
> On 9/25/2024 4:55 AM, Rob Herring wrote:
> > On Tue, Sep 24, 2024 at 10:39:39AM +0530, Shivnandan Kumar wrote:
> > > sc7280 has a cpucp mailbox. Document them.
> > 
> > And is different from the existing device how?
> 
> It is different with respect to the register placement.

Register placement in the global map or the internal register structure?

> 
> Thanks,
> Shivnandan
> 
> > 
> > > 
> > > Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> > > ---
> > >   .../devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml         | 5 +++--
> > >   1 file changed, 3 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> > > index f7342d04beec..4a7ea072a3c1 100644
> > > --- a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> > > +++ b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> > > @@ -15,8 +15,9 @@ description:
> > > 
> > >   properties:
> > >     compatible:
> > > -    items:
> > > -      - const: qcom,x1e80100-cpucp-mbox
> > > +    enum:
> > > +      - qcom,x1e80100-cpucp-mbox
> > > +      - qcom,sc7280-cpucp-mbox
> > > 
> > >     reg:
> > >       items:
> > > --
> > > 2.25.1
> > > 

-- 
With best wishes
Dmitry

