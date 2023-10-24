Return-Path: <devicetree+bounces-11396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C497D5A1A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:05:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00C89B20F17
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF593B78D;
	Tue, 24 Oct 2023 18:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ldc1OphL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D8E440E
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 18:05:41 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A5F910CF;
	Tue, 24 Oct 2023 11:05:39 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-694ed847889so4040261b3a.2;
        Tue, 24 Oct 2023 11:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698170739; x=1698775539; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9HGH0nYv3U6DlSujipQyBODLHc0mtSCpbyj+VerOFKc=;
        b=ldc1OphLM8/hFiK5l0qF/jOLJMr709PFSh7kuJld6tnZ0PlDo0bAPxGbT6XmZlGL5M
         hXjk8OumDLIepq5RvT7Rt0bl9FQ/LAgSJtzozfKyPmLZ566+MUUPOa0nbboM5smDKSnG
         YPOaU3EE/t8yeU9EtC0/6t4mWubU+oQEXmZNY8HwTCIYXqwPL7xd3f0hwd3fk9dUoiNP
         noiA0EDMpATghmLNZYRx4o0Nh66zDLFQsW1yny2w99zSyfN70oZkRahLB0AKo5ZiGdbI
         ERQypS/UKjEfpouG6LXXzGe+2J2gWl75K493JUADPyhWedLxTvOptPbZCnmTvmnBEoX9
         2c5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698170739; x=1698775539;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HGH0nYv3U6DlSujipQyBODLHc0mtSCpbyj+VerOFKc=;
        b=Icmz3FF5zowRmdyndFFGC3Xzxsy8aLxVqNsPLrJ7+XVyhLiBvtSF1I5g/5H+g0wH01
         eK+aUHr2UJRhQiORrosK6PsQZ45BOIfwxXFj5XcOTg8C+pCvRmf+tMgSryMzdPYiH647
         s06MYQuVNdqJrfLzNcmbIwIhwQT1fU6rPmy6Fi6i/1w4tzLpGU3mlK/WzdFdMW/tIhl+
         BQUhTjt4uSLtKMi+Il1Q3gbSxBDfOSGbkH2Q8SBsAda3m2xd+P1IYQlAU4zNwn+J8qCw
         PKPCjiN88W1LwA6Pd3TK17gEOITU0F2Xoda6PnJIbdQ2MDuEkNQD7nAv0sh6bs0oGuE8
         uRkQ==
X-Gm-Message-State: AOJu0YzbS4ihwGTSb9O8SP3d3hTeGMRBrHGGrtMc+RkfBK5Szqm72ETn
	L+8PFLdvU1TW07PmAvIvan0=
X-Google-Smtp-Source: AGHT+IH7AIflD5NOyUHiqDYAVfOm0SwFrJtBZCtAWu+ciPu3Oln+qs0ys/z6ziH9ctYo6cojOsdBPw==
X-Received: by 2002:a17:90b:2d8a:b0:27c:ef4b:6dcf with SMTP id sj10-20020a17090b2d8a00b0027cef4b6dcfmr10864537pjb.21.1698170739001;
        Tue, 24 Oct 2023 11:05:39 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id r8-20020a17090ad40800b002636dfcc6f5sm7468885pju.3.2023.10.24.11.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 11:05:38 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 24 Oct 2023 11:05:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	skhan@linuxfoundation.org, baruch@tkos.co.il,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: watchdog: cnxt,cx92755-wdt: convert txt
 to yaml
Message-ID: <f55d2749-f311-4d8f-a394-3591d18fc523@roeck-us.net>
References: <20231023202622.18558-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023202622.18558-1-n2h9z4@gmail.com>

On Mon, Oct 23, 2023 at 10:26:22PM +0200, Nik Bune wrote:
> Convert txt file to yaml.
> Add maintainers list.
> 
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
> Changes in v2 (according to review comments):
> - Updated clocks property to have only maxItems without $ref and description. 
> - Removed timeout-sec explicit definition, as it is defined in watchdog.yaml.
> 
> v1 patch: https://lore.kernel.org/all/20231022120328.137788-1-n2h9z4@gmail.com/
> 
>  .../bindings/watchdog/cnxt,cx92755-wdt.yaml   | 45 +++++++++++++++++++
>  .../bindings/watchdog/digicolor-wdt.txt       | 25 -----------
>  2 files changed, 45 insertions(+), 25 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/digicolor-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml b/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
> new file mode 100644
> index 000000000000..1844d7e026fe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/cnxt,cx92755-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Conexant Digicolor SoCs Watchdog timer
> +
> +description: |
> +  The watchdog functionality in Conexant Digicolor SoCs relies on the so called
> +  "Agent Communication" block. This block includes the eight programmable system
> +  timer counters. The first timer (called "Timer A") is the only one that can be
> +  used as watchdog.
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +maintainers:
> +  - Baruch Siach <baruch@tkos.co.il>
> +
> +properties:
> +  compatible:
> +    const: cnxt,cx92755-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    watchdog@f0000fc0 {
> +        compatible = "cnxt,cx92755-wdt";
> +        reg = <0xf0000fc0 0x8>;
> +        clocks = <&main_clk>;
> +        timeout-sec = <15>;
> +    };
> diff --git a/Documentation/devicetree/bindings/watchdog/digicolor-wdt.txt b/Documentation/devicetree/bindings/watchdog/digicolor-wdt.txt
> deleted file mode 100644
> index a882967e17d4..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/digicolor-wdt.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -Conexant Digicolor SoCs Watchdog timer
> -
> -The watchdog functionality in Conexant Digicolor SoCs relies on the so called
> -"Agent Communication" block. This block includes the eight programmable system
> -timer counters. The first timer (called "Timer A") is the only one that can be
> -used as watchdog.
> -
> -Required properties:
> -
> -- compatible : Should be "cnxt,cx92755-wdt"
> -- reg : Specifies base physical address and size of the registers
> -- clocks : phandle; specifies the clock that drives the timer
> -
> -Optional properties:
> -
> -- timeout-sec : Contains the watchdog timeout in seconds
> -
> -Example:
> -
> -	watchdog@f0000fc0 {
> -		compatible = "cnxt,cx92755-wdt";
> -		reg = <0xf0000fc0 0x8>;
> -		clocks = <&main_clk>;
> -		timeout-sec = <15>;
> -	};
> -- 
> 2.34.1
> 

