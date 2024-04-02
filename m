Return-Path: <devicetree+bounces-55398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4C38950FB
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:53:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DD741C21425
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88BCD69D29;
	Tue,  2 Apr 2024 10:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FMzRviN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EBC9605C6
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 10:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712055170; cv=none; b=GEbnoulp8KOaldDAiZpFgNwKF9vplOa0mx0y7iPHBcBdy0S+8mfLXk2M//ObpDZbSusj156j6v7svW0plRvhRjBB7O1QjBLGCrG+kpXBkVDCcexkqdBaselSpCFTC90ykOhd0LOT29vXAOT8hXdPKoPBgjYm8JdR8BHvWqLqINQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712055170; c=relaxed/simple;
	bh=1YTxvmjRmcfQlUlxr5z5vqfrDT+DzwsPEc5WOijGjCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X8CDPP9ODhiwYaVlCwa2w6eGmA8l+aoCItCHCHrFBrHR0MaaSQbVeRwF6ZCbJSkC94XJW5PDV99PCkrzR0P6T0W9of5kgKn8rarg4B7wvrv9T2GacHtiiF7JaMH7n1ZCEfUzA8wMy1ES0ShqcuRMUo2E3UIH4VttkQHZ31rlaJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FMzRviN9; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4161eb1aa1fso187255e9.0
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 03:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712055166; x=1712659966; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1YTxvmjRmcfQlUlxr5z5vqfrDT+DzwsPEc5WOijGjCk=;
        b=FMzRviN9kJYq46OxwaxbRd/nN2UPA9XWrpWlawBOC8GeXU9+UlJV5BuzAlsb+bY8bn
         IzH/UPbOlXSLmtFVckYS9+z8mjhYf4tivwDRdQMN7VLK4e9DHq6kMejHxUZYTQALjWr4
         dXh4y5sj+kayoN/n7cj5V9rxajPGLURnjoa9pAzFH0wyekg1tFMqp+3S7c1Lal7enfdE
         0TiezpZ3rhDhS8Z1zOqt9trTk35pWYIPIy2KobpoyY+SVEpZKMP/5wgNPNfzPTXlthOC
         QalGY/8/a1FrL1UkvPduHYrnsJajPwn8ETHhTmzEOzpNMiUSQfgDutzomW1NThYY7QTW
         xTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712055166; x=1712659966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1YTxvmjRmcfQlUlxr5z5vqfrDT+DzwsPEc5WOijGjCk=;
        b=vg48Ot4BPz3Ge7bIar+Hap1KxPNgwA04ugvUT6QPIGIDi1wBGcch5yW6oWeZ5uJwP9
         atwoQ4sBHx+Segf3moxAj9TROZZSoMAZ1xiRcBr15obhm5bT+e+reporq+qXgxkZrTny
         AlGFAoEM6ZZm3uVFMKNcSfs7xxJIjgBPkmOCJ7Q40+NKE2+wLlng99sVVbr6HRcP3ZUL
         XZ2qerHkYls7xsuEq6xWCxJl+yL5TkHJ0PeIUOpK+bquFMs3tuECYk5QWxv5/nJ8oOD2
         2naMIeVK7LBDRMQKwdgsalEE9aigrrj5UD20c2wZEKbxAXRAlBuwEdLAu+HIFybdOMRy
         Mm8w==
X-Forwarded-Encrypted: i=1; AJvYcCXULrkqNKoxlEVdb4x/awQWrMweFMusR1Dld11yNd9Duu53pTSp6x1bbrUmJDRz0R5ohvyI1ndtr3xRxvmFko/mVEJd9ZHbgwrmTA==
X-Gm-Message-State: AOJu0YzhSMSOxk05B6yGEokoJ0VJxrI8pcxy0Pl+ymqqTtO8npayziqG
	i/Jk6TjZJhMAaBH2atn2G2/BLkb2M3FixFYbZW3LZk0GZfSR+f5S7kssLCdI1/o=
X-Google-Smtp-Source: AGHT+IECFFC2QpBeFxWbttS37ljtNH1Md/XKAYuE3SMOGvLg9paIl3bsTuA0JUInIDn5SAMDlrEOBQ==
X-Received: by 2002:a05:600c:2983:b0:414:56ec:22e7 with SMTP id r3-20020a05600c298300b0041456ec22e7mr9343996wmd.21.1712055165953;
        Tue, 02 Apr 2024 03:52:45 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id fs11-20020a05600c3f8b00b004146dd6bfe2sm17450520wmb.47.2024.04.02.03.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 03:52:45 -0700 (PDT)
Date: Tue, 2 Apr 2024 11:52:43 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Patrick Gansterer <paroga@paroga.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org, Lee Jones <lee@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v5 2/2] backlight: Add new lm3509 backlight driver
Message-ID: <20240402105243.GA25200@aspen.lan>
References: <20240330145931.729116-1-paroga@paroga.com>
 <20240330145931.729116-3-paroga@paroga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240330145931.729116-3-paroga@paroga.com>

On Sat, Mar 30, 2024 at 03:59:25PM +0100, Patrick Gansterer wrote:
> This is a general driver for LM3509 backlight chip of TI.
> LM3509 is High Efficiency Boost for White LEDs and/or OLED Displays with
> Dual Current Sinks. This driver supports OLED/White LED select, brightness
> control and sub/main control.
> The datasheet can be found at http://www.ti.com/product/lm3509.
>
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

