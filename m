Return-Path: <devicetree+bounces-44667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E622585F38F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:55:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 238B11C214FF
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9A6E3716A;
	Thu, 22 Feb 2024 08:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PapNwf3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2200A2C683
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708592136; cv=none; b=l+/wQLzCB3/Am8Y9l8BLTmuILr54T7xVd2EpRgpxJcCvA6XFHzdZt4cDZTUEcdApIh9nSbpeFc2r8KueOQ53MPQX9fVUhDqWFmyrCRvJwKvaWWmN4K1y0BJYZvHNKOOtrDpKFJ2GvePiMupgqqdosaapt8VkpzdcQr0GyVv7DYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708592136; c=relaxed/simple;
	bh=FjEV8hE5eZcXGtQ08yUqG4aewSRcZQEUdUXoAZyvLdM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZOK2M5wa+fONA4BaUAL20+ZWOXkBVJdsamM5X3GJvowWoySFqA3Y2bRx/ZzCbn63S3H9koOATGyLHUe7I4okgV76BwUM/eizB+s0yqBNoqLzbe7llOJhflR1QABXacw7ajMrUc4h6bue5gfCIbyBkQJ/64/8Xtweu00E5GMROQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PapNwf3y; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-512bb2ed1f7so5264378e87.3
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708592133; x=1709196933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wvafyN1Ki3gtTTRQp/+ld7EIImwoKNgmY7mZr4vWUK4=;
        b=PapNwf3y537Ms/L8k4eX+lIusjbE8m+RODhEiY3DAcffEEw1EQsrNG+6fbKIe9EyAW
         tIA45Lnl0v3HXhAbk4xOFyxtc+fv6xYtw106ggEykTsnmy8TakKtbWGpfkaiKbMjrYNY
         WsYM6B4j94DypUhEtw+ttyTmcF/hXFFIHEw0yRoHo8AHJQ4GdZCF5+zr6lp97ZC4ZFf6
         AyVDGex46/8PCDe7Q5y16MZUzdcKZzYe29pKlZA3knz9KU4s0zDkXTtuE2IiTwiRSu+/
         ffWo1xsBfSfdRIOY5WuNtaiAEjHaT9rwk9+PGKD+b9E43izvMczaPA41jjzuIO2sT2O1
         nZaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708592133; x=1709196933;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wvafyN1Ki3gtTTRQp/+ld7EIImwoKNgmY7mZr4vWUK4=;
        b=OloX1g5+sbQk/1qC5F5D1RKdsft4Q05r289a7rsZhwBZQM0MM7Gh26jQ/Z+FHA9HVs
         CDXcTLLjTjOigO/TLF1ac5q5RnZD4f57TjYofrSXDZgYm0Ddk2cydOvzlInT2uoBWZsR
         ugJYtoHPHpgEV7vY2B6wZKvsm+PdQY1tEXx/HXX++WMQXJwSiAB2gf5jnOBupSpR7Pfd
         hllI5rDXURIs6pKJvNwMQqy7XouTo1+jP36vhdKnaZrSR2tLpzjXSIdcgg9o2KtA2h+S
         ucWtbymVzXqqsW7kH98Jabasl13Gc0jPY+soFT9Nxkw8qEBNdCSg6qnCLtcnpO+fIycs
         tR9w==
X-Forwarded-Encrypted: i=1; AJvYcCVfPoiWk6q6Rav+sZUjyMOZIHKlCLBg25TT6VBcbqucM97N4dymDDigRVod56KNV36N6nIvSzc/e/LJ83jLjPicWKNdtQzZRzdEGw==
X-Gm-Message-State: AOJu0Yybfbt15EA5PNSx3omtOmjIhWkKYEYvTUOfQ5msw4a1o7Hm4e7P
	PlMVpg7ZEn/YYa/8AkYX3SiGHVSJ4IfDKGFyHPZj926WEQ15Tg63fYi50Nf9C2U=
X-Google-Smtp-Source: AGHT+IEtIiogO1qg0DsIHuHZDJdmbDgFoql2wOjjQ0dHxEtTw/GBno7cWP1Jf8NhMK0pYXBLxrLr8w==
X-Received: by 2002:a05:6512:128b:b0:512:d8fa:a0f2 with SMTP id u11-20020a056512128b00b00512d8faa0f2mr1752378lfs.22.1708592133207;
        Thu, 22 Feb 2024 00:55:33 -0800 (PST)
Received: from [87.246.222.6] (netpanel-87-246-222-6.pol.akademiki.lublin.pl. [87.246.222.6])
        by smtp.gmail.com with ESMTPSA id b6-20020ac24106000000b0051176ff32c1sm1992022lfi.62.2024.02.22.00.55.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 00:55:32 -0800 (PST)
Message-ID: <dcbf0e04-0252-4cda-be1e-ee4c707017f7@linaro.org>
Date: Thu, 22 Feb 2024 09:55:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] arm64: dts: qcom: sc7280: Make eDP/DP controller
 default DP
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com>
 <20240221-rb3gen2-dp-connector-v1-2-dc0964ef7d96@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240221-rb3gen2-dp-connector-v1-2-dc0964ef7d96@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/22/24 00:19, Bjorn Andersson wrote:
> The newly introduced mechanism for selecting eDP mode allow us to make a
> DisplayPort controller operate in eDP mode, but not the other way
> around. The qcom,sc7280-edp compatible is obviously tied to eDP, so this
> would not allow us to select DisplayPort-mode.
> 
> Switch the compatible of the mdss_edp instance and make it eDP for the
> SC7280 qcard.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

