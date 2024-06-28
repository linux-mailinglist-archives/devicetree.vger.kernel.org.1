Return-Path: <devicetree+bounces-81183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B05091B8E9
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 09:49:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12CC9287A86
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 07:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0228142E88;
	Fri, 28 Jun 2024 07:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HmsgpO8D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22B614373A
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719560964; cv=none; b=aalfVv7LvfItT0tuZfVW31FqDO7c//x/ZksMfQarqAfxR8s8BaZd7TSCqkjKpie0MeM2HGFyb+CpRld+kd7yuxm0I0BO+jfmlPWWnJE3d3WBRF2KnOPkKwa8zxrm5LstVwhbSlPA/XnNMPisdtnWCTe1ilKXYk7DOucDRrwBvW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719560964; c=relaxed/simple;
	bh=lpLJqQ8ZY5m2Pw3hOOXQsc0ES06UYXr21vFR21HJ3fY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o0+/Q7+soWh2XJbXRr/rvt23Rc0NlRXjvpBLarso90GleYs6jlc+pbi2pVWyRAaFwISAzIO97/o2kbcLX//6I5Cgtm/lw5Kww/N0crO24Nj+Ob8eNZCAOAC4GrijCCBuJY/pisNq+hEsKiLvtjZbRLwbGRaXgiNqWYyDZC3svvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HmsgpO8D; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52db11b1d31so418970e87.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 00:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719560961; x=1720165761; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3n4lUcycdMQ3kKfIM5iWr5aZZYsbiBaz6fBAdV+RFUA=;
        b=HmsgpO8Dnzs6qvW9GmOOtfVwdga/kmmKeLmDHsuTpAfXA4CE+c7RHGfvo26DoCoYqp
         WIlSWkubxaLOkD4m314DNjxdyTxRHVZ06++AvRNxvGD8iEUkt5UKlramavaaO8Rofwzh
         9DNGQrBMOaVNx8FixX1TVALSFG3FlwbladGtewfDbo0YdRPjeboY6R/jceuvpjozn2wG
         O2zS3kIDXZnL+1KmBAxpGau54eQb5q8UErCVznApwCU9R6DTGHMigwMVVd2WNzeS364R
         As79e4Wd4aQdcxYpX7myQdJJZVzEuAc7kSZLJChz9e2se4EnH4DQZ1oKjwYaX01zi3Tk
         tcZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719560961; x=1720165761;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3n4lUcycdMQ3kKfIM5iWr5aZZYsbiBaz6fBAdV+RFUA=;
        b=tKaI5mkppCZsLWP2o3uByir+9uKI4FG7wUsTUtXndrcyhIfpd0xBdncbRfUjVVC9Qk
         TPfbVXae0AwCqOQAJtNyaaIjd4nydSWva77ck5OLfF4Eb1xSUcP7TfB1RGfXnj41lF/y
         RzPj+FEeXuEmEBAx1lBprDXHJj0Ur3aAQ8HkE+zBcf1RebuCW8KYi9ov2g++C3yeTjj9
         b158Y1zQyXWTgS/8BQQSEM+7Y/rsS2bdgv/qaXxOBQRuvg8Pefik9bSNxGyWjdygbBs1
         Q6K/J7h5N4RAEVUGqiR81sTQu4Fc8LWg4PC340m8s1oNOItKJfN0Mq10GjkuAs49mQ4V
         tsvg==
X-Forwarded-Encrypted: i=1; AJvYcCVmRdpnE7mm0PlhV3zBre2aqWEqhciO4WvLuHp0adUv7Fs/Nh9H9T4D1Vx8Jct57uQSg7PBo4wa1A5+0/XZnaOKt5loHHMNpxiT/g==
X-Gm-Message-State: AOJu0YzABZBLKt0tzvVQ5knfKDyCGKwqEXcdN1OW7fmMa9CtAASd/QgY
	S7SJwP7cB+h+sjpFGDb5G3HvcGlPCJKyMDkjWsmoIN6KKav7lG/CH+2qpFahIN0=
X-Google-Smtp-Source: AGHT+IFgdWWt6QizMbUEw8zOQHS4r9yxk4aTjYOpJkS9saJqX2dR+ej/kTOnXMw05r8RHY1JZr9nMw==
X-Received: by 2002:a19:5f5a:0:b0:52c:c9b6:df0f with SMTP id 2adb3069b0e04-52cdf8260f2mr9926203e87.61.1719560960944;
        Fri, 28 Jun 2024 00:49:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab27b6bsm196141e87.156.2024.06.28.00.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 00:49:20 -0700 (PDT)
Date: Fri, 28 Jun 2024 10:49:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Conor Dooley <conor@kernel.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
Message-ID: <3wwp34miu2pibsylv3v2sjzyeso2ugslutm2zqnddlx4ipily2@bcrfetrjngft>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240627-display-quantum-48c2fa48ed1a@spud>
 <2fe0c2c0-2f67-4549-b62f-3b9db005d3f7@freebox.fr>
 <46d7c95f-20b0-4526-8583-1d8878afaa2f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46d7c95f-20b0-4526-8583-1d8878afaa2f@kernel.org>

On Fri, Jun 28, 2024 at 09:36:57AM GMT, Krzysztof Kozlowski wrote:
> On 27/06/2024 18:45, Marc Gonzalez wrote:
> > On 27/06/2024 18:25, Conor Dooley wrote:
> > 
> >> On Thu, Jun 27, 2024 at 01:13:03PM +0200, Marc Gonzalez wrote:
> >>
> >>> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriver.
> >>> It supports DVI 1.0, HDMI 1.4b and 2.0b.
> >>> It supports 4 TMDS channels, HPD, and a DDC interface.
> >>> It supports dual power supply rails (1.1V on VDD, 3.3V on VCC)
> >>> for power reduction. Several methods of power management are
> >>> implemented to reduce overall power consumption.
> >>> It supports fixed receiver EQ gain using I2C or pin strap to
> >>> compensate for different lengths input cable or board traces.
> >>>
> >>> Features
> >>>
> >>> - AC-coupled TMDS or DisplayPort dual-mode physical layer input
> >>> to HDMI 2.0b TMDS physical layer output supporting up to 6Gbps
> >>> data rate, compatible with HDMI 2.0b electrical parameters
> >>> - DisplayPort dual-mode standard version 1.1
> >>> - Programmable fixed receiver equalizer up to 15.5dB
> >>> - Global or independent high speed lane control, pre-emphasis
> >>> and transmit swing, and slew rate control
> >>> - I2C or pin strap programmable
> >>> - Configurable as a DisplayPort redriver through I2C
> >>> - Full lane swap on main lanes
> >>> - Low power consumption (200 mW at 6Gbps, 8 mW in shutdown)
> >>>
> >>> https://www.ti.com/lit/ds/symlink/tdp158.pdf
> >>>
> >>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> >>> ---
> >>>  .../bindings/display/bridge/ti,tdp158.yaml         | 51 ++++++++++++++++++++++
> >>>  1 file changed, 51 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
> >>> new file mode 100644
> >>> index 0000000000000..21c8585c3bb2d
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
> >>> @@ -0,0 +1,51 @@
> >>> +# SPDX-License-Identifier: GPL-2.0-only
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: TI TDP158 HDMI to TMDS Redriver
> >>> +
> >>> +maintainers:
> >>> +  - Arnaud Vrac <avrac@freebox.fr>
> >>> +  - Pierre-Hugues Husson <phhusson@freebox.fr>
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    const: ti,tdp158
> >>> +
> >>> +  reg:
> >>> +    description: I2C address of the device
> >>
> >> Is reg not required? How do you communicate with the device if the i2c
> >> bus is not connected? Is the enable GPIO enough to operate it in some
> >> situations?
> >>
> >> Otherwise this looks good to me, but given Maxime commented about the
> >> complexity of the device, I'm probably out of my depth!
> > 
> > Valid question.
> > 
> > As discussed in my brilliantly expanded commit message (:p)
> > the device can be configured in various ways, either through I2C registers
> > or by pin strap. We use the device in its default settings, so we don't
> > touch any I2C registers, thus I'm not sure the reg property is required.
> 
> But then how would it be represented in the DT? Where / under which parent?
> 
> If this is supposed to be always in I2C bus in DT, then you always need
> reg. If you could place it in other place, then your reasoning is valid
> - reg is optional.

As far as I understood, the device is connected to I2C bus, it just
doesn't need to be programmed. So I'd conclude that reg is required.

-- 
With best wishes
Dmitry

