Return-Path: <devicetree+bounces-250347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 856C7CE887B
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5069B301143C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A420227B94;
	Tue, 30 Dec 2025 02:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ToMo+OWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4831EB5CE
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767060936; cv=none; b=FJITvg9/hk48fW4MD+bnCFl2lQX+gAj66nd6j/CbuVXMfxjYgkxfgyil26xaGuZCYGxDuWR9EEIh4zwHvUetHoSer70j3LT1gi2I+aBmHOjckHBpSIqACiyhEYeKCQSfBmtnEr2n4LYH7KeubLKHwfTfneYSij+7meabDDTwo6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767060936; c=relaxed/simple;
	bh=ZG4Dy8XbUrlgcEriKWoDsAcny2Cr6dB26N5m5m/1Lhs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BgXS6Tof0HsLAu1qMyC/2glKIX9nnkdDgnO2tlOuGZSrEbM43A+6xImaJiJV0OgiY51suvAHtGuYbbvqNJ8mVjx7DB77hCJY3v2Jo9+SbQbtrDjBtbpKFckAvSpzWKI1kEadsS9TGkqOcLtI+HWEFh5eQtsmSk7Uwxg4bO75L/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ToMo+OWX; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-88a2fe9e200so76829896d6.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767060934; x=1767665734; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4CTvsfTuWHAFbMUmkHWBKdKblUj5Rob5/vs3j6ckuD4=;
        b=ToMo+OWXyuLQTD265frTE46FVYqHrdrJlpkvBUr5F6JTtfpdzuMQTW5bsvfSL+jgoF
         AbcG4yc31+D87B1Zaogtd3fUhIRv9fIP1V+BkBavEvN2tlqi4Pt4BhceETHGk56Aacj4
         KaO1UAfCKebzBB6C3KwCVKGA8B9gShmHUJthwXCurOZtmuZRhfVWhtnBE1Yc8AnJL9LO
         n3CyRfxRo1D2Uc0gCdSe4j86Ypc4861AtvLLqfX6+nZD9mq9l0oBav/Xsit2XQ5XNuUp
         5U4Lb9K9hx/nRev0O2fmQcLJ9P4PZM3K2XXiygz26HqUofthsmXuThyeYkm73M3/Fo/r
         u7gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767060934; x=1767665734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4CTvsfTuWHAFbMUmkHWBKdKblUj5Rob5/vs3j6ckuD4=;
        b=MNK3eVr3veLIiEJCesY6g95/VQO8qH9oEf10smwzmE08mRUHqVm5KbUcpjF7ZKoYix
         ba6ep/zY8shnpRfr/kfaAKUfDnHyhmVciWjXZ+ZfHpdi+45pJFn9mgoUc9u/mFTykLr2
         +nViqk+t9t7EvsvJcg3kbstxWxNiqpVxk6un5xveQjsnNM6SB6J2DraEblWGxyr/e46/
         ZmqJchrR912do4GGEF9Ri7b3NuR9IWDH56QLAYKjZ2JW/3BhCDcsIp9fFymFPeaZAes4
         NQChKp0pPD2SVRxttcxrybLoiuo+vso8cZ3UTOtVS3q+3OB4r2USUB/9Sz+cQIQ/THsk
         1tcw==
X-Forwarded-Encrypted: i=1; AJvYcCWYVXfXDsMl82N6sTwvbddYFSInORLioHpuZ4rMtGFFDhQOuTSduxSE1hlOG0IkS3IETcFOqXghZPXh@vger.kernel.org
X-Gm-Message-State: AOJu0YwpfveCVvxmuVN2D7m1SnW6GgGYy8szg+nU2BFNGE35ws+El3F5
	1MYVSckkHdJwDKFxu3uVxxj9KSSV3YxEr/I9zpWv1wwBF+Rr1ExGwBfV
X-Gm-Gg: AY/fxX4+qSqvUKXqZaIjiIeX7SzKTiioMUUzFCxXv+o2DJeNn7efrYdJnGkeBF2vKPJ
	IRLHTvCwDdcNCas4dnwvmZXr+LofInPUF2qIs0BO6YxRmARnQe/o7S5CE+FMgF73kfWzJsRQ0Wj
	4zT+IHSiFop8568KsboSIXMewTfe6RCmFot5HXTkHzf/5If2YtPkJP7O0largbe4LUoHq9xE5Ku
	GuqJnLc6ujTZZC5B4yVxGoys/Rr6sfx1oOKZdRpNK2uDN5ZipYCiESjlMNLKcJkPcdfjDJdnMei
	rigJlTMkk/bSQ8NSmMNzETCzNBRHOm86kw2utAVSbvZZMeFRZKFZyJmQzb6qaKQwMx6txXKOCJE
	1xZVhXVWyrbs8dGhOLyWV3yNvGr/CVfz09oH9sLos7mR1cuIn5ERVGmNuGgsQdW2Ule+fNLlRIf
	UTXmLUKv1sPE6g7Q==
X-Google-Smtp-Source: AGHT+IGPi74lMGY512ih57p+7byf/j2B0jGfqIGMNE2IPmwFreQextf4XtV0o/a+3koK6DFeMX3Esw==
X-Received: by 2002:a05:6214:3206:b0:888:57bd:8c82 with SMTP id 6a1803df08f44-88d7f5b4860mr527175506d6.0.1767060933911;
        Mon, 29 Dec 2025 18:15:33 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d997aeff4sm256934226d6.29.2025.12.29.18.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 18:15:33 -0800 (PST)
Date: Mon, 29 Dec 2025 21:15:52 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 2/5] media: i2c: imx355: Support devicetree and power
 management
Message-ID: <aVM12D1NHYQRGSuS@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-3-mailingradian@gmail.com>
 <98fc4559-11de-43ba-b601-7575cb9d246e@kernel.org>
 <ff9d571a-9b47-4f39-8589-d4c7b190d3bd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff9d571a-9b47-4f39-8589-d4c7b190d3bd@kernel.org>

On Fri, Dec 12, 2025 at 02:45:35AM +0100, Krzysztof Kozlowski wrote:
> On 12/12/2025 02:43, Krzysztof Kozlowski wrote:
> > On 11/12/2025 02:48, Richard Acayan wrote:
> >> +				    imx355->supplies);
> >> +	if (ret) {
> >> +		dev_err(dev, "failed to enable regulators: %d\n", ret);
> >> +		goto error_disable_clocks;
> >> +	}
> >> +
> >> +	usleep_range(5000, 5100);
> >> +	gpiod_set_value_cansleep(imx355->reset_gpio, 1);
> > 
> > So you just keep device in reset state forever :/
> > 
> > Please see other imx sensor drivers how to fix that.

Sorry that the reset sequence is too confusing. The reset sequence will
be changed to GPIO_ACTIVE_LOW.

> I already told you this at v1 and you ignored the problem and never
> responded.
> 
> NAK

Anyway, I'll move you to CC for the series and carry this in the next
revision.

