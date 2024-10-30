Return-Path: <devicetree+bounces-117395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A799B6142
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93E371F2433F
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E93A1E7C05;
	Wed, 30 Oct 2024 11:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HTEIxt0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9D71E47DE
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730287064; cv=none; b=soIax3kMEg09sq9U3OsdC9aGw0LBEXv3eXV7gcUDkHTDAzZe8CNm7tzZdzG/KJUi4Cn5EtCikp/0GpEExZre5JPBZ/vsdFVdaefyQIZzmKXEmt+uSPyyEBRI/zuqbswADkAXEmBxZ0NPFUclVssDVkgDWUTGhJ5lXiIRX6D8aL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730287064; c=relaxed/simple;
	bh=0+ANpT2OwyxJuotxxojjjQEkhl3iqGOnYjPNdkQvZcg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QCiVsgl59xXRtzc2l5F5/Gj15/E8fVQItUl8dH7bvH+F+jFUjF6bbggpwgdWie33SexJ/R8Q9nMeVjqYyvmMThjQ+dtsVJUMxAbZZatG4EK41F5OI+kpvOpYuqMVXq0U85dIdXEtws8pUL373xZ/eKqFM+EO/KQw3KaFN45f7TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HTEIxt0r; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f0802bf1so763252e87.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730287059; x=1730891859; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=356ISyJwQrslqNkIAE5HnlpLPQYYjpzgyFzJpPVwQPo=;
        b=HTEIxt0r9BXBs5d/AUM6yTcC/3Im3SZEnrBDMg2oCOeMdotCzLZQWpeC+WE2qGcspH
         yadIowxjNkPX6hoffaivkBECYNsMn10UiSzxsyvZFi4lNAMFP5bA4Kc2VddZKcDauv9b
         yxBhRdvPh4CzVfH9CMbEdIZa+/bG9GTiiRfPZYZp13v5MW7kim2lNpulsgYz5cvVIbiE
         TQhRCbzFTrEfJosECQkyDeXS6UR3EE0wUi7yvVKQ2qOBJI++OtOGtREG31Lz1RrsPZXW
         UqMcds5o+VqY5jIX1ZzR5TgzXUExkpVYcMLwMfYOkk+nO1dAAwYHFftrNdn9SD5hWNLT
         4rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730287059; x=1730891859;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=356ISyJwQrslqNkIAE5HnlpLPQYYjpzgyFzJpPVwQPo=;
        b=S9yrFCDSCLa/Wc1wzsfyiEhlQsm2w+uxYjMSMLohc5Haj0WNUMkJI9MGEz2de3k5Kl
         vjgMFPNctvb8bvUmk3QiTOnS9GZB7jGTmdtvztr3oAjrACAjheoCQ4qGeS3tbzRsgjr6
         4aCMVkLU+6DzZjjKpvaeav3bSUH7qO13UU2IryNJQFmseJd9LziScWsiADs1ydY0KOrG
         x+5B5ZzCpiZsP5nd4dKc/ijx2vT/miiONton6SAhSK9Zj9mya5pAAQDJxlD8qp5YUcVF
         Dxsu8/L8cgweXm+aHiCNCI5aQKfnJumae39fgiDBxXNJxQK8OHryGDl/WJ3gVqmnRsVw
         8/vA==
X-Forwarded-Encrypted: i=1; AJvYcCXIl4dTGJJyJbIK7JuzYak2QVnT6pqsyYQTD/pZlgbBpJY3GaDtCIe/kN3LaoWDkvhmVW+DzsCXU0Od@vger.kernel.org
X-Gm-Message-State: AOJu0YyCjqxedMBIDcG3EGJf9aMrwau0Wc7DISaRa5wyxbCuqgCdG9Xw
	nrr6WxnIApONl65qpUSIK2YONZYpar01SjhkPma2cZ7cgDk8WOTV0iLQ5JF67NQ=
X-Google-Smtp-Source: AGHT+IGnM+oSnQStBfWKHreFs9i4FFNZc119m+7yiPhy6glNaO5Ho0YNgrbESTHVYDwlQmgkL1c1/w==
X-Received: by 2002:a05:6512:2255:b0:53b:1369:fcf6 with SMTP id 2adb3069b0e04-53b348b955dmr2386293e87.1.1730287058996;
        Wed, 30 Oct 2024 04:17:38 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53bb819070bsm223221e87.5.2024.10.30.04.17.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 04:17:38 -0700 (PDT)
Message-ID: <78f6bfc4-69f6-4a1f-a47d-6347910dfb46@linaro.org>
Date: Wed, 30 Oct 2024 13:17:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] media: qcom: camss: Restructure
 camss_link_entities
Content-Language: en-US
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 akapatra@quicinc.com, hariramp@quicinc.com, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241030105347.2117034-1-quic_vikramsa@quicinc.com>
 <20241030105347.2117034-5-quic_vikramsa@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241030105347.2117034-5-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/24 12:53, Vikram Sharma wrote:
> Refactor the camss_link_entities function by breaking it down into
> three distinct functions. Each function will handle the linking of
> a specific entity separately, enhancing readability.

I kindly ask to exclude this change from the series, it is unrelated to
the support of a new platform in CAMSS driver.

Please send it separately and rebased on the current state of CAMSS
source code.

> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 159 ++++++++++++++--------
>   1 file changed, 105 insertions(+), 54 deletions(-)

--
Best wishes,
Vladimir

