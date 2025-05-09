Return-Path: <devicetree+bounces-175553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C582AB124B
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:36:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83B281B66664
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E11C27A925;
	Fri,  9 May 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W17HQEZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0445E223702
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746790568; cv=none; b=jr2m1bhk3XJ+McU85CZxtSaGEZI+1EifewwEU80c7wIivCcx1cYSUQ6wrhNj1yKCafF1DsQIQ0bmzzUESV2VLTVDg5HJkOs53HGsPf7hqn2ifT1alssLwtwey7TkXejWZPA80ZKLt2D1iXu371l+65uyc4Y4XNt5C+cFobesQrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746790568; c=relaxed/simple;
	bh=xBU++8c6J4fZ4GQ8du/8VqKT/VdxBXVcSwhpuUJudOI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f1sD/h7Nmo12ftVWr624lTMFgDK6iMvPXBIXNegemmoMS12Wfy8IJa1sUNLga1Z7I6HBM7qGfOAUi89BhlJ3bARMvJUDk0Q9MFWC69ZKkCcopxz4Chi/Om8vonphOEp+Yca+Dw7rOV5Yk8VMv+sWAoMhpas6nPtYF+JvPabXmnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W17HQEZf; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-440668acbf3so726965e9.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746790564; x=1747395364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tPnQGbJY6qzXsG54dxOhAsZfcJwhZhWhqpOSIo2IWUY=;
        b=W17HQEZfKtSyM+JorV5hh8Q+JHQmwajr9KWKaQ5c2PU7SPi46ygPZQ7UGt5rOEP+0w
         26s39da+4ESD2nuTRWFfTRxO0D4yrukmWIu4KR5opDKXJXNVdrFHzuxkMczwPEutqibv
         uy3TAvj/Bk/ZHsvbB4qRYAptifuAjSAj+1Ck1nOL1PfxnqKU1x7oOD/8ORAxtvrB+bCk
         dRPXF0nBiebU691AnEtp/kBWduba5xcs/mK9IYYfB2O1nH+6gl05euiueR9CeMrLUCzy
         E2YDd0EdenCiYE6DpdI4/48oKmed4M755SE7V8UCI4YppXepMo1kES14gkObs3ROixRy
         pu8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746790564; x=1747395364;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tPnQGbJY6qzXsG54dxOhAsZfcJwhZhWhqpOSIo2IWUY=;
        b=FcyYyUTajvCjr+BTFqkCECHzD/n0NzVmV5HepdPVFZn+Qd4DALeYtRqcy771sfriUo
         T/CI6hSJxzRm/Y+pLJxZ3euY8sYyHF6ne2Gic/DEa/Zj3md3gdvERuB4jeMMmhEecSJl
         xb++GZEFUja4Ke6LcSqcM8GUPW+Gd6jyWonuE8+hkdak5yORHLu7U0o+kTjP+AQsaP0t
         npyzEi/aYm5S6Aiytb8ML50BtTKl+3A/aQbkfbRzZbHQ9e+IdOfTkvHfz2iTvJNrYuJ8
         +5KyAeWAdOUvpWg7AW/34kMDAXIKDpTlGIbcpj9d7WZbCsevvacBJq2pxvupXAcbkOxE
         7JyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQqAtcszPKAfCZeH1NNXvz15aT+5ESu/cXc/0+krszj1cXL29YpzeUGEHTX60G94xcCeiKgH7TP+BG@vger.kernel.org
X-Gm-Message-State: AOJu0YwEBPkKUNqLT36FfMfjtK6BMYcTrdN0lKOa2aCz8IeBMvwFvzTQ
	BK0rScr7HNlU7ylyrDcPv1RWzeJ5uXVSKdxXYnFP2PQayhZ1YfKUq4k1L4W5HR0=
X-Gm-Gg: ASbGncvfrX0AzcRWk34S7G+esOOJoKPcFLiE1qf519PvgKiU9rjl3MfZveCxOODyYs6
	HjyFVdVM4hPizqOw6nipXSDiWmIxWOtQ2O/oxb0GOUA6tOIA2W22/AK5HK1oR6ABLq77Y3KfcVg
	QLv4R8U6B8cmFYdZ0oy9xR0Tbnn9qEmFIwpeMWGElTd+ZgbMUblTXK6UD5az5Ae6/9QS3AvjIsc
	RNqa2WzpD/O2ScJcZdxu6s54xNHY5JtqiSYxnqddGTMFdhoMwWKmU5f58hMC0VTWYjUTWgBLwmi
	+k/DlA5KTQph/boHovlBKpTotiMF/Ndi5Kgbe2+f2Tu28dNepVdrW1peCGE=
X-Google-Smtp-Source: AGHT+IEgrPuM7S4VVAaNtLdBoJxKXTA/1M96VqclVtrFn/BtmxjJuTsUGVTrZ8ByY2d+iylVicPD5A==
X-Received: by 2002:a05:600c:5118:b0:439:88bb:d00b with SMTP id 5b1f17b1804b1-442d6dc560cmr7713535e9.5.1746790564255;
        Fri, 09 May 2025 04:36:04 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd32f3c2sm69392795e9.15.2025.05.09.04.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 04:36:03 -0700 (PDT)
Message-ID: <4f7b44f0-128c-4615-96cf-2d9d8bc54cdb@linaro.org>
Date: Fri, 9 May 2025 13:36:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ASPEED: bmc: Add device tree for Meta(Facebook) Clemente
 compute-tray.
To: leo.jt.wang@gmail.com, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, joel@jms.id.au,
 andrew@codeconstruct.com.au, keescook@chromium.org, tony.luck@intel.com,
 gpiccoli@igalia.com, geert+renesas@glider.be, magnus.damm@gmail.com,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, george.kw.lee@fii-foxconn.com,
 leo.jt.wang@fii-foxconn.com
References: <681dc3eb.170a0220.1fd80.c9ce@mx.google.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <681dc3eb.170a0220.1fd80.c9ce@mx.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/05/2025 10:59, leo.jt.wang@gmail.com wrote:
> From: Leo Wang <leo.jt.wang@fii-foxconn.com>
> 
> Signed-off-by: Leo Wang <leo.jt.wang@fii-foxconn.com>

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

You CC-ed an address, which suggests you do not work on mainline kernel
or you do not use get_maintainers.pl/b4/patman. Please rebase and always
work on mainline or start using mentioned tools, so correct addresses
will be used.


...

> +&io_expander13 {
> +	gpio-line-names =
> +		"rmc_en_dc_pwr_on","",
> +		"","",
> +		"","",
> +		"","",
> +		"leak_config_0","leak_config_1",
> +		"leak_config_2","leak_config_3",
> +		"mfg_led_test_mode_l","small_leak_err_inj",
> +		"large_leak_err_inj","";
> +};
> \ No newline at end of file

You have patch warning.

Best regards,
Krzysztof

