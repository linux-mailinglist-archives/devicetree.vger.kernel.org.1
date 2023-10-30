Return-Path: <devicetree+bounces-12900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 603587DBCDC
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C4851C20979
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 15:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D18D2F3;
	Mon, 30 Oct 2023 15:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5B318C01
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 15:45:50 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2EFBD9;
	Mon, 30 Oct 2023 08:45:46 -0700 (PDT)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-581de3e691dso2688054eaf.3;
        Mon, 30 Oct 2023 08:45:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698680746; x=1699285546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N68YKwFVNkchwKNnXPKqL9DNOsP+ZPGa6gPr6ZEexZw=;
        b=WwypaZROYi0b5hPJcnRPxBV/Sm9hdMHh+KXk/iyflIIpbVIFnRwlwbsHU1dF/0uHMk
         cVGEjlQ3zNro8bLq/xaQGPa2VTc0PvJ+o7ZDy03mSK29p5JDjMz60VBljK/9MO3K3bm+
         MZ73fYaWNHihyp/rkydpsoyUvAUK9/rUKybc7OzUs1IeME0s39I72z7KcgWBy63BidHa
         DVoDZVoTOihcD5PdI4wMO7ylMzDjqwWHvnnEnD1eBVqm4pqmvTWAjwPYlE1+e0oyBdbs
         Tt5wi4lrDrHqrNKA5qc0W7DTxPGJeiWmCsYIElqtpoS7glSH49eKlHObzYyN5rnhfUFU
         JtJA==
X-Gm-Message-State: AOJu0Yy/e2CyDikIr5Y6eHwC/jl2bduOO76KghSikh2C3h2UbF/LeMlB
	30AotDys4Amzj6u3VGwqjGCyDAvONA==
X-Google-Smtp-Source: AGHT+IFFYAiiDeIL0wT9nmQI6GlHDM300JrKXV+TNAOEvtdhBG4R8qjLrNRZ3gYgCUml9QgWCANqnQ==
X-Received: by 2002:a4a:e28a:0:b0:581:ed9a:4fde with SMTP id k10-20020a4ae28a000000b00581ed9a4fdemr10139189oot.1.1698680746210;
        Mon, 30 Oct 2023 08:45:46 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id x4-20020a4aaf44000000b005658aed310bsm1767770oon.15.2023.10.30.08.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 08:45:45 -0700 (PDT)
Received: (nullmailer pid 1235360 invoked by uid 1000);
	Mon, 30 Oct 2023 15:45:44 -0000
Date: Mon, 30 Oct 2023 10:45:43 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kernel@pengutronix.de, Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 3/5] regulator: dt-bindings: Allow system-critical
 marking for fixed-regulator
Message-ID: <169868074320.1235121.1883656522511039021.robh@kernel.org>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
 <20231026144824.4065145-4-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026144824.4065145-4-o.rempel@pengutronix.de>


On Thu, 26 Oct 2023 16:48:22 +0200, Oleksij Rempel wrote:
> In certain projects, the main system regulator, composed of simple
> components including an under-voltage detector and capacitors, can be
> aptly described as a fixed regulator in the device tree. To cater to
> such use cases, this patch extends the fixed regulator binding to
> support the 'system-critical-regulator' property. This property
> signifies that the fixed-regulator is vital for system stability.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/regulator/fixed-regulator.yaml          | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


