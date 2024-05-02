Return-Path: <devicetree+bounces-64425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 891058B94E5
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 08:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C713EB22EBE
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 06:51:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2537F224F2;
	Thu,  2 May 2024 06:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="piLTaoHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7833A1CD37
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 06:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714632706; cv=none; b=TvouL/6a395BFTwU0dc4+p+nbRCKm8QhDkLF54bDs7uFlYmzDTsU6tG9kEI7dXZwdq2eV9UB9csU97QPl0cckHRjgoikNZUimVTVE28UuSU50iUWFu5hfz8x+KmuR6yUzqt0k9wflT8292ul/vXc4yRccPvhTbIle3BmoIq4FI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714632706; c=relaxed/simple;
	bh=AzGGXMNisgtOgDKqW2TST5EGH/yE9Qp4z4if1pjzE3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bQArg+dZ14RKIB/HRf0Z6pdcyPi9yO1AwztktPOaYuLv8kQS6kvKsy8opR0YxZE+Oi+5JgSGhWdwr4pObHP4G5nHq8EaWCwrpgF07zvP7jyrEJM1a2RtvRFD/3EnLgpB43L8EZEnDNNre7YzKhY5Zm6/hXroSrx8fFv/combfmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=piLTaoHC; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a52223e004dso808116366b.2
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 23:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714632703; x=1715237503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AzGGXMNisgtOgDKqW2TST5EGH/yE9Qp4z4if1pjzE3A=;
        b=piLTaoHCddCTbweKGPSOrGUGN19/aMGd4HEoB7xrHyCqtXkHqQlparP86cw37xNR3j
         +7ppqJldaeFiDrdQ3O21spS6Qt0Fvsgh3R0IQ2A0nwcZWeeMpVYmi3zJ/yi0n9rF9v78
         sPsR1RFx+6s0icnCUjiG90R4I9bYZQ5VuwndudqMj8c99uWzhkXpAaDhRNYKWGl+tVoC
         Kqz/iW84t32h39tn2QPpsw3+R2ZTVcSk5CT91DTKUOX5dEE9MOC7DcTk2jXC+lPfNEDt
         zTq7ozajc9P/lvS6cBMGwspTxG4D/4peMoE4fovCCIRA4jXW1qcvyhGtT6lrYuLDHHqk
         voOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714632703; x=1715237503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AzGGXMNisgtOgDKqW2TST5EGH/yE9Qp4z4if1pjzE3A=;
        b=SEsQiiGMObVgsn26z14ZqFP09A5kl9caEiAQNBkJ6uDNZwuYY8bFzSJ0xl3abtDcxi
         cYuMA20rNcRodajbVRZ7QPdrUsqKXsVXSsw+41XstDOP5Vb+nNpcUaNb+IqxezYn6njD
         S+5Dt1/RLBadTXYi1czH9X4H00WRCPyFSjRP/YYMcxJESR3gIGgqo6txEkHBmWxvMNS3
         wDtYxw+EZ0TfuGkQSK+pDauh9kzIQOO6XV2fPYybbzKPXtiiHOZm88xYw9Ywz7Xbzcs7
         Mk0uRI+WEizdJ65kxVWVtlxZ9LhF/d9kBPyShrJc19XfV+qb1j6RXAx3+kFzMHZsavYn
         TWMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxKxv8ASr2tQWnQR+M2Tiu4/4m8bTztvrQK54fEGDun2ujvY+1uddIeloJ+hANhJl7Sa1nC94e1exMbmDfF5CGZ2AK5D4C4LB1lg==
X-Gm-Message-State: AOJu0Yx/aCZNyeAXJlZo/8oB0W6emW+svUGQ96IgYRFHFQEfdELp6knN
	Rn+g6FpIz50CN9o3sWL7I/TIzCgSF6qnXAWU8XuYAcyF7Ie2iVpZ2DxE77fksag=
X-Google-Smtp-Source: AGHT+IGD8e3r3noDyYD2YIvp2atQuDcHh14YWuoYf1EutnrQXpRjic8pwNHE8h4pntM0COs1kCdDDA==
X-Received: by 2002:a17:907:9722:b0:a59:70d2:91b7 with SMTP id jg34-20020a170907972200b00a5970d291b7mr285927ejc.13.1714632702898;
        Wed, 01 May 2024 23:51:42 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.85.172])
        by smtp.gmail.com with ESMTPSA id t23-20020a1709064f1700b00a5544063372sm181102eju.162.2024.05.01.23.51.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 23:51:42 -0700 (PDT)
Message-ID: <498ff366-b247-4586-b02e-5cbfba5927ac@linaro.org>
Date: Thu, 2 May 2024 07:51:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: exynos: gs101: specify empty clocks
 for remaining pinctrl
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>,
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
 <20240430-samsung-pinctrl-busclock-dts-v2-4-14fc988139dd@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-4-14fc988139dd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


All 4 patches could have been squashed in a single patch as they do the
same thing, but I'm fine either way:

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

