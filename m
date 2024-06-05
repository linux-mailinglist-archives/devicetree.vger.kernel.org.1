Return-Path: <devicetree+bounces-72541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B5B8FC427
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:09:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 939A51F224D4
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 07:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3720F18C32F;
	Wed,  5 Jun 2024 07:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U7b7OZCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6221518C321
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 07:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717571363; cv=none; b=bLSnPf6XTtmvnb6bjjLora9Mji2Vj0XyCsO9EETcMZkd5bNizZm4ZfJeFCmVPFIOjZEt7e2huXAs5MZkECIjKY1mz6xVpcrZr/2O4ddHOZ3tfhhTCbMhhwEQqrd5MKc5aslKHFl+vhcLJ2cFZsBWKa1X66UE1pHe/T+N8emnaWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717571363; c=relaxed/simple;
	bh=gtowOOZmB6VPvTmh98OBdJ/GTkP1Yo/Ot5b/hFyw0YM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vGdCqx3ZKVV90Sk2FIQ6JaUiMZfSKAANu/masBlXA0Nh4BEIeqh8d4kZGflles+bo1NwZO3/CXn/XEKHoJLGLkMWOFq7IDwgl0I+DrYpiMNJtRbjsvBHT7S5pbOSnQyAwAzwL5cabJ98DMnFhATsMGSDbBaoZUn6fa94Yew8DDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U7b7OZCK; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-578517c7ae9so2319775a12.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 00:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717571360; x=1718176160; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sQSephwmytgo/YLLaqWzVbfXRJtJuGRKYodF45aiwbI=;
        b=U7b7OZCKTFzT1gCjgU606ZD33vKTBiTIQgMsppNqTdnFnPXoIGUkvd527yYF7wwU56
         BLm6MyNr9D92TUms3Nh842MfaPrt/vPpzchD3aju2W2mCLJHQVt9RAMQ877xDRXB/F90
         OAcuLzPW8zBBtZYqPmFcsmPDs0w3bBy0Ly+E8tcEHJiGlDHZnIDk5gTRN/jzjx2fOS+O
         XGPrjy2F34Q8HS3rsWhqJwm6p21R/fStDKzTgaEwba3+jC3lsGIgrfzI4a4nlvIOalv4
         VK3tXFESi8AdM6zNjgSmQuZc/w0zT+jN7lx+G4c298ADpX3s1Y+BmKZBjlIy/vEOqisO
         vLjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717571360; x=1718176160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sQSephwmytgo/YLLaqWzVbfXRJtJuGRKYodF45aiwbI=;
        b=qT5VMD8mIr990FP/vQToCZS2SeC+NyUU4Bxx3b8SbY3QgYDow1h9SXJVJXcsC7xX6b
         9bT+1coaaVc0aqgwi0RcY37GLqKXXtq+BazHV9B6mehMNZ5VBa7YVKj/fwJhJSx18UUx
         R/JTF9MkRW6XLkJw/YdHY0d9+BE2JJDZQQTIjJZRe2PffD/0rjWP/TfUQplJsOBOxM0H
         PbGBi9xQCqhAfYCbNaC/MifR9zRyzsenwms5B2xmFiK8o2GwKcS403aebkFEJo4xgc+k
         4aSLZYheYwi6L8MxrGyc/ahIH0PbGuI89thiR6aOLbkEs93eJuKxvUHvQQk9vVWKy/t8
         XV+g==
X-Forwarded-Encrypted: i=1; AJvYcCWAWBCqM6pzOAVFzj+f5T3t0nlvu7D93ZPSMVgsTxzg7RvN39BdO6X3t67bvdcLH8U5ynShSAPEg/ToEGUYFOWNAup+B7bNgT2+qw==
X-Gm-Message-State: AOJu0Yxasy/MoXuG9mqEyRtMvaXQfEIzulVEte2W3CV0N7fxzMSqddwi
	l9vUU0iNjvszUpkYzvj62CJrCpaGubLY+w39oiNltmfBzMlNgttlKDPpDRYx30U=
X-Google-Smtp-Source: AGHT+IE7k9799F3Xk82hR/6XkZaITtGSnHgKLu6xSA11pSPaaMg0gh4dvJQRX0RwV80Q9FtYUJBK3Q==
X-Received: by 2002:a50:9e62:0:b0:579:cf9d:d6a with SMTP id 4fb4d7f45d1cf-57a8b6b88c5mr1085082a12.20.1717571359412;
        Wed, 05 Jun 2024 00:09:19 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a35e86c36sm8560156a12.54.2024.06.05.00.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 00:09:18 -0700 (PDT)
Date: Wed, 5 Jun 2024 10:09:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] pinctrl: rockchip: delay recalced_mask and
 route_mask init
Message-ID: <094fbb0c-099c-4839-b2c5-162775e35710@moroto.mountain>
References: <20240604141020.21725-1-dmt.yashin@gmail.com>
 <20240604141020.21725-2-dmt.yashin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604141020.21725-2-dmt.yashin@gmail.com>

On Tue, Jun 04, 2024 at 07:10:19PM +0500, Dmitry Yashin wrote:
> For some SoC's like rk3308 additional runtime setup needed, so delay
> recalced_mask and route_mask init.
> 
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

This sounds like it needs a Fixes tag.  Should it be backported to
stable?

I understand that you only know that rk3308 is affected, and probably
you worry that other devices are as well?  Just do your best on trying
to figure out which is the first commit where this bug started to
matter.  Any information is better than no information.

The commit message should say what the bug looks like to the user.  Why
would a user want this patch?  I can probably figure it out from reading
the code, but I shouldn't have to.

regards,
dan carpenter



