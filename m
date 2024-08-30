Return-Path: <devicetree+bounces-98271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF08965992
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:10:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C521A1F224A8
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18BDD1667F1;
	Fri, 30 Aug 2024 08:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iJH07Lwc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97947158A37
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725005417; cv=none; b=saDc3JhnEvo6ylsttf6R0BDcC77k5cl5x2uId5VTt6DxWimGgERW5DP36naEHNycvSoB1rcuteCv+P87Ss/69acOyLAnUr6LPZIxc+4hb5r5t3R28rt1Cu+P9m+oZLKEP18UHvukNpIQWnuWmLHW+vFRkktDtwH9GMNFklDKi0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725005417; c=relaxed/simple;
	bh=O586LEmPjPX2HiPnhS5pv8/gtaBBHNlXFpbm4jWmWSU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tHRymkPZ8tFVQoO4rv3RE6fdX5hNVgNrO9xYGvkc7ScdoRff6iY7q47LJssURch1jKhsXG10kjNA2tk0w+m2ksUSULFdKHkS1FQnMM/qxB+9yTkdJ8BYB1gwqXiKpWmBKzAlxrKKQsWF6l2XITboabsQ2gX4Rtvpa17vTdcB/AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iJH07Lwc; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42bbd0a40faso2099315e9.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725005412; x=1725610212; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Css1DS/twF3J6CTksvvGFwq/UDTMQRJ6E1Ahqfi3MtM=;
        b=iJH07LwcLVXLpvxAzNhck3hkQubEQvzOSRSn3IpArrDpEPVuTKQLOzAgQBx+9LJQeB
         8+udVi9TEGAYChM+J3eGXf/S3R4/sDvC5n/T+yhh8SRjTO23oQ+CusOK5Qvk2ACaaAwh
         EgKc81Aml0bjvh5aTDysbVl9imtNZqEpXiEZby6zudn8l7DvpYrGd4KiuMv2Ak7fI87a
         mqM21+UMH68l+O+EeSLmB5f4X7sRYm3sOCCxaJCcuHqvTLDp5CFob2TMXcOgQMZeI/0L
         8baltIaJWB945VyIREc5j+Im4KCM+eyIsFkWTRnjjpIoEu1CKsD+quOIWKXFHq4IHryM
         HnnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725005412; x=1725610212;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Css1DS/twF3J6CTksvvGFwq/UDTMQRJ6E1Ahqfi3MtM=;
        b=L28+8RvHxQJxMV3PjRWvaFMUQwaDv2dmxxabwjv97zQNSIobkedSGdx16xuqFgLmpQ
         Cn6JLJqMTI6b/iE4bJRL37ZaE4DMoRQH4fkY2M1x/p3Vm9C8QL65Tu5FuA7UB3ci+Fdw
         ngwxwxy37lcPXhdkJoLrU1ZOmH5BFhF0JirVBLAAiT/fW64Rg+Ksm7/BbRJDI2jstlAY
         PP0BsIeVvYjw0wAYcfFTXy8Z5QP3pUwpadRKEbiL372z/qxJLJh9Xwz9/Mq7uVkVAJsS
         xrrOyXElkFxtTjF8IUD0C55iAJCv9PqWHdqW0weIciuF39Fd1LZPVFBymPjrkIVfOsYF
         on0Q==
X-Forwarded-Encrypted: i=1; AJvYcCV7Aw7nuxZoHkbIEWBaASdoJBd4dWDsaVHzBt3oPlj8m/TueXmJ4uzbvrH38cmWbusciyrmnGqOaX63@vger.kernel.org
X-Gm-Message-State: AOJu0YwkFKGR+eSQOn0SPu6N0b8kmR1pu5XN4prZBzOwLKObfUjuXOer
	6Cga08WPFAWR2f73hxCzm7uvVbcWUuj5gmId2HU6HacIBXbyv3eDTYoWAKk6Tzc=
X-Google-Smtp-Source: AGHT+IH8H5uUNTbFEsKnYUdKRjBzDDZGcrGLT+W24BeFBC1OCMxsf8Ey3WOHr8h+hmPJhmnT5iK/wg==
X-Received: by 2002:a05:600c:3b8e:b0:42b:a9d7:93 with SMTP id 5b1f17b1804b1-42bb032c82cmr45411815e9.28.1725005411476;
        Fri, 30 Aug 2024 01:10:11 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:90cb:5cec:cfdf:966f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bbd46b60bsm4808145e9.1.2024.08.30.01.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 01:10:10 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: xianwei.zhao@amlogic.com,  Michael Turquette <mturquette@baylibre.com>,
  Stephen Boyd <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  Chuan Liu <chuan.liu@amlogic.com>,  Kevin Hilman
 <khilman@baylibre.com>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>,  linux-amlogic@lists.infradead.org,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/3] dt-bindings: clock: fix C3 PLL input parameter
In-Reply-To: <0e74dbc8-88ed-43db-95ef-0fe55d92091d@linaro.org> (Neil
	Armstrong's message of "Fri, 30 Aug 2024 10:00:38 +0200")
References: <20240830-c3_add_node-v4-0-b56c0511e9dc@amlogic.com>
	<20240830-c3_add_node-v4-1-b56c0511e9dc@amlogic.com>
	<0e74dbc8-88ed-43db-95ef-0fe55d92091d@linaro.org>
Date: Fri, 30 Aug 2024 10:10:10 +0200
Message-ID: <1jplpqsa71.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 30 Aug 2024 at 10:00, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> Hi Jerome,
>
> On 30/08/2024 07:26, Xianwei Zhao via B4 Relay wrote:
>> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>> Add C3 PLL controller input clock parameters "fix".
>> The clock named "fix" was initially implemented in PLL clock controller
>> driver. However, some registers required secure zone access, so we moved
>> it to the secure zone (BL31) and accessed it through SCMI. Since the PLL
>> clock driver needs to use this clock, the "fix" clock is used as an input
>> source. We updated the driver but forgot to modify the binding accordingly,
>> so we are adding it here.
>> It is an ABI break but on a new and immature platform. Noboby could
>> really
>> use that platform at this stage, so nothing is going to break on anyone
>> really.
>> Fixes: 0e6be855a96d ("dt-bindings: clock: add Amlogic C3 PLL clock
>> controller")
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>> ---
>>   Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml | 7 +++++--
>
> So you mind if I take this one via my arm64-dt tree ?

There is no conflicting change in my tree so it's fine, yes.

>
> Neil
>
> <snip>

-- 
Jerome

