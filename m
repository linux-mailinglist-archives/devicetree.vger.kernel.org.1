Return-Path: <devicetree+bounces-67766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 422848C9A9C
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 11:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72D0A1C208BA
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 09:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F8AD1CAB9;
	Mon, 20 May 2024 09:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="BrzrnEh8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45F31CA85
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 09:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716198319; cv=none; b=pUUll22UhjSn0j9zTp6sEQxGX8F/riwbqWq20jBgtSVNLi9bioCiwllB96R22FmlgsNTwFjqrFkbOdkMuEudSAHsa3eXvZ4nVZQ646RQha7Hgb+ksTI4yYESZb7+8qkbroRuS8AVwOfEZ57LbwJ7+UdAGG6HmmQywzGGguy2R9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716198319; c=relaxed/simple;
	bh=zJ/F3mGRWEx53dm8FzxHe6KBGBhdsoCugagsUgvfr9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t4cSKejRwEHAOUhNWNV6FST0NvBkbJaUJdq1Wltr6WEjf9AADEW7+7wRj2D7MsVKQZQHnqTdf5U2Gk9mRc7s4TJsWwS6ZgVGYO7ARTI4apA2a1s5uca0nODnTNtnLJWXRluvyRrD4+5z0sB0CP9fBmK0NX+cegvm5aR2VEgrAm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com; spf=pass smtp.mailfrom=melexis.com; dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b=BrzrnEh8; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=melexis.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-51f2ebbd8a7so4905982e87.2
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 02:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1716198316; x=1716803116; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0G9UzplPIZxXoVzSJv9sSwcL3/Lcr5OFe8A3ys1pjFw=;
        b=BrzrnEh8jPTjf/ZByn3OjljrH674+hFBJ/zRHKOsdhaHKlg9MkZ/6BJotNGQvdnJ4U
         kDYLKWXHaRE4k4nusmgIhvh/fVjwHgb1bQjDrqwAb8Pq30NRHCbSExsSNeZdby2/jvW0
         5sYdCAogI9N8ADNCHIDafGpH+vmj4R6UMQX76/KoK4L9uYWiUjo1lkKEiQmu5qYzvnrS
         gNoRC5Xt21YEQ33Bp2Kn96XoZV5NLdcR2laRQfKcnezm2JPjNdpPKaxylhRfCFgzW9uB
         g+Yq940GMgJVTL4ThWY4uGB3mkUjfwyPpmGHVKT3RNsGbYR5ZEc78SvTjjgMnNxZL0Rm
         Amlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716198316; x=1716803116;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0G9UzplPIZxXoVzSJv9sSwcL3/Lcr5OFe8A3ys1pjFw=;
        b=TUDs+SYDFgGrFOCBUKcL2jvzSIHddYUANpaPEBOnHEYqdOJXlyrOElvr3YHl7htBP2
         T1tPVpiN2sJ49R2f0EwXdBEtw5jPRcXiFHM14+bOJJdqYULNmb5s3s8cwrAwkslzfAzS
         GDaFuc8JlvbyeDH9vTc9e3bG9I6TPbmMSpuA3UlXN0Nlv2VSIwdkA2KFuyc7PtPtst/A
         yx/xnNBynE+USvxqbR2w/3ytmiKAcvpnu85YI6Oqmux4ePsREeHnuI8FBmT+1yEnBhVB
         Wir3isxCd0onhMY7RrEDGDrhH6Ep2af3szqjVxQLACCYyDB02KNp90GL1c0MtuifTxE6
         fRGg==
X-Forwarded-Encrypted: i=1; AJvYcCWAAPVskU4PXE7Y1eF+OBKi/IgX5wLQKCWnMbIbldaDUhdwF9uffevvrrjDT/2LjvjzgxW1h2YLH0/pVOoiGX4fsTk47CQLp6LO0Q==
X-Gm-Message-State: AOJu0YzltxjtP4dFK7GmoDs8bfSkPC5DYBXNP65+wLEAn9VtJetpcf8e
	/a4dxoHkwHcVngbL5ve9s0fdsOjKjrKjs/QlAikYo/Iw2SLJi5A04V6mxgZTcg==
X-Google-Smtp-Source: AGHT+IG2yYhl2mN+ylcYsJyvqenOxa8Y6G9+AsVl9xeT/bEuOjzTTNm62hcu1r+6fAyLK6yHyHs6bw==
X-Received: by 2002:a05:6512:3457:b0:51a:fac3:416d with SMTP id 2adb3069b0e04-5220ff72f59mr17574767e87.43.1716198315910;
        Mon, 20 May 2024 02:45:15 -0700 (PDT)
Received: from melexis.com ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733bea6557sm14845919a12.13.2024.05.20.02.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 02:45:15 -0700 (PDT)
Date: Mon, 20 May 2024 12:45:12 +0300
From: Volodymyr Kharuk <vkh@melexis.com>
To: Benjamin Mugnier <benjamin.mugnier@foss.st.com>
Cc: linux-media@vger.kernel.org, Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v6 01/10] media: uapi: ctrls: Add camera trigger controls
Message-ID: <ZksbqBfBD4TMRJGE@melexis.com>
References: <cover.1715871189.git.vkh@melexis.com>
 <de44db636f0e3f5bea2357aa6a34531fe0c34f08.1715871189.git.vkh@melexis.com>
 <c717987e-a5cd-4dae-bec7-9b946ee10b1e@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c717987e-a5cd-4dae-bec7-9b946ee10b1e@foss.st.com>

Hi Benjamin,

Thank you for your question.

On Mon, May 20, 2024 at 11:19:39AM +0200, Benjamin Mugnier wrote:
> As I understand this control allows to change what triggers sensor
> acquisition.
> May I ask what the different modes do ?
V4L2_TRIGGER_MODE_CONTINUOUS - inner self triggering
V4L2_TRIGGER_MODE_INTERNAL   - trigger the acquisition by sending i2c command to sensor
                               using V4L2_CID_CAMERA_TRIGGER control
V4L2_TRIGGER_MODE_EXTERNAL   - trigger the acquisition by sending the pulse.
                               The master of pulse could be another sensor or gpio.
> 
> We had a discussion previously with Laurent, Sakari and Dave (adding him
> as cc btw) about a "slave mode" control [1] for the vgxy61, is it
> something similar to the trigger mode ?
V4L2_TRIGGER_MODE_EXTERNAL mode can be part of "slave mode" control for the vgxy61.
> 
> [1]
> https://lore.kernel.org/linux-media/c610a2c9-31b1-1950-00fa-a6b3fd3517a1@foss.st.com/
> 
> > ---
> >  include/uapi/linux/v4l2-controls.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
> > index 99c3f5e99da7..7901f40a1bd8 100644
> > --- a/include/uapi/linux/v4l2-controls.h
> > +++ b/include/uapi/linux/v4l2-controls.h
> > @@ -1087,6 +1087,14 @@ enum v4l2_auto_focus_range {
> >  
> >  #define V4L2_CID_HDR_SENSOR_MODE		(V4L2_CID_CAMERA_CLASS_BASE+36)
> >  
> > +#define V4L2_CID_CAMERA_TRIGGER			(V4L2_CID_CAMERA_CLASS_BASE + 37)
> > +#define V4L2_CID_CAMERA_TRIGGER_MODE		(V4L2_CID_CAMERA_CLASS_BASE + 38)
> > +enum v4l2_trigger_mode {
> > +	V4L2_TRIGGER_MODE_CONTINUOUS		= 0,
> > +	V4L2_TRIGGER_MODE_INTERNAL		= 1,
> > +	V4L2_TRIGGER_MODE_EXTERNAL		= 2,
> > +};
> > +
> >  /* FM Modulator class control IDs */
> >  
> >  #define V4L2_CID_FM_TX_CLASS_BASE		(V4L2_CTRL_CLASS_FM_TX | 0x900)
> 
> -- 
> Regards,
> 
> Benjamin

-- 
--
BR,
Volodymyr Kharuk

