Return-Path: <devicetree+bounces-140368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9C0A19636
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 17:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A724188CAA2
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 16:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A394215056;
	Wed, 22 Jan 2025 16:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m385uo1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3C52135B9;
	Wed, 22 Jan 2025 16:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737562358; cv=none; b=LHnOYCyoxjJ62DWVUyQnZ7Iqvb0Ub44b9f23r8dsGxsYpSB5uiyUMIXIqf2bwO0ouWIeVDgVJV+nSRj1adBVPo4BwxMB7EqrnaprP2fIH5cO2389Lv63x02Y5EXYTzRs9vhaP+dvA1UFAHuwIicV4VHAoY9abwFbQPOK9PQcRrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737562358; c=relaxed/simple;
	bh=QT1hp/K5zvYO58/0ephSnT8Yutwr2eLlbwTccbv9dds=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RjoqU36TKm64yiXIJ9xex3qv6G0ZetaAshINFYCMcaUT4y8IRklKD52nYpryTewVl41364KD7ozJ5+8HQJk1G4pmsUdZU3Lq+m8dlLY/C0eJLxY6XvEk02bfYs3QCztAZUXk1zvXCPlK0oL6X7znO6vXjJxFoHSl//FYVEAEgS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m385uo1n; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-71df1f45b0cso512208a34.1;
        Wed, 22 Jan 2025 08:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737562356; x=1738167156; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/9jtQGhGzfUUBpDpoTIqjDA1rkZ3nGNJjvwgw5e22m0=;
        b=m385uo1nunibEyIC8NypWadJAvu15FEWj/U+/wrmRBvRDooaoaUc5MmuF70Asgw1oR
         P7MeIW6Yyk1sC6uT5kyssdaGD0wqAGdvTGXp3eOj03zt0kViN69tGR7tT5if2WQGUUxG
         PNUaAeADeyhz/fKxtCb8tvOO58cPElCGi/Sm5/YIK02dDIY8JS/qDlsn9YXgaJwiXEx8
         N2UjnzFyZBb88sxuPGFrSBZAoakHM9mbbyOMILQDy0piHeyUS4BL+YxIKwoMYw2lQbFA
         fGgkW0qY3gcoocf4lD5bke7EpMn0sM7guXdnnrcXwOIa/5TMjpJp0s1eXqfalSRKIDVz
         hysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737562356; x=1738167156;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/9jtQGhGzfUUBpDpoTIqjDA1rkZ3nGNJjvwgw5e22m0=;
        b=mI51tIC1Uz8v5lpAP/NK/jm7Xq943hJxlqyQV5a5c5XkC1zV1Ssa384akrRBW0angG
         xg7UW5AvfqNJEDL0k8ggx6nohYKh2lwZSuXGWkVosbONgIZ+nO62xJp3a/C2mp0Rdnfb
         uGIJP3BryP02xTu8g1sn+4EbKZCwNpMe3zg1KkXsCbcNXmzcReZdL+1A25MCud+SZBfJ
         EQB84u+5thvqWymykHuZYCDIQB+y3+vXUaPL1Px3DM5nqPbFF0qP3JNJhV+6LHYp0KWB
         9mKHA79S7euZti30hOAcAu6DxeNw+93C3PUWNLRzczhGZiKjs0wEAz5QgCSWUPYwLMhR
         R+Nw==
X-Forwarded-Encrypted: i=1; AJvYcCWRltd5mY86c8wNvNWsCw2I4ytNovYo9ddifrvkIFclQl7dyvc9aAGdaNIibH4ynBfgyTzH6SgYAboO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0OmBTdoqcsOYrZYruycQuQ08yiOy8dRbSXx/sbIcBkjlCBXVQ
	6qnW3SYN1Od4rVsuie57dAoMRUHvDK0+bdEgEX9YTbGkswoYRhyB
X-Gm-Gg: ASbGncv3sqBv4BeTC+dlDZv8H8YPGGJ49LsDVFwEiF89qrhsfD8NBH7OXhU1Ps6R1K0
	lvKziME2ahbscYMBuYSEjHVQ+b2d6WY5PY3vxfdAdT6RvQhuzJjgI8UL/LEpcYXV2F9TDva7BDR
	UdTvdak0lkbIYQxy6jULhOTKWQtlIpeepfXdvUhU4Z6oBEMVUWePvDil8+QGAlkoQWz2tjA//JY
	owrNZ4y4f1LQRWD9rhWAb6xz7P+tdzqrRyKnqw4FlasKc/M5W8/xYhprC27cAzaBNAj7jGKqca/
X-Google-Smtp-Source: AGHT+IHE2b8ugHOaPnXUAF+Kz71s8KV9Kpi4/z9mUrzVbipQA0iNJO+L+jfYIyVhvtmJE3ckimaFxQ==
X-Received: by 2002:a05:6871:d109:b0:29e:5152:dab1 with SMTP id 586e51a60fabf-2b1c29238f3mr12647287fac.13.1737562355721;
        Wed, 22 Jan 2025 08:12:35 -0800 (PST)
Received: from neuromancer. ([2600:1700:fb0:1bcf:9e8:bbcb:5f73:f84b])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b1b8f767e6sm4482612fac.35.2025.01.22.08.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 08:12:35 -0800 (PST)
Message-ID: <679118f3.050a0220.3628fd.4a9f@mx.google.com>
X-Google-Original-Message-ID: <Z5EY8bVoaxi2MBVe@neuromancer.>
Date: Wed, 22 Jan 2025 10:12:33 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Hironori KIKUCHI <kikuchan98@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	Ryan Walklin <ryan@testtoast.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: display: panel: Add another panel for
 RG35XX Plus (Rev6)
References: <20241124080220.1657238-1-kikuchan98@gmail.com>
 <20241124080220.1657238-2-kikuchan98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241124080220.1657238-2-kikuchan98@gmail.com>

On Sun, Nov 24, 2024 at 05:02:12PM +0900, Hironori KIKUCHI wrote:
> This is a display panel used in the recent revision of the Anbernic
> RG35XX Plus, a handheld gaming device from Anbernic.
> It is 3.45 inches in size (diagonally) with a resolution of 640x480.
> 
> It has the same interface (pins and connector) as the panel of the former
> revision of RG35XX Plus, but they differ in their init-sequence. So add
> it as a new panel.
> 
> Signed-off-by: Hironori KIKUCHI <kikuchan98@gmail.com>
> ---
>  .../anbernic,rg35xx-plus-rev6-panel.yaml      | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-plus-rev6-panel.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-plus-rev6-panel.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-plus-rev6-panel.yaml
> new file mode 100644
> index 00000000000..b60a4cf00f8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-plus-rev6-panel.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/anbernic,rg35xx-plus-rev6-panel.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Anbernic RG35XX series (YLM-LBV0345001H-V2) 3.45" 640x480 24-bit IPS LCD panel
> +
> +maintainers:
> +  - Hironori KIKUCHI <kikuchan98@gmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    const: anbernic,rg35xx-plus-rev6-panel
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-3wire: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - port
> +  - power-supply
> +  - reset-gpios
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        panel@0 {
> +            compatible = "anbernic,rg35xx-plus-rev6-panel";
> +            reg = <0>;
> +
> +            spi-3wire;
> +            spi-max-frequency = <3125000>;
> +
> +            reset-gpios = <&pio 8 14 GPIO_ACTIVE_LOW>; // PI14
> +
> +            backlight = <&backlight>;
> +            power-supply = <&reg_lcd>;
> +
> +            port {
> +                endpoint {
> +                    remote-endpoint = <&tcon_lcd0_out_lcd>;
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.47.0
> 

Though the documentation file will likely change (to newvision,nv3052c.yaml
if I understand correctly) do we know if "anbernic,rg35xx-plus-rev6-panel" is
an acceptable compatible string for this panel? I'd like to add it to a fixup
in U-Boot but can't proceed until the string is defined.

Thank you,
Chris

