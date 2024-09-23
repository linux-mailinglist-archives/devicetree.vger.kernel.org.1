Return-Path: <devicetree+bounces-104463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E77697E7C5
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 10:43:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FA961C21219
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 08:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F8A519409E;
	Mon, 23 Sep 2024 08:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VNNxugWp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9B52F2D
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 08:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727080994; cv=none; b=cbr/0pI4y0YZ3KU/6mxaONtyu6c+fOLS7GpRK6ToNUZD7wZEOny4HlX0Dol4n9GxaqqguBOZge8N2GlIJZ/FiIXZpGuDNEqtM44ldCVu4QajiFrYAZq85rBWdyQIuW04FSygXoc/7CirADOdZ6Eh8XwXach0l3lkV2szPPwx4hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727080994; c=relaxed/simple;
	bh=XSzUh6ZJJ6sFM4hLu82VZxpVet5y5KagtnDBdYcnFF0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=REPXE135AfL2lWpafCKaDnbtps/aRcwTUri8KvnQOfDkicd4hC5VwujLQq6nM8h/XuTpCOT7jbAaue5Qp384XnsLdumHYcJi5jO1DI6ASbLpCOaxc3X/Q4aBXW9RNLzOhmpKRJtaKL/AUnYE7v+hyye4aV2OtdFK4yZCRCPY3gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VNNxugWp; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5356bb55224so5335192e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 01:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727080991; x=1727685791; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aZz5ns/39I9CNLcdEHgb1bq93Bmp6tryH2rW0CAcV34=;
        b=VNNxugWp6T0f8fg1SEvBLPmORAIyl5X67B9rqHxra+5cBaITskq08SgONOHrMM4XMM
         xq2vn09c64cji3+XsveCGACoGMWqclM8zSajempw4sf73ujdfagGNJlu/O7yLIxzO8is
         qbfCIaV+506+gB17GiZAXWwI5fQ+FkLpHp7Rjp7RPxZwBT/1T6FiRXsC9kRsZygHWC5D
         jYy8rCjidApW3Ui3gqmvZA+MOckjjlLZKGWXibJ42Qw/1qp+uyGLrEmhrVojyQPWLp3X
         K7clY16foXVp1FjZK9DeLUB1vIJBJCAm6P7E/l5N+ew4nCqL9B9PCxhGDjhaQKM+rPyt
         Y4mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727080991; x=1727685791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aZz5ns/39I9CNLcdEHgb1bq93Bmp6tryH2rW0CAcV34=;
        b=IwjR9+P9dZTBq0WoaTL/YB0O3f3j0g1BWrfLCxT6NoODNrrDHmpX3lwk/AQUFwhmdf
         YBh4qa0JpaiCt5bDj9Xqj4F5ffHP40H3bBLNQe3uERDsp3u5CmIwNUuFCqe6dKkwXoxK
         7zXi+uxTcM5a8v/7p+2UEVebuWaSPvT/x80etmArlMKeI+YwT5nkHB9rg2wMJSx7iL1L
         +JMmyUyMc2EvgRsRd3ZPdaaRDYK5wT1HT9d5NSIAnMgVDcAhpTZo0yZFpqkieU+mA2AA
         JNobphyvktGfeZpEZXjmrxbA3mzyviksl6bxYPtm2w53Jp7/z13ZIuoYwSVStP0pFMvf
         p6fw==
X-Forwarded-Encrypted: i=1; AJvYcCUToZtlwAQ3kuxPwTrznS1guRsn4o5vQOwAMThGbwtY4Mh6o+vKeeQEdC16FAqQ/wcCN8OCuIYGZwIg@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy7lVLPD6Kh48Qp2C/rA9g78NkmsrR+IfKxP3ZVp7hs099rxu6
	KQ5Ty9VfXaf6cDEO9mByTIpppMrKiQZpnPejeJ6ZimaximjfHHblGSMRxOgGoTRtFhZnN7NUsvZ
	/n/gNe3LoT+WXS5UNGkuPSGf+Fk02BHjEvK+NNw==
X-Google-Smtp-Source: AGHT+IH/lTkkxNf7gVB4Qk11bFX5oTtze9g4A3iaawv5kVYgzIVZ7trMrLr/mwDA4DTElB5MHwruJq3qAdcaDv06+ig=
X-Received: by 2002:a05:6512:398c:b0:535:6033:265f with SMTP id
 2adb3069b0e04-536ad3ed8a8mr3787007e87.58.1727080990398; Mon, 23 Sep 2024
 01:43:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240906110113.3154327-1-sai.krishna.potthuri@amd.com>
In-Reply-To: <20240906110113.3154327-1-sai.krishna.potthuri@amd.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Sep 2024 10:42:58 +0200
Message-ID: <CACRpkdY0VRAD4+P5aFiJetjxce95K1fDeeYVYwimrMMADRb9fg@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] pinctrl: pinctrl-zynqmp: Add Versal platform support
To: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Cc: Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jay Buddhabhatti <jay.buddhabhatti@amd.com>, 
	Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, saikrishna12468@gmail.com, git@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2024 at 1:01=E2=80=AFPM Sai Krishna Potthuri
<sai.krishna.potthuri@amd.com> wrote:

> Update the binding and pinctrl-zynqmp driver to add Versal platform
> support.
> Add Get Attribute ID in the Xilinx firmware driver to get the pin
> information from Xilinx Platform Management Firmware.
>
> Changes in v5:
> -> 1/3 - Used the pins and groups properties references available in $def=
s
>          for properties in "mux" (suggested by Rob).

Patches applied!

Yours,
Linus Walleij

