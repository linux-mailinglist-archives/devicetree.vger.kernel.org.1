Return-Path: <devicetree+bounces-14166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A194D7E27B9
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D20571C20B2F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4384728DB5;
	Mon,  6 Nov 2023 14:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E689928DB3
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:53:41 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 338F9F3;
	Mon,  6 Nov 2023 06:53:39 -0800 (PST)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1f03db0a410so2860527fac.1;
        Mon, 06 Nov 2023 06:53:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699282418; x=1699887218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2V1ZiN+zs3QIzCVMS+3WcPL2sPUpKN5a1KBpkJaxZw=;
        b=Pwa1+cP0XWaajldyILfg4UIjrmuuEJlSp/0rOxIk0bbG190u764q0q2WIKziPnFFpA
         zekO2wrFWydtz+mf5JOgziie1iFjNqTkqDW3w81IG2N030KDCMMbjazAs1+GNewQ7XQZ
         CYedwW/RDNG82nmegBkaB9SPc3npCHDh8Nvtv++j9zLFIePCmKwh/HFNb7vEJ72YshLV
         e7SQhQ295KzPYJgUUaYy6e+igrIO0fd0ev6UXtanU2wQTyHzkuAccCh6tITA8N+RQTB/
         18RU1QwLFp22SX3C1CASAeeasX054wvC5/VgBplT/SFbMEwbbqgCPi2PzyYh5B/baWH4
         NHEg==
X-Gm-Message-State: AOJu0YzF9E9iD34vGizYo+b8CyWN/8+PC5L9zQniMGkAomxwN3wL0OnK
	2OD/6jk33Qd0G0memXxDxTkrZP2Ceg==
X-Google-Smtp-Source: AGHT+IH/P6qGnMzXlfn4Jsuc4Ld6M5FeFXQOO2rlV9PprvtLYOMEsmWcaAqL5pqImcL42+rILxFNZA==
X-Received: by 2002:a05:6871:7515:b0:1ea:406:4dff with SMTP id ny21-20020a056871751500b001ea04064dffmr35930559oac.50.1699282418437;
        Mon, 06 Nov 2023 06:53:38 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id jq8-20020a05687c30c800b001ead209f185sm1400642oac.20.2023.11.06.06.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 06:53:37 -0800 (PST)
Received: (nullmailer pid 327400 invoked by uid 1000);
	Mon, 06 Nov 2023 14:53:36 -0000
Date: Mon, 6 Nov 2023 08:53:36 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@sberdevices.ru, rockosov@gmail.com, conor+dt@kernel.org, linux-leds@vger.kernel.org, andy.shevchenko@gmail.com, pavel@ucw.cz, robh+dt@kernel.org
Subject: Re: [PATCH v3 03/11] dt-bindings: leds: aw200xx: introduce optional
 enable-gpios property
Message-ID: <169928241636.327345.6928355613329474540.robh@kernel.org>
References: <20231101142445.8753-1-ddrokosov@salutedevices.com>
 <20231101142445.8753-4-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101142445.8753-4-ddrokosov@salutedevices.com>


On Wed, 01 Nov 2023 17:24:37 +0300, Dmitry Rokosov wrote:
> Property 'enable-gpios' is optional, it can be used by the board
> developer to connect AW200XX LED controller with appropriate 'enable'
> GPIO pad.
> 
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


