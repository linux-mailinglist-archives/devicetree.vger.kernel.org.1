Return-Path: <devicetree+bounces-162203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F74A7768C
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:34:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E51B16871E
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 08:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27711EB9F3;
	Tue,  1 Apr 2025 08:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iRwuvUBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6DE1EB5E0
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 08:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743496447; cv=none; b=QJqyMs1ByoTUVWj+obyUXn83UV3ISm271TQIQd6ySJcs705qeZZD8Tv23W8yp2jPoQM+YXyqGyo5EbS3uHqNvfzqrojYbhxHdnro7arIHrsuU5b1qCFpsoiwNyHh9SSCUZS9NcxTK8493Z3PGoIb9yKDWlNGq3DG9jrRV1lrJ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743496447; c=relaxed/simple;
	bh=zVEmiADRpOhBA84swDsGjRBgTLMxVUMfeKqwa9ETpFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o3grJv6JBsk8RzVqe2QhHfQxHNmAwc7PbI2Rx+QCt1uk3+a9yntxdOnihgMCkH41LmbZFpNG2i/f7QCrccQzulbMpi3ayRBrEsazpGBbfSa2lZoB8xr0kyzGemBteAJbX3O4nInwYhlrCo1d2u4U40K1lqV2C4TLKElbToYSzq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iRwuvUBi; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3978ef9a778so323976f8f.0
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 01:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743496444; x=1744101244; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Es91/Fmi3Z5RjbLhOFvYU3nKjRD7ALX9CP22nn9A9Mg=;
        b=iRwuvUBix1e2Lgh/XUJMp5GztbUUMKK1fMrKjJ/3Wl0YsWQ2xFUfRQMH5Lca78j9C2
         th2t3kLnHB2lWPQsGoKwJ4pyQI2Bh0nlp5W66toxu7g2s4qPdlSpVqF7ts++hvzVBcZJ
         0PyGBCr8tCu3azlbJ3r/TX01Phf7EVdcdyqlbbHVQYeUCy8ArPF69ySbtXQ3wmkCyHYl
         bcBOlDY7Y4a6eng8sVOlEXvAY9R2JGTcS8rHLX+dPNB3hOQ32xw+99U8282AeH5b4Zj6
         W3crPoRdp+4iiReJc0RZApo394jLzK7fnBSaXIyQpmg0jeHMMOsQV8uIXpwgs7DRPC7X
         nADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743496444; x=1744101244;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Es91/Fmi3Z5RjbLhOFvYU3nKjRD7ALX9CP22nn9A9Mg=;
        b=xAcJ8S3HItmK6JbIGJt5HmDao51dmIYX1gnhCU2JCHd3g4pzLMox26+dwqHNVURYN/
         YBb3ChwSuWyH5U3WODoRMt8t3dy/56HHY90DkmCI7hP36RZuCTqHFAGeF3FV/iu2nbhz
         FQOgEX+fwlMLuevPBaqMuxz3ZMDzSn2M6QF5uZwzUu8XZJQp2CzaETOinygzWpg5Ux5Q
         sLlzIsE4vF+qKSH7Y3GOHeGYDVouev+2Ur8NbFZudswxwSdCZh0h8nZrb19Gd1TjxXzI
         aIE/C78mgaS0MNKqoDhLXtZyzI3viaxa6R4fe8/EjvZicxSqPtzjRx19Evz6TAaIrMOD
         4D6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMrc3Hy9ElweQIXLhoiXPTJAvgOC44hQ3HOay0hNOAvpc2dKFiISpf4YISURtjbbENkhy+t/C7vS0h@vger.kernel.org
X-Gm-Message-State: AOJu0YyEgqAZ2C6gXDnmmL6fg9UC5UvvtqEKTTqITo9v9V/O/XbmS209
	rkkplC/Gm5MiXiMuVNVi3m4YKUPt9Gw4GPlV+SYMNrqM48fSSf5CfBpmpU/dS9c=
X-Gm-Gg: ASbGncuRy4LIRx7hnCwLSDF03oq2GBZcRJ+WeUwRVDjgRXueOYb9bz4Ym5E3hjvpMN7
	QDpW97qPDgKkOwYHpBNOpqfairEdysfPnI4Qe9asJVkWOmSpjbRAxbEXGla1o8QXb8I7LEuZO0M
	ljTWq8A5Y9Fh3CRG99BQhTG0d/fy13NtIp4yfZorc9DWT0wW4FjkSAYw8c4Sp7h85jBsBVq0A+7
	prJ34CFvFbR0D8m6D8/OZOt1fX9zK/FDE3Cov4jUhGHj/tEy5Nxv35FIMaVwpc4fCcJ8ky9yaYP
	iGyCGXmjVWoIXCRpYX0J5N0NZ3q4FQVkCZJxPmlxWSWO5editsUL8s1tdnLDttA=
X-Google-Smtp-Source: AGHT+IGCGiiiYCIUaLZcb5s98tRnmPNuSHQrGIsm5DOWVPlytR6KcVfUJCMQWo0HpevAIXioEGpZ+g==
X-Received: by 2002:a05:6000:2210:b0:39c:e0b:c621 with SMTP id ffacd0b85a97d-39c246f26e8mr350768f8f.1.1743496444201;
        Tue, 01 Apr 2025 01:34:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d90000f48sm147463665e9.37.2025.04.01.01.34.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 01:34:03 -0700 (PDT)
Message-ID: <abfea9d8-9992-44e6-975e-a18b01753aa5@linaro.org>
Date: Tue, 1 Apr 2025 10:34:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] dt-bindings: display: Add Clockwork CWD686 panel
To: =?UTF-8?B?Q2hhcmxvdHRlIO+/vWxlxYRrZWM=?= <lotte@chir.rs>,
 neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, max@maxfierke.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250401081852.283532-1-lotte@chir.rs>
 <20250401081852.283532-3-lotte@chir.rs>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250401081852.283532-3-lotte@chir.rs>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 01/04/2025 10:18, Charlotte �leńkec wrote:
> From: Max Fierke <max@maxfierke.com>
> 
> The CWD686 is a 6.86" IPS LCD panel used as the primary
> display in the ClockworkPi DevTerm portable (all cores)
> 
> Co-authored-by: Charlotte Deleńkec <lotte@chir.rs>
> Signed-off-by: Charlotte Deleńkec <lotte@chir.rs>
> Signed-off-by: Max Fierke <max@maxfierke.com>

That's not a correct chain. If you co-authored, how can you sign off
before max did?

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Best regards,
Krzysztof

