Return-Path: <devicetree+bounces-210572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8CDB3C07C
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 18:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C86E61C80375
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 16:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DEB9322DAA;
	Fri, 29 Aug 2025 16:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yk1hHyns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A162D321D
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 16:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756484374; cv=none; b=K6rbE5Ag1ivm/4/Imsbu8Fm/yLDShZi+bcGyIMEyhw5Yrk4PKlptMulAwHhgCZ19FwdB+6Smfs7vhw01+IAkU6suPwOc4uQCgJik/fhhFAGq/rhfmcyzkhAoyMglifPRW0XvthHaKj6cuCYsB3cKsAe2P0fAdLUnfGDo81hPNV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756484374; c=relaxed/simple;
	bh=DEb+rLyFLAAC2UTbNeB5RKFyMlAT9QhJEkzS1NHnSv0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=RVkmwjYBsLvzbzqRYlUSRbAIMUwD4DephFHF3Az5ypa8AqQ5a+wwxs7ZSA8CH/gFa6zCamb0V3EdaMW/Xz3d5YSK47QRA5qPgL82y5RIkC2PeRQd3q/o53qg7/3SSdLYp+XWf+5PhtvP2w29jkCQuVTQIbZgvSg6rYwk3j2q+HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yk1hHyns; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55f4834fc49so279758e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 09:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756484371; x=1757089171; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDzPs5+Y62RH0rRjBPSWe/GpABAvJ0cBPrKFUSkTbdI=;
        b=yk1hHynsB5xdXf1AF8wE0HiieaHWsthWcJiyL3Hdis4cH66OjMygIoy3SC1IVciZ4c
         5uM2IPHRqb5/vblr7k9O0764DLKhIKfMT0n2Ww7nAKelliommJ/7Qq+nkzAZIVggP4n8
         wGBQG7RWFe+V3Uz9bCQqd8wsTKh/TznCtC5dWX+yBMcQdTJe29cenKr1qrNYBctq6G7I
         YdTbPjDbgyZ6TicwtvunJmWcEX4xPPN4RHZvppwG5EG/C3UnrVIwUIk9yJJprlUbGA2b
         Wp5yT+vyTyDhQJVMcbp/4KN12u+a1Y6/MTyqh8QkezaRkEk2rLQnQU9rvEF38hVm6AXT
         woXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756484371; x=1757089171;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SDzPs5+Y62RH0rRjBPSWe/GpABAvJ0cBPrKFUSkTbdI=;
        b=MB193Iz2DerkxJVx4BRB9FO1gA+SHnOTWr8+RPFw+UdBTFjR0zXklkgN6zJdQXvBnf
         OkX7EvSToXrd9esJmZbV2rHc7Yck6iusosmjVuc73wDWXBdIIAb38FRQHJ7ioFTvmNsz
         5zXh87mEyPN9pqVISPL7oIxkGgWi1EPQ13gSoNUyviTlrYesPCL08lA6fIp6BH692d0s
         gZb6S79nyMGeRSBUsSfNDwLrJmP+ZPr09cvNe5rmMQ1qG6NX+pZhGHAhLkwgAM+tPsBB
         0imDfFwPD6ID1tGGwR01Z7mjWQE7PBtQ5MTfPmnQlxuPzO++FV2P1Pq0CsAevBGEKsOV
         zgxA==
X-Forwarded-Encrypted: i=1; AJvYcCWx2z5JR2Q95HAOBv87Ycelp+jkIENLuTPkBt5O/CnURTuaY3DqofFa3Edb+rtU3OzwEPOR2voxpOGi@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtkk9yaaiI5lwvYNCnN/UhzOCLZeywo/XyAbSm+UopMOe4PJQb
	QGtiytaMW7SVDtmVgjHsYeEG9qa3/pcnUcwSZWnvH9n79ZGUItiAa2/mUYRhUxvhoSI=
X-Gm-Gg: ASbGncsZZ23CeL3OLNE5AMtGtmtvYD6KpjJ/3rsxr9lw/2P2Weh3PgbCbZ6juf3GL5r
	H89Aof/wmfC95V5tWkui/ck6ObwAl+gvpQ8dB0DN7QElQMu6YzlJiQsRifcLJf+1l/5rKdHLW/T
	e+AyD9gnPzIxu//lv0RsS6xC3YdSHJ+UUlkLyW1GJVBZHCF4TIutqwYH11ObJ9A3MHZMDS2frRt
	43rE43RJR9eeaoSIRC5zmj+vD5I3ku1q7rfWu3SO5VpYZA6WyFm9+F7oEicvKpUcRxE+gEsOM4V
	hu5ZLY9+bwz7ApjuNkQvJQWg5BxnXWhDrxyYfGroTLuz0tNjZOKEaD5zqrM59jCq6DEnf8u7QAc
	ZJea5d9nu1zFlLd5Wiro5N1wErr0/3wBnRE4MUs7bRBvI0BCdIlVDMxbX2BiWw81MHZGTigY4cP
	KW
X-Google-Smtp-Source: AGHT+IGBA0Om8aXqgaQfO5bqLiwz99OhoM1dRN5Nb9hQZ+wq5lz/yuN7Lkr8Q2HfRntN3vzDhj65mQ==
X-Received: by 2002:a05:6512:39d1:b0:55f:4741:a82e with SMTP id 2adb3069b0e04-55f68ceae50mr396339e87.11.1756484371248;
        Fri, 29 Aug 2025 09:19:31 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f678501f4sm731590e87.105.2025.08.29.09.19.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 09:19:30 -0700 (PDT)
Message-ID: <f27b035a-91f0-4f62-b90f-3370b25e828a@linaro.org>
Date: Fri, 29 Aug 2025 19:19:29 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] media: i2c: Add OmniVision OG0VE1B image sensor
 driver
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tarang Raval <tarang.raval@siliconsignals.io>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250829144242.236732-1-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250829144242.236732-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/29/25 17:42, Vladimir Zapolskiy wrote:
> OmniVision OG0VE1B is a monochrome image sensor, which produces frames
> in 8/10-bit raw output format and supports 640x480, 400x400, 200x200
> and 100x100 output image resolution modes.
> 
> At the moment the only supported resolution in the device driver is
> 640x480@120fps (Y8).
> 
> The driver version is based on top of media/master, which contains
> a new devm_v4l2_sensor_clk_get() helper function.
> 
> Output of v4l2-compliance tool from v4l-utils-1.20.0:
> 
> ----8<----
> v4l2-compliance SHA: not available, 64 bits, 64-bit time_t
> 
> Compliance test for device /dev/v4l-subdev30:
> 
> Required ioctls:
> 
> Allow for multiple opens:
> 	test second /dev/v4l-subdev28 open: OK

FWIW I've copied a part of the output from querying another sensor,
the outputs are one in one equal anyways.

-- 
Best wishes,
Vladimir

