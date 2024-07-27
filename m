Return-Path: <devicetree+bounces-88537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C437E93E03F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 18:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E434B213F4
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 16:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0DC186E29;
	Sat, 27 Jul 2024 16:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AKZ7iXv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5111741D5
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 16:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722099576; cv=none; b=q6jLeK254yLGQzf35wk5QgITBQikH9QCvwu47LAQSC4LVD1ccbiHMYonlDIg2pClgdrKHXItmS2kMPgfC57mX+iBn6YUsMWZ2hT9TqO2pDZzkIURaCFR8CxtqhS1GYYwrko0mLHDYtUm6dSaBvk9/2H7li5PPzjAGzmAj4MWFVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722099576; c=relaxed/simple;
	bh=10M1rd0S0FluUN+xNvAjTZsGuD88h1gL6815ad9VQRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wly9il3pxsFB94sBStp4+HJ8QIAbQQ/DaeIBxzZu0p0Uwx27jtaweBkt4UEowijBvSmGhwm3hmNBewQe5fdO9zfeiLuQzBuQr9ANg1TZKGJXeG2pO2syo7Yb0gQ3qD2p/16lTpe0OLbiau8nzplHmtZCFQCmBgVoqfgOR6kx4Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AKZ7iXv7; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ef23d04541so28336831fa.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 09:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722099572; x=1722704372; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6gk5GM3ctrLM0FMWDo1AQm58vDMFpTA2WEvE44P/cxM=;
        b=AKZ7iXv7K0wuoND0WTAo2bviiUF0ldhoc7eSYZQQH6pab4Y4uvAVfIzzfbX9+L7kDv
         AeQCQd+Q6VcpKbvRknh3nF6bmAnOg2LeTZNxb+qJ5XGZ1tnDVQVU6wUYOu016jC6PIn7
         b0GpZdOuab3ItOEfHFzC2H4Qvfg3KRpxNu4aqu1gIzVQB2jn9lPYo5FBkCXTFk66Ycz2
         kDBnsV853Ua98ohe2IZsPu1mQ45V5aPMhLRduF1ka6TCj7q3Y+OMs6FBL3yT7uCrr6CI
         ImmzuEciLo72QCK9otdyMKgtSQL2th5gtAc87cnWoWwQEnMSNUagdGevhRiupYlhHMQf
         FoMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722099572; x=1722704372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gk5GM3ctrLM0FMWDo1AQm58vDMFpTA2WEvE44P/cxM=;
        b=i02H1JcZBgdSWfcxQa5yMLqeiADP5Z6Azowzy/sVTvontwrcSH+aQoKUGhQXOVd6pq
         Y1DnFkF76mFz4YIe+v5b0BzSOKhybpoTXZ0bVCi2K2/817wWzujEO5qdVxe/HJCCUo49
         yYjSSiUjhfkwRi28n80v95Py91A81I6KRK8ZsvE5Ju4mfFz1FR7ZqX/2boTWyF4N/LBe
         F6a7qU39Q8be4CdYjr5VLvB4r/vgu4+SwUyHPVX9a3kKOcPJMQyMkne6UaxPpzvU6/Vh
         lIcVKdqPBJGoUUU8QT6I/ZVHFsFON7ic3qea9j/ynvgZWsFjW3FgEO/BnHY7yekBesqd
         4XIg==
X-Forwarded-Encrypted: i=1; AJvYcCVkaFMHBcokKZtRfGq7SWsDVjTxpzC/qlp0gty7uMICLB0/l91ltq9dXjNxq+OQtwhBD/812knjVEIDuZvki8J8hXMsa/vOSYxR0Q==
X-Gm-Message-State: AOJu0YzFdw827JJafY1aqAzdolcrygbZpUqOzOD/59/kYQikyzDA6kT5
	7JK5rv04HiOeVHw06Wr4SUyNwFvJhNN/oUbBhvIMvZagL1i7wQ2edC9VozMSVg0=
X-Google-Smtp-Source: AGHT+IE3fVok8jVWIevkO7VjdQYKIoF1cWveKICmqrEYsXNGTEAHv63UrD9YRX8c3o9qZ0t5jmM1fQ==
X-Received: by 2002:a2e:9350:0:b0:2f0:2760:407c with SMTP id 38308e7fff4ca-2f12ee42005mr18468581fa.30.1722099571545;
        Sat, 27 Jul 2024 09:59:31 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03cf0df8csm7343871fa.15.2024.07.27.09.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 09:59:31 -0700 (PDT)
Date: Sat, 27 Jul 2024 19:59:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, dianders@chromium.org, 
	hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, jagan@edgeble.ai, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Move the sending location of
 the 11/29 command
Message-ID: <gq5fcttutomphgfrwrtloqzczia3uc5qpont3lrowocan2xjc5@ubfabhsh3mfl>
References: <20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240725083245.12253-2-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725083245.12253-2-lvzhaoxiong@huaqin.corp-partner.google.com>

On Thu, Jul 25, 2024 at 04:32:44PM GMT, Zhaoxiong Lv wrote:
> Move the 11/29 command from enable() to init() function
> 
> As mentioned in the patch:
> https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> Our DSI host has different modes in prepare() and enable()
> functions. prepare() is in LP mode and enable() is in HS mode.
> Since the 11/29 command must also be sent in LP mode,
> so we also move 11/29 command to the init() function.
> 
> After moving the 11/29 command to the init() function,
> we no longer need additional delay judgment, so we delete
> variables "exit_sleep_to_display_on_delay_ms" and
> "display_on_delay_ms".

Won't this result in a garbage being displayed on the panel during
startup?

> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 59 ++++++++++---------
>  1 file changed, 32 insertions(+), 27 deletions(-)


