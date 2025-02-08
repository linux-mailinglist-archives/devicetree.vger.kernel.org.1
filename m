Return-Path: <devicetree+bounces-144239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D93A2D88E
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 21:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2A29166AB6
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 20:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 429FA243977;
	Sat,  8 Feb 2025 20:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MmYeqEpl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B6E19DF6A
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 20:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739046330; cv=none; b=lLLYzjPHqyVNPZgH+6HIjbe94WiLDsP6/ZLV4tkf0ulaauFoJRsxCtOjXH/Q0toV9fw7OLtwsac/zWpCIyGcuHjeVhQgK1zcKxIr1+2ZePMBE8NeQ2OsG+C/07LdGC6mJlm62OGWosxbDHBdiMgiSkn2+Jf8avhP7AiEF/2h5Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739046330; c=relaxed/simple;
	bh=qguLn2lVdAay7Qgv9NyHlsgIV433J3xLJk6d/GB3DqQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j36sU9fKYz4ZP6aWRglCSNsowfJgNLWpuXdpLnxCWxSODwBS/djxadSvTuSdMuDy1u2Uif2pl3pgRXReJ4VUBd/4fUbmcEIt1Gg0VJk7qbVdHtjg3g+KyFH1liF3tJv1PqIf+JfmLi1aAq27njTJLIC+tuMs0H+txUPCDw6dc0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MmYeqEpl; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-307d1ab59c6so29803441fa.1
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 12:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739046322; x=1739651122; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0snXFD48srt2bPIw0/xHSEpJ3QuHpc2GgTYscYldOH0=;
        b=MmYeqEpllBwUtevKJgpTAq48OjZLkxK/jYHbriNipHoJNktpj3x278hwr0JMpC/w/L
         w1u/gLxWKLaOmefAj/ujdGY6hj+PUbExO/r9o4HGho4OgLCf+AMP/oEXeC3aQuAebIHr
         N6PRBKS4NthUhG1K9WGZb2FZVwwKl7WHnKl94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739046322; x=1739651122;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0snXFD48srt2bPIw0/xHSEpJ3QuHpc2GgTYscYldOH0=;
        b=iV8iY0GR07XRMAn8iSK0/QGb/n2VRWVN+cR/c98YA7TiOJyFuhSORXSu9X2n7CUxbh
         C48rUYVdwp+6cNl6YbBQ3K5acv9fiiqVrTRqTKoq+Pqkf1O93rQHbjSwshZfjbNynni7
         lVjoXPkkgwdTgGsMTm0qeQzF4t/3Juf2CIlBebA0e6wKHb+C0r4SwhZsE0Y+9MrRmcFO
         +mTSpZ1Gc4y2BNLQF+kigb+hkTngSHNual0G8zBPV7ByXDyNtrlggUA+/NhEt1Hhowmm
         R+tpMU7N70W2JL0eDZnMXLlWlP0RSd6f6Jly4zoX04kRBlSulbZQMDiFHydlizeHs1NR
         aCuA==
X-Forwarded-Encrypted: i=1; AJvYcCXV7IFxvyQEiqG7v5yMGhZyZ2UGpk+rua0NF1JrPZWp2S7clBjm3ffpftHZFFWQ3WNC5gB18Rk3De9f@vger.kernel.org
X-Gm-Message-State: AOJu0YwnZ071dpK+gAfJEUBdqMqHGvYa2dZtBYsr89XbROR32L7vsUml
	4Rcx+J0oGPnuXI2j5aN9O7GslcLwgajsRH+QQ0rtTR9VTs5LIFFVCHlsnDR9bQw9lTnuMn/L29P
	OoatO
X-Gm-Gg: ASbGncuKxXkaIs3bntvm2qD3G6nnMtx1w9Kx+t0nV7Bc0vhqWALml6NtWiG12hqd1da
	qRDfeBYj6ojeYnVwzKSudFjPqR0rGsh2t9TUK39al8BMRNpTFKoR8xq2POmitcmm+9gdemECDL1
	tZ3SusBMWz1JrsTz3s709Y0TDhVfvcAPmjt0d5bxX2R4aL5pcR2ZdHidZBCo96udw3Ydg0HHpfp
	V9qgkqU5bj22ur2vDjqfR1dMfkDT1xK+H+TIevaGQ9wimMU5i0J7/AzTzUU+mAhjuy1hhhI++6/
	E0NzdYdvgG8iwRBrtWIPhhufrI0lYk10/0DKmGaoOvAGxuUm+InDCMZ9XnA=
X-Google-Smtp-Source: AGHT+IFTtxRr4GwLUORRmzyaNHEUKjm4QV7Yqk1CzJkddeEzuYoyMlFTslxLArHE6BlzutXCqlYrdA==
X-Received: by 2002:a05:651c:220b:b0:308:e8d3:7564 with SMTP id 38308e7fff4ca-308e8d377ddmr988351fa.10.1739046321866;
        Sat, 08 Feb 2025 12:25:21 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de177c54sm7911411fa.14.2025.02.08.12.25.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2025 12:25:18 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-307d1ab59c6so29802751fa.1
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 12:25:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU+aQ5ilajbxmz/qRI8AcPgj/oxQ3dJuz8Khai15+lJr6sLwvXl6F14uurgp2uJFusNBTt/m5/OvnoY@vger.kernel.org
X-Received: by 2002:a05:651c:1616:b0:302:1fce:3938 with SMTP id
 38308e7fff4ca-307e57fd416mr31605761fa.11.1739046317966; Sat, 08 Feb 2025
 12:25:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
 <20250208105326.3850358-3-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250208105326.3850358-3-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 8 Feb 2025 12:25:06 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U6AfAq1j1B7tP7HMqjwh9yNxJ44mfVfdP+KCFiUO0Xng@mail.gmail.com>
X-Gm-Features: AWEUYZnkToH8gEJqi66QQhCeYhQX2_qfYzlMhuvpnRPH9ru5wjR-xYGs0fqUV7s
Message-ID: <CAD=FV=U6AfAq1j1B7tP7HMqjwh9yNxJ44mfVfdP+KCFiUO0Xng@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] drm/panel: panel-himax-hx83102: support for
 kingdisplay-kd110n11-51ie MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Feb 8, 2025 at 2:53=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> The kingdisplay-kd110n11-51ie is a 10.95" TFT panel. The MIPI controller
> on this panel is the same as the other panels here, so add this panel
> to this driver.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 115 ++++++++++++++++++++
>  1 file changed, 115 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

