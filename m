Return-Path: <devicetree+bounces-254212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE91D15E6E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9D7D3022A87
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 00:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13899188713;
	Tue, 13 Jan 2026 00:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cuHn/xHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D62110785
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768262430; cv=none; b=TfoGIAN/syO0ejjqfXCnvpuVhoOF2IrXbQFqhYs1XsEtmB6Jw+APkV/An57XwZbX3XCBUIFV+spe9gmGzEddw2Is07MPNUr2xCQluHd3eJW7UR09mIbnoVyoUylajZHvI+x0QU+lLATRGIipvqpCxafOEWzYrhn9RGj/zPx1DqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768262430; c=relaxed/simple;
	bh=AB46dIc3yizScZvd1REalZDXMZ+TOT02GcTeNQrT7FM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwSoNmi6X3Hk1N1Q77/RJTRKnr0skd+DW3LQp0NLMc+AhOrqasZm6cjxGhE7RxY1BMwoiz/ZMvf0rS1dHpQZRpudHx8FAYn4uTaqhZAy6egPxPrudg9tvTyTnfJg4pdvqd6SBB3z2beyyuvTIXcv4ufQas3XXOW4eO2n05FF3bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cuHn/xHK; arc=none smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2ae53df0be7so11309347eec.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768262428; x=1768867228; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Ca7ba810N8yfT2a0uOQiRTeHQwK7t+A9fpbfT6p0g0=;
        b=cuHn/xHKC4Fx4u8p+uokujrGx81NZV/+bb6pQWkWRSqwZAyALsS8kAvtzCG/OJGTmS
         F7NuYdac3rRaLWQP3KwQ/Lmrl7Q+lxvuvut+HTOkF+3c3GzGeCE+UYH7gOHE0ZArQmp9
         6TT828npXw3pDvuUBQaMqV9TqNnyfC57kNQqNLzItNRO5uuX5mOk3dFc1RoQO5tQ5kNj
         6L45SPIs3NkL9j6mH58JfwBWQXqm2FcBQPSKinuzhzzKqbiq3pQzAJxwbVNHnMM2bH9Y
         FeuNTEhRK0Z8by42PaQI656LKO78KFAJnePwyI/hl73URfPDyQnziyotrJ22iaAYbUhm
         7zAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768262428; x=1768867228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/Ca7ba810N8yfT2a0uOQiRTeHQwK7t+A9fpbfT6p0g0=;
        b=DtENqz1zEuf9OV7cAYan7SMlTFMs+cRz5virQ+ui/ioQbdOYppfOp/l/MMisVkemqA
         ZD4tbp9ppQSIcvVxqJ/SXzfTQUYro17m6fz9EHgBsAE0xhn58HHoWl9R0Pnc+QhgP8Bh
         bfqZWQU6VJepwPm8rAtzXVacqx5Om2fCL5s9ZA0N1BDNVtT39cS0fOYLS9i8JntX9iRk
         hhOPNLW4blUBWUW95imH4ymV0TxX0T+szMz32e3JFghIXTyhR1lsGQu1ibzJdfwqnoeD
         gssNleRbCRh9EsdprhsLksjRkpKBvj5YjxwEHYcInczSh/Y2C7Xt9dfAdt/+PvV4EgHT
         DxUg==
X-Forwarded-Encrypted: i=1; AJvYcCVt8CR6BsC+kcoZ0PzLfgS18cM8ixj5ZYWFPineGyFX6BUBhO0P70zVs/Gd+3pZ8pGabd2WdOLx0MH3@vger.kernel.org
X-Gm-Message-State: AOJu0YzrgCGkz6pO7HNSNNgZCTNIVDc02w+RuLIjGM9etK2xN5FYYM/L
	L0vDV3SiezMQdj/WlV1qzYj5oyotXo5/sH1irSK+En1RK0uyU2ANyqDK
X-Gm-Gg: AY/fxX75qZh6lBdZllcMZFumWHTWZDhWu+Vg2rrklz5L/24cjCx04y9Y+YO5t3gmvu4
	+nMkjzBQ/5U7TgiFne08K8vKKQTqbS+ul5kV7WBFotcEfjllJ69ISsPadOaL/WQgUKQEpUYhOSd
	dGWMDpf/RmbOe9u7tyuYJszQy1WTEkyneXwr6npOwzgkXeQSQl0wDuj9+rkOMly60iaruwfRyoB
	KrChiFfxJFGPAPsWA56kEHVsm7px9dVIY2xQocCIji17tOeNM9kMfGwl/+1R2rR1dMcpyN64KuX
	QYyXCe4vxqz28PCmWrroDHXG6SqI23iaUZG9Mv4eWBzOkvH2zVgrPuwvXJMkSJpWoqV4WTn4wE2
	F56AP9EmlFOut7pPjiOGjEdatAhBbe2Kkr3dXARPFCbiQn8WL0Qutf5p2CKMmx/WLMS8greOWNl
	XEgbeapb/yKrSs48kHCrpOOGeP
X-Google-Smtp-Source: AGHT+IE6yvQ2ddlvX9nyemFmo4N5T/S3GXfv8OCsJYg1pE6WW3PJHwa8O1dQ8ly5F9NmxtGXBloc6A==
X-Received: by 2002:a05:7301:fd8b:b0:2ae:5b24:1cf6 with SMTP id 5a478bee46e88-2b17d30f886mr14686787eec.32.1768262427467;
        Mon, 12 Jan 2026 16:00:27 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b17078ccf4sm16958219eec.16.2026.01.12.16.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 16:00:27 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 12 Jan 2026 16:00:25 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: hwmon: Convert aspeed,ast2400-pwm-tacho to
 DT schema
Message-ID: <8d63c13e-15d2-4555-a110-4d446f3db314@roeck-us.net>
References: <20260109-dev-dt-warnings-hwmon-v1-1-f2a84cdb0e1b@codeconstruct.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109-dev-dt-warnings-hwmon-v1-1-f2a84cdb0e1b@codeconstruct.com.au>

On Fri, Jan 09, 2026 at 04:40:28PM +1030, Andrew Jeffery wrote:
> From: "Rob Herring (Arm)" <robh@kernel.org>
> 
> Convert the ASpeed fan controller binding to DT schema format.
> 
> The '#size-cells' value is 0 rather 1.
> 
> Some users define more that 8 fan nodes where 2 fans share a PWM. The
> driver seems to let the 2nd fan just overwrite the 1st one. That also
> creates some addressing errors in the DT (duplicate addresses and wrong
> unit-addresses).
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> ---
> Hello,
> 
> This change has been on a bit of a journey[1][2] and was eventually
> integrated into my RFC series tidying up the AST2600 EVB at [3]. Rob
> did some further digging at [4] and I've now addressed his finding
> there.
> 
> Much of the series at [3] was merged so I'm splitting out what remains
> and peeling off the RFC label after making necessary fixes.
> 
> Guenter - I've included your A-b tag from [3], but as I'm sending this
> to be applied through the hwmon tree, do with that as you please.
> 
> Changes since the series at [3]:
> - Update #cooling-cells to 2 based on Rob's observation at [4]
> 

Applied.

Thanks,
Guenter

