Return-Path: <devicetree+bounces-38982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA56684B0D0
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DD07281FEB
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 776A612A159;
	Tue,  6 Feb 2024 09:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="z8LU45MF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B935B687
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 09:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707210782; cv=none; b=EwX1kwPkBwk9fpBp+1qF5DkkZ4VttNiPfrQAQbI6R1h5yL407goWb5u8Bwz9qePetMjXYDP93apxjOgECZd4KRbFcvIGY6N/Ds2c5Vg/AnYDKSvGp+Cb5yVgAFrGP6TPbZkq3KrxinG/GsWT/cx01IoAqAIIGef13vlGRQ8H9MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707210782; c=relaxed/simple;
	bh=pzCq4kCr7BpFqs4M3wKLke6/IVRyjwON6wWOnX1UWdg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CA/lZERk1X4YYvGrVia6bVVbSyaN0qdHqeJ3F1nEkgXvupy3sBI04IUiqGMWjxVs5oSD82X6ell42B5V98pEVxXqp+sDXk+OOS4kF3Nm5Tf1Wf+umpFBGmIXkqGTWJ4WnnoPmxndGQB0ULMwerGxtW/k/rDTYg8T4hQh185weF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=z8LU45MF; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55fc7f63639so6218656a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 01:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1707210778; x=1707815578; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GmlhoN9VyMxqeNOOnGTOAmJzMI9K2t+a54JLGmht/ZQ=;
        b=z8LU45MFL/X2+yPl/U/mjWlvVwF5Zkg9fdDTQ9BS4HP64QIVLzXp1XWO5uGdRgEags
         ONFLbklYt95mpUlwNH0JTCLA29ggal/j3CqnPsIp0xMQXj7uY42Q0dIUKxe+ZVuBe+rz
         6YN01YExMqCIXaDlYjnbNH9icfvRKFHl7dDY4W8YuvS+INyqQn8Q2VJ4nu8ufHSY+fia
         qXY64Ru0hyIeJXyYhnCkT4EUwzvMdArAYPKls6SBXiWaFT9JFSbQb2IhODP1BBGPQzzP
         qTOwiVcj4zNwfzO8g70mErrL2Vr2McEiAji3a4LzFvpMlbLoxEXDhb3XCp9opwKTCwV8
         Oc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707210778; x=1707815578;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GmlhoN9VyMxqeNOOnGTOAmJzMI9K2t+a54JLGmht/ZQ=;
        b=m2ekB5AAcBGeawcm1/Qbd2ddjq9flfzScNtd6Yu1tBGd4SN6ubCzgslBNqRb9kdnPo
         tfRVBxeOIJ+qhC7u9kBfKhYJgotFMpLtftMh2+hau3E8DIoH/mlgOxzPt005cbTewdTb
         7ckXsUMbZK7sDFgKYYD6+TY4Gi4yJxe+OdEtO7nPKrN9R4iSpr1JrDXXsSGUwoGwxbAd
         hx67Zo0rn0em8RjIn1te6k7xzam9KmnyOPTugcAbVvBqrbIcVJDTe0daiUQCvjPv6iBc
         REWfcbD2az1hlqFU/bI/DVDO1SxQjAc66QoQDR2CqeC3kjHaAMFrip7KOPrkv6HGlUMv
         uaEg==
X-Gm-Message-State: AOJu0YzDVL+mK46dhoOaroHEfdLC+Cn1snYx8QJSmLfkqJ4JA/rflzqb
	fFPPMvOXKPieSPexiSB6ynWvxLIegz71ZsYMGdLXkUzTPItW5hUW2UiCkzM2wXI=
X-Google-Smtp-Source: AGHT+IH2MblfrLitxaeQa/RIyDFOY04h7vsJHFwwAJZePOlonmkLuXoDRpZovbMVGAMkXXjBzu+CCA==
X-Received: by 2002:aa7:d902:0:b0:560:9277:80e5 with SMTP id a2-20020aa7d902000000b00560927780e5mr1220499edr.21.1707210777956;
        Tue, 06 Feb 2024 01:12:57 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXxALzPvjGBvcFb1vLdySyAB+NrFD6F7LM/hf9/jL6L5GMTho3+cKiscWM7g5AIuySvhLK405ot5RWFD1aY13GErCSAcSpc9/L8zjBC/pBq9P18aRMs3cMI+BBvt6EQ9P1ePHbjFyWuRhvYt3S+mxvFwFSzrnm/kmN0ntt/meUqHnyp+sruAfSWyRmPwaNdU5Bp6jgfmbwnkCboq6E494xRUoCL1KUoGljjhpMwLTyBSFzfy3rZ8he3Ppay0l+2AoHA1li9xfSOcFvKzezW41mtC+p6Q2fT0y4QI9fn2cci0VXhQXSo7rL0ysNH7eXnWe/wci5SILr6+5jH3JMVHxPYAuU1YQw=
Received: from blmsp ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id b8-20020a0564021f0800b0056012fe9d4fsm821287edb.76.2024.02.06.01.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 01:12:57 -0800 (PST)
Date: Tue, 6 Feb 2024 10:12:56 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Tony Lindgren <tony@atomide.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <wl7atq35kwgd3lgscp2sygjulrheukjfjcia3nl6f5326ot35i@jey76kt25sz7>
References: <20231219072503.12427-1-tony@atomide.com>
 <q54c4f3l2ddvnnwzigz2hebru27nhevf4oij6g2nqv6yyijigr@nuvwukfwpsjh>
 <20240126082006.GT5185@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240126082006.GT5185@atomide.com>

Hi Tony,

On Fri, Jan 26, 2024 at 10:20:06AM +0200, Tony Lindgren wrote:
> * Markus Schneider-Pargmann <msp@baylibre.com> [240124 13:55]:
> > I tested this patch on am62-lp-sk and required this additional property:
> > 
> >   ti,no-reset-on-init;
> > 
> > I am not sure at the moment why a reset doesn't work. But with the given
> > property (so without reset) the wakeup on wkup_uart0 works as expected.
> 
> OK. This might be some firmware related difference. Care to describe what
> goes wrong so that can be added to the patch description?

I tested this patch on sk-am62-lp on the upstream kernel and on the
latest ti-sdk 6.1 kernel. With the ti-sdk 6.1 kernel I get mbox timeouts
if the driver resets the ti-sysc. If it doesn't reset it, everything
works on ti-sdk 6.1 as expected as well including wakeup from the
wkup_uart0.

Best,
Markus

