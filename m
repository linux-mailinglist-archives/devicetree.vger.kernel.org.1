Return-Path: <devicetree+bounces-156306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7A0A5A572
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 22:01:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B0AA7A5C49
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 21:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75E851DF72F;
	Mon, 10 Mar 2025 21:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gD4So5IK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DFD1C5F1B
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 21:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741640510; cv=none; b=hGeeEuhcp3160fw9xMlnDWLHcCqpZzpmIIzUgSJx7jKpDBmJJefjphHUA/1CAAIqiRRIGC85M8Bjl89KpsJ7hlOSrjM93k5brrsMEKYn7j26C0mZE/zFtgf1KIfICixCMDQhXFYQYNKwK+UULIS7c98GIqqv1V2PgTwRMedjNF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741640510; c=relaxed/simple;
	bh=uvl+tCTSBkpkA1JocRjArWmG37T36+NIL9cpQh3h/7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B57/ig3ektUCQhNf63WaNye9xh3+H0yXxOqtMVfLJgXvR8LAp3kjyVJwEJmlUufAEBcCeHgKyQ9qDAvnZr9aMbMcFNmKNb+bCcyJ09HVFv73RgnQGXG/WRcD1YVs52zOjAkjMDxGKttxaCD7DWZJJiPoIthmQ1WD8S8+P7D8D4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gD4So5IK; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7275bc6638bso905315a34.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741640506; x=1742245306; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mh6NBQiJXATQe2dlTg58r4IHLGmkgQvhFuYRHTx4JoI=;
        b=gD4So5IKpAvy5uKSGrhX3CF1MhN8VeXjcQST/2NIsihABLxIdspg/Dwd+gIw5xw1y0
         CJgrkqqYjLvpIlr5VrwOxkttdw5iAl2uEUJEARU4K6xUgi/CIp7DqlZfenA0HHPiAYYK
         utQXzq0EH3UmTzBi5KpZgzjr6V4FDyd7UP7SaKvoYhemwnLPiI61QSqMLJcSAnFAVI6u
         P1KvqD3SHTrxglYPOUpB2KcLmXB+gald9DA/8UZSKhrN03/QEzvZ2SmDmOtU3jCAYm58
         OMIme8YOUnhptFlyAO4qH3SErcyIYF63Jd2yRUnQadTdHu+pE5+AuDtclfVhkpR9MrUN
         PW4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741640506; x=1742245306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mh6NBQiJXATQe2dlTg58r4IHLGmkgQvhFuYRHTx4JoI=;
        b=P/k/jakpVqjdGon6nXaX9/pDngp134ypCgZRVXkhys/JT6bt9UFay1lzO66+h0F/qT
         hKFJPv6bpJlQ7pBsvxJQnnDWBBdxH9LNau/V/I9pTPwC1PpvNNhjmBl7otW8Syt3ECO3
         Rsp7/Wv4MDJ3E3gI+suJMybLboEG0aJHzB23KYeU9Ew51+UbRa0OFjgj7e+YMMTTJSVZ
         gwAumGGUvmblIFfqUQnJ607vPxpKKsZBfswjMKY6WQmo1/5FCG15FrTOY8rpeGNsV/sZ
         IwkwkvBgpok7X0ZmmOOrnS8zDTrE+aNYDQ10apDA7oV30EJGrrb7QK4PIrG5nmKBvH45
         8Bzw==
X-Forwarded-Encrypted: i=1; AJvYcCV/O+T8pGU/xi8Ldvbp3JwqOuulOejhst7lSqtavqZbs+LF3xTldNmOT52rLXxe+j/qr28MtM0etVMV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1rp2BcgHcjC97GVXmvY7QHAOskPKVBpoSAJO2+/vykDZ6onvB
	fK5C5e8/ufcxGOItbUQQxkyxIcE8snIhWtSPFPt2GsuHpUplKgb9fobtqj/0vIs=
X-Gm-Gg: ASbGnctQLXW4OUJpRZ2NVINszaeUqw9dQbjDIUsF1VOhMjP83H5bSu3qle4+zUWYH7F
	sEdoqpZU2BNC9yWu7RY67pY7hqb+SvKJQnaQZjqLQgYHDPRcXDNsFg+W0O1Tg8PbmDOviuOB72d
	/Ag+C+dVkLtZOoDatdPli7G7MBjtkt/xDV4+USYO1eQv934bAX2jUtkyxc35fVoV2mEA/dU4Hmm
	QDAkBHt5Bxpe866pnivpMq5hdgrvpktKqoME011v0eRLecIAq9rOA3ljH23doM5CnCrJhP/PPGR
	Bs2kP7ozk4pUaSbnUQGJedWhTk0V53fZu5DSoDwqVPQy1FGfnCjs4OdqxxkSzAK6bSfl0akz8mo
	gLyafh4pmqXHLFQgJ
X-Google-Smtp-Source: AGHT+IFws383NJzGNKMTduW7VFs/LhYVCds9An+PWkBfwPQGP9vDAELOMSUsERr+wmmRotC7x4j6MQ==
X-Received: by 2002:a05:6830:6a8d:b0:72a:11aa:6ebd with SMTP id 46e09a7af769-72a37c771c2mr8328040a34.23.1741640506456;
        Mon, 10 Mar 2025 14:01:46 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72a7c926001sm1298993a34.32.2025.03.10.14.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 14:01:46 -0700 (PDT)
Message-ID: <3fa4136e-b384-4c3b-a58d-773887b87552@baylibre.com>
Date: Mon, 10 Mar 2025 16:01:45 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add support for AD7191
To: Alisa-Dariana Roman <alisadariana@gmail.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 "Rob Herring (Arm)" <robh@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Ramona Gradinariu <ramona.bolboaca13@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
References: <20250228141327.262488-1-alisa.roman@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250228141327.262488-1-alisa.roman@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/28/25 8:05 AM, Alisa-Dariana Roman wrote:
> 

Probably too late...

Reviewed-by: David Lechner<dlechner@baylibre.com>


