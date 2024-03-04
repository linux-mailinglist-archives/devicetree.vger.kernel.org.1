Return-Path: <devicetree+bounces-48078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CA82286FEFB
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 11:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A8E1B20D68
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBEC22630;
	Mon,  4 Mar 2024 10:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aWdKqM0j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECDE225CF
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 10:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709547898; cv=none; b=Mq8pRdnyg9fkKRhNbs0EPI68XQ0/ZgUDylAZkqRTyUALRRAp0ZGKwohtjc6pxn6WrmuzWAgbVyuMAh9CW5i3Iy1VxH4uww1okLr4CfdjNo6ElnbIFm1cdrnB09sKqapF2O5yQQw5TDm0AUW2MJXHtj2/RX/KrQNnbkGUjbcKJVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709547898; c=relaxed/simple;
	bh=B/p9C/j+Ad9n8/+/6/pEpIkJ0VSlGvhLs4GQUeDwZIY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VUL/RvTFplw5NSr2b38ygSXMuYJKPz88ShElggQcj/uBm+uPafS7GZ1/0qV/W/86QcM91V4msW6ybNoqOeKfjS1FF6TwG0cStriamMY8PL1l6bMbHhZZGuYcJloA46aFKSp9jqPXIUy/qt0U9l3nrbHKuAYKj4h8NU3q4/SvDDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aWdKqM0j; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6098ba9959aso24103547b3.2
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 02:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709547896; x=1710152696; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5MvLLiHKy+7g4m0EQRZXmKZVCgjWHjYHDhw5XRYe9JM=;
        b=aWdKqM0jNwgdoz7BQTJbEAMhDwybCb8S3UokcTl0ExyMLWDlh6UVHnCBvy3ouypN0S
         /RTa/sEpDMLIwLXkUriPpMLT64nASCCvukcUytySRKcJXr1iSiBKwJF8oppsK5EEXRK9
         sv385nSIvV5kFhhpMRRWIRQD8enJCz9tfnynMseqjA/CyrjGTBhs8ntfsCckACKmwMuj
         3xZVKEQAuc5eWa0QbNJpzpQLxdObBuA9uyP13psQY3Ev49WWhKK0LqaMoYz7/yj+pl8D
         FbfnPZpZXic0RASz3/d0e0mtckC4kmUjJuD7sIF7ZOIqKDD9n39ihdqmXNGhL58Lm8zj
         izEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709547896; x=1710152696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5MvLLiHKy+7g4m0EQRZXmKZVCgjWHjYHDhw5XRYe9JM=;
        b=AyLBmkGASDkDh149kjcRmdquJEBH9f6hfv+NU4MWA1YEKbms5d1L3lUkVd4EJANhdS
         zmoNR+eVfsDbJCquvHByLKfLOdxOrMMMOuDi4fhuNfD3iOMAlxqcnWO3ikwWiMm1ppkc
         iM3KEPJUSc4UBfxOxbQZfIF7NTpHdyt+RqHaVvsrOQ6PO7mP3Jeo+emENRUNFGtb7EV8
         kEf6khreEXa3ijDVKTnAbPP8DHq+fbfxV0ttyr2ZVWEL/l3Hmhbqynma+49h8RQkQmpf
         JExYxd14r/yPpB+2OZh4QIoVqJ2BhVnRhrfB2Hn94eYQW9B0BWeBsxXIz7JMjl9Y1zQB
         PG3A==
X-Forwarded-Encrypted: i=1; AJvYcCW8v8QqdU77dEBsFbpNzeYbPgJ4v/ZlaxATEHp35/Ryhj66S9EVgHmTVYEd4IgZYtyP1VTmXSB6583su2UI2IJLvY/hX3p9jOai2g==
X-Gm-Message-State: AOJu0Ywf01M57PMrxtb/mdhSSyjbvdjMA165LRajCUg114tZ8j6vvy0G
	uOpCVoM9H7CPV10RIWBwuh16O33xWBbYnnI/iALFnPwAYAe9WF+1rEq+st1aU1dYujIRsupZCCe
	I/pFbLwyol37akaC6KRhx8BzROG1I5HOWJQnd+A==
X-Google-Smtp-Source: AGHT+IHeJ2eLw4BVw7Jt2jcC9lyLDaioLDtXDPZBlMbV/W5XEb0laPQ/T9UXMRYekhs6WmzEEvWDsP2x6CTAI2UYGi4=
X-Received: by 2002:a05:690c:f90:b0:607:fbb6:8be2 with SMTP id
 df16-20020a05690c0f9000b00607fbb68be2mr9509835ywb.47.1709547896129; Mon, 04
 Mar 2024 02:24:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240304-pm4125-typec-v4-0-f3601a16f9ea@linaro.org>
 <2024030414-stark-service-ce78@gregkh> <CAA8EJpoCm+jqMsd6=pnpd+cCtqLYnMWLmrNQgjiyhi7ugeUjvA@mail.gmail.com>
 <2024030456-felt-tip-frequency-f8b9@gregkh>
In-Reply-To: <2024030456-felt-tip-frequency-f8b9@gregkh>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Mar 2024 12:24:44 +0200
Message-ID: <CAA8EJpq1VBA25kc1SLzb+R5MZDGzhqUqmG-nxUN9NmMK3RB=3w@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] arm64: dts: qcom: qrb2210-rb1: enable Type-C support
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Mar 2024 at 12:09, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Mar 04, 2024 at 11:51:27AM +0200, Dmitry Baryshkov wrote:
> > On Mon, 4 Mar 2024 at 11:49, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Mon, Mar 04, 2024 at 11:26:09AM +0200, Dmitry Baryshkov wrote:
> > > > Reuse Type-C support implemented for the PMI632 PMIC (found on Qualcomm
> > > > Robotics RB2 platform) and implement Type-C handling for the Qualcomm
> > > > Robotics RB1 platform.
> > > >
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > >
> > > Patch 1 added, 2 did not apply to my tree :(
> >
> > Thank you!
> > Yes, patch 2 should go through arm-soc.
>
> Having patch series where each one goes to a different tree makes it
> really hard for maintainers to know what to do, and our tools want to
> take a whole series, not individual ones.  Next time perhaps split it
> up?

Ack, I'll keep this in mind when submitting series against usb-next.
I have always been on the other side, because splitting the series
makes the life of the reviewers and testers harder. With single series
I can review, apply and test it as a whole item. With the feature
being split, I have to collect all the driver changes and also the DT
changes to be able to evaluate whether the approach is sensible or
not.

-- 
With best wishes
Dmitry

