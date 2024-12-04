Return-Path: <devicetree+bounces-126840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8129E357D
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 09:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97270281521
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 08:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503D81946BC;
	Wed,  4 Dec 2024 08:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UKEAdfmq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE64192D7E
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 08:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733301196; cv=none; b=jQjLU5ygM6MPGPjUQp8puJMHfI6Hc+bMs+iKM9J+AhIjW9bA7Aqi1yPzFSm0rh3FlVFg2Mg5Lf077EW0WC9UthkcJMxbQie+YXOe4YvdAObK3JHUpNzDf4jU9n8tGgiNjEzINrGc0OtHAOiIXn4wevu0PFrH14yzwG5yf7mH+D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733301196; c=relaxed/simple;
	bh=M2eKzihSk3zbwqoKclOvGsiEA5sAA8t8v+QDneKkB3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k93Zx1X4PTtySSmhX0s/lZhn28tylQDz1q6HKivFmiiIsIbyEtcjwXWJFw4BXwI4ZgnLIqwkhOef7DMU7B9JRJe7cGHh3NlOKT84k6lKr0oSVLaWmAMnksXIKRoKcU8/57iiHpOMt9PyYeLoU3Tu1q4hmGHih/KzTRYEN1hm7Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UKEAdfmq; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434a14d6bf4so58613325e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 00:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733301193; x=1733905993; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U0QxTyPXrbU54XhvjWQfoHpd062jsI/RF0Hf0rs28i8=;
        b=UKEAdfmqSetK47Xx1WcUn7Yr2shYmfYvV+/JjXBF+f741WqDt3W4gmGSL8OkffN/hD
         3DISG9Kv8+nEGytaO0ztJ3UrRZqP2jeF8XL1V73J61YYmxJ/BhP+MzuegtjPKrpjkLIQ
         Ss/q0q9cQYVB9FYhoraigz7/ckWtSGoUGq4fnFFqESLQ05LwhGP2SSd3cDJTxn8YGDdA
         fvqx3Dej2wPsETbNM2KLSQGqspWpJgSVLfUDxcFgB742psW1vL2YWUwhe2GfMNWZbF+n
         oFcycxhVa3YhZGXIPEHkPpWItteqzAPE6Jn67SjGG6OjInXCeFC65TZWKLC8p6GYYz7W
         TpVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733301193; x=1733905993;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U0QxTyPXrbU54XhvjWQfoHpd062jsI/RF0Hf0rs28i8=;
        b=s9S1VgaM70D/GptgDN7QG/f/i/ZmlUo8pwt0FWdF9Z3xV8KSaKZOnPMjIZ9cNJQ8pW
         QHnkWA3MdXvRWMYXqqwrMf3OxlNiEZYsl/vL7WK/ObGqhapQPJiPg+RpQVKCFaoA/b7W
         ycexBmGCIzH70PRKAzi860/ZSd4GRb5dyU5PXXppuhnjGos+dembvoGjZLYoOF80TKWC
         y+1HntPj8phNabj8Mgk7zeuiIvlfrtfopnIlp3jw+W3Lff65AKgqBSxOTRk4kEXq2Kcu
         VmlmzpoWchgrEMYD9y1X1WQj/grR76HLzoUX2RUkyPcWgH7IfZV4S8auP8WqUVl7PTCb
         CzRw==
X-Forwarded-Encrypted: i=1; AJvYcCUbdfKgp24c7LZDB8IkqnQoSKAmjvNfbn4Zv1921mKS2nNxmaRWv+a796zizEmMehVC7dXxeNYWWyGu@vger.kernel.org
X-Gm-Message-State: AOJu0YycrH7C39dVBycKqSNvlBEnKV4l2NrAyKNVmhsSFQaaxPCpRWlB
	ftQ58vjOfmvKxfga0M2YkC8WPEr6D+I9A4Oz41QiaqL/bBETYBM0r6Ln5xGuSWQ=
X-Gm-Gg: ASbGncsUIYK3AMoU0IEdsSrvfzmfaSGcnNTfRd41iimxYhrJdIz9kruU+QGL39mfLz9
	Lj0MrJHwhngCH2A0Z93tmlK34zry3iE0fVV2BBcQeImWHUA+ocqUZcIjOTQoHm7x2h834Ob/6LE
	K+SEqpPDUBWGEYrZQHCewIwWZ/lk07RK4G9+Frc+fpWmRxqE7NmHjys9iiOX+SZcYfKnrbvWot2
	jvAoeO+E5H1UnxYacrk0zdbda1MMTqlqerPvT7exOj2oKt/St1OGMx4Gd6akA==
X-Google-Smtp-Source: AGHT+IH/7NRyoCVatSSiPzY0lDOkM5NNriw1/JOeMDKXPeT6FeWVOrUY6eKDYQWOZSPdNThD4dF1gQ==
X-Received: by 2002:a05:600c:3509:b0:434:9c60:95a3 with SMTP id 5b1f17b1804b1-434d09b50b1mr47760175e9.11.1733301192760;
        Wed, 04 Dec 2024 00:33:12 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef80:9a15:2a41:210f:f75b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5281229sm16285055e9.26.2024.12.04.00.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 00:33:12 -0800 (PST)
Date: Wed, 4 Dec 2024 09:33:08 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-crd: Drop duplicate DMIC
 supplies
Message-ID: <Z1ATxAsXFhQraQwH@linaro.org>
References: <20241203-x1e80100-va-mic-bias-v1-0-0dfd4d9b492c@linaro.org>
 <20241203-x1e80100-va-mic-bias-v1-2-0dfd4d9b492c@linaro.org>
 <f65e1559-b409-4906-aabb-eb24b5b0fcf2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f65e1559-b409-4906-aabb-eb24b5b0fcf2@linaro.org>

On Wed, Dec 04, 2024 at 08:20:15AM +0100, Krzysztof Kozlowski wrote:
> On 03/12/2024 18:44, Stephan Gerhold wrote:
> > The WCD938x codec provides two controls for each of the MIC_BIASn outputs:
> > 
> >  - "MIC BIASn" enables an internal regulator to generate the output
> >    with a configurable voltage (qcom,micbiasN-microvolt).
> > 
> >  - "VA MIC BIASn" enables "pull-up mode" that bypasses the internal
> >    regulator and directly outputs fixed 1.8V from the VDD_PX pin.
> >    This is intended for low-power VA (voice activation) use cases.
> > 
> > The audio-routing setup for the X1E80100 CRD currently specifies both
> > as power supplies for the DMICs, but only one of them can be active
> > at the same time. In practice, only the internal regulator is used
> > with the current setup because the driver prefers it over pull-up mode.
> > 
> > Make this more clear by dropping the redundant routes to the pull-up
> > "VA MIC BIASn" supply. There is no functional difference except that we
> > skip briefly switching to pull-up mode when shutting down the microphone.
> > 
> > Fixes: 4442a67eedc1 ("arm64: dts: qcom: x1e80100-crd: add sound card")
> 
> If there is no functional difference and this is just redundant, then
> there is nothing to fix, so drop the tag. But the point is that users
> might want the low-power VA. You claim they don't want... sure, I am
> fine with that but there is nothing to fix in such case.
> 

The fix here is that two mutually exclusive power supplies for the DMIC
are specified in the device tree. You can only have one of them active
at the same time. The Linux driver handles that gracefully, but the
device tree is still wrong and IMO deserves a fixes tag.

The functional difference is that we skip briefly switching to pull-up
mode when shutting down the microphone. Users won't notice that, but
it's not the intended behavior.

I don't claim that users don't want to switch to the low-power pull-up
mode (VA MIC BIASn). However, we would need a different mechanism to
give them the option to switch at runtime. "audio-routing" just
specifies static routes, so the current description does not allow
switching between the two modes either.

Thanks,
Stephan

