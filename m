Return-Path: <devicetree+bounces-153347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0160A4C11C
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 13:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB95316865B
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 12:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DCDF20F093;
	Mon,  3 Mar 2025 12:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HeIXQzQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99600211261
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 12:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741006719; cv=none; b=Ut/oN8L3GOr0CQKhtaR2YiGoA+iJCGqyycWp7MK71Up7s9vP10uDm00SsPBWvDtcMh62INcgv0Te1H2uu02vrwztjtgGMSHHC0GTF8Ozfmnx4se9b8j6rvtwj9Uj/i6WlxrlB7Gr0VdwLkxV6qsTHI4xCQtlcHSCJMjqZ7ZBMmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741006719; c=relaxed/simple;
	bh=MdID/KNnC0RgRA+4sv6gKJKABKI06dITquD52WoyS7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uRu1zbWIToR1R88oTexb3PT1o/1ZJ16ZokNgWlnJe40P+I3tsd/TPMYwRQoDu7X2p42qYmHGFVecU39oazCQ7CT0M7ZRX7MqXrgzO/1VKeFvAgIkVDCOmxgAdQPxPRSh28LjcCSEhKqo73cCCtJ9/71Ci+G0oxnnDU9n6+BobYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HeIXQzQw; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30bae572157so16153781fa.3
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 04:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741006716; x=1741611516; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t9K00D1mbPg0O7fwqBDLehnfCBwcxsod2sCrbwMiTn0=;
        b=HeIXQzQwjn3BePaWkHcIC3/GbIryA1pc56zv0sS0adSeEa7N3L/3wMmCMtvElxoW9B
         FAC9PsQNLU+0FgFo6pYH/7140Kn+u09iW9nPcihi4k7ZbJpV4be25mOyvu9fJ3TVfft+
         8qyzP/ubu2JQsHZEYMOBmeRid5c3f0HgV/TDJrE5wOQEONhZF6JeCF1Ch5X/Nu1+xhXH
         E6Vy3/52bccu74Feg53IkfQi2uXCBzuYx20AB1B6bawFihPuRmiYKfTbgrvRbwZ0s3xF
         zZVfLg95GbTPbheRQLysFfurrL1ZdWK5g2CJfsyyNNyTmp9VkaZfKauNnnQyMUC50vti
         idNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741006716; x=1741611516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9K00D1mbPg0O7fwqBDLehnfCBwcxsod2sCrbwMiTn0=;
        b=MC50WjivYX2r51gnguD1fa3jlE7JxiSNUn6d2uQKxm7APOwJvQWxwXAgrCuOiW6cSJ
         pwxCGaH/2H47zk3nKtcEurCs5IdklWmihNbRaNlaDlcFog1MSRWbdd3di0M2Hw1GcP4X
         1lCAX4QvKP6iWGskFH6xoLut9BfG9wOc60VfqBNzjPzs/qhKvNmLYV+WR2jE8jGhoiKs
         LJ3Kn5KBL23myGQrb7Io8CWt+m78YDqBX+xrSd/Iy6wh9EJuozPCQF7HB6HEK3Fouetg
         KI6zKTtKAtp0keT6WqXHrjY/FGmEC2GO8gWetAvfRSScZ7kEIDW9voXGP97PdQdw8bIf
         vJFw==
X-Forwarded-Encrypted: i=1; AJvYcCWYjnilJ2v5ZgrMFShkYhTkcwAVmajkYYyaM961XENj6h4JN3KMLc/03CO9/IScYfq7iNX22ur+1Iiy@vger.kernel.org
X-Gm-Message-State: AOJu0YxnnKUOATWTwXaPpPwJ5CA/L2pSs8sWUYoolUtafTXpXSAA0hg8
	HtEqTqO5bSTBsDzCDIMB0pareGQr8k1Hm6KU+/RyB6vKQozm4IIM1B/k9KMUo3k=
X-Gm-Gg: ASbGncvyDDiKvXisOy4whsXTZw3oSmddoUiGRdiXN3HZVPqnmjDCQZ6yxMER6BQtRX9
	xw5YyUIlsFanyb+KbJ1+BIMBS+kmFoBwgaWJdms5xWTfdN8p26k2zu+yPhBk6+3B1IPHouimwpS
	kooc/OpsP9spfEaW1XQ92cJLMqpXNkxlRcfGcAtoSPgnYGD1KP3ytmSiupHN+d7M1nwOg5dE+Fe
	l4nXa//jdGWSVZ7czHzn87OJioPs3D/4Q4l6Nsv7UF3+5rFMR4k2fI/jGWIWpW3U1Tl1+MXig/l
	PqSA2swd+sTl2VIcOKkdpd6Bw5lF7H6VNHzymkQt++6VIVnXb3Jt4O0NYWSfhEnnlv+L3xQzDYd
	ax07qVYwt9v7N6JeINnPVj9vn
X-Google-Smtp-Source: AGHT+IGrJX6ekzVKqLcPRZ01UFLx2a7uloXdJSM8f49czEh5+lmhOXtfFrm34jcL+5QAtr3YhP3waA==
X-Received: by 2002:a05:651c:503:b0:30b:b204:6b70 with SMTP id 38308e7fff4ca-30bb2047363mr21288591fa.10.1741006715695;
        Mon, 03 Mar 2025 04:58:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30ba6070838sm7283581fa.44.2025.03.03.04.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 04:58:35 -0800 (PST)
Date: Mon, 3 Mar 2025 14:58:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxim Schwalm <maxim.schwalm@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] drm/bridge: simple-bridge: Add support for MStar
 TSUMU88ADT3-LF-1
Message-ID: <ptyvn34i377pdu7mqital6v2bqe36oy3yprxb5c3hztni7h52j@6eo64gzxvgg3>
References: <20250303120455.90156-1-clamor95@gmail.com>
 <20250303120455.90156-4-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303120455.90156-4-clamor95@gmail.com>

On Mon, Mar 03, 2025 at 02:04:55PM +0200, Svyatoslav Ryhel wrote:
> From: Maxim Schwalm <maxim.schwalm@gmail.com>
> 
> A simple HDMI bridge used in ASUS Transformer AiO P1801-T.
> 
> Signed-off-by: Maxim Schwalm <maxim.schwalm@gmail.com>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Robert Foss <rfoss@kernel.org>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

