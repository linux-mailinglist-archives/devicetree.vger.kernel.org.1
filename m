Return-Path: <devicetree+bounces-105740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFC5987BA2
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 01:22:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29F601C20B77
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 23:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A04B1B1414;
	Thu, 26 Sep 2024 23:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OQG1/dJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A34E1B07C9
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 23:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727392887; cv=none; b=mzd3nSUjV8dLcALoaU4fhJ/zPotz/+ICIqdAtp9uniFt2kgkgClpzD/gdSOT8LX2khzHrGQVRhBTqSFJJA6ZF/kMUzPl+LXySWwHrPVxvV28nfaQuesN0W/JU1pOpB9Djbqb0HmnM+voCugCmrGo4iTL7HIjUHJBz/ePNzhYYMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727392887; c=relaxed/simple;
	bh=X7ee8uCfCrRVZrNU8OdJ9moOzH6OXhSucidqNB01wsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kn27zZYau36GzIMuHD7tMiggTPf0snP1aXiBN1MDD8TLDj0KZb7pKWRkCDDNJTotIiq5olJbjU4bzA/3p1tqSinTVTnWhtwkMSCx/qXb5nochCAlx9MmTufzQjHdR4w8kzmojk+SZgW4qudpsA389w/E29KcXyFi+8AvvXIr9aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OQG1/dJV; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5389917ef34so1816716e87.2
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 16:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727392883; x=1727997683; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hj1ddZeOtN7zDwMwktNYFtzm3Gh7Tekdeg6sieYs35g=;
        b=OQG1/dJVbBW0gRg9H37UpgdBS+ytOnRUHEkNmedeDBKh3tbopYZ+HXJuwB/50/1SqO
         b0ftk9v9kaVQJ2vQ6sWQT/PeFuYohj/rQseonRvBjFurwBBf5h/zWlbro8bY7jQn5iy1
         2YN/L0xmXHZaBhFIO4e9VJxgKdOcOIWz+Jmxwwhnp8ZEI871gfTJWosbShK/hiY9lh4A
         epID9dXzkA5W063miuyFvYSNEwZLhiZDXeu+yHm37MQBKCbIk8GXnRZ8m6UI/zHPQok1
         Ld6384qGrI+NdFJo2eNyKXJ/LWRCFqY7N1Jvm3AKsqB4UqjidMEoasB75GtBi2RpPWCF
         FGrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727392883; x=1727997683;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hj1ddZeOtN7zDwMwktNYFtzm3Gh7Tekdeg6sieYs35g=;
        b=oUPoADY2A1PXYq5UAmPwXyavyRT9M6X7NL8fdVd6pIrGjok5uKvLGrgK4REoYMjLOV
         mCdpdsYdzxTi44Z7z5gCoHl4lvu6VWeD5fYfhoM9sm3ZyzbptR4B0RAt/Vqm9c7OKIGq
         oNusN5jcbtdlSlchrrnwBdY9q8gQO8+9ZBb/VTNz5+kIi7Eesg+ANqHle86UAJV8gvXx
         DLONCzVplHQutOX/HTxrhe6q86EGszLX8bY/bJ9AJOs+im2OmcqZX6Jow/8eyH2Im5do
         BceetEu53SFDHEG6peWWuDr3HozBFj6yMbRuz33rM6JA5WoupuPafryz5dVSzUf+F22E
         jdkA==
X-Forwarded-Encrypted: i=1; AJvYcCVxpkaL+DkQ62vkIlyt5Qcca5+cquSlnQpHmqG40qWZIy/JVC4jdRtx4Siz0UL2uys1zxJnYMrSlfgj@vger.kernel.org
X-Gm-Message-State: AOJu0YzON7n2/rahyf/pYSQfScrjw8f1W/YXATesIuHXf+E0OTzbmxZj
	/8+xSfou+WTYPq8IEN2sCDTGYY4O7+900QMKhZOzhXZkEKR9J5PPnLPyhguqFjo=
X-Google-Smtp-Source: AGHT+IELK0Z3Oj9K6pV3soLuC1gTs0dfJ9rdKZI8pDVBtLZN2FDIDBgtVuAsJBZb02BkKfXRyruufA==
X-Received: by 2002:a05:6512:3a96:b0:52e:9e70:d068 with SMTP id 2adb3069b0e04-5389fc29c84mr797475e87.4.1727392882552;
        Thu, 26 Sep 2024 16:21:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-538a044159csm100729e87.263.2024.09.26.16.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 16:21:22 -0700 (PDT)
Date: Fri, 27 Sep 2024 02:21:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Manikandan.M@microchip.com, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dharma.B@microchip.com
Subject: Re: [PATCH v2 2/2] drm/panel: simple: Add Microchip AC69T88A LVDS
 Display panel
Message-ID: <aehcvf55b52p6u5ai3uri7jzo2dywdhv6mxo4pxz3lhajjoxqe@izk23gt2yvdn>
References: <20240919091548.430285-1-manikandan.m@microchip.com>
 <20240919091548.430285-2-manikandan.m@microchip.com>
 <zognzunciriytm3uvoolxjsvu43v3m2lnctsz5swusnmm3aj2z@ag7zkncccdmf>
 <83e9d20d-f294-4303-b570-816ebc989bcf@microchip.com>
 <f4z2egmrcoh7kih2pyr3mq7fzuwtvod6vxlzzim2iw3ly7jcr3@2uxiyzlfixhp>
 <17b5a11c-b9a8-4172-831e-d52f1a4270e9@microchip.com>
 <quxjqmx5yc27cxmjvnq6irltr36josag4yltxbiweh4femqbqo@j34pxmfxglc5>
 <20240926-foamy-oarfish-of-passion-ec6fa2@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240926-foamy-oarfish-of-passion-ec6fa2@houat>

On Thu, Sep 26, 2024 at 03:58:11PM GMT, Maxime Ripard wrote:
> On Thu, Sep 26, 2024 at 04:32:59PM GMT, Dmitry Baryshkov wrote:
> > On Thu, Sep 26, 2024 at 08:17:09AM GMT, Manikandan.M@microchip.com wrote:
> > > On 23/09/24 11:37 am, Dmitry Baryshkov wrote:
> > > > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > > > 
> > > > On Mon, Sep 23, 2024 at 05:50:22AM GMT, Manikandan.M@microchip.com wrote:
> > > >> On 20/09/24 9:13 pm, Dmitry Baryshkov wrote:
> > > >>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > > >>>
> > > >>> On Thu, Sep 19, 2024 at 02:45:48PM GMT, Manikandan Muralidharan wrote:
> > > >>>> Add support for Microchip AC69T88A 5 inch TFT LCD 800x480
> > > >>>> Display module with LVDS interface.The panel uses the Sitronix
> > > >>>> ST7262 800x480 Display driver
> > > >>>
> > > >>> AC69T88A seems to be a module name, rather than a panel name. What is
> > > >>> the actual panel name present on this module?
> > > >> Both names, "Microchip AC69T88A" and "MPU32-LVDS-DISPLAY-WVGA" are
> > > >> present on the display module
> > > > 
> > > > Which panel was used for the module? I don't think that Microchip
> > > > produces LVDS panels.
> > > Its a new LVDS display from Microchip that uses Sitronix ST7262 TFT LCD 
> > > driver
> > > 
> > > https://www.crystalfontz.com/controllers/datasheet-viewer.php?id=486
> > 
> > Ok. Anyway if somebody ends up looking for the panel, they'll probably
> > find the module and vice versa.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Given that aside from that mail, the module name isn't mentionned
> anywhere, I'm not sure they would.
> 
> The way we usually deal with controllers is to have a separate driver
> for panels based on that controller, even more so since that controller
> seems to be able to affect the display.

But in this case it's panel-simple, no special driver for the
controller. From my understanding the AC69T88A is the module name (at
least the datasheet uses that name). The on-board EEPROM also carries
that name and the name of the controller.

-- 
With best wishes
Dmitry

