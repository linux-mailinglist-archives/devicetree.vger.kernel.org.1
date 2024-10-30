Return-Path: <devicetree+bounces-117463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5509B6604
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 15:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43BF3282428
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 14:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2711F4298;
	Wed, 30 Oct 2024 14:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OMupvtV7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58CE1F4285
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 14:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730298750; cv=none; b=VfhE61ACIY8siSnssd84e6H+PLzJ4xi9tqx6SwRzMa4KDcMYQ6WPY/pUonqDPUlGgYTLoHIWIRS/bTPdstCXetvp1XtZdm3U/IzfFZgNPtSLJtHOLmvrIPtZEOoOkZWK50/32zShjU6TZjKNWZevWvNm0xbIVauzDzHogGQogMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730298750; c=relaxed/simple;
	bh=SGT2AIkoRmj7H5+Uq/8vMaBtkCRayM23+SR3bZUMwus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CgNXU74zxrz2PAwBWTO+CnwAmMNUEbf3Aczvgs01TRlzxF3+v5JEEjThr4Yb1nLsrnhmqTr2Zv6EHW+HTRC71V76pw4h2vjSoWRxs0H1Vl3onZcZzbUKnv3kHMmZO5hBOrHs3SgxMW0VkY6skSqECalABk6+r7WBukr7EelOjqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OMupvtV7; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5ebc349204cso3545667eaf.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 07:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730298747; x=1730903547; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EO8e1nRgxnqufLQ6d2cN8DPEeVmYd+WDTeF7P9l0cFQ=;
        b=OMupvtV7OqVm2T/nNecC7hEzLIUp6A3CEx4/+gpJZX7srai5vQbLskqxqCJWVRKimz
         YYt+7gtTM6pl2GR3qDp9WuS+/bacm4+SODUhOvGLOzE7oblrY5IG2jVzdTHLebUqi0kP
         Q84hT2v0amONRw1zC1MD6aHOfnx2TZJZx7Hz8A17EWo5yvgtKGJip7kDvSVhPOeqhJW0
         288BuiRfACCcPH/6vifRkWXso1NctGEuJJV4yiDlmqMdIxLe/idxCFijLc3RhlWmrx8b
         DmoGvQ0NDECS9qA8sbJsznwRn2+FvMwWMFRXyrVcCgcAAOJur/1EAIH/smDCHBy56cVS
         PRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730298747; x=1730903547;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EO8e1nRgxnqufLQ6d2cN8DPEeVmYd+WDTeF7P9l0cFQ=;
        b=V0zWXZi0U7m8aMVb4+X6mdhiEhdX1PjBzg1ymuLXF/zZf+/O7BPHa/jKN6HJV4fgKP
         y7Ur0SWhmcIEyTMBcT5A6eD7HVva62U1K7GHhbYS1tdfoztR07rYUSfWMr9qO7T4tX8e
         uEkKVhSeBN2K78cdaVdc2BE0rcn3jgPjTW+32DVy5hd2xkuRth2sTX0DIzjClNvkbhWh
         JpTkiKGa7LpTHNvHqwXZ3P/3psSlZPCxK7eGjbgS11WhbfUTMktDJSA4QR17p3n+Jtri
         Cd6ycgkyObnErEJ4Is3qOcjJq56XFwyEcsz55d5TEp71Xez/OE4alMdtbkwrEFOIa0Dv
         MhCg==
X-Forwarded-Encrypted: i=1; AJvYcCXRMFzrFO1crf58muokNTpDwPz2Lr0nJPIMU1TxsJmWTikSCRWqzCEOghZp1ida+/20c4hJ7xFiO4d4@vger.kernel.org
X-Gm-Message-State: AOJu0YyPE+ghWlvibRnr8zGmz6IFBtqxkZLM0KFG/IQYqb+jN1Y/eObS
	dLhwBc6/92L6Gp/m/1OWTNKZ/CN8Qqnf4LSlExhwU43QyUsUTiR1GOFlC93eir0=
X-Google-Smtp-Source: AGHT+IFgChmc5MXJ9o3G/rmPEWmG7iNApA4OCV8tb1mZxdLLEWfHEgUK622U7JMkqFFaF0MofAwR3w==
X-Received: by 2002:a05:6820:168e:b0:5eb:85ee:2cbd with SMTP id 006d021491bc7-5ec23a03f23mr10985838eaf.6.1730298746911;
        Wed, 30 Oct 2024 07:32:26 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec186fc10bsm2802631eaf.37.2024.10.30.07.32.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 07:32:25 -0700 (PDT)
Message-ID: <78073c49-899a-4646-a834-6d5006d59501@baylibre.com>
Date: Wed, 30 Oct 2024 09:32:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] ad7380: add adaq4370-4 and adaq4380-4 support
To: Julien Stephan <jstephan@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20241030-ad7380-add-adaq4380-4-support-v4-0-864ff02babae@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241030-ad7380-add-adaq4380-4-support-v4-0-864ff02babae@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/30/24 8:44 AM, Julien Stephan wrote:
> Hello,
> 
> This series add support for adaq4370-4 (2MSPS) and adaq4380-4 (4MSPS)
> which are quad-channel precision data acquisition signal chain μModule
> solutions compatible with the ad738x family, with the following differences:
> 
Reviewed-by: David Lechner <dlechner@baylibre.com>


