Return-Path: <devicetree+bounces-86079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 330529324D7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 13:15:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD1971F238F2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 11:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B704419A281;
	Tue, 16 Jul 2024 11:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Woq+bsI6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E138F199EB3
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 11:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721128479; cv=none; b=G7wqjlQPMkqIdYE28gO7BqWbQBca0Qps8j+NThpwYMDNHAF1q2uWNCqLqmHU19NSHrQB9eN3AxASVwU6K1aqHTw4qBW/UDjJazn9zGElNVv81ABmpSAOVILEFLByZWlxewVghLfzrKx2M91kCChgMOWlE4M1JpZJ89lr/vuMyho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721128479; c=relaxed/simple;
	bh=bdsFD/8XcqS77H4wi6yAWUujnSsm4aNZzXfvbRPHzes=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tno8eexcOuhy59PtXeWCWx6kID4mZu0gR+BUX6lhcGsUOk17bzcyGxZfoebwUiNgNt973p3IObwUMOgXAZNLFAXrqk/eZBAwGbrA5vKDogliVWlY4PLCDSwdUcp/kWyKTzrq7XWN/8MPkFryBYsv2JWsiRgWpqCrFiXbnquVo3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Woq+bsI6; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52e9944764fso6201941e87.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 04:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721128476; x=1721733276; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fARBh6x9C0yq/1K+DL/uOjeQ/uBKfWPogUn8pxtRS48=;
        b=Woq+bsI6PhYQEj6XsGmlchVwfJUwylZjXMJstw2xKz1GB5I2jvJ8xJkxc31op8f+Lc
         47RzByShPFETUPHGj0LueCQw5QWZa6BFGj2BWgiukLb1HBGkWNPjiwhae2S/rj5ZCobe
         yaGoHSGRBeWuNwnBVWuQrhHZOKNQDlkYd74XEmazLEoOdskvbgxmKNOQGqzyV28xg+8k
         K1b0wixwgibu+W2t6lE+FnaISHaR2klSvWnindt9yPqNBtC+sV7ykS8NQkWCfMucGLVG
         W5P4u9d89GY1zXsu6Ffrk7QQO9eEnqbQGkJN9iU1aNQBO1f997cFKKdyLUkpqqenPSsI
         zSpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721128476; x=1721733276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fARBh6x9C0yq/1K+DL/uOjeQ/uBKfWPogUn8pxtRS48=;
        b=txw06NwycvQLxi+PNwC4NwU9pZQLMbjGt0yQYdrFPQZmPr7oll1FlLraF1FJPxhH6l
         x9DsdaDpFlagUNER1AN+YVYYYGi/F2Vj/ldw2lRdLhq05473CiNFsa+EYFBWSFYjCq6Y
         3jLkmNImQPM7OqWarsscP6YMz/Ew/WoH8dK8GUuRtN6t8JhjbuteTmbJo/hdEElWbgnN
         mL/sledq3927GGMQEhiJnEdPqNTHYH5DwwGALv4/05r+jsaZGzPqSLAEpU9ZcwpVHBS3
         wn3McPGePfSGpc5dD5BzDZA3HHS3dy/96y/UBJnMSl3B/99RXEmiHEmdaacH9C+TNqQv
         0mUg==
X-Forwarded-Encrypted: i=1; AJvYcCV/iKIwZk8OIro7EgIcTUSpOHtyexjk4xKuum4WA9JBRI4eECKASkU1Wxjdhf3UiNScVODtAOBVekY0jIF/3YLbEVe8QSUmazXzpQ==
X-Gm-Message-State: AOJu0Yy72uMUCX8Z9f7nWyrD2Ru1TtvE6Kc9hIq0Fm5mamwWlA4QZ1DT
	31c61cFdsEMKRJb63LKze+VhKxkqsbQxO6bVqlLTrwrLkPO9InWWgSzn+sZyphw=
X-Google-Smtp-Source: AGHT+IHYjNlfEtLq1qcClEBDzzTzqDeYq8qejX3Emp56LQvvLMPuFk+JhA9NTiaS+XkliHSJEOrhXQ==
X-Received: by 2002:a05:6512:3055:b0:52c:cd0b:f0a9 with SMTP id 2adb3069b0e04-52edf0309f7mr1112800e87.58.1721128476091;
        Tue, 16 Jul 2024 04:14:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed25398d2sm1113827e87.287.2024.07.16.04.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 04:14:35 -0700 (PDT)
Date: Tue, 16 Jul 2024 14:14:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550-qrd: use the PMU to power
 up bluetooth
Message-ID: <d4bflv37pvshhqwrbrqrqrzndl4blfxlbadz2nfpkvy5bvofbh@x6r5wstshhie>
References: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-0-67b3755edf6a@linaro.org>
 <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-2-67b3755edf6a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-2-67b3755edf6a@linaro.org>

On Tue, Jul 16, 2024 at 11:45:11AM GMT, Neil Armstrong wrote:
> Change the HW model in sm8550-qrd.dts to a one closer to reality - where
> the WLAN and Bluetooth modules of the WCN7850 are powered by the PMU
> inside the package.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 26 +++++++++-----------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

