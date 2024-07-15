Return-Path: <devicetree+bounces-85828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D48931886
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 18:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 433CB1C21698
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678241C2A3;
	Mon, 15 Jul 2024 16:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g8im6Ais"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59A71C6A3
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 16:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721061253; cv=none; b=Xr8v4Be/7seEI7ifEhtYB++j/gm2hdvHE2l4DVh6NWTzejEt04C5UZq9EUWiwUvysGk26HFUjfvELxESz3R4R42yjcoLaQdrWH92X6YDa8gYnPZBG7U8gFD6Kg1zHMvilCP0/3wrxyJlOu4ypErOtcvxVXCbzX1X0BXqN4Cu/BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721061253; c=relaxed/simple;
	bh=qhp73Tad+JqfaHNwjT4CNCWI7OKK/O7Fpy6EtYhnQF0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JRFuir7ZX5XTw9iAjrghHQJPQbtxrP3OrxhIG+Q/S0+efXd8QRkmQilri5Nk0cdYyCvgTO/BYkXW7it/PYMLMhzKC+4XmgY53E9yKmTvwOMvklqDPr554hwL1E2mWjl1y2m2a6I5VhyW7fBGahZq08bNOse0Fq4AlexB2b5Ol7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g8im6Ais; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e05a2949284so1874354276.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 09:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721061251; x=1721666051; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O37L9qZJLQGQMz18TDRSIA7wom9SyLF5AajKEOhKC40=;
        b=g8im6AisqrWhbvrNu3ugzU2s38ss3BubN5PHvv7iqXQF3NaOW/J3yXslF+GDdcHdKm
         vUHY9F560R4Op5iKYh5TuPu8yjt3zs+ajV/vyeHN3x3dNQ9u4QkSCX5Fsvn4b51bLkL8
         YiXnX6uMnRkkVZU/s25KX1uJTR8yfnK98JKqqX2rbMEEfpENa6dt4cZwAw7fwSO5tQcu
         63Yzxl32hBTrNF8JUa5xj3X/u4X/0INW1cgfezijQRJFVoHErJgyyhfDQtfF1TnGKdY5
         a0t/05n3JaeVtL7oCKp95YfpoQnglsvbi4u9ljSljsaGEMwXa924Je4STOUbKy6xlrgQ
         PuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721061251; x=1721666051;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O37L9qZJLQGQMz18TDRSIA7wom9SyLF5AajKEOhKC40=;
        b=h5FjkOQs13I7s0cdagj4XsxhYH9hSE9xzueVTmgQDPUmOuiRz4zvY7LsxTBS16PPP0
         M3GuJMVQo5ZmkVIQZntM0X3wpMJwEJvSIuVPUV5IvIo1IU9rGLX4Fdc9BM7BnpdQzYjz
         0kInHxuNbPQ97yBSZqZR3jqcOWwPTcRH7ezeTQP0x87SCdmH2wo6qqcqfGhiccEcvxdc
         fJ6H0sQIlcnSJfpb07g8b+Qr/sWlz+S/nHXXv2M3w21SA1d0sPBz9QAWTt5m/rDilCnH
         HdNjUfW4cMHEhWytEJpC3nqyp4bqnubHCNMMbtLF5niY5d10uoWSKBNZdezWZBW5AHJZ
         7fjA==
X-Forwarded-Encrypted: i=1; AJvYcCVPS8HE5FzA37Lw5EnZn7eET2XZWTn5X+OXI8A7ivH1BNyphcRJg127cGmHoNRCjKVkEZ6mOUFLKvqD8x4ajcROEEhrDNjUzQkbOA==
X-Gm-Message-State: AOJu0Yzu6U6T+T8A42UUvItheTiFrbpox5Eti98Udmb/TxOwm3TKSJcI
	MvZ4GKEKB7hYg7FURLQTV6jmFokvbMSLfyz3VxArQZKy2gVShGqsi8j2Uvrgv0Vd/aUU3Jkiyuo
	MXbBfJV37In5JggP9jkjo7dLS86w4i4j0Lpj7NQ==
X-Google-Smtp-Source: AGHT+IHbhMbVEZKppzrWbxx+94NB44o9QwSREBMBZsGgAxNmoI/3j+IILkQ8RwefrybDTMBJhqnTa4iV4f6MMeBnuLs=
X-Received: by 2002:a5b:b02:0:b0:e05:acec:fefd with SMTP id
 3f1490d57ef6-e05d3bbdc7dmr99465276.48.1721061250693; Mon, 15 Jul 2024
 09:34:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
 <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr> <20240715-trickery-spongy-c9d8e246b4cc@spud>
 <20240715-stable-popsicle-7c6e2fa76644@spud>
In-Reply-To: <20240715-stable-popsicle-7c6e2fa76644@spud>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jul 2024 19:33:59 +0300
Message-ID: <CAA8EJppYJuKpsUBhy3qwa684dWdZbp3qZtd6OdCz4YBU1DjYMA@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
To: Conor Dooley <conor@kernel.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Jul 2024 at 18:28, Conor Dooley <conor@kernel.org> wrote:
>
> On Mon, Jul 15, 2024 at 04:26:12PM +0100, Conor Dooley wrote:
> > On Mon, Jul 15, 2024 at 02:21:16PM +0200, Marc Gonzalez wrote:
> > > Current driver already supports the msm8998 HDMI TX.
> > > We just need to add the compatible string.
> >
> > Why is this required when the driver change suggests that this device is
> > compatible with the existing 8974?
>
> (I know I reviewed the binding already, just noticing this which
> suggests a fallback would be appropriate, despite the differing clocks
> etc)

Yes and no. All supported MMS HDMI controllers are backwards
compatible at least back to msm8960. However as we were not using
fallbacks before, does it really make sense to introduce them now?
It's highly likely that there will be no new HDMI controllers
(Qualcomm has stopped using them with MSM8998 at 2018).

>
> >
> > >
> > > Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> > > ---
> > >  drivers/gpu/drm/msm/hdmi/hdmi.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
> > > index 24abcb7254cc4..0bfee41c2e71a 100644
> > > --- a/drivers/gpu/drm/msm/hdmi/hdmi.c
> > > +++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
> > > @@ -549,6 +549,7 @@ static void msm_hdmi_dev_remove(struct platform_device *pdev)
> > >  }
> > >
> > >  static const struct of_device_id msm_hdmi_dt_match[] = {
> > > +   { .compatible = "qcom,hdmi-tx-8998", .data = &hdmi_tx_8974_config },
> > >     { .compatible = "qcom,hdmi-tx-8996", .data = &hdmi_tx_8974_config },
> > >     { .compatible = "qcom,hdmi-tx-8994", .data = &hdmi_tx_8974_config },
> > >     { .compatible = "qcom,hdmi-tx-8084", .data = &hdmi_tx_8974_config },
> > >
> > > --
> > > 2.34.1
> > >
>
>


-- 
With best wishes
Dmitry

