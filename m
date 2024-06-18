Return-Path: <devicetree+bounces-76966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C69490CAE8
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8A1E1F236FB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11E4152DED;
	Tue, 18 Jun 2024 11:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KW1i0k9q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E69152786
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 11:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718711771; cv=none; b=VgUhYps3vt5zrp/IqEN+/9wL9xNmLhjFJKH9SCvx747zCyCpUDN4mJP9VgakgubbBszsuKxyTrl+yjfmV+GwMMEUxj3GISFVxdIuQM9PN6ScnKLwyOBTHKfCzDcVFGkEc3kNe98C/a5kWwpeoRIOy59lbOqzSzcdtjFDyVLi9cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718711771; c=relaxed/simple;
	bh=jpPEB/6YZTPYLy3RYj7LOJsKZCfOADwF3vloVsYeags=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cAR0I9L4d8DlMYYeVZV3Fu/27kBxLlIYZ+LBIpGEcqwO+8veFJx5+eS3jF2wKaEkj7DTvplxe9sa+3OMsyvMmVugguvFBITv/GJPEbqAjZ4KRMXMYE/v/krI42fgwiMkaMswtLFS38IpEy4zZy0DsH26aRO0NG88XFlWjs2lbFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KW1i0k9q; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52cc148159dso1274855e87.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 04:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718711768; x=1719316568; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mq75lZPvciVQwZ7mi6K5o2q0ASdayZBfX3qCcW8QAuE=;
        b=KW1i0k9qj0DskKaCd1uV1Dlm3Ignkxrap9uKQr1wHBUc6iiPcmYL4bQAjj1qoJJmk0
         c6F4rsmFO2rpCbPJimWUuw3b/2paE4eA1VjbNXnPDQtPl4UwRx8hltyorbVoKUQsJR0F
         F5N3l6JCZdON/lrLnQnFxr0O+AuQGi8nW6B9hLXQ6JGfv+hcEBf2OZMcsrJEc17WwShE
         VhQOy856Ii6Jj0/DukJJ1KLdp3cD2uqKrRQKt6tJwm9VfyxAihYjcScdd3RsBApNUT1Y
         kEjNdXJ7LfXm4prHCAVvJRbmRTzOuEaRYWPLFINadyXml5OMfkCXffUwg0hqUf08wYw+
         5Vig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718711768; x=1719316568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mq75lZPvciVQwZ7mi6K5o2q0ASdayZBfX3qCcW8QAuE=;
        b=vm+er27pnFVaaaHmI3XrVQHqBe5lSB8P6X1sTIFE2j8zIm8G7RYYtjJxDqEyYztusx
         Gc0f6OutdD4GbcqIf4ZUSkHSFV4vcgXqbHv4sei5jkulTMWNDaO1WX/qbfLhTKZqdAfE
         ihL7pnkwl5titvFMt06P622DTYTLrnatj+43QFyYuDNt3dRVdlEKQ0Vd2P6PjyiuRZnE
         Gc96WlkyKEUiWY7ZAz8WbfJtanu2a3ZsEj3T6YRvgdSqCGGUJ/sbVGGddb0Jen6RMo6X
         DDTS654vymKQK3KgB/g/GyNTEmD3ydv6ACK2Zcj3yuBXpq6dHBNOl5thgTImTpXQbcGr
         tsKw==
X-Forwarded-Encrypted: i=1; AJvYcCXvlx1xD2eINLB2UcJ6M+JcOi8539FnFuXJhCLW2U69t5dnGxO2iFiAoI4yWMajxknloPQgL1HaNeLFAVWd4F6wgRNQ5uTYwRxDvg==
X-Gm-Message-State: AOJu0YzYS+eNSyL+jXtyDCJZ1tl1ZNEkau8bwCir7uykdgT2ZlvoRxSb
	V2I2oxG6JA2YFVbPCIdoC64+IAmw8x29WR7HVlrnD1X3sJm9o8MGI/4ZMsESHkE=
X-Google-Smtp-Source: AGHT+IEYh8t5Lf/IT2gzYEj9aUFut5HJwk0C+UH8HgqmpV5pG3oPCZTtmSV1TDxS2pKMtIogxvp+lQ==
X-Received: by 2002:a05:6512:3b93:b0:52c:8206:b986 with SMTP id 2adb3069b0e04-52cb621b577mr6055207e87.56.1718711767941;
        Tue, 18 Jun 2024 04:56:07 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca28870f5sm1487968e87.249.2024.06.18.04.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 04:56:07 -0700 (PDT)
Message-ID: <c807a7c6-ac17-454d-9a99-1a221038774e@linaro.org>
Date: Tue, 18 Jun 2024 13:56:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] arm64: dts: qcom: c630: Add Embedded Controller
 node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Nikita Travkin <nikita@trvn.ru>
References: <20240614-yoga-ec-driver-v7-0-9f0b9b40ae76@linaro.org>
 <20240614-yoga-ec-driver-v7-6-9f0b9b40ae76@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240614-yoga-ec-driver-v7-6-9f0b9b40ae76@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/14/24 01:43, Dmitry Baryshkov wrote:
> From: Bjorn Andersson <andersson@kernel.org>
> 
> The Embedded Controller in the Lenovo Yoga C630 is accessible on &i2c1
> and provides battery and adapter status, as well as altmode
> notifications for the second USB Type-C port.
> 
> Add a definition for the EC.
> 
> Signed-off-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

