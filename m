Return-Path: <devicetree+bounces-47440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F1086D382
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 20:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 139961F25E36
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 19:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B63313F421;
	Thu, 29 Feb 2024 19:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mvcMvTv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7137113D316
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 19:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709235792; cv=none; b=h2kJ/uBHug8Dvo9jGNRZSbZMV2q6/s/FJCEDYeKlMRotbTG7AMYCQZe2l6ieAkaUt0W885wbht2preos49xBOkEtFCZjbDRei0vTVuPfn5lHKPTQIm43uwXkr7g5noIKrMudBP5mIFZC+chLQ5BoGCapwkMegU//eMluBUzdR3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709235792; c=relaxed/simple;
	bh=z4br7zD9nOzBiMkwamc93pBabVM0YG6eSQefAbwCJkc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a+J+uBx+kq0Fzrg4C4jhN3UvZYQUqNkjOA9+6E0ikcql0wSTVQGGyk0ZCRnMjEZI7K449tiWCpXi5VXFIP85R8uzRmpm71ihG3OPAm1YCtowGF5OGnB/OhAfjcqwHGxauBvZJQXuPKZNHqeIzr0lLRJYhsdSHMRalS0uj2Sk1P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mvcMvTv1; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7c81764c2e7so37484139f.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 11:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709235789; x=1709840589; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F8CJpd2zjevkw27a8KH1DmVXJgw/Y0RSSqYs/uQ6sww=;
        b=mvcMvTv15lG7dodcDtpO9NtWIUGjtxjefBjg7FVxl2jQO9eWyzJ1gUKpV3O6ZV6MQV
         fLVNylwF7wVDURk194kTF3qfs3FyuCgwq/2Rq9W6r2Jsp06lPuwpZfCZOiLK2CHFEUHr
         HH2/lzwDcpJlHyvSqVg+SD3Ws8Gjv0USid0K8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709235789; x=1709840589;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8CJpd2zjevkw27a8KH1DmVXJgw/Y0RSSqYs/uQ6sww=;
        b=XNZb5dO8OxMmctCRXkVLre8NzsFzoeqJKaSZ1A4VnXN0m2QtbT//89/QG9Dr54Hekg
         ppHmwpc27CkH1DiAxsutQ/cYf2ug093VMuzFJbmhsLPDWX31NVrZjmMg1eQRS4TVPu0+
         Zi7lmhcbYkNJXBcvN8xvEcbX6U2FmfsDm99nK2w8uzno/Y5XnlAaC19NFbXi9ggFnjV+
         ni4bjm5qejdmxv8zqkPeA0mBTY3wZed1CShNzwU3GFsGvfxGzMZQ1cFFWn6pzHFLH4WI
         evmPzMHtKj65i2n5DyxowyhHoRbQkvbbTnZj54MYPEGuJIIeFh3EyBuviVtBxz9NIQDk
         JB6A==
X-Forwarded-Encrypted: i=1; AJvYcCVs8RvCv7WNorw5H2FNNnVBoPa2ZLDpVFg9BPBdEsY7G9kkBBsSFUHzurzwo0DMQoub83oLggreUvKTriZUmSRIV2zgJIwsCwM9lw==
X-Gm-Message-State: AOJu0Yx1SBsSpd6guA14j+2OdFGQTkYdySF7XJSOAScZHXAufyt3T4i7
	pLZ43Tx4XE+tw8FREwK8qA504JT8bXYfPjYbrLQsSq1CeWZnaCw5g5VY1tYnOg==
X-Google-Smtp-Source: AGHT+IHgIo2qPrUsuvVLTw7+MTktv0oQumqgBoVoBnnMijf9sWuRrwq2Jdy3DJ/2sgHur6o+XReVVw==
X-Received: by 2002:a05:6602:1c8c:b0:7c7:43e0:335a with SMTP id hf12-20020a0566021c8c00b007c743e0335amr3364192iob.2.1709235789521;
        Thu, 29 Feb 2024 11:43:09 -0800 (PST)
Received: from localhost (144.57.222.35.bc.googleusercontent.com. [35.222.57.144])
        by smtp.gmail.com with UTF8SMTPSA id x25-20020a029719000000b00474663a39edsm460221jai.50.2024.02.29.11.43.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 11:43:09 -0800 (PST)
Date: Thu, 29 Feb 2024 19:43:08 +0000
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
Subject: Re: [PATCH v6 5/9] arm64: defconfig: update ONBOARD_USB_HUB to
 ONBOARD_USB_DEV
Message-ID: <ZeDeTFh_V4Eux5uK@google.com>
References: <20240229-onboard_xvf3500-v6-0-a0aff2947040@wolfvision.net>
 <20240229-onboard_xvf3500-v6-5-a0aff2947040@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240229-onboard_xvf3500-v6-5-a0aff2947040@wolfvision.net>

On Thu, Feb 29, 2024 at 09:34:48AM +0100, Javier Carrasco wrote:
> The onboard_usb_hub driver has been updated to support non-hub devices,
> which has led to some renaming.
> 
> Update to the new name (ONBOARD_USB_DEV) accordingly.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

