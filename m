Return-Path: <devicetree+bounces-177669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E073AAB88EE
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 16:09:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A1B6166CD5
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 14:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3DE51AA79C;
	Thu, 15 May 2025 14:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XwhjPNGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010BE1A9B5B
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747318116; cv=none; b=T+VeNIIFKSp87sQ/elk6JNlVrIajkoVf8Y0lmPurSw60Z4Te96Qo2p2vv0mrpkMLOlymnBTahVas+J6u6RKASaftRQf3XMHwQdjpB2F4WNqUIy3levt8QAh6V/VriA7KpEtt/+Gbr8SuX3iOIXlOr7n3SzXmNibATsRxRb5bwkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747318116; c=relaxed/simple;
	bh=3yt0AEfR3Uf1JiVZUnD+b/p2Vyl/QTFKFcIzAJry8J4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=TEa7sd5RVVTciJu2B1GxmR+Pp3MOrvzQ8CT+MqXqqa3UP/2A4F9n5OmERnHWM5UXILr4JopdL0Q7GNwKCpFJQzswl4lrdqAooxote/ykBFOu3rPfd9F5BJD9/DWb2DmVASPu4O9+qNPQQD0mHmUMnb87f32tSQwtNUZXCKCT8NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XwhjPNGq; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3f6dccdcadaso914156b6e.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 07:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747318114; x=1747922914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3yt0AEfR3Uf1JiVZUnD+b/p2Vyl/QTFKFcIzAJry8J4=;
        b=XwhjPNGqjAFNkLvAVhNDaZ32fKZa5HZcHIhKE0cmrBAfPA4pRK5tjvIrEtMvNvUEDo
         P6AQ3+vr3ByClZXmjvqPReWmROr42jtsvG9KMH8YB6XuSGpFPafBw4RUeoOeCloDhQuM
         yCGx36VpLLLxvPhjolCJ5szC+psLzqwtxKqcp/qFrVFd+PLfOcA4kd7j5b/Q6hc07omJ
         UhhtemCeatw/xa9S780VcqwyP450T0Z6dhDtmlbkxhzUnq1UWdCHjYQPV3/5PyVsU0Zq
         Xxt5ZUOZ8hx1sNNPTLTU83dcPXbPbElaTyjSIsIPY2y6AKEG7Wp+e6G4KRmsdLzEuYxQ
         3m3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747318114; x=1747922914;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3yt0AEfR3Uf1JiVZUnD+b/p2Vyl/QTFKFcIzAJry8J4=;
        b=LGUE1rWXFpQbnWyUJEVPzdVVfXJkXeX6CwXS8DKEOag6/IwcZciIa5xzH8MoSznaUy
         F8Vqj05X/2DbMd4u+LDPTwYNJNx5sVh2YOTB68k04L6bmA7l9iZuMFbyXesJBtvMM3wp
         wiD5sHLXValeSTdIuoLAXann9k57COVW9JQ2iHm3FetTsuJ5+rs5d3OFNPsno98rv8ZD
         HqveV3otyAs+todbtACRamqJ83ryFnGex33pvUt+enrpHETr4HLEkxGyoGCTI66naHkh
         gSySx+j++ZO9x7B5CJLH4raqEH1asi0+93bqyf8MYZVbyJSckF8GZU6YCdcFuvREsgGV
         bt+A==
X-Forwarded-Encrypted: i=1; AJvYcCXOlZt/D1WZs8SwGA+6kRZFMqpue+Xjgk9wAVryfbDposc4uiTS5YgiUPW/LO8JJiPfA11hvgZfUcga@vger.kernel.org
X-Gm-Message-State: AOJu0YyYceBl+t7S6Y59xt80rkO5OkXdXkHJ8z30ynRb716ctPVToRlM
	oamduK8uQX5bdSnN+oYmTlRc+QDKclS8R0d6DOqBYyzmsLtSrMupomQUFrshKLg=
X-Gm-Gg: ASbGncveocTpyjeJxWGqXoxLtObo4sYPyxnNLAoGChHPnCYkas0hd3yll32xtpMddzn
	3YIiU5GQZEwQY2+41qmTR/Fkrooq38x1+eTGtv+9dsmdflPzHxbHJW6tLp4IJ0kflAX+A9O+A86
	i7J/3JfPQb/pV+5mbI4boD45P/R7zqdSMBF2VYTNskbyc1n1NQnIGS7LOXWHxARhLe+0Kxkqt6A
	N8N40/TAexCYh0EEJxbejU8vXONg2yFgLE+H65hKRnolTVpSF4fBi3C6MXQyJ8twIwEnx9Vc8XN
	kT7cE/Ouy+1bp4yy1AgZMYJQhYrNby4Evab02BZN/p3hB4ZKgAhEWKE2FijeWLeuCkbReIQpU3Y
	a1aexJmUmGmuiliCyNgeqoBAXFSnN
X-Google-Smtp-Source: AGHT+IF1SnasEdi+GHKBuWfCCIvdgPbVOl4Tdp2E6fwBRj4WEq5pc2cMWGXwhD9B1vkH0OWObnpWCA==
X-Received: by 2002:a05:6808:3198:b0:403:3c87:aa4c with SMTP id 5614622812f47-404c1e6be57mr4631280b6e.0.1747318113918;
        Thu, 15 May 2025 07:08:33 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:bb18:367a:73d3:5230? ([2600:8803:e7e4:1d00:bb18:367a:73d3:5230])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-403802d3100sm2711352b6e.14.2025.05.15.07.08.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 07:08:32 -0700 (PDT)
Message-ID: <59220742-18b1-4704-bb5c-8b79f0099139@baylibre.com>
Date: Thu, 15 May 2025 09:08:30 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings:iio:gyroscope:invensense,itg3200: add binding
From: David Lechner <dlechner@baylibre.com>
To: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nuno.sa@analog.com, andy@kernel.org
Cc: ~lkcamp/patches@lists.sr.ht, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250515002817.81863-1-rodrigo.gobbi.7@gmail.com>
 <81b2a499-1927-4fb3-b581-a533c64507a6@baylibre.com>
Content-Language: en-US
In-Reply-To: <81b2a499-1927-4fb3-b581-a533c64507a6@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/15/25 9:04 AM, David Lechner wrote:
> On 5/14/25 7:21 PM, Rodrigo Gobbi wrote:
>> There is no txt file for it, add yaml for invensense,itg3200 gyroscope.
>>
>> Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
>> ---
>> Added @Jonathan as the maintainer here due a suggestion in a
>> different thread for a different binding file.
>> Created this yaml using the driver probe and comparing with other gyro bindings.
>> Tks and regards.
>> ---

Also just noticed that the IIO mailing list and Jonathan are missing
from the CC. Need to add those to have a chance of this getting picked
up.

