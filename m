Return-Path: <devicetree+bounces-141606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 006E9A218F5
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B9B918870A5
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 08:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7344919B3EC;
	Wed, 29 Jan 2025 08:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x/7ianeD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789E01A23AE
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 08:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738139008; cv=none; b=W+i/PtVhSKU8ZKC5Ie740NO38/3jVOx/z0lqY6BzNPpP8UZWgonhikkTjFIpgmFarBeGK/2wQPL7weVAUUHo5SSzSsN29nSFh0Vw4Yghysz3rHxRza5npbDWvhgEWzEcf5zQOUGYAG+xC1uVnUlkrAGAsiKxvxyDbe9WpwI7EEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738139008; c=relaxed/simple;
	bh=uejUUST1opmqRaTR5XJy0DFI0pe4QxyBJmqR4mHNSN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D65LFfJ6jCeem6y7WO6e7Zzk7acEGz9E1zIOvL/gp15VSlOdE1D73AfzCTuEvrruYM9tn47H3KQiOtzYk8aYLIbWLPoOdb+YIpg6PDy+KAU+Sru0VsCxuZFUoBh16KUYhbyBg44VKjxQMeMmVDsGy6eQSomt2KkqM8CtS4AnzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x/7ianeD; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385e06af753so3551012f8f.2
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 00:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738139005; x=1738743805; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=REiAgAPW11GrxLH23I9Y9SYOwDa72yoOUkYYYg9Uj6c=;
        b=x/7ianeDpTPoctFVpNkGhR5GGtRIbtERCrDIO7asEbMHW5oo5ZYnprYsa5NfBkRv8r
         SZ+ATQGaQmVchKPDC1OeUKidCtg8sAqHaN4Y1/XZGRlzOxrVJRlwLBQWgYLc938Iieyl
         0S1ADwW5hCTfN4g6J7D8yDjMxbgJ81fKU7fvDdNnqcHsICemTDRYdLc+2mN27/mEetsq
         ejYH0AJ+XOmTSzT6EjXFBKiUAvoQFUYnYUyhhkcxIztoG4t/XwL/ymdZxFpXwty6u2h+
         yjrfWP3ReouA3B267a3Hlu9XgMRatWspFSh+da/60nYlPtoyJ29+q3j/P6xJAVyjuQKr
         KLTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738139005; x=1738743805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REiAgAPW11GrxLH23I9Y9SYOwDa72yoOUkYYYg9Uj6c=;
        b=wnschebFpmpzyilpUsDRrhnc1ZQwAo+ssHWimknBBTsR4PP4BfrTfPmXpKKpi7CRfQ
         lmf/YfDPtHSuFhnA+ikk/epWF3fjcri3OfGIx8Y7NtUrDuVf5RSgTCS2FtUKFJtf+Ajy
         0axZmEbHWCaFISkcrRtj9aDk4r+KWXhDMbfs5YBP/eLfGWpjo88ZuBqnEBrfLcmTyzGE
         b1GuD08sHGrQJh2p91jAazGjqw1UNSH1X9w90PE2BHcq8WhIijZvmmNkAfOdry6kVw3I
         fh58NMMxg+KYPBbNHiOqNDL6NKVAJwNWa4aPGR2mOFo9D6Hr51ho1cKrhv88jUpHY9K3
         WgvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcb4S71nDC1xCZRXwHYzSCSdxTfpXb3lozdrQ6hWukn4A1QP24xOft5Q6as36uBViqbKBY5sSCnCSa@vger.kernel.org
X-Gm-Message-State: AOJu0YxRpovcExgfuTGfRFEviC4y5LmKQt0P5yV0QQ1lW5UqENnJ9nFT
	842dXKpYG5IIhMmaCF9bwr2T+TPfixT/WLDL9hyJLYjUdPYya1USQkNn1ZmopRA=
X-Gm-Gg: ASbGncukJ4k7+FPe21tigBgSDlPOvAxuJKdS09a+jEHjX5KmMLCza590d1DNHsHv5yh
	Vx1cYPPuj4DSTq1hBgfIO5THvqu2gmyY6ZZds2H7jjrzTzvhyC4PtEAzJu5YiskCbBw44ggVSE+
	BlpZHM/nQNTNAJJ7numpgEs//oMc1bGNxtdhHaMtG/D6XLnPPYGcB3oNciMN8ewJKPABXfnYGWy
	E/NRySJNQrURuJFa5gAEfljrjk2RdakXeoET1j5dfDLjyb0FhJVCYQZ+AJjjIy6lQn02MVXoTOS
	1Z57R/tO6oYtMSfisa1lbw==
X-Google-Smtp-Source: AGHT+IFfgVNZLk86gjY7HWPBeAQ2yJ5J2A4B5xehdoWawG9xRKTdLfChNruGhUqnheXhhsiFsS4cJA==
X-Received: by 2002:a5d:588c:0:b0:38a:8f77:4b with SMTP id ffacd0b85a97d-38c5193206dmr1538571f8f.5.1738139004561;
        Wed, 29 Jan 2025 00:23:24 -0800 (PST)
Received: from linaro.org ([77.64.147.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a188673sm15954574f8f.46.2025.01.29.00.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 00:23:24 -0800 (PST)
Date: Wed, 29 Jan 2025 09:23:19 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephan Gerhold <stephan@gerhold.net>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Matti =?iso-8859-1?Q?Lehtim=E4ki?= <matti.lehtimaki@gmail.com>,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 00/13] Modem support for MSM8226
Message-ID: <Z5nld1JiaqWgmlZ0@linaro.org>
References: <20250129-msm8226-modem-v4-0-2b02ed7b7f1c@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250129-msm8226-modem-v4-0-2b02ed7b7f1c@lucaweiss.eu>

On Wed, Jan 29, 2025 at 12:35:32AM +0100, Luca Weiss wrote:
> This series adds support for modem remoteproc found on MSM8226.
> It also adds needed device tree nodes and enables modem used for
> location service on matisse-wifi.
> 
> Also bam-dmux node is added for mobile data which is used on
> 3G/4G-enabled devices.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
> Changes in v4:
> - Drop mx from .proxy_pd_names for msm8974 as it's always a regulator
>   @Stephan: Please check that one also since I still picked up your R-b

Sneaky! But yeah, since you drop mx from fallback_proxy_supply, you
should also drop it from proxy_pd_names, that makes sense. I didn't see
that.

Thanks,
Stephan

