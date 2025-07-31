Return-Path: <devicetree+bounces-201114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F34A6B1776E
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 22:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C46A03BFFE8
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 20:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D400258CCB;
	Thu, 31 Jul 2025 20:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KhL8/MxF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7252580CA
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 20:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753995123; cv=none; b=m1ZSeZnfxp2sixt/ENdHdWQpH1WmJdijokZ6NBYMW3nWR2A/Vp8D72dZZMXZ5Jeu49diIcuSuAQJw3b+0ZVo/0hmG027UWzrgiWfVOmRWuTtNr9xGWFhN4csDhXG2H5AUB0KV0lYQxAYI0VHfAvbslUndwpVD9ON9OlKWfGRNPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753995123; c=relaxed/simple;
	bh=G1+dDN5VbHS/uTTFU90pGQKqcs/KquRWkv7p+axvbkY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TVwmDy3KO1B3FdE7eY4h3aXFZiPfJbLlYIkRJTECajw/z/BJxtU3/sz22rXgWyneGZZMxkN6DwlicStIvThnBbsWeMubwX3AvLbghBa9xTiuKuEmsedXw8FZNqFuX3Y/p9KKiVJn0v9hHOY1HGjK6K2zubKJ1Y8eUh3VYZ4v63g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KhL8/MxF; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b782cca9a0so131710f8f.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 13:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753995120; x=1754599920; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RRHNd2ZCWezMU8sh7ndHGqZnx2BwmZPaqx0vp8vaTJ0=;
        b=KhL8/MxFeLcQMPr1++g+Oj/W20tkXG4Wi6QYeqpZf8pIYkCtw8anLz7H/ydcv5oP0O
         9UQaeXYBuoApjraxOagrg6WtqVCFA4VVk4zd3PuVXDgbLXB7B+Bo2P1wKgozhuXiV11E
         EWwD+OutrpZew/p21xLDwFfli4dCoAC+8MG4/wV1ovjqWBt9vHfwKFLar6nyjlDQU8ZS
         oygMXTU2I6WLejdM8AxZqQMy7ZXY+qDEf5znA5kLLarpYo/jExs6LJCxbgJpfvCE4mJu
         bMcOnmWLVYV0/z2x8ybjaHEvTnR5Z6YLzhYwIr/oLOAie4K7XAn6/ZlLErdLA6ev6ZDc
         dxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753995120; x=1754599920;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RRHNd2ZCWezMU8sh7ndHGqZnx2BwmZPaqx0vp8vaTJ0=;
        b=Zz45iOotGoafAx0Hn63NfnqwfeBRZ5Jw4alO7pq1qOCrStupSSP/yX1tUrRvvjSkp+
         r3C7qQzY+OCDk5lxOgLVHNDoPLtyJk2WH6180xr9Zg4UrEQYm8KBwXZ/I14iopT2dDJs
         foOD1+2cYoxVLGJg0JNvK17dkzuHqUHEb8WNksKF3Ki8QKqUqP4/mfEI+t6eQAKWrP4D
         EQN3gobq/fdoFoUXUqwSTeFDupVxMCSoa9YpOROQ/YH+JqoJEVvnqLPq9lEMPZyyRfwP
         t6KaTrxfGXWlpYEJaptCG6Y56dEKwSzgejUaI3h5eiOGvuEb+cJVCupeNTOe2jvzuDUo
         8oUw==
X-Forwarded-Encrypted: i=1; AJvYcCWehZVH4wU5DSFXj664R8ryXBtCwKK+1Ox+TAZVEox6Yua3S7yeC970SGhSYPMG3qkJ2ZfA5mgdCRNz@vger.kernel.org
X-Gm-Message-State: AOJu0YzOCZvc+N6geuoFCl1QeC5weNCyg1DMhTPDj1RfPMcP/7l0OoNb
	uwjbNP+erUpoYhR4FBaFnlT9EWUygsW+tXGgMl6kGGqOAIojoFDTUQRR/YWtAzuyQddXlRyoCXX
	QgFua0JOL7M7a9yY/fR0rEZwOBLljZHP+wH/TAJypnw==
X-Gm-Gg: ASbGnctHNl44aUi3ywH6kMcygZ38gmD39c47hLJd6UmDNUPQ3R6gLw++hHUtyuIPqpz
	WMXlhWxu9VE/9C8x5JLxkyXx1jAi+r/q7MPhRcMz4S0ghMS/d/lwQyyyfunmpDWO6r91g0O3rzH
	zbRuFpoiR81KpscASIR98PN7B5Wunbg4NZ6341bDSrcqVIVp9q1lnOaTVtJ/ad+4DWlRlwr42nY
	IWDlllovlEHZ6w6Rn/A
X-Google-Smtp-Source: AGHT+IEwyDoX4uF/9YMToh0+WSQVrRidsSvYeXgHSGPP5jTwBijhyndShZR9merunu1Sixh2RwmDPnVM6baMrGA3w50=
X-Received: by 2002:a05:6000:2085:b0:3b7:9b4d:710e with SMTP id
 ffacd0b85a97d-3b79b4d72c9mr3914484f8f.38.1753995119691; Thu, 31 Jul 2025
 13:51:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
 <aCw9pYehCdfXXeiR@hovoldconsulting.com> <aG-QyF12rGY55gcG@hovoldconsulting.com>
 <d431435b-4ac0-44aa-922d-0bde126ca563@linaro.org> <DBIMQO2CS0I3.17XLZPKPCVW2S@linaro.com>
 <e9c63414-8434-4e35-a159-66df1864f9f3@linaro.org>
In-Reply-To: <e9c63414-8434-4e35-a159-66df1864f9f3@linaro.org>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 31 Jul 2025 21:51:49 +0100
X-Gm-Features: Ac12FXzd0YutQBM4VsTZ7ybOvRaAxugnGXJ2Kg3XZRdEMOsxc-OgmLq-KhYmTLw
Message-ID: <CACr-zFC+WcSYDZ8SEYO211sBVN_=oEXmSw_X6i6zdk6Y+prHFw@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add support for OLED panel used on Snapdragon
 Lenovo T14s Gen6
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>, Johan Hovold <johan@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Neil, Johan,


On Wed, 23 Jul 2025 at 07:51, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 22/07/2025 15:48, Rui Miguel Silva wrote:
> > Hey Neil,
> >
> > On Tue Jul 22, 2025 at 2:01 PM WEST, Neil Armstrong wrote:
> >
> >> On 10/07/2025 12:07, Johan Hovold wrote:
> >>> Hi Chris (and Neil),
> >>>
> >>> On Tue, May 20, 2025 at 10:30:29AM +0200, Johan Hovold wrote:
> >>>
> >>>> On Wed, Apr 02, 2025 at 03:36:31PM +0100, Christopher Obbard wrote:
> >>>>> The Snapdragon Lenovo T14s Gen6 can be bought with a number of different
> >>>>> panels. This patch series adds support for the OLED model which has a
> >>>>> Samsung ATNA40YK20 panel.
> >>>>>
> >>>>> With this patch series the backlight of the OLED eDP panel does not
> >>>>> illuminate since the brightness is incorrectly read from the eDP panel
> >>>>> as (to be clear this is not a regression). This is fixed in [0].
> >>>>>
> >>>>> [0]: https://lore.kernel.org/all/20250330-wip-obbardc-qcom-t14s-oled-panel-brightness-v6-1-84ad1cd1078a@linaro.org/
> >>>>
> >>>> It would be good to get OLED support for the T14s merged. Are you
> >>>> planning on sending another revision of this series?
> >>>
> >>> No reply for over a month. Do you intend to respin these or should
> >>> someone else take over?
> >>>
> >>> Neil, do you have the OLED version now?
> >>
> >> I'm not sure, how do I determine that ? Is there something specific in the type number ?
> >
> > Yes, yours is the OLED version, the exact models stated above.
>
> Ack thx, I'll test and re-spin this patchset then.

Sorry for the delay. I've just sent a v5 of this patch. I will look at
the eDP brightness patch next...


> Neil
>
> >
> > Cheers,
> >       Rui
> >
> >>
> >> Neil
> >>
> >>>
> >>>>> Christopher Obbard (3):
> >>>>>         arm64: dts: qcom: x1e80100: add epd hpd pinctrl
> >>>>>         arm64: dts: qcom: x1e78100-t14s: add hpd gpio to dp controller
> >>>>
> >>>>>         arm64: dts: qcom: x1e78100-t14s-oled: add edp panel
> >>>>
> >>>> Strictly speaking you could have posted this last patch on it's own as
> >>>> it doesn't depend on adding the hpd pinctrl.
> >>>
> >>> Johan
> >
> >
> >
>

