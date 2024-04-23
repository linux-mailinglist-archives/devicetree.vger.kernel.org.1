Return-Path: <devicetree+bounces-62029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B6A8AF80F
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 22:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A93701F22385
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 20:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C9B142E60;
	Tue, 23 Apr 2024 20:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lwd23R60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D070C1F95E
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 20:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713904599; cv=none; b=qCLWvZIaiUoeCC6ajZ6DuwBWyy5S0M85cDHOIh1+bpyvDxxsW16lLfH2ZxHwsh0FySZm0Tlihl2Q625efnNciaucgkrlZgPQKNtRbZVD/gfMB2kq/8Zj88h+3fQNpTVok045/WCuacguxY0gw7eI86/Z42M2RNw8MHkYmaACjag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713904599; c=relaxed/simple;
	bh=hdVBYhMGvt4bNKMToAfaZbct/f7HDFw/iwj5G53CShY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VptzZYqiU8z6TRx7cscbY8rdJGxrmRVM4+y0d4KhdGSz9bal2UMLiT8XuTxidqNqpG6MmNoRce1xpLC76NnDAm0G30mEGKNYiExRPVRMANx20NwHxMZTHzRet7q3hApmiXL4KWkeAJu1pNlGdvsbxwWAehcBXyER0aHoy33NYsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lwd23R60; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6eb6b9e1808so3356167a34.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713904595; x=1714509395; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdVBYhMGvt4bNKMToAfaZbct/f7HDFw/iwj5G53CShY=;
        b=lwd23R60KfycWzKShhdr48TRAxJWtMM4UlQAnOFDDjMmb/ThFPTlW0dGl3pl6DQLIV
         ICEEeP1B2xZvdYu8QimmgWZid6INfc12C8nYN4zIfvqAlJtFJvefrxZ8NJE4W4QPphJ1
         KMIXlsvk+E6+tqgmiNuA9gnVFzfQsDkvrJoo4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713904595; x=1714509395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hdVBYhMGvt4bNKMToAfaZbct/f7HDFw/iwj5G53CShY=;
        b=PnfX0t+ecfSv+vHPepUSMaY1FNXEcYmsu45D5TUiLKw3WMn2sNzz3adP6F2dHjjRLt
         n5i8XN5Fo8YCyysNm7NOo8mJBOSYJtp0reSNUWEFfJXOizulrVqoEMA9/zv6/GVo4vi1
         yvYZWUaCGsg1HunH/oQG0+t5S0rim0BYzSCI/Hr7eFBa+FaGGdjIvaceTlHqevgjKnMc
         6Pla6AqBX1kxgJMn3vo8VdZEdlMDAszzbZdjPHaIFcZ675WTWPG4hA4tXvVeiE7Lb5Z5
         /lxXhf/WqnAzlhs9o07RnBSZXQ6Ogrk8zkwe7q7yn0lgXwq8uIZm+SoMh95v9OCXVHtk
         Tu0A==
X-Forwarded-Encrypted: i=1; AJvYcCX4Hm3woSIOZ+UrQQUZDkW3onWuoTvt6oPMuIBanO4+PCQPpQKzNsRTtqY2v6/NhxEILDWJfuT1aoahvikNPBokLh94/3AFlIce7A==
X-Gm-Message-State: AOJu0Yzr5qfxBwE6bPHF3zZnDnXHAoTg6zHEgn8PTGazu1UPGU3GMwAb
	rnfd53U35aXRd3G8XOMmF/7NRydDOPlJKtsf+mQG7r6SWG3nxry0JrLjyY9p0MHPOUdKA45zUxK
	Ri4Qy
X-Google-Smtp-Source: AGHT+IGpw4V0Vn4YlFax+LvW8S1Upam7IXNJbEZCMW11Q9x/JmNHWf3cVlLRUJgieeAifc5Zzm9jYA==
X-Received: by 2002:a9d:5910:0:b0:6ea:181a:a539 with SMTP id t16-20020a9d5910000000b006ea181aa539mr958496oth.3.1713904595414;
        Tue, 23 Apr 2024 13:36:35 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id wi10-20020a05620a570a00b0078ee7bad7a2sm5567105qkn.3.2024.04.23.13.36.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 13:36:34 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-43989e6ca42so95761cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:36:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW7Ds3n/l7tFaIhDe4QCXwcA4cIw4hp9PdZXUm340NnMVfWFaTX/p6iwTQ+K1+vpssD8mxXV9V+YkS4v5oktJkKoBiyJYU2nlWrKQ==
X-Received: by 2002:a05:622a:1cc5:b0:437:b572:6a with SMTP id
 bc5-20020a05622a1cc500b00437b572006amr6192qtb.23.1713904593750; Tue, 23 Apr
 2024 13:36:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423134611.31979-1-johan+linaro@kernel.org>
In-Reply-To: <20240423134611.31979-1-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 23 Apr 2024 13:36:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W2Y=Sr-=YkKb01XLQsbQJr2b981c9kcfvAc4_5E9XD7g@mail.gmail.com>
Message-ID: <CAD=FV=W2Y=Sr-=YkKb01XLQsbQJr2b981c9kcfvAc4_5E9XD7g@mail.gmail.com>
Subject: Re: [PATCH 0/6] HID/arm64: dts: qcom: sc8280xp-x13s: fix touchscreen
 power on
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Linus Walleij <linus.walleij@linaro.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 23, 2024 at 6:46=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> The Elan eKTH5015M touch controller on the X13s requires a 300 ms delay
> before sending commands after having deasserted reset during power on.
>
> This series switches the X13s devicetree to use the Elan specific
> binding so that the OS can determine the required power-on sequence and
> make sure that the controller is always detected during boot. [1]
>
> The Elan hid-i2c driver currently asserts reset unconditionally during
> suspend, which does not work on the X13s where the touch controller
> supply is shared with other peripherals that may remain powered. Holding
> the controller in reset can increase power consumption and also leaks
> current through the reset circuitry pull ups.

Can you provide more details about which devices exactly it shares
power with? I'm worried that you may be shooting yourself in the foot
to avoid shooting yourself in the arm.

Specifically, if those other peripherals that may remain powered ever
power themselves off then you'll end up back-driving the touchscreen
through the reset line, won't you? Since reset is active low then not
asserting reset drives the reset line high and, if you power it off,
it can leach power backwards through the reset line. The
"goodix,no-reset-during-suspend" property that I added earlier
specifically worked on systems where the rail was always-on so I could
guarantee that didn't happen.

From looking at your dts patch it looks like your power _is_ on an
always-on rail so you should be OK, but it should be documented that
this only works for always-on rails.

...also, from your patch description it sounds as if (maybe?) you
intend to eventually let the rail power off if the trackpad isn't a
wakeup source. If you eventually plan to do that then you definitely
need something more complex here...


> Note that the latter also affects X13s variants where the touchscreen is
> not populated as the driver also exits probe() with reset asserted.

I assume driving against an external pull is _probably_ not a huge
deal (should be a pretty small amount of power), but I agree it would
be nice to fix.

I'm a bit leery of actively driving the reset pin high (deasserting
the reset) just to match the pull. It feels like in your case it would
be better to make it an input w/ no pulls. It almost feels like
something in the pinctrl system should handle this. Something where
the pin is default "input no pull" at the board level and when the
driver exits it should go back to the pinctrl default...


I guess one last thought is: what do we do if/when someone needs the
same solution but they want multiple sources of touchscreens, assuming
we ever get the second-sourcing problem solved well. In that case the
different touchscreen drivers might have a different idea of how the
GPIO should be left when the driver exits...

-Doug

