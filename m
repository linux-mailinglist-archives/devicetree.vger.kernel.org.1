Return-Path: <devicetree+bounces-30277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2331B827385
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 16:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 490041C22638
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 15:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C651851C36;
	Mon,  8 Jan 2024 15:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i8r9Y8Gh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8869B51032
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 15:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-680496bc3aaso12224356d6.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 07:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704728207; x=1705333007; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jBaWBCELdQDCiINd0412kAHTBmS2ucp0dmDPH4Uxpys=;
        b=i8r9Y8GhblDlA8C0HFbwpeNF4EoAKV/d5CygpvHbbndNf/cHBbokiR+Q5eyjdwfBHE
         m8pV8yYDjxzE2FZQHAb/0FhWovWLso4MfNanYO5e3ZP50YIpt+I43hFyuxFbLef+WQMt
         U5N8xVoQdla5uhw7QirAimz4IFgqkz6RjOBYJ6/gf78PUM6XE3srQ27zsCNY6u7Y5Tyl
         R343YYlr5yw9sWA+niOjalrthuU8rbz3dVQcwu3g1Tee0UVno9nHzNHY+Ect/v1HkYGL
         6hA+dRrgl8m2VaJkYu49K9iaBZAGjKHzy2lXYwGNkjVEIcuArM74H2Mz4uVDdw9Ey0Q8
         897w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704728207; x=1705333007;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jBaWBCELdQDCiINd0412kAHTBmS2ucp0dmDPH4Uxpys=;
        b=agjKs+ualIzMCxQ0QozSu+mUP4+PIO549ZoUSkdO4WSRVWCS5FZZKwH+jFv7bZo9X2
         Hl5bSsVfhhxr83A8HFPScoc/ez5QBb4NqLLzUTfzM3fwFWGOKLsxv4ZcYE9j7bXUtILY
         OHgtpey4KuwzFIFGGz7b10HupcnUbizkyQeyqHbptffkPtcOp8sGvTkAdTlE38mBXkO9
         QXf36lbbvVWgik/hfNWrG/FsUnnPRvijmqbGSy3+4W/JYON6tn8sTq6mvwkx4ZVZM+UT
         YiBDI685FYQQTj4CkE+R3pYqs0bVEo6oRUD4QxaF+T+lpLERFBvZv9SO1Mug3Rt+1re/
         tQ0g==
X-Gm-Message-State: AOJu0Yy3SVM/+Mr4JVqi9UkFt4NLGeMQ3UgtBrsWPdpLX7izEF0jQ1A2
	EnvzfpqlBVfeJu6S2qo2fVE+3oLTpPkVPZb1L0TjG3CgddsZHA==
X-Google-Smtp-Source: AGHT+IH863p9DTyUG3cXWcw7QQe6quuJOFyZtJC1s1k1mesk2Eh6/H960ZPZ7GBdSUYoxKfwC2OmpJHMrbTKpMHrU9k=
X-Received: by 2002:ad4:4ea5:0:b0:680:ce74:9523 with SMTP id
 ed5-20020ad44ea5000000b00680ce749523mr4727352qvb.54.1704728207402; Mon, 08
 Jan 2024 07:36:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231228125805.661725-1-tudor.ambarus@linaro.org> <20231228125805.661725-10-tudor.ambarus@linaro.org>
In-Reply-To: <20231228125805.661725-10-tudor.ambarus@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 8 Jan 2024 15:36:36 +0000
Message-ID: <CADrjBPrYkqzHQDw8aj_=cGBdrWv-j9DfnxqpswjMM+kavis0PQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/12] arm64: dts: exynos: gs101: enable cmu-peric0
 clock controller
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, conor+dt@kernel.org, 
	andi.shyti@kernel.org, alim.akhtar@samsung.com, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, arnd@arndb.de, semen.protsenko@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Thu, 28 Dec 2023 at 12:58, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> Enable the cmu-peric0 clock controller. It feeds USI and I3c.
>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

