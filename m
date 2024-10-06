Return-Path: <devicetree+bounces-108217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8E69920E4
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 21:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0602DB209F3
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 19:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2142718A928;
	Sun,  6 Oct 2024 19:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Spebq7Yy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AD3155336
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 19:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728244094; cv=none; b=pds6W1PBSjdTcXzlGD5GR4Ud08TxN9hLqp5mhrbzXxclbYFu5W4YEZAsPDke1f2z+vqx+oo17VJqkXn6WOY/3HDmu6gMw23+fjnif3V3TiLoHEaT52oklzeNcEd0V8GGjHi90KhLJs+h95uPC75PwAR3LDOq5PkofXY0UEIyjiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728244094; c=relaxed/simple;
	bh=7gGr/1x4FJaI8JV+T1vMBbIYC3bt1kEMXPucKcUwsl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JtKMwW7VnZc3ijo+kkxc0hPhR9I9KxapqUwU/Ma24d//Zg76mqHVCrifgbo+ZxpVBnbY643x0amNSoZnqRjhnXL8ycMhRbwhdHZ71GUw2GbPduYKwyCLyRfNMCYIp4Dzc9UUY+0/TzB2byvLNkWxKouHejgvnlvWNDpRZJRIrGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Spebq7Yy; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2faccccbca7so30435721fa.2
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 12:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728244091; x=1728848891; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7zPAywQKFEQfn9opQrxQlIKiUkH56Yv86B8xhIow7Vk=;
        b=Spebq7Yy4N09cSYol4aVRtzW9qllcgblEvVo7g5YnrxtGSslzbBj6tEGVeZI00Ah+K
         NPIDv77vDMPAkgTLU+az836RtHl5fkTKOtsWvJo13IpH/ak6+6BJCqDWK+hUHTKFR63V
         zbLYftzzgwouaxW4nG6pzRz2fPfO+bLn+iIG8rUcnhDzPVUVT9DGlIzij2gr20v+1XXs
         xxI43WRxjZ0cez4EFoiIaKmkKQukwWJdTb6XRJUFLFSdAihVRjglhX8GE9JClqh2tPYl
         sKouEq2yisA7qQpZZywwGfqQfCYxU/7Ao4zq4PTEreZLcTIvEpveNKnWkObiTf8pGX5u
         gokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728244091; x=1728848891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zPAywQKFEQfn9opQrxQlIKiUkH56Yv86B8xhIow7Vk=;
        b=WuoilhyP1XZ/eKkKirJs7O1L5NRxG4FExj9da+yiP57t/2gLWwChog6VjzHXW1WtRP
         mbNoctFLQFC63dgCtuEqXN1FOioOTye5E8yn6zuHplR3LnFk3Pnh2x4r731bWOtCeEso
         7Up7UXGHFKeVZhz+n+MoBkZRci2s/Kubj7zFeelq2EpssEr1gtzxw4bZUgvFxshgcReS
         lIpnZFMOFK7vNgqtFQwwos+Jqn0lheCg+MnFG8iWA5JZA4ka6Tr8yUuzevohMTZEj5nN
         79kkaeeAZc6+I8qwtnVLfjCNOyKROTwXGPjhUky5RGAlpuJl0FozqNXflomILdulj6WL
         yf8g==
X-Forwarded-Encrypted: i=1; AJvYcCX4eLtA8bdA25U99nScOwwIjNzjAbCEFOGdEdrztpPvR7i6s4noRcK6I5ZisF4isoNNbe9sVaQQMbQF@vger.kernel.org
X-Gm-Message-State: AOJu0YzK5MKyelprgvHYOmrKGbZUEJiHsBsazTXs6y+ido33oTorhCuC
	deUL4Xxz7LG8HIYcfpMUuny0LM7yKBD4U1Xn1GingD6m9rBsd4bzl1gLHFo6mxI=
X-Google-Smtp-Source: AGHT+IHY5ZORs3+Wb3ECmHlouFQcuEaBcJxb2p9hKDZPfCVa6bzsWfoaIuyi5HYXkPDDxvoiVveE9w==
X-Received: by 2002:a05:651c:11c5:b0:2f7:7cf7:474d with SMTP id 38308e7fff4ca-2faf3d72e7bmr32340251fa.27.1728244090660;
        Sun, 06 Oct 2024 12:48:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9ac4b5bsm6162501fa.52.2024.10.06.12.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 12:48:09 -0700 (PDT)
Date: Sun, 6 Oct 2024 22:48:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: srinivas.kandagatla@linaro.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, johan+linaro@kernel.org, 
	abel.vesa@linaro.org
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100-t14s: add another trackpad
 support
Message-ID: <d4i6yrwx4loeojylsiijnsdemgb4u6hn5ccd74yn3mhqytwlc4@6gdejdv6jiwv>
References: <20241004130849.2944-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004130849.2944-1-srinivas.kandagatla@linaro.org>

On Fri, Oct 04, 2024 at 02:08:49PM GMT, srinivas.kandagatla@linaro.org wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> Trackpad HID device on T14s could be found on two possible slave addresses
> (hid@15 and hid@2c) on i2c0 instance.
> With the current state of DT boot, there is no way to patch the device
> tree at runtime during boot. This, however results in non-functional
> trackpad on Product Models 21N2ZC5PUS which have trackpad on hid@2c
> slave address.
> 
> This patch adds hid@2c device along with hid@15 to get it working on
> both the variants. This should work as i2c-hid driver will stop
> probing the device if there is nothing on the slave address, we can
> actually keep both devices enabled in DT, and i2c-hid driver will
> only probe the existing one.
> 
> The only problem is that we cannot setup pinctrl in both device nodes,
> as two devices with the same pinctrl will cause pin conflict that makes
> the second device fail to probe.  Let's move the pinctrl state up to
> parent node along with the parent pinctrl to solve this problem.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
> 
> Changes since v2:
> - updated commit log
> - added missing parent pinctrl
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

