Return-Path: <devicetree+bounces-189015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B464FAE65EC
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8002818832ED
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1460D290D85;
	Tue, 24 Jun 2025 13:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QAb1ZdVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB822571A1
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750770536; cv=none; b=Nr5c2BJP+FH2eqQpatvBS6l2U+LdhIz2ILRVOmFVuq+6aXXKw2hgRJ6l2vzqwzU2if2xraN128A+WQs6wzWlPywzwi2h7Gf8LIw+j+1AcLlgs+wONhiiJ0Fxj/gcGhmSUz0efJAbXCmg/XRahNx/nVak7j9x43AuXqyfTMx57Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750770536; c=relaxed/simple;
	bh=8Qf/7GWBdnNGnI+ZQHywxU5qSOhxOpe/ufYU3L2QFGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gWjACDIaieN8V2tcyHahsGG//wgetBsqgMmop+fMo5Y32aaFbTFUjllg7G68H5pQyXUqtdbiUB7W/dn+cBiG0rkgt7XMljTOGnjzWaRhQ+nxhSLjTxBZ33kD4Frtme01FnQNeyvtTGg9LY5petfxNJA9p252hgWie/ZyX3DHWWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QAb1ZdVx; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a57c8e247cso4252342f8f.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750770532; x=1751375332; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zo9M8XqjQ6KnIQB3+obzQfNRXfbqLOkBgRzdDXmyMnU=;
        b=QAb1ZdVxlQkhl8uy4piV9p1u7FwXiN9S1rQXwyQXG5xJHMC3Y5WLoHDwER1GyidWU9
         zLpWYovMVKnQi87vvt5fheJxuk6xWEjPx6/BaxIQd8Ox3gGnEfiQmelWTDzicstKbP8e
         cprTBLpJqwL7LAqZgqu22i6NEVnF0Zpwbi+QFQDnPvy+D8drYg28fLuuZfKkbqSylK/2
         7C3hl7X80r9ONaDweDxZ87f/XX5KXip1HFd0OSx1gWCx/MrbBtyGfV09W1dJCd5n3V4l
         Z5HEEbbMj7v8YVYjj1SnSyK2KAgRCi9hpjmrkr84a3gm9eHnAumsPjaKhO3BeQd8/FPa
         0JUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750770532; x=1751375332;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zo9M8XqjQ6KnIQB3+obzQfNRXfbqLOkBgRzdDXmyMnU=;
        b=e8ojbpp+/VZR9C+rDLiImDp/rC0NVKmINWqC7rkg9yOBqSjc//9Yy6VGG3j3IR+HAa
         C5ngSOaR2Dguu+FGpc0lTjfIGDsoAOTMueISE6PyQMm32R8QgGelLZ6zCaCUBo2/iRv2
         YDXoDSJnYBhVQ+i6YkbeEECJ133B9H5q/YG5+MbKtrZeeQNu38CW/wfiRVbUt41Md+u8
         3QvtWupysvKCydeqlyErNWPeZRMhkoUJrC0nQrllEsJEX6kM4BhtHxcMvQtC+L/gZ2zP
         qgNe8ikCGeXVqgLl9y47xUs0Hq4EgVXGFe95HlN3t5EQFpt9Sow0jN4WKnGBx0pi3WxN
         gxCA==
X-Forwarded-Encrypted: i=1; AJvYcCUJa3ddBA4CzWIRu9FuvOpAUJOIzl0yXgBVGQhgVCpxOoBWE9XcaVWnFUS6QxgDkZZIYDVFYsFlmYr6@vger.kernel.org
X-Gm-Message-State: AOJu0YzRHg/IuzTc+80pL3My+uhOXkCev82qFNVb/ArXumO4QGVWqRyX
	JvQ2qX36hnmAGz3O8D7SgMYH8Na2RuLcdZyRR0y5/0RpPG1bATxVV6e5xBIBj6s4m1433abq1Pr
	PY31X
X-Gm-Gg: ASbGncsJYSvAI0/p0jG7crCIpcHPygf8iUyGW8v695XiXHsbPSmAJ5XnmuAWh8icV7i
	Wq/6aydMp/K4McQxTNNvzGH557FvN4vp5u/Z7AV5iIAYeEuDnoJY7HzpXdKOVl/gHg00/6rOBgp
	rPfqMmlRyCBeJu/xOqeKm8T+HTFsJuizC7mI2gyNo2a7G8CBfa7dzuOy+gR6AVfONtI70Nr4Hxg
	IHRcN3gbVWSnCdPp1nS7nPStsOkZOgMnRKuwL1kCNS6ZgNUnkWboST/cvQV6QLkng0XMbVVkWu2
	BceVkG+s+2SPeCkRA7CXSbNZPIrWjJ89izQRbtZdOH8EVZ6a5DCWRkeiZxo4/uGZfIgXgPgBPb2
	9bsqlFiVn1v0vStHETLI1ZYFV
X-Google-Smtp-Source: AGHT+IHIm3JrCDd31HiTjclWsywggmSy/t0CgZsQJr6S4AQyvfPIj5FhuomHptxnZshPI5b1+Xfmjg==
X-Received: by 2002:a5d:584d:0:b0:3a5:2694:d75f with SMTP id ffacd0b85a97d-3a6d1331a3fmr13279333f8f.52.1750770526175;
        Tue, 24 Jun 2025 06:08:46 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e8068d3fsm1916501f8f.37.2025.06.24.06.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 06:08:45 -0700 (PDT)
Date: Tue, 24 Jun 2025 15:08:43 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: timer: Convert faraday,fttmr010 to DT
 schema
Message-ID: <aFqjW1mGIeAMmsV4@mai.linaro.org>
References: <20250611232621.1508116-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250611232621.1508116-1-robh@kernel.org>

On Wed, Jun 11, 2025 at 06:26:20PM -0500, Rob Herring wrote:
> Convert the Faraday fttmr010 Timer binding to DT schema format. Adjust
> the compatible string values to match what's in use. The number of
> interrupts can also be anywhere from 1 to 8. The clock-names order was
> reversed compared to what's used.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks



 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

