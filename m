Return-Path: <devicetree+bounces-180893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67270AC54BE
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 19:03:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FFF2189306D
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 17:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF9A27FD5A;
	Tue, 27 May 2025 17:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VXalhx7A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F398F23ED75
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 17:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748365381; cv=none; b=ufh/5CFbkkyZwqIAiypUgXGWDrBQ00GxM/rA5hGyTAx6MN1yDfChL6MDYcRxJpZ84ttQSjxjTbwc81WO1mEKVeno9MENg0ezhmTqpbvYLr/4DIM1fAo25DNCDf/d1QrhWXgdAA3N8RiGWlmn7BqiTROet3AQLqKfS52yJPPeaGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748365381; c=relaxed/simple;
	bh=aVeuz6U3ZP8Pi2cSgrUYzQBvgbejSBQthrlVk69LKvY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NAWn+qBbpN+YX0TtkVXNRu9stk7MU28w2qlJS5pb5R3xa3+Tw1eXXnUWoBHQigK+bzv0vY3hqBCO+Du5RD/LBDCA9HgRcSNy6LLdIM9O1nDuNyLUWxeDAIMX1FG6XTUXSJY9zp/BxDiHIF/SpVzIDfss/JEe6aN8U5ZtSKii4Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VXalhx7A; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-73972a54919so2906362b3a.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1748365376; x=1748970176; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1cD0wSUoGRAfow7hZRrSlocwlqH/rpj2EVVATTYGe4=;
        b=VXalhx7A6Df94AlQnqojUxxGVDkk3fUYEwRFcfTvNm33R0JwqGLL0J8+epfv66KVjL
         /4Tc6wPPqOArKcMNeTaR6+I+xV3jzUaPlR1Y4m4pMcf8Fbk6ZFowHlBRZcWFubd0XQQW
         SOTKXHWrytrRqDgAz47ezIkUuqE2bd7H1hWqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748365376; x=1748970176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1cD0wSUoGRAfow7hZRrSlocwlqH/rpj2EVVATTYGe4=;
        b=kBPSvQhIL6WYKrpFCaBKlhM/JFX+AfQn/705VlkUloNPC+fWa3HiL7PlhOdoKpvyXH
         D8gCw8DzDe+Q4DYJshyz2NoR0CRKIC+iExxCvLlcg/sGg6rJj1HmA8k+rFlAMqfgmXlC
         EfGtL0pVvuQd73yhpSMoG5XQjdA+mDDsluk9EoYo21dMM3swjQm6Hq5+qygQLMHcNc6b
         B1HHsbrBgjQRj7iQTd46DzTzD/KW+X2BHAUE6EeISxrHlfVjAvOldVrNAIC1JbI2As76
         y/cpa41/LUjbbvnpWbyRJglbwyHSsx5NtYVFGIpf4PocLltsLWnW/qBS56NXyaDwG7Ny
         Wfmg==
X-Forwarded-Encrypted: i=1; AJvYcCUXumFPUEKu0fYDRDekrZsnA9WPX5onRzadbKuLuLaKsiP90zD0b8x+s8izFqsHXaJg59VVcBnqKqTp@vger.kernel.org
X-Gm-Message-State: AOJu0YyCXe0COvs9bOCyCG4sVf4wYfeDcj3Lq3tSBMxRJVUZdcsDJWB9
	2ma5ohxk9MRREDVLFKqemnxAULmPITl6b1cwGnFp0gBoPdPkkYBtlmpruULRvTQ2UQU14mZVZEi
	bXDo=
X-Gm-Gg: ASbGnctbjEZ8bNg5Z6siKoTw7MXfyWmYqU6rjqa7Q6BWo0460LPyKJ22uFxXvgPvg54
	kI7PlqR8HYZg1H7CSVNbXiXEFD7J3m4VtmnqSwSuJG32P9cP7pw0vpkGbm0WYWjlf5EmM0XnorF
	ZHCbC7dnWOsSePG4MrjK9U8jBMJvHSiRmyi0UA/Cj00mI2Xbqiw6vVwnzfODa9yoc5+9jt9Km1f
	+cjcnDr7gQbT3FjNDX1RY5khtEE9BE+QIp6ILfLBagMGUedGldJiRIZpvkRrxboZz0wEwjwseyl
	6jN/Q0nyBjMtUQxug6D/mPdpglJUF1EY3YR2CPBExWVolyag6BNYjg0EaKMzF0pvJ+akF8zewBP
	YNvL+4tDc450iuBidoj4=
X-Google-Smtp-Source: AGHT+IE5epkiL9nojt35iITGgeFE6StROBhV7d3hb9bXWmLuE/dbvg2SctJVV9StSdWI/mJweEWsWw==
X-Received: by 2002:a05:6a00:1822:b0:73f:ff25:90b3 with SMTP id d2e1a72fcca58-745fe05f18bmr24188132b3a.24.1748365374116;
        Tue, 27 May 2025 10:02:54 -0700 (PDT)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com. [209.85.215.180])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-746206d73b6sm2489712b3a.159.2025.05.27.10.02.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 10:02:53 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b07d607dc83so2274350a12.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:02:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU6gOtFgPQKvRx4nUEYGQ1wh0f2Byn1A23xmiJyd5KPcZ1jnX7HNDSi/Iq8oh68cfmA6//wBt7xoonf@vger.kernel.org
X-Received: by 2002:a17:90a:d60e:b0:30c:540b:9ba with SMTP id
 98e67ed59e1d1-3110f0f9b4cmr23039125a91.10.1748365371916; Tue, 27 May 2025
 10:02:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250524-tb16-dt-v4-0-2c1e6018d3f0@oldschoolsolutions.biz> <20250524-tb16-dt-v4-2-2c1e6018d3f0@oldschoolsolutions.biz>
In-Reply-To: <20250524-tb16-dt-v4-2-2c1e6018d3f0@oldschoolsolutions.biz>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 27 May 2025 10:02:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V1-xhzWjftAkSiwTR5AE=2nGxFSaiv18_KXFJkKL1USQ@mail.gmail.com>
X-Gm-Features: AX0GCFuyCqgo7k3OkEiBoeoIIm92d204Z5xqTgDrr1m_iEfNQkkSSlBFML6TL54
Message-ID: <CAD=FV=V1-xhzWjftAkSiwTR5AE=2nGxFSaiv18_KXFJkKL1USQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] drm/panel-edp: add N160JCE-ELL CMN panel for
 Lenovo Thinkbook 16
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Kaehlcke <mka@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>, 
	Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, linux-usb@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, May 24, 2025 at 4:48=E2=80=AFAM Jens Glathe via B4 Relay
<devnull+jens.glathe.oldschoolsolutions.biz@kernel.org> wrote:
>
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
>
> Panel is widely used in 16" laptops, and also in my Thinkbook 16 G7 QOY.
>
> CMN N160JCE-ELL EDID
> edid-decode (hex):
>
> 00 ff ff ff ff ff ff 00 0d ae 2b 16 00 00 00 00
> 20 20 01 04 a5 22 16 78 03 28 65 97 59 54 8e 27
> 1e 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 42 3c 80 a0 70 b0 24 40 30 20
> a6 00 58 d7 10 00 00 18 35 30 80 a0 70 b0 24 40
> 30 20 a6 00 58 d7 10 00 00 18 00 00 00 fd 00 28
> 3c 4b 4b 10 01 0a 20 20 20 20 20 20 00 00 00 fe
> 00 4e 31 36 30 4a 43 45 2d 45 4c 4c 0a 20 00 95
>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

[2/5] drm/panel-edp: add N160JCE-ELL CMN panel for Lenovo Thinkbook 16
      commit: 126bf397bf58485cdd631824190cdcfeb86f5d9b

