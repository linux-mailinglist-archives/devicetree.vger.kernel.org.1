Return-Path: <devicetree+bounces-196174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D58B04521
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 18:12:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D936717C399
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5811725EFBF;
	Mon, 14 Jul 2025 16:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oKK4RAHI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0D125E471
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 16:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752509549; cv=none; b=TcppntFOFz+mDV4GpncGqfH6QwFIDzP2b8JhhVhAPamub51js2nldIoBZR1EiZIuIaA0vZp5dRckXj4VlMIIcUDOzyTLxyLj5oq/wisaRdLbFTW6utFRYlSe/x5YR22wa8ANT415/5QLGfbIcYAR76CF9406XKScLBqN9Xjv6/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752509549; c=relaxed/simple;
	bh=Ud5cVeqCrhSqByxBQEPlGgrKvjboJ0YYy+W542jSiCA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B79E61cyj77r4YPGbIR8ZEP0Mr4Fkc2BIW+f9hcQxTgbRfRrzQA76vF+Bkr5ZZy/QPkY5c1J6SbPhC6M4Bkle9CfeKhESOZmTwkEl3x/sIN80rmQoQ0buJDIlWyJ2yg7ETqvv0Uw6zh3gxNEMFL3GbPCWSo9HjagZD0y0a79yBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oKK4RAHI; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3b45edf2303so3890490f8f.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752509545; x=1753114345; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wzg/M3LkGVFpt8ELQhzn2f3Sv5jfT0EMwgEqK6jhlaQ=;
        b=oKK4RAHI/c2qGbAdUDrRmQYB4lEciQUuRRPKFDT0Gyf3eRGykwEsQy5y1l3/L3oio1
         ro9Y43ncK/+ojdNT7pUVDu+xVsrmSOiexmJx6Sj0UdC34rGYVLlgxwuUwU5dQ9kyeE/q
         NkXpATrnJzi6LvCpONOim/Dpx00IVE5mQ7bZoId8kNNAouUbtbwKp1zRzUaqezGQFger
         gzGgDzht+9Ko0x4gUdWIl2IU3nDnTidYbWucfrSmgm4fQw+03pgriJk9v8qxm8RN+kOS
         Q9RW+Qc8+bLWdKrIvJrzyIIBB90PDQ18d1Ny+lX9T8hcrFVz6sEmrVH/XZmtygJ/RRvw
         nbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752509545; x=1753114345;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wzg/M3LkGVFpt8ELQhzn2f3Sv5jfT0EMwgEqK6jhlaQ=;
        b=C+hMjCOfvmAnHDVcUCRwmlmeRhCNcwq/jaTa/3HTuh/S+PN7mZSFVe+BanRplnw9AN
         q62FtHZgNNt3TrjMEUiTDUd8NmV7jcFZ/PL1wRK3w6kgl4/7NMev4yuwbR/IbVZ0plQz
         60XhYmElIWrCvxgdX3uq/dMmpsawFccDHufKat27xMuYNmofdWfvC1Wk8q67C3WswiE4
         1mkSJXjxNB49OCOUu+q+WQXV7pPmFB7X258ZooR05//+ieiiOpo/VU+h83DE/HKVboHN
         //Wm0NkkTMsTh0qV+GJ3XkEXkrmqWVPr1NG6NGxeTJ/ECADLgWLZw9an2l3QnO8pPh9+
         3B1w==
X-Forwarded-Encrypted: i=1; AJvYcCUgww/hRbGhpDJEdeII+kGDg5ny1Frb1hcy2JO9O+k95QSIuFxQvYeWYj3lz7lyPg0VUIQZeRfpfvfg@vger.kernel.org
X-Gm-Message-State: AOJu0YxDrh+0Bu2Y0+YdkuAc/ttFocTfpFzRvdxHan4a8g8GMtqH+qvO
	EGqp6SjX5mp98X66oT6bID+iY3mHI7HTnfgLFQQ5lvrjv44SqN00d8JHxhu9GOpOhvc=
X-Gm-Gg: ASbGncv8BgjMXcIcAEZ/d1mSQm4Z+kWAD4TTZp9FuJpE/ze8C3KIRi0q43VzxjcwYsV
	JWQhYRMPkm9XlyGpCo3DYWFRIwm8l5i2BIGYc+c0hKWJuItFsng+Bs2fjzzLDn3n/Ape/T37lI9
	NwPiUZLOX27s6jLStxjJs6pDUK7wwXius5qyhBy/fGbmn65IRdoBtpBdVflDEDzpQbFYHm0pwvu
	o/OdZbMnR8hc85QG3e7No3Eu2/J5GG6lskC9TeZlrWhJIhj8oiRFaNvSoL9QYQPGaLVWRQkijNQ
	BrVwSXnjt2hIPFp3BHKWv746wqK5h5vjaY7kcF5684nr/wUQ6NuEcD8KQF8VHMELXNebZdObHj9
	0Rp88mjjlx0E0af1O3UfI/sG4U3p2tc2IymOEC7+UGnQ7t1ABnyBpDDRfsvCP0qQz58/SsMPfPj
	vxqlPaOg==
X-Google-Smtp-Source: AGHT+IFVO69NK6TLVDV9V9ARXGldGhKQ7IorXlDR8Y5hpNvYSeqRuAaCbC3iULGdQkY9+PrDjKAl7g==
X-Received: by 2002:a05:6000:2181:b0:3a5:52cc:5e29 with SMTP id ffacd0b85a97d-3b5f18565a3mr10560074f8f.7.1752509545082;
        Mon, 14 Jul 2025 09:12:25 -0700 (PDT)
Received: from ?IPV6:2a0d:e487:151f:275b:ea0c:492a:7f48:847e? ([2a0d:e487:151f:275b:ea0c:492a:7f48:847e])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc1fd7sm12606620f8f.26.2025.07.14.09.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 09:12:24 -0700 (PDT)
Message-ID: <ee1dd7e4-c34d-4c94-ab44-b2425adad4e5@linaro.org>
Date: Mon, 14 Jul 2025 18:12:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] dt-bindings: timer: fsl,ftm-timer: use items for
 reg
To: Frank Li <Frank.li@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Animesh Agarwal <animeshagarwal28@gmail.com>,
 "open list:CLOCKSOURCE, CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Cc: imx@lists.linux.dev
References: <20250523141437.533643-1-Frank.Li@nxp.com>
 <aHUhLSDQ/vdrg3hX@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aHUhLSDQ/vdrg3hX@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/14/25 17:24, Frank Li wrote:
> On Fri, May 23, 2025 at 10:14:37AM -0400, Frank Li wrote:
>> The original txt binding doc is:
>>    reg : Specifies base physical address and size of the register sets for
>>          the clock event device and clock source device.
>>
>> And existed dts provide two reg MMIO spaces. So change to use items to
>> descript reg property.
>>
>> Update examples.
>>
>> Fixes: 8fc30d8f8e86 ("dt-bindings: timer: fsl,ftm-timer: Convert to dtschema")
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> 
> Daniel Lezcano Or Rob
> 
> Krzysztof Kozlowski already reviewed. Could you place pick this one?


Yes



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

