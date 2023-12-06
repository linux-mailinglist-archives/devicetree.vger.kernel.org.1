Return-Path: <devicetree+bounces-22329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C5480727B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6FA5281DD8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8957A30359;
	Wed,  6 Dec 2023 14:33:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A7BAD44;
	Wed,  6 Dec 2023 06:33:48 -0800 (PST)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3b9d029b9bbso189681b6e.1;
        Wed, 06 Dec 2023 06:33:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701873228; x=1702478028;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDDAuWhtXVi6mwzIZ2z8R0mIJpjQ7oFVtssyW42Nqpg=;
        b=fhJL1fcKiH85Mtus2eaJh3QRsa0g7jQ8dR6MziRc6pn9+qcyEFVLDHwBOWp6fW4OeF
         L94Fmss2wAx2pjBh9/oAR8uLpMBFsNP0NJ1nrhV5wI5c7D6gjWyaOynEsm/tJXyhVZaX
         9WgAFDG45oGP/mNhaX8LnjtI5nU50SPU8ML0b96dL0h0fbzERcKJaierTWQrA0FwXWaO
         U01AehnKzrvvwJe22NeTl6UaDsXSn4lf2ZF9ucEc2ylD0NjUXoloH1tX30NV/bblPWGd
         5HY2nA37g+HrT5NqrXIiqeqOnLqO2CE0KaN7eK9bhgPJulQWOGRrwo00Mu2libsrtTak
         jIww==
X-Gm-Message-State: AOJu0YyzKeoqdBambamSgROQf1JFhVR/+4s0Vy3aeiwmETUH0tGp7ANt
	iTcWm/20B6kql1e/LuKkwA==
X-Google-Smtp-Source: AGHT+IHSFVmUd8gQfUe3FDNE1USXgg+9lsK6DN+nNv+ID/1SC1HIP7fcqvVag9LfmmGU0nP5b6pCFA==
X-Received: by 2002:a05:6808:8c1:b0:3b8:33fc:7ca9 with SMTP id k1-20020a05680808c100b003b833fc7ca9mr1431384oij.18.1701873227680;
        Wed, 06 Dec 2023 06:33:47 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o6-20020a4a3846000000b0059034d09dd2sm8796oof.12.2023.12.06.06.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 06:33:47 -0800 (PST)
Received: (nullmailer pid 2107555 invoked by uid 1000);
	Wed, 06 Dec 2023 14:33:45 -0000
Date: Wed, 6 Dec 2023 08:33:45 -0600
From: Rob Herring <robh@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, Amarula patchwork <linux-amarula@amarulasolutions.com>, michael@amarulasolutions.com, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 07/10] dt-bindings: display: panel: Add Ilitek ili9805
 panel controller
Message-ID: <20231206143345.GA2093703-robh@kernel.org>
References: <20231205105341.4100896-1-dario.binacchi@amarulasolutions.com>
 <20231205105341.4100896-8-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205105341.4100896-8-dario.binacchi@amarulasolutions.com>

On Tue, Dec 05, 2023 at 11:52:54AM +0100, Dario Binacchi wrote:
> From: Michael Trimarchi <michael@amarulasolutions.com>
> 
> Add documentation for "ilitek,ili9805" panel.
> 
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

Where's Krzysztof's Reviewed-by?

Rob

