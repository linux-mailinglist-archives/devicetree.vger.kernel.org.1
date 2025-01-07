Return-Path: <devicetree+bounces-136340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF88A04DAE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:39:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C17AA7A259D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA3B1EF09E;
	Tue,  7 Jan 2025 23:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LSC53ugx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62E71E9B0C
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293170; cv=none; b=b7eyPy4f1LkIfY9DtC8r5OKJnttC5yPN07pSLbFss6jujSsGtl2Wi2yLfn3lX3mEsonhbJA65lO25iu4b9gitkMzQdB1/9uVKlE3wC+wOY+dXwUHhwJe/5Ur7IPCR+vo4w9RdUZ2Fn22uPwAPoVpDADxLP/8N2LWlVRqttSvwcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293170; c=relaxed/simple;
	bh=FSV9Z5hx4Z1dGvFGaSVdGoaHslLzkpvoMYIjvjlDIz0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tL0RmS4ymFpU0KcJTKYG06jW/deGBvUIhVtgKyIqavnTmO7tnUcJewux1FllE7ibec5rD1Icrc/HAxCJ0wkbgXp9KzAIkUZW66Kp37y7y4I//RwAK0a4PqUQ0+AziZtlUa/nCAoSqKsX1DXgAZgOutJn/yNmO6KZH8r8fM44qqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LSC53ugx; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-71e287897ceso11165245a34.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736293167; x=1736897967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kAQHiQqSouPrkvzwP1M1BN23WdXiYODfQljxHvZJVpM=;
        b=LSC53ugxfm30XZiNjWPxkha8b2DtjwBb4zLJlt/HeqwTUL8UAMi1el5fjzRhk9Nx9m
         rkZ8lfNUDT1BctvM+koNyVpd1q8iHE++orgzNTtb2EHRnxV4XuEtvGf9qqzXOGCazFJ5
         KQof5Hiym/PV2iHqecMZweI1yiMah+wGSJ0goMqs+02H5uudTxdDO98tA1MpAIcwUnP6
         EJ8sAbCfwcddJI8FY7z794JZq6uludFVYhW1fAsqKS3IByByhpBfw42FZY8S9Bloes/c
         B2m0WvT4BuQ8aeDODSY/z58huUuP/8V422Fr7tqHsm2iTxfuAKFU2y4v2egNXbfGgbJ1
         b9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736293167; x=1736897967;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kAQHiQqSouPrkvzwP1M1BN23WdXiYODfQljxHvZJVpM=;
        b=ZmMiIvOgnbYDdGsXUYYvtnH3+Oz1aDx5e1JienJuKQFlePyeEjOCJdu5SnWU7zyRBG
         oOATIVZ/ds/PWtqHsP+gXQ2mqEa+FhFRbxxK0taNq9bTMAxdD1Ui56+pwABCLGjmo7sH
         g+8TwcIXoxU/ERQTXvJvdQq4jMYtn5fCKK77aEoMXJ8yqvAgkXZQW9XH8gWk+53C3JCP
         vwbzBI5fUZjQuIj+68xkFB6LM+4QM0X0gDLjKLslwtJOxVfh52D18b+9stkRYo6doE4f
         9/beCiluRbpFspnJSRLkvKZ6YpqfkcGQKH12XebsBs9JlQ94EnEaFZefbSBF2vCQ5Lfp
         HlaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPbvla5g1fHvTiiNVw9XHkRaA20A1/wcJ7VBCQuYoncZacVRJfXKD1OMUWNvawh+Gk+ANcdZc0oTES@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr+vHf5hJV5j9SfdnlN88RiN2fNpVXpw2XjZ2nhJLyl1SQDGg6
	nigJNyR8333KOfmOALClFcr2oFoXKG20X+qCldKpp5vYoPYwnYI+pSD+IU/By+k=
X-Gm-Gg: ASbGncuqCRWsk5D9OajB27KJrVKiXM+dg9qOULGx5OwXMQ8/cmx7zzzAAYN2ZwQr5Sx
	RbcXKraPZlS4Cnz68LkTS5XIhqpjoN7aKvu1esUnu7fkBAwsLFxLK8WoXuXiSUsvrC+PFmhzBh7
	WGl3PXIU1N/VgjGRys+uNK9lTJIfFqqF7N7nTRpCS2FYFgdh417SVAnErk6rn4BlF+zUeqZS8qY
	UlNStWlPLZo33BK7EJ5QuYkH4Db/9hqS5Fnj3/SJkfKW6X8WKpWlsKTEw3Idk4o+oYgfhdxKFI3
	/vZgfZILquVRvuMhcA==
X-Google-Smtp-Source: AGHT+IEOj8KZeV0uki/W4ZvDbZRrzQA7rnv4j1WMYyJAcEJHaCprcG7dhx8f+/AWKtyu41ZXIsgnBg==
X-Received: by 2002:a05:6830:601a:b0:717:d558:ca70 with SMTP id 46e09a7af769-721e2e306e6mr537190a34.7.1736293167033;
        Tue, 07 Jan 2025 15:39:27 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc9764170sm11099389a34.3.2025.01.07.15.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:39:25 -0800 (PST)
Message-ID: <a466ef57-a4be-4175-b17f-872712354dbf@baylibre.com>
Date: Tue, 7 Jan 2025 17:39:24 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 04/15] iio: adc: ad7768-1: Fix conversion result sign
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <e521bb5cb60d413edbcd1ea582fd81073218eaf5.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <e521bb5cb60d413edbcd1ea582fd81073218eaf5.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:25 AM, Jonathan Santos wrote:
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> 
> The ad7768-1 is a fully differential ADC, meaning that the voltage
> conversion result is a signed value. Since the value is a 24 bit one,
> stored in a 32 bit variable, the sign should be extended in order to get
> the correct representation.
> 
> Also the channel description has been updated to signed representation,
> to match the ADC specifications.
> 
> Fixes: a5f8c7da3dbe ("iio: adc: Add AD7768-1 ADC basic support")
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


