Return-Path: <devicetree+bounces-80835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9F891A816
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 15:40:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A76821F23520
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CC5D1946BA;
	Thu, 27 Jun 2024 13:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g2PDlR/e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812961946A3
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 13:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719495624; cv=none; b=S5eCBNwGjYTRp6nNMv+LQwYaCJ6SSDIbDy683PJFtv0Gps882+UwRLNdF1a1gCyU1bOp/SBtxve0/7RjJJ0i9QWoXT272X1S3dM333LPYe421ncmU7SSxP+Ezv4POIoW8Np7tb1lt9TI9DbvdqQCbJyst66Z/2Bo+9XYvJAKovY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719495624; c=relaxed/simple;
	bh=YQjoWE71wJHg5e7evULqHMKNEuwe/qoxbFFD8G1C2XA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YsBM1haPscGebT5+gQIkviff6YmPZ9t4P8VrXuM75kAD3G496yCP2weiSsww255JWRoaTdmPHmiTW7X8KUdO++X/1F4xm9c/DX/94RP63OiSxt8EuU5kK1ULB3uHiX0E433/fvRnxGoFGq9Y69FGw1VOP+E0s8Pw+1Kcwewrtg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g2PDlR/e; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a725a918edaso438117766b.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 06:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719495621; x=1720100421; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Tg4WQuBaAQWsbQ6UarqVTpDckI/+WmD4Yv7HmJSrRng=;
        b=g2PDlR/etBZM1OgA729xtc6Q1c9YUzmcD1i2G0/nWfKn2TPhzSFcgZuVYJO9NlpRIT
         GICNl4kqhzhgny5O+8ZCj4vyBDbkrxnjcA3szmUYwcUgdlBN128PJY9rtoIQTZoCx1yr
         TUhJ4SOBuM3kHkE3eb7CTEPq0tuuxnIP4jr6WwbdL7kYClSddYz67WcdpU89feLVyG9t
         qYxKOR1CGnfw6XJxUIKgtPU3qspcFfbjNmJMEeQVh2zY5dd3mr/52aq38i9IniRVDTT6
         I/BYMZ0mbsXohmOZfgS2VyEpyJaIbo2dmx61VVhh5PmqgoMiE/E370j8mJh9JNK0UYGN
         7vuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719495621; x=1720100421;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tg4WQuBaAQWsbQ6UarqVTpDckI/+WmD4Yv7HmJSrRng=;
        b=ffb7fyhCDUMTk5Tq26LkRljxu+AcNgO8RCaq3yGT29YD/VT1i8IuwjXylYr6jaKStR
         +M7QhA4ADOvvG9UqWXmFujc7KD/mR0DIL1uETjrsXpShvtCbgfliG1U0t3vU+QRay9nU
         5uUZprK7lPTKAh2a2u4p7U4q+gm2jAWvVGF5tPfO0Y0HCWYh3I3QAXpa7pD9nLIrivWd
         sN90ZCsxKVbYvG7D5gAYr+oRmz3Ca/ZlgkHmzY0QJyCTcosgV02HIcFMX/qRqkcfHj1P
         1I/G5HIpP6Bx6VUoPbIOsn8PaeLpeng/eDjynXnjSpKilsI33berlzRaIYnJaOjav9jL
         gBNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAyuzmk/VOT40V+5POqec5sTwAfW2d0LHom5tgB7erOI1MjTFDxx/qNkCexGqyVU/E93vrNybNdN1obMfLkyEPFUGWqha3faXAbA==
X-Gm-Message-State: AOJu0Yxft9WMDlL02tj6+H/7xSFw0bzNMFf2UMAenC18JTL4635b1ALd
	BszeTn5zmAsYGw5VL9MHoaAuhJwx3lPr+X7tF4A+CZ1fUyOEKoBAshWyik7JRv4=
X-Google-Smtp-Source: AGHT+IHNjL73vpuomjAfGoxz81hCIhpJNHWk/a4YpoD1Q7p7U4UbeJ/5CCl2nRvlWAywJXkPLzBNcw==
X-Received: by 2002:a17:907:d403:b0:a72:554d:829c with SMTP id a640c23a62f3a-a72554d8597mr1082566166b.3.1719495620676;
        Thu, 27 Jun 2024 06:40:20 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a729d58dc6asm62323866b.0.2024.06.27.06.40.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 06:40:20 -0700 (PDT)
Message-ID: <5b6d00ba-366e-43a9-913e-589b22fccd3c@linaro.org>
Date: Thu, 27 Jun 2024 15:40:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8650-mtp: add port mapping to
 speakers
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240627-topic-sm8650-upstream-was-port-mapping-v1-0-4700bcc2489a@linaro.org>
 <20240627-topic-sm8650-upstream-was-port-mapping-v1-2-4700bcc2489a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240627-topic-sm8650-upstream-was-port-mapping-v1-2-4700bcc2489a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27.06.2024 2:57 PM, Neil Armstrong wrote:
> Add appropriate mappings of Soundwire ports of WSA8845 speaker
> to correctly map the Speaker ports to the WSA macro ports.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

