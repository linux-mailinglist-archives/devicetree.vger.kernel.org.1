Return-Path: <devicetree+bounces-140703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D354A1B0EE
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 08:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EE7B188F8AD
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 07:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1671DB128;
	Fri, 24 Jan 2025 07:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pTK62dgd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53371D9A54
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 07:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737703772; cv=none; b=UZ8D82lnmL//SIcX8L5BvXTmh2YLDO6S1w7tsJlZWdoRoQS1mrVGGzxvWrj8XH/ClPRUofjiS0PH4Kp356NCwB0kYCuBnYxYvet8cl1vmk+U4adnmuNUnfVIHLqEUtruLKDxoIpLi7wrYTo1Ebaj9Pqzb7etObuT8cwRVQMVrE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737703772; c=relaxed/simple;
	bh=q7Fi3/0mHBsmLrdImLubh2UpmYzy/sUBxLRa28tP8gM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XBE3FmOmfTr8A7X62Q32rf4/k+N77FjKzmI8SOkn6o6oT3uqisVF4ld5B4yGYzfo/GJAW9lKmUYaORpxgiljIrX/eWcz6QXtPuri8Qzx9AiN3lmKY6KcE2W6zu1IqrgglReWgBZ99PgTXoG0qinOkwSE08jyEouI8zK8VsWRlyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pTK62dgd; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aaec61d0f65so394966666b.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 23:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737703769; x=1738308569; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BFRWQAnQKD0cOeCdNKHeHeJi/NQ7F6aLdvoRMADeNDY=;
        b=pTK62dgdjW1FhZsQ87Z96vriiBPHhDnfEFep952pADYWkkVE0Iq01dPVrr46eUYAIv
         dunk4kBxO29qTfucLB4L7CottFJJKaJMeQa4Ispc349jvxkhc8wpcKKI/oEUk36snTcm
         5HUgwAgFLxlNXvIr/Hq80pC43Gun3zuN9QyZXPUv0t+bOKeuafvR0QjGIlK8FStBw/ED
         mcs1kmKRLvESRN+ufwjNUjnVDXH5CMkOcbaf9y1GUV2tFCSYi7KIZJT9Or/vZY0nIHx4
         zXPgxRAWihTE2jeBkqV7QPw2kpkmeUnRFy+rphJrlbt1GUUxpifBMSDYEfI3H5dKAs1L
         w+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737703769; x=1738308569;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BFRWQAnQKD0cOeCdNKHeHeJi/NQ7F6aLdvoRMADeNDY=;
        b=vOBNmXibvCoHDzYpBw/SJQDWijXF0oW5P8RPlk9C8TFKs/N7canNYq6NyxnhQd4XQp
         3WchrIcNVSMFfe8papBTvWoTYW0KZMdmY5I8mgZH6XCMTbHZ//rikDOpVrtrQLvakBKD
         N5l6JdfBeFXWkcQPjzhDMgDdf8WUIFR0qdtvBqwXIi4196kzRUeEoiM54cSGzo/ksan/
         Pzh707imyTg6IHActLsU6ck/B2l+1+GW0zh+tnEaqEhkl8kfg8mh9Dbua4qvR+vN1QDb
         6lGXJDGkSOFDUQlZWKw4+DjFvkFw0w66Ng6WKfLFIAz1qw9bInwH/hFZNPTzlxVX+HTP
         PRAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcus5VFCyEh/zaB83GyCdWVaZAg5T5500N3bXpnOLQYOUIY5S+7XfWaSAeuadi7rXd5WopWdFBPcA+@vger.kernel.org
X-Gm-Message-State: AOJu0YxC/bkA7EryBrqbHwmzqEihJbJNaOJYpJ+gNN74SIq8V2axrJEO
	ViA9BJ8455dG+gn60vFi8K6fd8d105cUQMFjXboIRqBK6/B5juZng5ueKLdkxYU=
X-Gm-Gg: ASbGncvR/bXrkV25FD37xFpNsNnynsKPM1innOWewtVqz+x4DPjfSWiqVyt0UH8O5cx
	h3wrF+lHyhP5Uk4MDi81tOJ+V0FqsqLocPFD9TPZ7jTcoWSBMu/kHBhlDLDBwds4am8N+lPyUp3
	443ej6K5fHXFUmmsDddaxvrKF0M2JpjONk9+Kvru1691N4I+5nrDXAG23UpU1sl8A3y8AIna24L
	/Xjp6DrrR2ZBxmratUx0b33R4HUGR6LgOfPDUElQKx856786mYgdDAQB8OSOKi/cFzyP1vowF5h
	wYbSDYbXOKwwBg==
X-Google-Smtp-Source: AGHT+IGlO8IurKfAUaDFQ9yj+nNACZ22XTZ7n6MTCnWo3Z3sqwo54Pz73RTpqelSGI+/3LK+XKZGdg==
X-Received: by 2002:a17:906:f598:b0:aa6:4a5b:b729 with SMTP id a640c23a62f3a-ab38b1bbeacmr3032453266b.33.1737703768986;
        Thu, 23 Jan 2025 23:29:28 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.251])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc18618362sm770232a12.14.2025.01.23.23.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 23:29:28 -0800 (PST)
Message-ID: <6057f88e-e690-44fb-b70f-97347f9decab@linaro.org>
Date: Fri, 24 Jan 2025 07:29:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: dma: convert atmel-dma.txt to YAML
To: Charan Pedumuru <charan.pedumuru@microchip.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Durai Manickam KR <durai.manickamkr@microchip.com>
References: <20250123-dma-v1-1-054f1a77e733@microchip.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250123-dma-v1-1-054f1a77e733@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/23/25 9:28 AM, Charan Pedumuru wrote:
> +maintainers:
> +  - Ludovic Desroches <ludovic.desroches@microchip.com>
> +  - Tudor Ambarus <tudor.ambarus@linaro.org>

If sending v3, please drop me from the maintainers list.

Thanks,
ta

