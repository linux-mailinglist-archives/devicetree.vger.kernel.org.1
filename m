Return-Path: <devicetree+bounces-236640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C39A3C46224
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 418303BB39D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB61309F1A;
	Mon, 10 Nov 2025 11:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZOP6MOQ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DB0309DDF
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762772879; cv=none; b=IPA/HvLizGNxhSF/0pfEVHjwo0kZSfLWtaJ52EXlzJXpt+0JkopJ5dY0AiVbW9WRzAod3v1nh/j0WGJIuf6yJyFtt3V1QVR+ea3auk5UPAPWGMhV+6h54r78p0VTq5AHWJYhrQgl4S6uVcUO97atLJickbDyK3y3qXIinGzv+5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762772879; c=relaxed/simple;
	bh=PV0nu9hpPV+PdL37EjWKyESOoKW7BglfhP4iUdE0IM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FFynPFthD4BDqnjmpp0z8k45uwYYz8sh9YS7dLm+LoD6jaF6ffmsKhyxDVEuvRgjgN7jg7EsYcaKSZTFrd52L8I+vCu8ABuoc7XQfsdqrhlAuunkdH25IKLYY2S6ePCo3TfCHRDPHG1IemVqOgwV1Rp6zIKgTHqMgsTjg43X/98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZOP6MOQ8; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-781ea2cee3fso2257877b3a.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762772877; x=1763377677; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1teV5v5SqS6pFrvXlRn/4yX/VJMz/VkOekGlZHXTNkk=;
        b=ZOP6MOQ8viMXp+whHMIuW+CMg2hu0pQXkgyYI8k3GLd+x8dAKuwj139adqiERa7q2z
         Kx1XSXD0qcGppkvALKE5yvXAy3yWZM+SWUEfT5pM2cvFMjpwgMgJogSVv5JhK/Utpm6N
         3RCqf9kscgsLLaSAkbf1oAoNGVtnVLkoOBn2PxhmoduepLzAFxwNsf+5Z4as3RJHqnQm
         5CcX/esJPeIG/EDFgix2FsucaBn6sdzTcvwlNlyjVuNJTYrSCdtaC8ARSE72pTFyILXi
         ojlsxRFMznyD2xp9VNm8+3mWde8tfTY+bR/UTg2M3N3y3qLxoeUjJQdgQLrndqUpCnZ1
         AS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762772877; x=1763377677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1teV5v5SqS6pFrvXlRn/4yX/VJMz/VkOekGlZHXTNkk=;
        b=cIHtmOKQ/PlwUOCpp3rCoD9nCc1fYxGnoBFjry9UZ94qmKv24PpJMhfGPoNoLi/yXp
         3vUHXKf/zK+HvdrTYUfPYpzxow342jXlQ5P6sr/0ZGQzXfwd076oAICqeesJEBF9Hjxs
         /F4+f6l40+vMu8AOmyfBMVizWlWR+2wb53RUjINcLFCy6n7S9MtRG3xAvEaiDeJQl4gS
         MlMDz9jH7was1ONhRFSym/oKOx4OQYD1kIJncvFNfYIsdUMhVYRhGpjz2mnp3iXzpci5
         QFoTf1JyMgvAOK3fvLJb3lPR4abCayb/Pinr6BEZKA5QH1KIdboUkghPxsl4LyOmH53U
         Z2YQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuDg/0ogsCkxAjE+qs+Dz064oVJwpeUHFBHoS7OoZcIsBmNwZc7aeMifdA8uj0o+3iE/lygwc7h77k@vger.kernel.org
X-Gm-Message-State: AOJu0YxpcqbTzz5qwfOnmwzBmQAFb3ZrwzYlc4MTZi+l1H8MHDKHmrcc
	EsO/qyJbEP3r/NoG79ynGGA00O04LvRgsIRlowjGPOElV0b5Dqr4Xa5VWvhQ2xNPa7M=
X-Gm-Gg: ASbGncsBPACMC4NBb2PoSmDsac2sASy+c8I7DLHfg5X3MTYH5/fjfW8zaKbajFEw3VO
	wGMAS2ft1NVlDhBefsd/C6oxkNupQBOqDv/TPz5LpB4DvQAo/oNlYiIwWhjnStmubdp7H7pRpYR
	z6b+m0eUe8YlZkSG6BMlTMFx9Z6H+kCX7jGXmTDlOSSRtgYc8uDgxkq8IKtsqq8OlIO4qyaX4jY
	8jHXC30+Ohb2kd3MILyuGkch+gRW2IiQWnkeANgnLOZLoa8PK1gaMmkK1R5ijE9xVGpTm0cwoVU
	DEw15nf56opko1jfS3CcjTB7Q1AoEsu9rF1/Q2IDoyjT8o2t5qdNf3hEJAlo7qiJ67lgX/y/0MP
	nwzkwOVeJwNXlcaINZ57EJiikts5jxQ1voMqlMh0n0mQA+hHQR/C7P6X/GXK2ZbxCImCY32iNPM
	fnpumGTyXz9Dc=
X-Google-Smtp-Source: AGHT+IEI5dvtjpf7UreD77ujcsma8Qc91uG0xXgrZUKvQ1Ri3S/fmPHsBQ3EzHdR5mFgTf1mYnto9Q==
X-Received: by 2002:a05:6a00:1990:b0:7aa:2d04:ccf6 with SMTP id d2e1a72fcca58-7b2232f8c80mr9070041b3a.0.1762772877004;
        Mon, 10 Nov 2025 03:07:57 -0800 (PST)
Received: from localhost ([122.172.86.94])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9c09cd6sm11397368b3a.23.2025.11.10.03.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 03:07:56 -0800 (PST)
Date: Mon, 10 Nov 2025 16:37:54 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yangtao Li <tiny.windzz@gmail.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Maximilian Luz <luzmaximilian@gmail.com>, 
	Hans de Goede <hansg@kernel.org>, Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 04/13] cpufreq: sun50i: Simplify with
 of_machine_device_match()
Message-ID: <awphoxojc3benzdam47mcx7pqty26ohrwpgv46kimg7nl53rqc@szq3aqjqsbrc>
References: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
 <20251106-b4-of-match-matchine-data-v1-4-d780ea1780c2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251106-b4-of-match-matchine-data-v1-4-d780ea1780c2@linaro.org>

On 06-11-25, 20:07, Krzysztof Kozlowski wrote:
> Replace open-coded getting root OF node and matching against it with
> new of_machine_device_match() helper.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

