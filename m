Return-Path: <devicetree+bounces-105622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD4198747C
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B4177B24C4A
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34F9F19BBC;
	Thu, 26 Sep 2024 13:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QZcDB8FE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB7F4D8AE
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 13:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727357588; cv=none; b=he0+sCDO4r27ZB9YX3rQ7noPSSsijilBBcxAEjeGj5uOPlvziZqs3vpvYgMmH8Ad7szGk/7OGBlijiFYBXuDBzHGgVDD1nnklhRPl8ht2U9z8dPGAlgorGu/fjseLwyYOVg/0yDLnZiFhSRsVZHzV3x15bxCtQL3KSFP4X3oAuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727357588; c=relaxed/simple;
	bh=6DjgITxuxMnJtFqiZJDNNiIBfC6aRD7xowfyalj+wAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kNiuNqKmU0PILB48Omg9TjGJwIqyj282TUf/OqW6kwWnQgmxpqmWOy9kflZq5I7S0+yF0qHTCxSDDcVoj1hFYb6LQT2bJWJPtkdF3wStgEmJs0/B68GK0awB1zMIQ6gTp3YMwAfsYGVvB0psrLNB9qiCBRjkh50tvP0vLQpt0sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QZcDB8FE; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f74b6e1810so9025471fa.2
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 06:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727357584; x=1727962384; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SLMfEvh5MiHDpi2ZSu3TA3jK6yRE8rSCehYhzQ/c1wk=;
        b=QZcDB8FEfR1Pm9VdQTd/kkCdAWsOPHCflEoXEAcHsqc5aNJ4a8yk6F4OWUCEIofmkJ
         gUk2WoTmsuNYmXUjyhLmHs070aHMCtJf4WrDa7u7aPLUYFbPG+2QNw60NluA6Ra2H7vo
         4LK+LfhMOMZKfuNGeOrXNca8qiK0d80v93fb/giu7TuSu/fSjw4yNiNIc7OhuOeLvBdu
         i1n9DHI8LniEIwUvqv+0S1ST05nvoqAK/hgnyPQh7y7BpyDTDorHRnNhHQzPLpZ4sQoU
         XBKQ081NLCB1cxm9JnQunGRA0njKRveNy/1ABAZONBTEey9Y7vAWxG/XL+2jgUSq+b5M
         dT1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727357584; x=1727962384;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SLMfEvh5MiHDpi2ZSu3TA3jK6yRE8rSCehYhzQ/c1wk=;
        b=aa0jh3oMPRlERq7prATOCtlMxZvh1fqORvi9bnbL6FAN+blXvjNkYq1XQyPn06Jprg
         ZlSaewpOMzyaq90tFfGCElg5StE8tMiUISNAfdlC2b6zRuTbbwBveO4RPOKefLgu1RZ5
         oV0seHzhRPr4O0N6dCIeh64yGLWgmEqddZt+pGNGiccwHomPA8qpUeBgBPoRHtqv/YSd
         TzyPuQBoD7pSRR7gRc42iuTWS1W0ZrW+K6ii5cfMQlzl/L8qwGUSc8Ai95GXHlfeNwc6
         L4VSbpjdffEP/0+JyZ7ecbnc4C/pZAY3p6ZbeFoCwwr+6Y9/onCNGF43z1JDJ6Krhx6R
         1rrQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7kyllOKBJgVEhxyT3xW889PbBHQKZ1yxa9RJxwEQM4YQOnV/3fAALZE+GULFgbBCMiPJTr1S2y7uY@vger.kernel.org
X-Gm-Message-State: AOJu0YyhdG361rkLNsL4TzrB/6DT/mHonUyjkLWdP18Ix/1X7H+IlUDB
	cE/5p2/Q4PWN7qSWYV1ixbjX6hhYYG5qDCTTM+r4kjHYb1wQ6aCwwKnEX+zW01k=
X-Google-Smtp-Source: AGHT+IGe3R/1B3NKEaxLfS+X89tuylS/2rdHSlIFy6HqcIaJi19L7E/oXqDbrjVb+1syadc4RQIWPQ==
X-Received: by 2002:a2e:5152:0:b0:2f7:4e8c:9bfa with SMTP id 38308e7fff4ca-2f91ca6eee3mr34240621fa.33.1727357584260;
        Thu, 26 Sep 2024 06:33:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d283c0easm8253391fa.52.2024.09.26.06.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 06:33:02 -0700 (PDT)
Date: Thu, 26 Sep 2024 16:32:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikandan.M@microchip.com
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dharma.B@microchip.com
Subject: Re: [PATCH v2 2/2] drm/panel: simple: Add Microchip AC69T88A LVDS
 Display panel
Message-ID: <quxjqmx5yc27cxmjvnq6irltr36josag4yltxbiweh4femqbqo@j34pxmfxglc5>
References: <20240919091548.430285-1-manikandan.m@microchip.com>
 <20240919091548.430285-2-manikandan.m@microchip.com>
 <zognzunciriytm3uvoolxjsvu43v3m2lnctsz5swusnmm3aj2z@ag7zkncccdmf>
 <83e9d20d-f294-4303-b570-816ebc989bcf@microchip.com>
 <f4z2egmrcoh7kih2pyr3mq7fzuwtvod6vxlzzim2iw3ly7jcr3@2uxiyzlfixhp>
 <17b5a11c-b9a8-4172-831e-d52f1a4270e9@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17b5a11c-b9a8-4172-831e-d52f1a4270e9@microchip.com>

On Thu, Sep 26, 2024 at 08:17:09AM GMT, Manikandan.M@microchip.com wrote:
> On 23/09/24 11:37 am, Dmitry Baryshkov wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On Mon, Sep 23, 2024 at 05:50:22AM GMT, Manikandan.M@microchip.com wrote:
> >> On 20/09/24 9:13 pm, Dmitry Baryshkov wrote:
> >>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >>>
> >>> On Thu, Sep 19, 2024 at 02:45:48PM GMT, Manikandan Muralidharan wrote:
> >>>> Add support for Microchip AC69T88A 5 inch TFT LCD 800x480
> >>>> Display module with LVDS interface.The panel uses the Sitronix
> >>>> ST7262 800x480 Display driver
> >>>
> >>> AC69T88A seems to be a module name, rather than a panel name. What is
> >>> the actual panel name present on this module?
> >> Both names, "Microchip AC69T88A" and "MPU32-LVDS-DISPLAY-WVGA" are
> >> present on the display module
> > 
> > Which panel was used for the module? I don't think that Microchip
> > produces LVDS panels.
> Its a new LVDS display from Microchip that uses Sitronix ST7262 TFT LCD 
> driver
> 
> https://www.crystalfontz.com/controllers/datasheet-viewer.php?id=486

Ok. Anyway if somebody ends up looking for the panel, they'll probably
find the module and vice versa.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

