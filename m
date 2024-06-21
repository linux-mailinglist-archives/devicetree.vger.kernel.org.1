Return-Path: <devicetree+bounces-78629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C316912F0D
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:00:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16821282234
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9632216D30C;
	Fri, 21 Jun 2024 21:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kHEBbUjv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3769E155329
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 21:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719003602; cv=none; b=YK44SOESbp0VwDeKhKfZsT/bDpC32zW29zFjmeWp212LA6SEqxMCa5FwHvvQDPOGJLKpVvupy5t6caMwbzsQDxeEGzwoPbZJM9BjGYqn2tKrb4vP5dAF8Yqke/OnM/4P4O+LgoJeR9tAuIIf/ia2ytOuIGlm+WpywI/NXhCxpgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719003602; c=relaxed/simple;
	bh=lXlXwgvsH/u00Q7DipiqE8mQo6sxT2zO0sIkOyB4Djo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YOBOT039UN/ANI1qUt3RNRpAulTHzSpFRqRT8TLqACi3t4MZJi1ePIK0HkfK1ZlO68HymkjlFzVWhizhqMJhUfdQrzn2EpR5E1gHr7Jp9kDR68ZAVUmlwWxBbEi4dJ01RVGdyGjdZvNQ2Dbf+cW0nyrzeMqhHLWWexqRf+7N+JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kHEBbUjv; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ebe3bac6c6so29615521fa.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 13:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719003598; x=1719608398; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w4KJNHE2Yh9z9x99/UWafslJTfFiwh6HKHJ78d4n/rs=;
        b=kHEBbUjvx+NwYRlxq7Tm91+U0hgRBoGVU/tbZx38q5aZRNeCCKYPVVRllGbsURHUF7
         shQ7icrNt54n7+Yld/5uiqwJD8dNXWgNMqfuurle0NLMdxknNVS2eCP2f9LpBrFzFJfG
         7Zjr8kJKTAYM/KKRocgFAb8dmT9G2EdfbJoNE9ejvjKGqFTxOjmAifj8zCWIKvc3LpKz
         5gKcJkVWRqtTh3EZEStv8hpAu6Cb8E1yzrUe3k4/V9bXouoeY/LWx6yX+4KJb7fsroUR
         CiBTuA6MvSqev3fXF3neQq42aTYm9dpN6DdYyMuUwLRWPUr8P+CbrMcTz2hj8pERFkB3
         Gizw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719003598; x=1719608398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w4KJNHE2Yh9z9x99/UWafslJTfFiwh6HKHJ78d4n/rs=;
        b=A7sOwW5PsCxQ7h2Lkp5ydPudOhWm4irmOLsblduqOCkY4YmA3NloXoInQGIXuIhqkf
         DfwsTs2Dwv9CELVWaIghBxmrj+QaHmpO+gi1l+3Uf2jRpfJ+Yz0T7atVSqk89F63O3l0
         RwlsaEKdi48OjKR7uMVWCJ8sibJx49CcS7M6TFhkuD9m1FB+UsHCwXaNKhvZPHnBc4Fg
         qIacKq1F7D4HTeXOQLIKuA6WN0YpA5vAYzTeNDmVcjvG9osgzYiPDPU4jSwLJwkz1c14
         yWZdE6cwfmtxvWXd11mP8vXlPNUsEc6imESbGW6gCqyYwGSW9mQPWTAm7kqJmieHnnOC
         NUtw==
X-Forwarded-Encrypted: i=1; AJvYcCXNRO5xPR9ZNH+BC3o8NlT4Q2b9v4wPf9dW9gYRSMHoYVz9I9eFz1YiV64tn6I/SXtJdTkr5JDy0Ioni54gvi4IJiZlk0cQFmAX9A==
X-Gm-Message-State: AOJu0YzjsvydPhb5X0KBf9P0sxbZKowctuQ8Six/9bHmlAhRmQrYA3eO
	41ZecsvAg923GepUJRuiL6gz+EUnOcTgT73In+79paf/yIpEge0eGNuQidl8s+m+RSQE9Vmy+hU
	O+Y4=
X-Google-Smtp-Source: AGHT+IGJRl22wlXlPn/cFCkpDq2XYJl2oFfqoxtEkZM3SLUkDDFkcdb0oUqIl56HJ6bKv6/kJFCYnw==
X-Received: by 2002:a19:3816:0:b0:52c:d76f:7f61 with SMTP id 2adb3069b0e04-52cd76f8001mr1810466e87.56.1719003598352;
        Fri, 21 Jun 2024 13:59:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63cd109sm309051e87.116.2024.06.21.13.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 13:59:58 -0700 (PDT)
Date: Fri, 21 Jun 2024 23:59:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Valeriy Klimin <vdos63@gmail.com>
Cc: ~postmarketos/upstreaming <~postmarketos/upstreaming@lists.sr.ht>, 
	phone-devel <phone-devel@vger.kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] ARM: dts: qcom: msm8974-sony-shinano: increase load
 on l21 for sdhc2
Message-ID: <bfrnrornuitylcz3nui5adz4zvziorlxesxpuxn2ouziifazsv@uxm7sz7axtro>
References: <20240621-sony-aries-v1-0-bcf96876980e@gmail.com>
 <20240621-sony-aries-v1-3-bcf96876980e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621-sony-aries-v1-3-bcf96876980e@gmail.com>

On Fri, Jun 21, 2024 at 11:14:48AM GMT, Valeriy Klimin wrote:
> SD cards would exhibit errors similar to ones described in commit
> 27fe0fc05f35 ("ARM: dts: msm8974-FP2: Increase load on l20 for sdhci")
> 
> This patch applies the same change to the regulator for sdhc2.
> 
> Signed-off-by: Valeriy Klimin <vdos63@gmail.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-common.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-common.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-common.dtsi
> index e129bb1bd6ec..6af7c71c7158 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-common.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-common.dtsi
> @@ -380,6 +380,8 @@ pm8941_l20: l20 {
>  		pm8941_l21: l21 {
>  			regulator-min-microvolt = <2950000>;
>  			regulator-max-microvolt = <2950000>;
> +			regulator-system-load = <500000>;
> +			regulator-allow-set-load;
>  			regulator-boot-on;
>  		};
>  

Just out of pure interest, how the value was choosen? Do you have any
reference to the vendor kernel or DT?

-- 
With best wishes
Dmitry

