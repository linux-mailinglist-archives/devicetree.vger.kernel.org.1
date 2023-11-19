Return-Path: <devicetree+bounces-16940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C07F074B
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 17:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B83A31C203DE
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 16:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8522D134DF;
	Sun, 19 Nov 2023 16:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47677115;
	Sun, 19 Nov 2023 08:04:26 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3b6c31e604cso2547763b6e.2;
        Sun, 19 Nov 2023 08:04:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700409865; x=1701014665;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IhoBsgcYCPoMOyBClZKCjJFuGRHuuw4KSHpd/ceIW1o=;
        b=rRCXRoBlxx3Gik3/RoUeghO8iBvus608AFa0azfAwBm1vWxKOeGPIilrdAHLLSUfVt
         EKkvzQ0bQRBv4YdnabeHgtgZlDqAWf47YV4JIyN7tmcIN7Tf2bvzEk+ZNoep0tPP1E5i
         tDe1+dvl3p3SftJaKjyhgDBdqBmmWuo3hN6Y8LRlQEDJ/oldtcXWIiqTfXCvusWNQkwr
         SxATBEgfOlFtOVBT4MTLUSuCdnJ7HnlhzhjT1pcYvm9Ql9XCHvZKliotUk/Q9AKkv6Br
         k1xuvBuSRK3B3SpYcVNem0hVvE0LtCdrU0X19ktc9cq8hlRnX/Cg0ZWUvbM1NqoKlBYS
         yKTQ==
X-Gm-Message-State: AOJu0YwMsmTz+qmHyfLXuKeqjQs83badY8yONg+CjoV2PsCLQRgmoWa4
	oqgmGBkvPxVRCHGH1ksmAQ==
X-Google-Smtp-Source: AGHT+IEPvxQPpSKlB8eS9XX5UGJPIu58cXdUceezJBLkAF6LxsC6V68SFxNoVg0VbT5dJDvCZMnbkg==
X-Received: by 2002:a05:6808:bcc:b0:3b2:f431:e029 with SMTP id o12-20020a0568080bcc00b003b2f431e029mr8622231oik.26.1700409865587;
        Sun, 19 Nov 2023 08:04:25 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id i16-20020aca2b10000000b003af642cf646sm998621oik.37.2023.11.19.08.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 08:04:24 -0800 (PST)
Received: (nullmailer pid 267899 invoked by uid 1000);
	Sun, 19 Nov 2023 16:04:22 -0000
Date: Sun, 19 Nov 2023 10:04:22 -0600
From: Rob Herring <robh@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: pwm: amlogic: fix s4 bindings
Message-ID: <170040986161.267844.16868927442799371234.robh@kernel.org>
References: <20231117125919.1696980-1-jbrunet@baylibre.com>
 <20231117125919.1696980-2-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231117125919.1696980-2-jbrunet@baylibre.com>


On Fri, 17 Nov 2023 13:59:11 +0100, Jerome Brunet wrote:
> s4 has been added to the compatible list while converting the Amlogic PWM
> binding documentation from txt to yaml.
> 
> However, on the s4, the clock bindings have different meaning compared to
> the previous SoCs.
> 
> On the previous SoCs the clock bindings used to describe which input the
> PWM channel multiplexer should pick among its possible parents.
> 
> This is very much tied to the driver implementation, instead of describing
> the HW for what it is. When support for the Amlogic PWM was first added,
> how to deal with clocks through DT was not as clear as it nowadays.
> The Linux driver now ignores this DT setting, but still relies on the
> hard-coded list of clock sources.
> 
> On the s4, the input multiplexer is gone. The clock bindings actually
> describe the clock as it exists, not a setting. The property has a
> different meaning, even if it is still 2 clocks and it would pass the check
> when support is actually added.
> 
> Also the s4 cannot work if the clocks are not provided, so the property no
> longer optional.
> 
> Finally, for once it makes sense to see the input as being numbered
> somehow. No need to bother with clock-names on the s4 type of PWM.
> 
> Fixes: 43a1c4ff3977 ("dt-bindings: pwm: Convert Amlogic Meson PWM binding")
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 69 ++++++++++++++++---
>  1 file changed, 60 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


