Return-Path: <devicetree+bounces-132268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4CC9F6529
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B104916436D
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5F919F49F;
	Wed, 18 Dec 2024 11:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WFxJh2rQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA892158853
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734522257; cv=none; b=gg0KY1HGLOot9yEZJOg1+uNhjh0C4FCrL4wW9dIFtgCJtZLI09kyWUPUOTI3XLbHIxDa/7+3fvMS/9zjqhJXg84DUSBI2iv6CVnDPlGwfxI2qG4EXDqkwDHRmL61T2haBFJJEWKvBnnVOd6CuAvCKI4mObjIAPK0Ob+hRa/pXjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734522257; c=relaxed/simple;
	bh=Mk5s6vR+14eTyQcvu6XzGWN2S80JmhpUPsTpHYaecVE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RIQkvKbAI2Y2q7JzdnMgDyk8H2eEYJkUtpJ+EytmdgoYo3ImkLxPaQ2CPDpEQtrF1a/DLI0R7A5hmbJxwtNlGDwHCjn3wcFPza1jhWPRBoiBRb9TwZYVaz+V0K/5nVRvxi2P7pP+0wcHToVIy3r5wSl9gRI76r5HFIDRsTZH3EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WFxJh2rQ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-540218726d5so6637075e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734522254; x=1735127054; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qSgyFmNiySJi9cKbnTzSvCSa7bOHhr/DX1wpZmOFD6I=;
        b=WFxJh2rQjMTeQASPaEA2itVxJxmCbtVlCjj90IZEZZbacOh4ffcFTZw936sdXQbm8C
         zT9EaFvaER66O8zywolxZpEI+PZhXhuSBLIpCn2UbaBUQ7GoQ3IrNwQBFxG0HFJkgLBF
         sfc+y497jH1b6VM/FcE+eg8dJAhttaj+CwaoqWcmcHOgforvJDnYSJ+9xekppXWQw/4+
         yfO87xvDVjzlDtE/+kFTh5yqwq79L4caJerdZvOgjcwzi5A8IGuLlApWc5zWTQnOj0b0
         W0aIOr6Wwp7bShuLTgeQgMhe7P5yQkar4Ywycb5W2CrWwX9q9A9BVt8aI4hldV2wp521
         Yz3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734522254; x=1735127054;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qSgyFmNiySJi9cKbnTzSvCSa7bOHhr/DX1wpZmOFD6I=;
        b=urA4m/i6jNKah5LzY3FZywWfdB9L6f9Srzm3Qh7yFetueArRAskNQaRRCH4/YrveKn
         0wWwZ6u5t2V4y/f9dzsH5GBaQHWFNbwMry1acMGuZi2z5CmxtNVlc5orNz375084w4kR
         +IK5/lm61aDB0HW2bHQ9Pi2BdGD3xnxfqoDM1ZJUThzCxLJFChuNeHW+Yl8fxMVxYN09
         MQAkc8x5WEK6Z8yQjaI78uEz1Bw0lvjfzW7niGR8ONjMT1Zv4uG6ry1ObHgEfbFzXCHu
         U1+7yV2GsFt7wPDG18ZAvGBm1WB1Fx51r8LBuBIZy/tq2ZsWcsLdL7RK1Jid5z5Qn33K
         q1Fg==
X-Forwarded-Encrypted: i=1; AJvYcCXC51skWL/qOUq7QPcYAmhSU2jBL/MKWpVq5cVrMKLG62MsgY65uU9AiVfBKz1H2tKIM07ZHInWFPFz@vger.kernel.org
X-Gm-Message-State: AOJu0YyugbeS4vzC4UmOvFwZtdGUeO3MapCbi0NENiAvkUjo5ElnoQ6J
	uDkbPTjA/aUEEFZzQPtO/LNcmGbhsR+4l/OSL1HMbZt9L0/fCdd+BesPX8XzldA=
X-Gm-Gg: ASbGncvBG0yeaB7VKR+sU0LC+59uyeS/CtJJF6oUiXctKcFaiPi4SmU7WWdUykDEvu3
	i3E8BkeGq3B37Grfd6g4r7C3Z+xRJACfhK+rescx1zAPRk+W+V7YSAwzSNhe6JC+PLVEighGhXt
	KL+45JuUwFWLgfPJxUONoTEj7kZJAC+MOtiJI8zlSlxEba4gcbKbjzlPhDfp6e8VY31VulStowQ
	Bo95diPTjT0Hx8xhc6MZsbgQa/vajH9EReAXyu+WJsWL5yawHT71NHQ1BtyJc0VH/sHpew5r2cB
	ZewL2q0GFr+IQkHtJHavJdlzi72atGWyVuo9
X-Google-Smtp-Source: AGHT+IFOi3R771oIo+m0pKp+iNRn3sNMW4xr+wpxXaN11mWnrJ8W+5ljdDjN5QfOFxC9hMEiYHevEQ==
X-Received: by 2002:a05:6512:2212:b0:53e:395c:6888 with SMTP id 2adb3069b0e04-541f46c442dmr1008761e87.36.1734522254000;
        Wed, 18 Dec 2024 03:44:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c002fcsm1378275e87.127.2024.12.18.03.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 03:44:13 -0800 (PST)
Date: Wed, 18 Dec 2024 13:44:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: fange zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Liu Li <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 9/9] arm64: dts: qcom: Add display support for QCS615
 RIDE board
Message-ID: <bwnsxcimgl7oqnzhrxurn3gs2ea3r6n4o5fulyhpooqnzbjllb@t7nljbwf3t3n>
References: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
 <20241210-add-display-support-for-qcs615-platform-v4-9-2d875a67602d@quicinc.com>
 <cfdyvcxdkmf4sv5f75koflayyx74wd3tuscdl7byp5peaag5ty@yhr3275jhftn>
 <92b6335e-a303-49d3-9b77-f951663fc10c@quicinc.com>
 <CAA8EJpqyM-r3jvY7sTpG-KKRHP9K7c3q0xfoLb_f0th7vunPYw@mail.gmail.com>
 <baab6fc5-755a-4675-a42d-ba7ba7facf0c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <baab6fc5-755a-4675-a42d-ba7ba7facf0c@quicinc.com>

On Wed, Dec 18, 2024 at 11:18:01AM +0800, fange zhang wrote:
> 
> 
> On 2024/12/13 18:19, Dmitry Baryshkov wrote:
> > On Fri, 13 Dec 2024 at 11:21, fange zhang <quic_fangez@quicinc.com> wrote:
> > > 
> > > 
> > > 
> > > On 2024/12/10 19:02, Dmitry Baryshkov wrote:
> > > > On Tue, Dec 10, 2024 at 02:54:00PM +0800, Fange Zhang wrote:

> > > > 
> > > > > +            i2c@0 {
> > > > > +                    reg = <0>;
> > > > > +                    #address-cells = <1>;
> > > > > +                    #size-cells = <0>;
> > > > > +
> > > > > +                    anx7625@58 {
> > > > > +                            compatible = "analogix,anx7625";
> > > > > +                            reg = <0x58>;
> > > > > +                            interrupt-parent = <&ioexp>;
> > > > > +                            interrupts = <0 0>;
> > > will change it to interrupts-extended in next patch
> > > -               interrupt-parent = <&ioexp>;
> > > -               interrupts = <0 0>;
> > > +               interrupts-extended = <&ioexp 0 IRQ_TYPE_NONE>;
> > 
> > Yes, much better. BTW: are you sure that it's really IRQ_TYPE_NONE?
> We extensively tested FALLING and BOTH type, and they all work. However, I
> believe it’s better to use the default type, which is the same as the
> downstream approach. This way, it will be more stable.

Following downstream is a lame reason. Downstream kernels are frequently
wrong in many ways. So please check the actual documentation for ANX7625
and specify correct interrupt type.

-- 
With best wishes
Dmitry

