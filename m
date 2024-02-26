Return-Path: <devicetree+bounces-45894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D03F88672C3
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D37C2839BC
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C5C1CFB6;
	Mon, 26 Feb 2024 11:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XnSjorZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A311CFAD
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 11:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708946109; cv=none; b=YjTMlsfLpQZmUQxpYDYLi+zi51GxZWFR4iZTsj1yS4PB+CLIcadNCgXoEHlaqGqZm62YDnKsLD5UOnmOAI0HAdRdgrDMzVPH48r61dTdEgq/U2cmQFW5I3EOYJQIuKRiBADg9vjnQlFhqHzBNP/9td/4IvvHXGcc/2bB1X7cOrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708946109; c=relaxed/simple;
	bh=e7sUo5PM0icbMQjDNxn1MNfOtLT/dzaKORRyoAnKynU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YvrYjq4KDvnBYZBQxAUBUVCWVOTylgQMdBh37THHcRstLU5LFxoHzNY4Ky45hkhipnut3eH8sGpowToD9cFVxNBFlJaq3ZofXn0xRId05SQNXC9ferVs3mE6qY1EDTQK0AAX3dQKmWjSncz1Yb6HAfHl8+CGaPSaG6cz8OcrV30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XnSjorZx; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-33d90dfe73cso1975020f8f.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 03:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708946106; x=1709550906; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Px1KTQ85Y2nPIxC9kHHbSuRe1ilouCzdaJwzdUj/bOQ=;
        b=XnSjorZx+W82YZ7d6+uRbPPlKLzVfHnxxGh3wuq8kYIcufBU6cfSJpEM8FY8JRyuGi
         BRy0grr4YeQrUANRWg198Otn7gdxhozyUUvJ9+YnGVdn1FDei2oQXpgpBvKxW4V6cakF
         pZJABd5k3TkMjA/Q+RNvHll2pLXlRBSm5IiMO40PuvPYVVjfgQUIEcgEHr5QASYT6pXx
         gBhggy0NmecMQPWbIUkBE7eOQu0uONQzSjPZQ+WrbDy/LBIGAcSj9zYLT1i7P5uDqtYt
         whu/K3bo1DQ4Kci7TtKzRevbJbyZ0cCpDkJfN+o+USwpPNsbLlRCce9uZ2AwNb2SQUiD
         k3sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708946106; x=1709550906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Px1KTQ85Y2nPIxC9kHHbSuRe1ilouCzdaJwzdUj/bOQ=;
        b=g8zLN8AJVc++45mw1ktv9R4rnivnwLCT57+GthAg9UyoF286mX9DR4Alx8TusCw9m/
         SAMWpR0BJrEjYtJT84XhPgSEZ7mb7QutZ+eChHH1ZOZJdJOohhqLSddbYotJCCdVZyRc
         kVoltlv/qTK/iKwGW9751Rz9YGC6UMik66Vdvvsx/Dn9MWwAuk0hzUR+6v3LlGp79kPX
         2X0bTzApt+0avWjpJiDJbSbZLIxQTMEpmbaHqcZV13LH05KX18nn/A1rx5qqIG1Xz8QK
         rDpOYgl1WKs2NqZ2FXpTUMpy9xSxj7B6FKHmdLxeDeS8IZsU91AylnkOy0y4xZ/9JJy4
         8cjA==
X-Forwarded-Encrypted: i=1; AJvYcCVHxE/KixRpwf4t1NYbxhR0aFm4o+Ms3VTbnay8gQZ3qjuPuiYQjS2/+RFcFmpQ6pqPInOj7Hs8DXx3Jt8FTReOETK31nmOoB8ZtA==
X-Gm-Message-State: AOJu0Yz50qGdDJqzvTyaJ/OD48KplKOBpWY2mXScNVjHhASmMeigmmnZ
	VcMErLxVwDLdezuvpxIsGCk3IMbVI7cldRCIZiFNW2NbCcjj6copoRvM8aOy1z0=
X-Google-Smtp-Source: AGHT+IELMecq+M8n1n9kPpnybwIle6Z82w3bd1zGd7ECsJKlyzFs5xPocXIeBDpdG7puQ4OQmrWflw==
X-Received: by 2002:adf:f303:0:b0:33d:c0c3:fe0a with SMTP id i3-20020adff303000000b0033dc0c3fe0amr5170178wro.0.1708946105822;
        Mon, 26 Feb 2024 03:15:05 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id 26-20020a05600c029a00b004128e903b2csm11584411wmk.39.2024.02.26.03.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 03:15:05 -0800 (PST)
Message-ID: <cc6db3bb-c5c7-45ca-bd75-819887791e16@baylibre.com>
Date: Mon, 26 Feb 2024 12:15:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/14] mfd: tps6594: use volatile_table instead of
 volatile_reg
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org
References: <20240223093701.66034-1-bhargav.r@ltts.com>
 <20240223093701.66034-3-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240223093701.66034-3-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/23/24 10:36, Bhargav Raviprakash wrote:
> In regmap_config use volatile_table instead of volatile_reg.
> This change makes it easier to add support for TPS65224 PMIC.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>   drivers/mfd/tps6594-core.c  | 16 ++++++++++------
>   drivers/mfd/tps6594-i2c.c   |  2 +-
>   drivers/mfd/tps6594-spi.c   |  2 +-
>   include/linux/mfd/tps6594.h |  4 +++-
>   4 files changed, 15 insertions(+), 9 deletions(-)

Acked-by: Julien Panis <jpanis@baylibre.com>


