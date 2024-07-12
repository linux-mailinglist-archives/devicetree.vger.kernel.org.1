Return-Path: <devicetree+bounces-85285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2B192F8B6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 12:12:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 983F6B2150B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 10:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87DE615539A;
	Fri, 12 Jul 2024 10:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kJ8vdjHB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E74145326
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 10:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720779132; cv=none; b=b3xkK5TCBJFjGR77kZBsfyWLx3mPzX80/1Tg8F1+2Us8Nf/Cxt0Tq2DfI41vnhFMNxUXboPmGIfHxOpF/khQMWwL6H9SiWio0MEmwAH9iyEUPDjhQS2zVpgrEh7RO8kw9/lAw9uAXCmlmU4pfyvqhpRD5Xc5X8ArS8uP4XldI4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720779132; c=relaxed/simple;
	bh=ZtBiM5b//bP0fKq1ra7iYdhZ4PDNBgkqNAoFtsh6leI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OQaz5scDIZO1zmm5P/yPOBYMMXyzzF3/OacybXa4KcMgypO3QVQfOU+MY72I2+9WdX8G78n7FIjQ9ZMV9Xhd52NZM9eXEjUGuweZufNfh3GnaK3FQqtON/a7MLtYup5Q2Vg3RpYFm6cklnTlKnBYAlLWzT7D2Lks+lbcQclzVgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kJ8vdjHB; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2eea8ea8bb0so34140491fa.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 03:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720779128; x=1721383928; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0Je+bWklzCKJuneNY6cNlT9UWbwrWRFKxzVY5soo7Kg=;
        b=kJ8vdjHBO2hyBiy++QgAt5LrhMA2hhmNWou5wHvi2co9NpSscxrsmgWiPnY4Lyi7Fg
         3Q6hzt2OcSGvCb+hC7hlEYjws9yMpaEX37fLmubmXKS/p3UGgyF2xuvQSJFS9qrDJup9
         sR2ile99Pl18n/GcMN3P3fDWdCHavmRHjhj1/wO6z6EDlZBx5DPd8rV8UUHicw+TFs9y
         xzEGTisjwQp3lXJMEMkLZMot0mrEvFOIIVOH2kfLdxXevnH2o0NpE9olq1/JVvadkdpZ
         rm9eJHFiWydQu09XQG2t2U2aSuehSMWG77m9YYapBCtuWuJ730z8WaQnn8D+UP+gd7j3
         hU3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720779128; x=1721383928;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Je+bWklzCKJuneNY6cNlT9UWbwrWRFKxzVY5soo7Kg=;
        b=mVO6VEl2WR6P1kCJ7z9EAqNIfyEc/ce3Rexa4Gz4aJHcjOhNeYdss42mTC72WRBbAA
         sBJe2R7sC4Imyz/at+KlEDmKTsW6yYuBmb7G5ztCHjYijfGcrpQtszx4smrNkX2L0yRF
         bXIwf+baX58o+zF+ra5/RUV0BpxWKTObPoR8Y+6ixXdVJr4Vuc+a47b4GTY/Qt/6ibAY
         zPKGuq87KDcsAqmzdtUjsYTW01DKG+7FIYR9OPkHBE2KLNwgHLU5vQPnyyoORGksYTMO
         lVLaCdrIfQAHyfmCRhvZKPalKR7+mY3Ydo8JB7LXLaKKALr/jwV4NeS5xYwLp1cbN7M2
         kVgg==
X-Forwarded-Encrypted: i=1; AJvYcCUV6PzBKY+hl/UJDN7TPE2dhY3q92C77Rq77Gy7PzP4GzQOMgGFScVxOv4bijLFSpRDohlge7TA0kfm9ZBxxLyBi0fRUHPJDea3ZQ==
X-Gm-Message-State: AOJu0Yz9obrhllG+iigUPHD6c2nVeGw7puHdq4dmQbeT7D0jXNKkL0Zd
	6wk2fECwWpBC429ndHuhLriOrUxo3pORHn9QQD2RLqfHQQAtgEMt6OJJW0DTNVs=
X-Google-Smtp-Source: AGHT+IF7JW+Kh8tLh+UYC/9/ItXhPzDMCdfMbKPA2aVcrplOv+QP5gAkqvXAWcsCdpyUaEH7C2owmA==
X-Received: by 2002:a2e:a4ad:0:b0:2ee:5ed4:7930 with SMTP id 38308e7fff4ca-2eeb316afaemr89114451fa.37.1720779127859;
        Fri, 12 Jul 2024 03:12:07 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff1f:b240:cbc0:d3ac:530e:4e1d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f23984fsm18562155e9.7.2024.07.12.03.12.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 03:12:07 -0700 (PDT)
Date: Fri, 12 Jul 2024 12:11:59 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Doug Anderson <dianders@chromium.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: display: panel: samsung,atna33xc20:
 Document ATNA45AF01
Message-ID: <ZpEBb6A06dDU55RB@linaro.org>
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org>
 <20240710-x1e80100-crd-backlight-v1-1-eb242311a23e@linaro.org>
 <CAD=FV=XJuV12mStW3eUm5MHG8BA9W_fn0skN=BrtmqC+fnCZig@mail.gmail.com>
 <Zo7a6qso7RZ2pkmb@linaro.org>
 <CAD=FV=U_knZPsM3jnpUOqK7rcBjJeqPAHDG9QRgWhLVeKGZwGg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD=FV=U_knZPsM3jnpUOqK7rcBjJeqPAHDG9QRgWhLVeKGZwGg@mail.gmail.com>

On Wed, Jul 10, 2024 at 12:16:58PM -0700, Doug Anderson wrote:
> On Wed, Jul 10, 2024 at 12:03 PM Stephan Gerhold
> <stephan.gerhold@linaro.org> wrote:
> >
> > > 2. In theory you could make your compatible look like this:
> > >
> > > compatible = "samsung,atna45af01", "samsung,atna33xc20"
> > >
> > > ...which would say "I have a 45af01 but if the OS doesn't have
> > > anything special to do that it would be fine to use the 33xc20
> > > driver". That would allow device trees to work without the kernel
> > > changes and would allow you to land the DT changes in parallel with
> > > the driver changes and things would keep working.
> > >
> > > ...and, in fact, that would mean you _didn't_ need to add the new
> > > compatible string to the driver, which is nice.
> > >
> >
> > Yeah, I considered this. I mentioned the reason why I decided against
> > this in patch 2:
> >
> > > While ATNA45AF01 would also work with "samsung,atna33xc20" as a fallback
> > > compatible, the original submission of the compatible in commit
> > > 4bfe6c8f7c23 ("drm/panel-simple: Add Samsung ATNA33XC20") had the timings
> > > and resolution hardcoded. These would not work for ATNA45AF01.
> >
> > Basically, it works with the current driver. But if you would run the
> > kernel at the state of the original submission then it would behave
> > incorrectly. This is why I considered the resolution and timings to be
> > part of the "samsung,atna33xc20" "ABI". The new panel would not be
> > compatible with that.
> 
> Ah, oops. My eyes totally glazed over the description since the patch
> was so simple. :-P Sorry about that.
> 
> IMO I'd still prefer using the fallback compatible, but happy to hear
> other opinions. In the original commit things were pretty broken still
> (sorta like how it's broken for you using "edp-panel") and the
> resolution hasn't been hardcoded for a long while...

I briefly discussed this with Krzysztof on IRC yesterday and we
concluded that a fallback compatible is better. If one considers just
the non-discoverable part of the interface for the binding (i.e. the
non-standard power sequence), then the two panels are indeed compatible.

I will send a v2 with the fallback compatible on Monday. I think this
can also simplify backporting the backlight fix as you mentioned, since
then no driver change is required to make it work.

Thanks,
Stephan

