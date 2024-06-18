Return-Path: <devicetree+bounces-76963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B095F90CADE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33EC81F21C6C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BF5B14900B;
	Tue, 18 Jun 2024 11:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rqbhC4hf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B0E1487EC
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 11:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718711642; cv=none; b=cgDj/Z4lBlpSWVfMYDc4a516BbfbaO9uzo1htIWTkNpXvZnQsmdGQMKx6bwX7Mjh40v5po+LkwtivIMeppz9CmVNmFMHU094mmojK1Sn7OQMm6vD/xRti7gktR3YLSzuXpsb4nKSs42/fBU5FrV1mboEde5nVCwP5YzTBe1jlmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718711642; c=relaxed/simple;
	bh=B5uTvNOzDIfP+9r55UmyGlGOEn/VaHyTyNKLYbpEPY4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rqxN4X6bhyJ8U+v8I5CXuO2k3BiiJ+XmJVLL+tvwZskKWYzknBPrXvcuc6JEWjy+XDRghNkwWGPa/7kyB6wAUcKrjuggTENlWmRCtzg/0RHWTInxHSRBVscu6ewNlZFaVQsIDf5VQJHUH194tk3Poc+a9Jtg4IYO7SAAD5XVTdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rqbhC4hf; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52c525257feso6909813e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 04:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718711639; x=1719316439; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tb4Y+tgvYIekmwgd2j/b166JURC40YeXenLXo1ek4Io=;
        b=rqbhC4hfUJHA6iziWG/S/IhE5ziSLaAf5hAku1dnt+ZTzzkKipD05SyM+zLSWcBO1E
         dHNN/gryVT4N0RncWGAwpHz/Ci+HJLx3ItkVBVgoSdVgB9FD8MbFRf1dj/fjH5GXCTk0
         OJtzJdHSpfJrgiAv7Px7w+86E3MNuI+oTHmqT9RwhMX/BWu9UfSswNIKP0IAwF5O5wNE
         eZ8HD1H5d35k49t0NcTP5Rzp7YuQDhyAN27bz8l9TjymkXFseANlfZ9Hhzpj6lI30LtB
         QrKyyqQGbS3n7hWSeu+MW331f3Kph1KWnoAD3pRHvS9OFckgHmSDnpdm0HbtsbAaQDB5
         AtWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718711639; x=1719316439;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tb4Y+tgvYIekmwgd2j/b166JURC40YeXenLXo1ek4Io=;
        b=UWaBZok9GPbgIbNNnZVWSQ/yFcardbRBJciPxUqGvmWa3dru/MOurXTmbn0X6VzqlH
         F2sAWZoTdO8pZdoBQJdDj5FV0cJsW1oMU/JWPiEatCSFCemIbupp5CCEmYHjbYBMxvV4
         gsUW3h22/ekqOjdBtVzsTE/Le0yiE6O5KVjv1HdW8d+L0KI2UC4Lsau4GLZSCgdM+vpV
         s2f+0LUNQkGZjbbUaHZOJJNRPfGFewpjJsCHtb4VpoYw0e7d6hz6c3ZELNTj7m9to6b7
         rVTbZI1DxqFOjDOdTGHuHVcQZq6cLds2FQhykz0K5UEfKKr8xxoaSNobnHi0fN+ZADvE
         Y9Sw==
X-Forwarded-Encrypted: i=1; AJvYcCV5B/cNcGvV9rduY5fN2yde/oLSQmJC4fckVN7+16IChJWk5FIB8hcu/wKMjee532LwF1RSwjHP4eQyByJnJIBmJf4M16xrnCguqw==
X-Gm-Message-State: AOJu0Yx7OzZfQ9mt+5CjTnUP5rZ8/VReknpwknPPlvBVvSbzkTZ8u7ET
	G/GE/vTgHaEgHc96NQai7Du/bFoVfgklm02B5ayosVGcU4MYSIOxFELCqyVS8d0=
X-Google-Smtp-Source: AGHT+IEm2lPBaiFzDJTF0bUUyOHM9kY5vHY1/j588hgq3qPc6kUxcMPDuRk4JmYqiTnOUP6eqQBGtA==
X-Received: by 2002:a05:6512:3995:b0:52c:a809:62ef with SMTP id 2adb3069b0e04-52ca809636fmr8462175e87.0.1718711638986;
        Tue, 18 Jun 2024 04:53:58 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca28880d5sm1488372e87.254.2024.06.18.04.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 04:53:58 -0700 (PDT)
Message-ID: <5d415130-f744-49c3-be8f-4d2b32618544@linaro.org>
Date: Tue, 18 Jun 2024 13:53:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] ARM: dts: qcom: msm8926-motorola-peregrine: Add
 accelerometer, magnetometer, regulator
To: git@apitzsch.eu, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20240617-peregrine-v2-0-c8835d2da7af@apitzsch.eu>
 <20240617-peregrine-v2-1-c8835d2da7af@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240617-peregrine-v2-1-c8835d2da7af@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 6/17/24 23:22, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> Add the accelerometer, magnetometer and regulator that are present on
> the Motorola Moto G 4G (2013) device.
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

