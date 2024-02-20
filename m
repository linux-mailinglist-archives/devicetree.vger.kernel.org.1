Return-Path: <devicetree+bounces-43922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 034A185BDF9
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 15:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 366141C215D7
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 14:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE7A6A8A4;
	Tue, 20 Feb 2024 14:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mRZoJifw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B8C6A351
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708437654; cv=none; b=YoDsMvy5Pw2BrreQMyYxRl5bn8gKAkz09Fiyi3RnVRdNDrZfllCnZ4khTsVHa1PXd6vV9igNG9V9k5PVxM89tD7nHkdq28jSJehAemoHMakg5p+6VqQSaAPTgZHsYwmCCKUEI5IG2GcXT8u5m1oovBpd84BpGO/ugIan+GafsO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708437654; c=relaxed/simple;
	bh=yIavGtyBVHQhwYxocbKlHQfDHDHgZOv5J9ExqtIQ0og=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=py389+KId6VBUU2aNP3BSzPaYx01h+wU5ZSyytqU45SVNiJF8W7LCDvU1Cof4nJ2n8WVGdar/PFARTdlcSZGJUpuuYje8vxuoYjxLMFMC/Fq+6ckrT9ed/4/WiiUoWLaIq5CuNSB7egEP73+T4jt+iIMtXE/QCQhybQi5k5F1Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mRZoJifw; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d243797703so19201381fa.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 06:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708437651; x=1709042451; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yIavGtyBVHQhwYxocbKlHQfDHDHgZOv5J9ExqtIQ0og=;
        b=mRZoJifwVwTGd+0ntdKE33Zb9jzmcWjeV/lxBsfPyFWZYqtytI7rZ16bFKVibTJQe2
         hNE5QqSj8R30rVki/7gV6YWl1fh+RDRrsMIv8D77cTRzDGtXw+DF6EahyiqHVPLcYpwX
         Wg0H4Am93nmtABmrW2Kkp+PuQ12BbjleE9oKAdua39x9RLD931SWs+Umr7N4Jws06332
         e7Sd1tgCJbkxr/32up3Y4/BviJk5FkWxre1b7AUEDeB8lngX4RCNB33w/ChXZmVcxbG3
         irNS2JFykSbkwC33y+hF3TyXeOzCxabIFhyuJ96KFYU2ogInpvpQALB9CN6Wrk1WffPU
         9UFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708437651; x=1709042451;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIavGtyBVHQhwYxocbKlHQfDHDHgZOv5J9ExqtIQ0og=;
        b=cJ1kE+wYuCju1TlkhG32iOFx/SyaNyAnmNWZ+D3iwZAwmkIgNhitzl1v9fkx4KQpO3
         ziKrFI0CJ3ee8fujqVJazmYwCL0HZgjogmtOsBdJA/jPI3YUgduFVF9IOdnaIc1QBmnG
         wM7mIxjw7FG7fan7d9fNnrxh0CLd0ey0vqylKwABYdrOl3ZFhqt0i2dRyydOOsaUCg7z
         HjxqfB2EQJVWmeAQprdWRYPJ9ELS59/y/imH+QzRRuS/caMSCzXIf/EZ7rn5W10+O+ge
         gUh3Ba+r6n3cftXp+Ep7kk4eoA+JJMW1kgcUf7zag5DMr42hwVbDJ0hiwmOYb0RjOsFP
         Sezg==
X-Forwarded-Encrypted: i=1; AJvYcCUn28iqv5RcojZSk8g3bVLscUL7/FwqsogN9VysHz5BP/fM132Q6JcN6g7I3HiEKNvqxL+t+y23TIeb5FP3uPETKLqaknIep/Fq1Q==
X-Gm-Message-State: AOJu0YzDlRWuLC0drOnPNrgZDxex8KDQOXdPYnwPRZPGomE1Cc0rdHi8
	QWkQVT7o738uI1C/zQ6I+8f1DwCFOoAeDp0AgcBs88whsS3uL5XBZhehMlbWH4A=
X-Google-Smtp-Source: AGHT+IFnMr7pgPZVpX97ZGZLJplTKGBJmAizHUWbgJVoD43o8CV/7GPFehR+pR53bgpnnhwAyZG3rQ==
X-Received: by 2002:a2e:b0fa:0:b0:2d2:3028:2bcc with SMTP id h26-20020a2eb0fa000000b002d230282bccmr5159754ljl.47.1708437650764;
        Tue, 20 Feb 2024 06:00:50 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id o8-20020a05600c510800b004105528c61fsm15006473wms.35.2024.02.20.06.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 06:00:50 -0800 (PST)
Date: Tue, 20 Feb 2024 14:00:47 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Helge Deller <deller@gmx.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] backlight: lm3630a: Initialize backlight_properties
 on init
Message-ID: <20240220140047.GD6716@aspen.lan>
References: <20240220-lm3630a-fixups-v1-0-9ca62f7e4a33@z3ntu.xyz>
 <20240220-lm3630a-fixups-v1-1-9ca62f7e4a33@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220-lm3630a-fixups-v1-1-9ca62f7e4a33@z3ntu.xyz>

On Tue, Feb 20, 2024 at 12:11:19AM +0100, Luca Weiss wrote:
> The backlight_properties struct should be initialized to zero before
> using, otherwise there will be some random values in the struct.
>
> Fixes: 0c2a665a648e ("backlight: add Backlight driver for lm3630 chip")
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

