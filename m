Return-Path: <devicetree+bounces-134729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CAA9FE616
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA746162C2F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62A861A706F;
	Mon, 30 Dec 2024 12:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vAhOXBNb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A468C2B9B9
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562827; cv=none; b=EDn+6+LLUfgkPU5N8YH5r4TJRAOv73txXt79X9J+7fm0y0JxTR7RD3hBVacI++/lmCI6SttvUl43wv8JxIPiftuNdv8/nncut9Q9EHNwCHWWDRZVx7gpYOXZYqzbYwFv7EVAhBvSHJPrCPPLYh6Q2UkCs9cbHIdsFEk8+fZe+wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562827; c=relaxed/simple;
	bh=WL3uhA5qRaGikitNCXHGwQGnSXIHXF31Sv/CCyoYMec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ianPSOvWP2UthrQY1yuZN3nqtMQ4miR5A1k63IFwAsEgYjL/H/97Eb45mfqVanhB5Sa+ZmW+mcH8UG0ZXOU3CJY/PkHoFI7dGbA/UxcCIhOFE7ZfMBkvziOfda/jcn/LFuxPio3qyaC9glaq9GMJUpVxL1Ege6HO/h5BAEmc7VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vAhOXBNb; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54021daa6cbso9587852e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562824; x=1736167624; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uCO6CXWnoZCq053HJEmMFJxQhQ579FC0ggfho/ODq8Q=;
        b=vAhOXBNb5Uf30Qkn6On9jJjTWaNhwS5XXWKfUmtMJQSK1KbeJq5ePD257JR5CDOZ6y
         u4fA3F3PJ6S6H23bm+bC/Hr0pCclN5zbjyshSpGqTwgxV0Mrx89PZARtTnq2t8HDyegn
         RQ0DSaLM2Vyxb8uAm3ShNigmHP2XCotleqXh0RBfzUxGtpseDC+tUXPZLLqetdT1kGwl
         8muzUPEvePagBZQkhObI4eFtkyPCDSSgs6680tkia8EkhsQsnQamC6JMK/aSm0nh98Qq
         abTm3CNGC6DAe15HMipTRSmOk9rctjyj7KGMdwMTtbuOpeVWOwXJ6vbbt/p8UGzYRa6H
         90+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562824; x=1736167624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uCO6CXWnoZCq053HJEmMFJxQhQ579FC0ggfho/ODq8Q=;
        b=gbaslSfclV1XFhj7H3gVhqkEdqdrAxD4KjQ+z8VJr9/ff3Wg23HUD+4HbxNnLok4dq
         UtewNV4DCRceWJ2Y6QcepIDBFXKNLAwhaQcIqIGT1JK+teHiadbUB8xWS3p66g2VYOda
         y01/klZRosx9nU6lFhKuYau0vum743NrOWUsqsFU7ICpy76vWLe+CCFbCJaWbgElnRGm
         YwJ6qlgG49oXC532WM8+n12gC1cyp//M5UnT1DmNalYTxpAIqfUlT0LrGT6xaRbfVupV
         nW+EHg2C7+eBbtgbRjKFxYBMi6QLmzzS10wlV8u/g26E4/44lkRQKG94sYxHxA2z8079
         Yf5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYYI00ImDenCIEnX0HwiEGZpUxk0C+wXpsssTH1wWYq5DWhDsGCUC0/rqNeguAjFsBlrO/5D1+dgvq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9gj7T/wvzcPL0d94PrInmPAZ9UJfNloITsDj3bvpbi9jBzZnZ
	GbpsUDy81yDhk5kytlipgBruCl3z4UHpkngz8bF2LqR3FVSEXHoAwWjW0SSOFB4=
X-Gm-Gg: ASbGnctBPwLUUj0FKwKfFwfoawN0HzhKIxOUUtWVZ1Yq2O2Qif+ItDTF540TDuTQBxg
	9QYm2KUU3a/xq895/k0blANbU6lIFRn2du/vOA59cCrdN2lh9+cJT/eYbEDfpr98/P1uk0mOJT0
	dqV0GyJ/85w0epJWaZVPL1XMB7l/1//XDlOQO7lxON75+QJN7/h/3O16e6aqJHtw8vkbtDIWwEJ
	Pvbo6MNjfEo7vuPlsZNVV6/UUp2HbupF8+mQRAGzb5NY3n2UJhFaVVt7TvTpbV844Ph4mc95swt
	5p5uE7hAGWUOQuK2q7IEos/yGU74UUQJ/tU0
X-Google-Smtp-Source: AGHT+IGVpxl0k9hRIyiBC+nX9q01hRzKPekN79eTtXLIY4DaSMy9S0MrmJK/hCW8fezYBdyI4HazOA==
X-Received: by 2002:a05:6512:3b0b:b0:540:2a92:7dac with SMTP id 2adb3069b0e04-54229532e69mr12026183e87.17.1735562823897;
        Mon, 30 Dec 2024 04:47:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f5f1asm3126558e87.35.2024.12.30.04.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:47:02 -0800 (PST)
Date: Mon, 30 Dec 2024 14:47:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 09/17] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <hfqoxolgga3t4fmdeo5dmqvqiiptraqwmzwdpfhzmmw2cnsail@yamn7ms2tp6x>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-10-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-10-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:05PM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

