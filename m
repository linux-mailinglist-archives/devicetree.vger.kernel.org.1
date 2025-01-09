Return-Path: <devicetree+bounces-137217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A2120A08255
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 22:41:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E9CC7A24DE
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46218204C20;
	Thu,  9 Jan 2025 21:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SUmfK0jV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6992046A3
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 21:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736458867; cv=none; b=rOgIz8qAKN1QTYrsRJtumrTaCNHnBkCQKiT1l6MIDY1wgklgVCCeo1tGI8zr8LAcuMh0Yi+x7Y0a3N84ZJFtEuBwWa+Nm/kjVkXy5rqrzVuGoMSb+UmUUbBokjuqPKY5zdppHMkjZgpkXYwrSu//IvT+hxwq+VuljvZahtFSwmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736458867; c=relaxed/simple;
	bh=UYseOpURRh9hqApQgpIM/XepY4WChUBZ1jGMRsNQHcs=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hiD/eLSRiOLPKrInQ/53f/jfwx/hYxQ49WGU21U9bUskQsr6NMPDTKNnksn+rzGSjs5iWpLXZ/epNgJeztWnQ7LHrpVFRXGTeqntb0N/E8IV7sLdlVcB1RKzN1KESPa+mf+fSuBuKzrj9JRkpQsl/w4IlusZj5ugxTFBIFTucvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SUmfK0jV; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6dcd4f1aaccso19076026d6.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736458864; x=1737063664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:user-agent
         :from:references:in-reply-to:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYseOpURRh9hqApQgpIM/XepY4WChUBZ1jGMRsNQHcs=;
        b=SUmfK0jVEE0JrWF4jtRKdlxR1wMYQixwjWUUQH/4Gne3mvrorDyVPAx7JydlcH4eWi
         5/HWdUwt2o4RrYvJ+adA1mQOo+G3Uek2QPxs9n89//9Kt3Bo3jXb/O/uWGGKQhgrpDrp
         PRJeCvxP36gF53yS6YUVg5lK0etG7+yJuU7ms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736458864; x=1737063664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:user-agent
         :from:references:in-reply-to:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UYseOpURRh9hqApQgpIM/XepY4WChUBZ1jGMRsNQHcs=;
        b=EvuZPogpWuS5ZUqetYuGNZKQJIVMOcEWEzWkuIUkZGooAJDT5WU6TP69Y1SaQvQQyy
         6oZDIUK5KA6TPeBbae60zbOIZ3Am/2ePZtMhPdX7Gf145BRJJK45tdHv8aUj9hWDWa38
         iQyDrwRGsb6fo03Sdi6jCJ7CVpsFF+Esv6Sa/jj3WUVyJgycN/AXEBVGRwHFlkP+CIaQ
         bML8RG/Aqfh9M3NIxp0yVCjz9ADrXOnm8El3aYZbIHi7/FChvFwvay/Etm1B5mWZvq81
         OzHAbs57weEUXeDBtQ7rOH/27+VD0yRtRC4i3GZHZTJgZGjcJ4ilJoMXxr+NKvy5LaDL
         YPuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUacEjx4zljnkgqgMQE/a3Bx4VZ8mXHanflJQIbM73ydgfw78q7SsZY+lKI4HKKKBxbPAYGTg4/QnQs@vger.kernel.org
X-Gm-Message-State: AOJu0YwfLgnQsmleRrmYVaXbnaWN+XHrci4hRy7LbGXdGs13a9252iv7
	j2FTsEBdIVrCcWJkW6tuunhIPfcBPow+wnXfgCcFE7aggwH8R1uA7KUQrDasw8F88ZX61ZR6UoY
	fMWqrtRN15ZIT9oyGV3HLTYZN8WurtclvP5YG
X-Gm-Gg: ASbGncumI+hftWukzR4/sMGZogGp0Jv8/Zig5udv3cVAv8cIrk124D8HD0yN80ZZtRT
	9DS0f9cWB0NEDTTzy9XXEahifsnG8IDXO51rRVyMzIXUPcFvRHKEqebhO4I9XZIJGSg==
X-Google-Smtp-Source: AGHT+IEKX5fqLs19Nj5Euy3b+3ANgHmr60cplFk0CNeQmGP21sPNoKthsCxbKzmMS125ujK0B00l23Ab59zEPd3mFGE=
X-Received: by 2002:ad4:5d61:0:b0:6d4:dae:6250 with SMTP id
 6a1803df08f44-6df9b28c6aemr137634956d6.34.1736458864590; Thu, 09 Jan 2025
 13:41:04 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Jan 2025 16:41:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <53b83a66-c0b3-4227-8dcd-022f70810ccf@oss.qualcomm.com>
References: <20250108012846.3275443-1-swboyd@chromium.org> <20250108012846.3275443-2-swboyd@chromium.org>
 <CAL_JsqKMcHPhf8yzEZNC6280-k+aSmo3SQOBZLMjmfTR47BH=g@mail.gmail.com>
 <CAE-0n52k0Gg85Ry4KyjE7Ms_dJgj=aPA4aPB5gmC-VGWSNLZXA@mail.gmail.com> <53b83a66-c0b3-4227-8dcd-022f70810ccf@oss.qualcomm.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
Date: Thu, 9 Jan 2025 16:41:04 -0500
X-Gm-Features: AbW1kvaEYHdRDja_xzTNJbc0kQa8ep2z24O4PgYaJif2dmWpmU8qkWy48lGlWcY
Message-ID: <CAE-0n51f_RQqQgH+FidFiFigY7koZCRZoOtDqQeTGKNsKtBSbQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/6] bus: Extract simple-bus into self-contained driver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Quoting Konrad Dybcio (2025-01-09 06:02:17)
> On 8.01.2025 11:44 PM, Stephen Boyd wrote:
> > Quoting Rob Herring (2025-01-08 06:11:28)
> >> On Tue, Jan 7, 2025 at 7:28=E2=80=AFPM Stephen Boyd <swboyd@chromium.o=
rg> wrote:
> >>>
> >>> Extract the simple bus into a self contained driver so that devices a=
re
> >>> still populated when a node has two (or more) compatibles with the le=
ast
> >>> specific one being the generic "simple-bus". Allow the driver to be a
> >>> module so that in a fully modular build a driver module for the more
> >>> specific compatible will be loaded first before trying to match this
> >>> driver.
> >>>
> >>> Cc: Rob Herring <robh@kernel.org>
> >>> Cc: Saravana Kannan <saravanak@google.com>
> >>> Cc: <devicetree@vger.kernel.org>
> >>> Cc: Arnd Bergmann <arnd@arndb.de>
> >>> Cc: "Uwe Kleine-K=C3=B6nig" <u.kleine-koenig@baylibre.com>
> >>> Cc: Bjorn Andersson <andersson@kernel.org>
> >>> Cc: Konrad Dybcio <konradybcio@kernel.org>
> >>> Cc: <linux-arm-msm@vger.kernel.org>
> >>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> >>> ---
>
> [...]
>
> > Maybe the best approach is to simply avoid all of this and drop the
> > "simple-bus" compatible from the soc node? It introduces an annoying
> > hurdle where you have to enable the new driver that does exactly the
> > same thing as "simple-bus" does so you continue to have a working
> > system, but it avoids the headaches of trying to make the fallback to
> > "simple-bus" work and it would match how new DTs would be written. We
> > could make the driver 'default ARCH_<SOC_VENDOR>' so that it gets built
> > for olddefconfig users too.
>
> I think it even makes logical sense for the /soc node's compatible to
> be.. you know.. the model of the SoC we're modeling
>

Sure. The annoying thing is that we'll have to enable the new kernel
driver to keep things working if we don't have some way to fallback to
how it used to work before. I was trying to do that with this patch but
it's easier to just force folks using new DT to use new kernels so
probably we should just do that.

