Return-Path: <devicetree+bounces-25582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89791813C50
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 22:05:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41525281637
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 21:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB5C26ABA9;
	Thu, 14 Dec 2023 21:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aT6M1V64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A153D6D1C4
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 21:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dbcb4747d84so3572749276.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 13:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702587927; x=1703192727; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LCymCj092ujEURhtWwiTvgQB9KRuQ5X6H7jpPjRwiFI=;
        b=aT6M1V640/KmulZbvF8adtttkzImYOWLfz7+GvkLrgU+eZHbV4B91992QnL5dCV2jW
         5rhQ2Tf47fvN7iq/TYHdFBr3UegSr+Bms4sGTNy/VrZwKgKWCiMI1unmoFkL6TJ0jcXx
         Y1PCeiNpiavwz1XzcuawZkcbDReikqHGxWYqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702587927; x=1703192727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LCymCj092ujEURhtWwiTvgQB9KRuQ5X6H7jpPjRwiFI=;
        b=xF5nkyL7mTEexs90GQNIhXfi/PdjQGKQGGrSQaaVjmSa297b2J4ok8xAbZU3e1ZwYK
         1sftOe2CJQYLVYST9iO1P6vnHoBMWkPiPo5E1SiKngNRLYqZtU8l9rstyvhHVYbY4xMD
         v2NTpBM7tJe/NbW0Ibrne/400rAG7elCG+jwDHey8dGI6x5xvo2C6glg203RESi2FVnN
         8L2LLEyUwLCOA2o9pRMvHf7GuJ7gZ/xTGlRWatlxxo0b21tosrnTDBQAmgl/mhi/tb2D
         b/N5g1nSYXPMNwhUGsi7xJaawuBlNJRyg8iy1rshX6TnaHeHSCUzQs4Rb93f+6wuXqaw
         fcYQ==
X-Gm-Message-State: AOJu0YyiqT8DH3SWrSRVnMAP4d1xVY2V6az7mCRhDkZBoYCFQJ0a61ef
	ETWhIVrlknXtl7iQ+f0LlMJn0viS8IPHnQbXIlyfkQ==
X-Google-Smtp-Source: AGHT+IHb60puIqHHGo6rM5uZOwFH3Ag9T5NHkQNm57AGOmvZOdEPbBCU1i6nzcI9Q2fM9TRBsAaazWax18XAklDix9M=
X-Received: by 2002:a25:8c09:0:b0:db7:dacf:6fd3 with SMTP id
 k9-20020a258c09000000b00db7dacf6fd3mr7018530ybl.91.1702587927520; Thu, 14 Dec
 2023 13:05:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.3.I29b26a7f3b80fac0a618707446a10b6cc974fdaf@changeid> <20231213221959.GC2115075-robh@kernel.org>
In-Reply-To: <20231213221959.GC2115075-robh@kernel.org>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Thu, 14 Dec 2023 14:05:16 -0700
Message-ID: <CANg-bXB0EAd-703oOzXsFSS72Z3bfT8La_5K=W41L+B1uMz2-Q@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] of: irq: add wake capable bit to of_irq_resource()
To: Rob Herring <robh@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Raul Rangel <rrangel@chromium.org>, 
	Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> If a device has multiple interrupts, but none named "wakeup" you are
> saying all the interrupts are wakeup capable. That's not right though.
> Only the device knows which interrupts are wakeup capable. You need:
>
> return wakeindex >= 0 && wakeindex == index;

I was assuming logic described in the DT bindings:
https://www.kernel.org/doc/Documentation/devicetree/bindings/power/wakeup-source.txt
"Also, if device is marked as a wakeup source, then all the primary
interrupt(s) can be used as wakeup interrupt(s)."

