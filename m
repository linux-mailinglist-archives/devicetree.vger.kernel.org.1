Return-Path: <devicetree+bounces-45895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F058986736E
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AAFB0B282D4
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B4F1F606;
	Mon, 26 Feb 2024 11:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VzbbdnIW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462524F5FD
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 11:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708947338; cv=none; b=b7dCgc/WrQY98gN18esUA7OTo6t9Rs6MmiiCsWvbuSDTQqqkafEIDnto3/8A2906bKQWwA0U+zKPaqKHNW6GkrSvWu7jgSJ4agpDaJCbgNpTY83ZM+e9zdJeqsrAwd964MXijpEKmJUp2ESQNTk8NxQmY8hRCNXYWL5TxIBjPFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708947338; c=relaxed/simple;
	bh=i/hdAmu6t1Ml+j/U/nDxql1yoCVssf5P3sS4Em+sWm0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ru5YE+Sje8OY5ZAt1JctnMqlz8zhqChv7SiE7FFewLQ240doQZJjA+dFfDq4s7B+UxXINkhY7nDS2YJ9WUiNkg5RySa9EXCdkWgHuhTps7EThkIK7M8sQrfHWryi6qcirofp0eJowDJc6rXVj+C3hX5DcPrAU0cK6wTfANriWRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VzbbdnIW; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-512bd533be0so3416585e87.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 03:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708947331; x=1709552131; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n+PDmnMcx2E4H6tTbbAzzJaam4Tww5sulGgIzBdFP5s=;
        b=VzbbdnIWLXxKyDFlHPrQ5UPlig8l0FfxWVLGoDNL9E7L5kDriIKWFjOrvATeGXAk62
         FOJFlOHB0TwZCRM1gUASn7JbCfXUkKlb1tLiC2KXPo2jBN/eO/D8C6BSCG358hME6/g0
         R55ZgJD5z5bbcyGTxK/9orLHHhM3KbPytCtfvbdxa9LhRFbPEbatK38TyzdcYjaLYhUX
         hUQ8ivnrYR7RPyYS4oCQajeg+Pc8z/cxt5Q9dOR/NIMH0p6rip/NLtL7kfjEPD+ShJFR
         4L/ysRKhFDAKJCGF8tdAKE9WYcpNPShEI4DQJBrNIjnI9DCZa5i68ppyBJYXlIc81j/a
         KRvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708947331; x=1709552131;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+PDmnMcx2E4H6tTbbAzzJaam4Tww5sulGgIzBdFP5s=;
        b=QTnX3ndX1b4Zr99epj3jXlahjZ0g26l9ZCIKBX7wvWEjThyjuYWLrEWf8t3bzOj05S
         EE21XSey4a0pgh/N5nAzyXFBLl1gLaci1kBVYshjj6Cf92qwoCfHu+nPyhcE3ix7C8IY
         fg7R5SfX4bWQiV9dAobKI2axkzVyUqw/l368He2Bwnt86GFhg7gUMDP5CTuX4UtHRsAV
         as+eEJfGaag+iW9DWFHvzLhmXF6cJ2U7b0eKrUJg4IWzUTurJRVy73+5Yw4SLT/pKzBI
         TlwyAtpxaOB+ZnftNHI2HyxaQaa9CQmzbv9TY+ydDim8UvRDiyuiadjj0Cjb5jgHU6Ze
         uKjg==
X-Forwarded-Encrypted: i=1; AJvYcCVeb9qgGFNve//E9eaaezFKnCvUwYbs9HFmbqWua90dP3GiJnzTWp5MHu33AsoYAd9lADMVJyy9OWfAjLmkupr/uyKfKc3yG0EaFA==
X-Gm-Message-State: AOJu0Yz878BJ7chGh4AjnVmamY82rbDQiWleolvIVUPXdAnGSjypklv1
	UJWcLzzZIbML7FP8rRFBMF5LnS7/GDmeMjd+95QP4wE3mQltVKWoDGvZRr/icIM=
X-Google-Smtp-Source: AGHT+IG6hBua31Lkk7zG5j8gnRUqY7L6TmjRI6k1IFOXz0KJbTMk57PONrIyMZ+B6NNW1gG8CniM8A==
X-Received: by 2002:a05:6512:2c91:b0:512:b438:baba with SMTP id dw17-20020a0565122c9100b00512b438babamr5068882lfb.28.1708947330556;
        Mon, 26 Feb 2024 03:35:30 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id y1-20020a05600c20c100b00411a595d56bsm7842964wmm.14.2024.02.26.03.35.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 03:35:30 -0800 (PST)
Message-ID: <2d589f9d-d60f-4fb4-aca9-697798b52ab8@baylibre.com>
Date: Mon, 26 Feb 2024 12:35:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/14] mfd: tps6594: add regmap config in match data
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org
References: <20240223093701.66034-1-bhargav.r@ltts.com>
 <20240223093701.66034-4-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240223093701.66034-4-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/23/24 10:36, Bhargav Raviprakash wrote:
> Introduces a new struct tps6594_match_data. This struct
> holds fields for chip id and regmap config. Using this
> struct in of_device_id data field.
> This helps in adding support for TPS65224 PMIC.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>   drivers/mfd/tps6594-i2c.c   | 24 ++++++++++++++++--------
>   drivers/mfd/tps6594-spi.c   | 24 ++++++++++++++++--------
>   include/linux/mfd/tps6594.h | 11 +++++++++++
>   3 files changed, 43 insertions(+), 16 deletions(-)

For the next version of the series, you can use more chars for each line
of the commit message (the length is not limited to 56 :-) ). That said,

Acked-by: Julien Panis <jpanis@baylibre.com>


