Return-Path: <devicetree+bounces-135746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CD8A01FF9
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 08:36:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DD8D18848B8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 07:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2A61D61A1;
	Mon,  6 Jan 2025 07:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h1OeZB2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B811922F9
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 07:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736149001; cv=none; b=odap+NMadc9bm9VaSDaEl1Dx/vrjX0vBpg04XF1xC3I3eCRgT85aDVvt51eOS+NZgQylQKp7HaPtgo336E47LgjBuCpBb5XzOjDP3Y06NND4u6YaIwcSD6gDZvjycwTodCQt2PIiavPB+GoC9EjQa6dKRfr223gYE9aMR4cqKik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736149001; c=relaxed/simple;
	bh=GJJnKeyq0AyCBYfSfuuFWtq4NCpFzu0b937iGTQC/yk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kNOO5LbaSTKXdcAQY8ojM44PQ94GBNsZTlint7Q4bck0bcR36O6+KCv1sxwlYOSPH+vPAWsvkeN9P/qBs081sinRb3sD6psCr/Rf3BuEj1VXd/um8W0bViaSJv/uQVkOPG9WyuVcYtOQ9kUPnTIjp+cBmLrH9yiMV5WiuhTNGgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h1OeZB2b; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436202dd730so100284795e9.2
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 23:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736148998; x=1736753798; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XuH/NxHgypHXTjjjbglqsSTpq7IdJAHxtTHnjuWbs8w=;
        b=h1OeZB2b3rnPJobtwXyvNNBIE/G+skB9YVld3FJd980fgaVqm+mfdyeuH0xwggRxxf
         /mYC81x4XyiHLZ8CugEOlc34YoHedrOGnlgMuHtHSLEJ5qaz4gaU+1xzxIZ8VwszFxtt
         5f0vLqX3LnM2kPMFBNDU6S37vSBj8RCJnjFNoy1igzPD6x8aDqIp97kt4R3cer9GWwAS
         yPRF9CPmaSwkNJm5+8yo5gGa2EaQk0Ex68tx93PxQKGsGA5FI2Ny5zqfs4qP+vLqaSwF
         9wq/3yTV0FcyEiX/lXDF2pAwUIN3acTNmEfXwm3PnhiYvTV/XU7Y3N0ytD5vRHlONqTI
         lHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736148998; x=1736753798;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XuH/NxHgypHXTjjjbglqsSTpq7IdJAHxtTHnjuWbs8w=;
        b=Rx8Cztcivv3OaHa36mQ5voo9YhZuuNwvupMC6IhyvBaFLzs65alsWyGMSV4XQhhrsT
         9SrbfchdH9jLlOQRdQuzVS3L89NvVBJDgQ3L0VtpLAsF/FGk0ntfIYsLu8h4fvIZxpCH
         Rp1wIiyRd2vUY/oEQzYD35u/CFXkwOpH7JCYS8lB5fyQa7trYO6zdEwOt6VL9bza9OOG
         J6jbMCRMCjfFDdjsK8bpGgpw7GmgjyhwdhCg0vhTrr0mJkGLE7lJtJOzI2T/L3rFrVN3
         FVErPGjmWqGGSFHt5reh3F8ClMhczWUz+TcMI8sN8V28Icou84TqFLuXFymafQtZ2UnK
         K/YQ==
X-Gm-Message-State: AOJu0Yz9VCwmpC1p58doglvitjf9idd2DkGT/0Ay9pFj6AMWmMznL7CO
	bw3Xj8k0sX05IpaO5T39sB/M0FotxDSw8MJs8h2PoJgOZOfNp0SMx28jxfkFEMc=
X-Gm-Gg: ASbGncsvq9UZcs8W27Zur3mGgq1eEHLIxQBc8SuZVUiy+QsQe3jHs/wpmG05K8z1Koq
	bVku5IgnidIKR7BGof3YjFZ+fMk9AI9J+0UVG13GJ5m1/UPC8qCBUKqxUsPN5CKswBE0eENECvu
	/MhGmhS4v0fcUAG2bvXL+e1mKBsz3me+hOcBL2FWAyOolYbZMZX9fPJZEOPURmE5a1LopSPoNBi
	W6zX1w9JSEVhv+fTi6j4paZ7s+hn6V/hnpqsurJc2i9k02lhL5UVXgEQqM0UNx4
X-Google-Smtp-Source: AGHT+IFQI0rLosE0iSZMKHi92uLdrnY3vwPRxWC4Uk5UIaHJ/DUMhfH+TpjawDUP/rxJQinNEwLVnw==
X-Received: by 2002:a05:600c:1549:b0:436:1c0c:bfb6 with SMTP id 5b1f17b1804b1-43668b78cd4mr451383175e9.27.1736148998319;
        Sun, 05 Jan 2025 23:36:38 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436612899f0sm560190565e9.38.2025.01.05.23.36.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jan 2025 23:36:37 -0800 (PST)
Message-ID: <f0702bdb-846e-4817-a76c-5ce17dea38c8@linaro.org>
Date: Mon, 6 Jan 2025 07:36:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: soc: samsung: usi: replace USI_V2 in
 constants with USI_MODE
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250105160346.418829-1-ivo.ivanov.ivanov1@gmail.com>
 <20250105160346.418829-2-ivo.ivanov.ivanov1@gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250105160346.418829-2-ivo.ivanov.ivanov1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hiya,

On 1/5/25 4:03 PM, Ivaylo Ivanov wrote:
> +#define USI_MODE_NONE		0
> +#define USI_MODE_UART		1
> +#define USI_MODE_SPI		2
> +#define USI_MODE_I2C		3

USI_CONFIG register refers to the protocol selection with USI_I2C,
USI_SPI, USI_UART. How about getting rid of the MODE from the name?

Cheers,
ta

