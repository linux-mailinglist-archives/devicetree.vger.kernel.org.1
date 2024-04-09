Return-Path: <devicetree+bounces-57544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9189DD74
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 17:00:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9203281F6F
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D48D12FB38;
	Tue,  9 Apr 2024 15:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="taWyYBVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56857FBD3
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 15:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712674816; cv=none; b=QeY/giTF9f2uAU+R68OxSheTbhQayG9X1a2+ioZut8EsSXp7WGSVw9xxSaomcv3msUhgBLRtT9wvUMmHpwYCX8qEbO6SoKCcXVp7Dzm5aWQQP4YR1ru1M7CsQAJXghP+HtsJG26VMhTLe1aNq1lf7WxnwQSD7fkUeDYxvf1Sj6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712674816; c=relaxed/simple;
	bh=qItj2QD9lAb71zQHuCbigKkildQRgrro60WwdGPxFY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WhLXgJOr9wyS9zHPwFQQqSNnvhciD47iHEcNzmHOPJVQ3An9iIgT9dI0rzi8NeesKhunRnznh1Mj6DT8u0HykH39CzhWOZeFgozrG/JUonkNOYWafcQm4I1TKOI8BWbXMxPLrbwPODgIh/DGVgyrzOkh98BLxZvjD6SOTXnSF7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=taWyYBVG; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d718ee7344so66286561fa.2
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 08:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712674813; x=1713279613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=crTB/gy+FeOZ86NhZBPcpLgT33Zu4oRIi6sok1xfkbU=;
        b=taWyYBVGZWHX+Qw1SGlHtWtMA2Zpk+nAfQTgdZi84bT5zepe37bMSv4RyRiwdpOEok
         271f2DpkfvgtQAbV78AP00lVTrGROxfckznB75nVnJxyCtQa4qGZ4I2VV0xXmHcCO6zr
         gTiYSFFBLNO5wIR5WYv1njwzj7kKkM7087ajCUVGaXSX79tc5umRtApNf9aynFiTFQdv
         0XbXm+4SRKl/mMD0g5HakVd/pz9KpHQ88TnpINN6ZqFphg6Kb99zE8/Ko6PHFX26CtWJ
         LmZKLEsg1pGIy8O7GTe/peOE8teG06EsOZF6UwL4XCeylUEmrqwrfd7VNCqgd46nQc+w
         HX1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712674813; x=1713279613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=crTB/gy+FeOZ86NhZBPcpLgT33Zu4oRIi6sok1xfkbU=;
        b=J/759hIxyWcvELUsVhBCvJfB0xFSeNjs2CL9ttFNs/O3to08hbonOx3ibX8KtAn0Ht
         UpOXgV9u+YZQbIuPywEXgf8WjU4wk6XbElV9bJbFt1iQ6vbn4m9FiQNqESi/Oicu9kUp
         /0qoujdtKlv0p6IFLXK+KnjyQ3XzzeGmGgtJ+uyfrcI6gDykvyvJcJApBWU6A/nd37z5
         b5e/mmEolttXGFYID2B9oxnK+2O63ZUPwZLLrsyU9me7ZmsnL2REdydwLU4Y2rpURiNO
         SvKc8uQHeTBO++q3j52mB6WaGBBGRE9YRVxcShduKKeu5HZTVkfNvWE3+yyh5jg80o6j
         rgLw==
X-Forwarded-Encrypted: i=1; AJvYcCXTgI6Z03ljpi7v98Wvbh3kwr/hWd0D5yDpw+wNzYmMIiebXyo7OKmENDAvTo+US4kAhIU4RjeFcNqjaZx4LmT91WSUsdYKDVPOJQ==
X-Gm-Message-State: AOJu0YxItysGvZgoOtS5Dd7FYSB7dAAdHqFK0kSe6b7TWNdxb3MCo9gH
	nnkemvEPcgdmh4DhN1vnYWilbTJlkik9ftWpjoNxyfT5KNqgzuculhIpqsyVeRA=
X-Google-Smtp-Source: AGHT+IG18AzDt8XyooNje4R5lhWjWzghy6yLZKsZ0hE9gJCtN4aCZBqy5lbYEvW6mlqQAurtx+37jQ==
X-Received: by 2002:a2e:a7c2:0:b0:2d8:3cd3:35d with SMTP id x2-20020a2ea7c2000000b002d83cd3035dmr48727ljp.33.1712674812999;
        Tue, 09 Apr 2024 08:00:12 -0700 (PDT)
Received: from [172.30.205.99] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y32-20020a05651c222000b002d871fe2f41sm1401375ljq.18.2024.04.09.08.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 08:00:12 -0700 (PDT)
Message-ID: <c7ac10fe-3fef-4f78-b634-e22bb61f9618@linaro.org>
Date: Tue, 9 Apr 2024 17:00:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: sm8350-hdk: add USB-C
 orientation GPIO
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240409-hdk-orientation-gpios-v2-0-658efd993987@linaro.org>
 <20240409-hdk-orientation-gpios-v2-2-658efd993987@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240409-hdk-orientation-gpios-v2-2-658efd993987@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/9/24 16:28, Dmitry Baryshkov wrote:
> Define the USB-C orientation GPIO so that the USB-C port orientation is
> known without having to resort to the altmode notifications.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

