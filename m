Return-Path: <devicetree+bounces-79134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C569141DB
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 216B71C21225
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 05:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D828C1401C;
	Mon, 24 Jun 2024 05:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWPqIY8o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1584411713
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719206325; cv=none; b=R7NTO994YfTeEjqi4aYfWXjHqZD+X4u9UwJazQ3LW5txeSs0cv7rP2n5YRW2KMm39A5RoDiNf6oyjaaD21Emh9iFI5+VEASg68FezTEw7wCuXbj63dAQbMuHqHent4Z0xH78ETweMeunbgix4Ra0HRCeIO2G/JJb8axOelzQy4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719206325; c=relaxed/simple;
	bh=JrQtr3cmZd5ypuWX2UtYWXpbxSkqdZPXBYDcdnWf7rk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LW2dmlK+qoHLO0DD+DIYeDFs8AECLanIxodwfqIu1tNTLUBfgp32Off6T9az+FPl/3j+Y17asB+FBmI7BkGNDIiMm2KlchDV1p65VHN1ikK1XO+/Ud+YB62HpkSTd08F9U1VuWDBnHIJ5/Xrq9Ep+GH+DRJbC8DbmaD3K1H2C04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWPqIY8o; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ec0f3b9cfeso44957471fa.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 22:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719206322; x=1719811122; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IuyadEulFu3FDpPhLLNT9X9XFnfp6SMEqQX7h8wDmlY=;
        b=zWPqIY8oW69n5s7vDaooegAR+r0mAK3JESSpYMdz30wSJ6fjcBcDK0GcBjxx4Fc3B6
         jKxvi7TxP0CCzIoNtW+P5nf7HfwqNVQ2TprPFUMB59f00eECk6SySprO6FJxlGBsnJ7E
         08YgqMcLwfAH2g2CdRPb4XW/aF7N5tsCiWuQnOUL5wJX9ii/lzvj4RjtNOaBzF/8XhVF
         ht18PjbpFlTbZbPOUzYTC1qbyRJoED3OuHgkYamFrmeONNBAOiN9K4ZpgxD4YEqHAJGH
         dTDCp97mx/T4zAdo79P7IApofd/VueWJDgsfVVbmm769nM4rjuBxk888g1N0JkAA2eOZ
         0wRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719206322; x=1719811122;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuyadEulFu3FDpPhLLNT9X9XFnfp6SMEqQX7h8wDmlY=;
        b=FeeJJ0u/VPvVzFD5ZuEHPxzgDDWpVMYmZpvIo3Gai55BOL4dXGTfHAfZfLlXLAk4uL
         zk3/Wx5uG2kKpVA/qim5GTCMzTzxkyOA8eqTms7EWAMddtreyHx1DOh1xws/vfiqKe7A
         QRaoPY8m3PJBRYxs1KELK810hGRm0deaKdEdCUW1tfyd/wdrXBe+c9/vwtqvuTPDRqAX
         GUHMZgmmCsKUMXqyZJwBa3ej4iKu9bGWx2CZRzRTOpqNhzIy/ePAswTAkcT3SFwZ3Ojh
         Cqj6WvirhvcaXLZEHV60uXmO0aarPjkn4hzl67sNgUNKAswnH1TFqmjxBRY3ReBh7dCr
         e5Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXki/Fyt9mEBmmcobiQfrFDWXc/NBBpve3zseS7Xa0EgJ9iZ7WQ6O3wc+NI5tUsaRuAxFzW1xSPe1h75Eb2SGbusklb5UWvoTFNsA==
X-Gm-Message-State: AOJu0Yz8AQvKcrvgkOtb/5OY77JGoARnTZjm1Ty0kvVUgLz1jy3c5W/p
	NR1yBusqzbz6fs+O9SqVmVoxscWTiBv94xOSF0kbEunFXZTfigZ7bxYnVI8X+ww=
X-Google-Smtp-Source: AGHT+IFayfixZjNle/0sDVRFWDTPCafxBUrwkkSut5g+TSdNaooCLZ1a3RRLfxCfWY7qdQrrOhDqyw==
X-Received: by 2002:a2e:9dd8:0:b0:2ec:4fc3:a8c8 with SMTP id 38308e7fff4ca-2ec59312e0fmr26152271fa.0.1719206322244;
        Sun, 23 Jun 2024 22:18:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec5ed4f89bsm3258471fa.32.2024.06.23.22.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 22:18:41 -0700 (PDT)
Date: Mon, 24 Jun 2024 08:18:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Caleb Connolly <caleb@postmarketos.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Henrik Rydberg <rydberg@bitmath.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, Frieder Hannenheim <frieder.hannenheim@proton.me>
Subject: Re: [PATCH 0/7] qcom: initial support for the OnePlus 8T
Message-ID: <ufc7sq5s5nymjncp5w2446dq5xcmmqbmsuubhpo2fxtsz5dpgg@xtqtmmsio6sr>
References: <20240624-oneplus8-v1-0-388eecf2dff7@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624-oneplus8-v1-0-388eecf2dff7@postmarketos.org>

On Mon, Jun 24, 2024 at 03:30:24AM GMT, Caleb Connolly wrote:
> Add bindings for the SM8250 OnePlus devices, a common devicetree,
> touchscreen and display drivers, and a dts for the OnePlus 8T (kebab).
> 
> The OnePlus 8 series is made up of 3 flagship smartphones from 2019,
> featuring the Qualcomm X55 5G PCIe modem.
> 
> This series introduces initial support for the 8T, adding drivers for
> the 1080x2400 120Hz DSC panel and the Synaptics TCM Oncell touchscreen.
> 
> The panel driver suffers from similar limitations to the LG SW43408
> panel found on the Pixel 3, namely that after toggling the reset GPIO it
> is not possible to get the panel into a working state.

Just to point it out: this is no longer true for SW43408. The panel
wakes up and works after toggling the reset. It seems, there is an issue
with one of the regulators, but not with the reset and/or panel startup.

> Given the apparent prevelance of this issue, particularly with DSC
> panels, I believe this is a bug in the core DSI code, and not a device
> or panel specific issue. I think it is still useful to accept these
> panel drivers into upstream since, from a users perspective, the panel
> is fully functional just by leaving the reset GPIO alone and keeping the
> regulator on. The only (theoretical) downside is worse battery life,
> which is a small price to pay for a working display.
> 

-- 
With best wishes
Dmitry

