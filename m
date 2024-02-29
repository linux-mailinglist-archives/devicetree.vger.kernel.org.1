Return-Path: <devicetree+bounces-47352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8574486CEF1
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 17:26:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B71311C20C6D
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 16:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A273078294;
	Thu, 29 Feb 2024 16:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Fh1o4r5V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C7278290
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 16:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709223629; cv=none; b=lY+CGr950W7DX8u++fye2odfiv3IAqZkOzRUxk36oS6xRwrwCUet7hLCzoUnjEiY9MQAY/kprWM+noLvjFdij+985SXPIDl4kJ1Yr/9UUigl8qlz5jt/je9RQn9oGUSSpmvD9YSOx827VX8+FwmRziwDTo+kS/xAMTbMpPI7pNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709223629; c=relaxed/simple;
	bh=5akJAYIzzDJf3+0III/J1h+mlaUltOxaG9R8wmii+rY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cfMHNZhNXtsRWye3lUhQx2DvGH8MQ8+7JWUWO3nW6i36vcrPdY5E21IyCHjUtJ/JEeXh7U57egYnYYnX9IrU/F8gtLXethNejHIA6Wz1xp/eiewRLZajVEfo5N5CsiTkSb1A9gamSq9Q12LyCD23LII8Qh/LwQHKZsl/PNFLs7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Fh1o4r5V; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-36524116e30so4574075ab.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709223625; x=1709828425; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g8Qq8yPD2u9VlGqCnCi7K91emb+vPhb1JZTph4xZca0=;
        b=Fh1o4r5V3NV6hYmmXDVU/Y9GxmzQ83D5o6s0cyDo2DHoJk1KKmJDqFr2UDN2ZYIuw5
         +fFl6JK1gnZPmrRnL2r7QcPTwpF4NqL2lVd3JndkE95TcMi4NzER0qnmk3LnjG29orAM
         wvdW6KZUuiiIjVKXMiJ+sG91PCzkhW8etUvXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709223625; x=1709828425;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g8Qq8yPD2u9VlGqCnCi7K91emb+vPhb1JZTph4xZca0=;
        b=n/LymIq0VxWj77p6p4ETarVlTbyYhsPrhaoZlHLbRpQj7NSU0wYjQEWmmfZ6DlDdV+
         1Qr5MDhO4Yl5Tpe2AbB+hV06VWxjuODsAaeOcBUGnO+RIR5qGJMMtiY1v5mfmhXGxAv4
         KOizutkZyHhiIZcJyGPpTxMZdYs6GdGr43uu8EuYCr3gPT+9tGjbE8NR/b4OBdPWDyhb
         PpX+8QhRlFiBD5gxr3wya/eIl51P5gIrmSRhRpBxROo7o+UBwtcGNnPhko+OkeEcj4QQ
         bw8wzsd3FznIsb8XJClYHUzXR5GQd4gO2py6A0J9kpJMH6JsrGeQXsfACL5MO9QGrUqh
         eGJA==
X-Forwarded-Encrypted: i=1; AJvYcCWb600Ejqr/T8AYRQHkt3c0AtL2Xa9iDQtcQIGLbBLqdeELXJ/lbPNMmvl6pRTdmhZDVQwawiht0AprwDrx1SlThViui9V+P38P/Q==
X-Gm-Message-State: AOJu0YydEBm5XLuLNZDEvrz46t8+r8buaHGmbj5CDAIYmgPGkuNmiJEd
	AC98+nPmyZW7v/IBXEri/LwmyOgXVb3CwcNM9W25yf/d5xj+f/3lJAwCqDK/RA==
X-Google-Smtp-Source: AGHT+IFreo0hr/9MzkZCTngz7lMqfGeDlbi8HZb7O7X2LxBPXUVABjMPoOBmX8meMjGxInCXYjaVSw==
X-Received: by 2002:a92:c7d1:0:b0:365:1749:cae0 with SMTP id g17-20020a92c7d1000000b003651749cae0mr2946229ilk.7.1709223625514;
        Thu, 29 Feb 2024 08:20:25 -0800 (PST)
Received: from localhost (144.57.222.35.bc.googleusercontent.com. [35.222.57.144])
        by smtp.gmail.com with UTF8SMTPSA id s17-20020a92cb11000000b00363d8ee8cf7sm393454ilo.48.2024.02.29.08.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 08:20:25 -0800 (PST)
Date: Thu, 29 Feb 2024 16:20:24 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Helen Koike <helen.koike@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 2/9] usb: misc: onboard_hub: use device supply names
Message-ID: <ZeCuyLeC9SBNBkk_@google.com>
References: <20240229-onboard_xvf3500-v6-0-a0aff2947040@wolfvision.net>
 <20240229-onboard_xvf3500-v6-2-a0aff2947040@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240229-onboard_xvf3500-v6-2-a0aff2947040@wolfvision.net>

On Thu, Feb 29, 2024 at 09:34:45AM +0100, Javier Carrasco wrote:
> The current implementation uses generic names for the power supplies,
> which conflicts with proper name definitions in the device bindings.
> 
> Add a per-device property to include real supply names and keep generic
> names for existing devices to keep backward compatibility.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>

Acked-by: Matthias Kaehlcke <mka@chromium.org>

