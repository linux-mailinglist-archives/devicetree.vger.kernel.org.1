Return-Path: <devicetree+bounces-221480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BF78CBA02AD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:14:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ABF1D4E3764
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616E22F4A09;
	Thu, 25 Sep 2025 15:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NOS89OB8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CDE2E2DE4
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758812879; cv=none; b=sCLGLVPsMabiRWa06Ks0TS55oCMa5e1Jo6CkIqPH8xCEvRdgkFUo7BbC+OGyuTjpCTu1k3UpOMSbmRNu2YpZ9F4+7SoP8ltFmNMzD2KFmhnU5tzLCFDPQwXFQst5pbpGDVJTbhGhO7flFNqUlaEOzxxPoQF4HPp1ZMsC7sGhGPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758812879; c=relaxed/simple;
	bh=PwfgS4qfIfkc+imXtu/sSZXrBqwExZR+rgZwO0IBYGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hfayII6m+az2yIKUCTB26196ia9qnlglr0OJqWIk+z6vben3LEpVQiNPe1vUEbOw8lrjptraemGzIYOjVRMGVAb7eXUO7ylsla7/gL+xqcOjHufizfc1ZpYCAUMBJrX8drPUtngzikzA6/Wl/hJggHzLHU5Em/aIfXvzOFnashk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NOS89OB8; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-76e4fc419a9so1233647b3a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758812877; x=1759417677; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jE5cIH8mYsDicp+BwKdnhTTJHAMEhvsJen2js1pJiH8=;
        b=NOS89OB8QhgwX7LkwleAPOmUqR7YMHjWOMKiWPH4Xrg2/5PNpKvgPqvK8fbjkBK2+R
         3ty/DNv/6qItYt0g5KH2hC7swFJa2orXFscTjT+11NqJfp4tiORGHloMCrhQOpK2TX+g
         vpTlsfvylAWX8BNr3EbMxCDma37slkMJr6APSAA/N2ud5/g8rvJdauOEe7prdR0H9it2
         NseZ89Ia3w3M/ElW9RwCAZYToE+6p6pqIUjxDkPjZiJKdzQAU8+QA5Lm+xTlPhSvp7We
         GG3+tI2YAQ8ZpL8yEFE6cJIY5RriJpIQaUD+oZH3t7wC3MfqtLbLhi6KhXyUoVOmXHqV
         SR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758812877; x=1759417677;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jE5cIH8mYsDicp+BwKdnhTTJHAMEhvsJen2js1pJiH8=;
        b=ogK/UKuNDkX+xOrahch4AOF0zMUQVtsPbZAlAO304BwWJTt6sQVurrmcMkie5AlXQI
         LyHo1rOU+1bN3LqziCaBLGb/mCcwmWbcjPzEsemOyEB9sxlzvz0FUo11F5XuGgu+Uj/a
         AFgBeKZJWAWI0P+b5zhtQidJaYjdvGZRkmNaBbJfmbKTFKaw+94uBjJf/SUIyNrIYm67
         ZFjEJl/bgv7YK1HFwo3IS00Evmag/2JcXjvhyDYtK5luX3BkBuhXIE4DiAAgbuW40ITS
         B8oay6yRG+t36OIwinac7Awf9g19z7eYQEdNUR/Tb4PxrumHon/mfkG1A2MbZW9Lips7
         /eRg==
X-Forwarded-Encrypted: i=1; AJvYcCXrcXUOXg0rK5viwn5ZWAU5cPqTXxsTl96WBvFwO81sFTpX394wMDzc98xuaqGPU1zuTW9IpUZePRSD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3olPt2dzZ5RHmZ/MT7HQVRlBmEm9VHTsFuQk+oai4+VnlAqkP
	EEoDW7cQUE2cw2W/4739ZHx2SgB1JtlwB2FNYOaj1vJfOw7mw4TwOjbk
X-Gm-Gg: ASbGncu5VNCC7xDdChVNWF7XTs0+Gs4oL2zvmaJ6rlXPXHhcumMl/3yp66h/iBVOTje
	soIxHhAa63zSRqjMKDHIaHgz1UxaPpkBLXz0cJDMQdlGF3hMH1zqBW3LBZLLyUHGHl/ZOdXiaQ4
	ahTMPCdltLMGinhbiAYjCIak6xgdQpXpxzqLmz1BhBoVELVcxmWPzHHyoh0A3UcdNiUZY0NXC7u
	YITvJEt3E0xRUqJMOjyuc0oGIef490iQMymtht93Fb6JL0h2I2Ubgeq/D2+qQkgx1ZsbE2yS6vi
	hxzcSd5Z/Q+QsVvtgRHnDYOmRV51Nzf7S8G/UWJVNvZkyTevYo2XYJuefUV1Nja9gtiQFbc8v8E
	WdVF73ySFGelbDa5OvSLP/6cP2ENFbHvzMCA=
X-Google-Smtp-Source: AGHT+IHxwbqMwtSUpRB97Nr0rknalbSvu7cUrpdQGoGrEFmAeq73TNUTzNKC1zhtc24Ag7rMTXMpnw==
X-Received: by 2002:a05:6a20:9188:b0:2e0:9b1a:6417 with SMTP id adf61e73a8af0-2e7d37fba87mr4692452637.53.1758812876869;
        Thu, 25 Sep 2025 08:07:56 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cb975sm2506233a12.18.2025.09.25.08.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:07:56 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 25 Sep 2025 08:07:55 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: wenswang@yeah.net
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, corbet@lwn.net, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v2 2/2] hwmon: add MP2925 and MP2929 driver
Message-ID: <ae5ad599-e857-4124-b6a0-61196a763109@roeck-us.net>
References: <20250918080349.1154140-1-wenswang@yeah.net>
 <20250918080603.1154497-1-wenswang@yeah.net>
 <20250918080603.1154497-2-wenswang@yeah.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250918080603.1154497-2-wenswang@yeah.net>

On Thu, Sep 18, 2025 at 04:06:03PM +0800, wenswang@yeah.net wrote:
> From: Wensheng Wang <wenswang@yeah.net>
> 
> Add support for MPS VR mp2925 and mp2929 controller. This driver exposes
> telemetry and limit value readings and writtings.
> 
> Signed-off-by: Wensheng Wang <wenswang@yeah.net>

I'll have to drop this series. Reason:

> --- /dev/null
> +++ b/drivers/hwmon/pmbus/mp2925.c
...
> +
> +static int mp2925_write_word_data(struct i2c_client *client, int page, int reg,
> +				  u16 word)
> +{
> +	int ret;
> +
> +	switch (reg) {
> +	case PMBUS_VIN_OV_FAULT_LIMIT:
> +	case PMBUS_VIN_OV_WARN_LIMIT:
> +	case PMBUS_VIN_UV_WARN_LIMIT:
> +	case PMBUS_VIN_UV_FAULT_LIMIT:
> +		/*
> +		 * The PMBUS_VIN_OV_FAULT_LIMIT, PMBUS_VIN_OV_WARN_LIMIT,
> +		 * PMBUS_VIN_UV_WARN_LIMIT and PMBUS_VIN_UV_FAULT_LIMIT
> +		 * of MP2925 is linear11 format, and the exponent is a
> +		 * constant value(5'b11100)， so the exponent of word
> +		 * parameter should be converted to 5'b11100(0x1C).
> +		 */
> +		ret = pmbus_write_word_data(client, page, reg,
> +					    mp2925_linear_exp_transfer(word, 0x1C));
> +		if (ret < 0)
> +			return ret;
> +		break;
> +	case PMBUS_VOUT_OV_FAULT_LIMIT:
> +	case PMBUS_VOUT_UV_FAULT_LIMIT:
> +		ret = pmbus_write_word_data(client, page, reg,
> +					    (ret & ~GENMASK(11, 0)) |
                                             ^^^

As 0-day rightfully reports, ret is not initialized here. Datasheets for both chips
are not published (actually the chips don't officially exist), so I can not figure out
the expected behavior myself. FWIW, available datasheets suggest that the bits are unused,
so if that is not correct please provide evidence that writing anything but 0 into those
bits is needed.

While at it, please also provide evidence that the chips exist in the first place
and that this is not a "let's see what he accepts" submission.

Guenter

