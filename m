Return-Path: <devicetree+bounces-15077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D067E84CF
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 21:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1BD91F20EF7
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 20:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225963C08E;
	Fri, 10 Nov 2023 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7873B782;
	Fri, 10 Nov 2023 20:57:19 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867E94EEE;
	Fri, 10 Nov 2023 12:57:18 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6ce344fa7e4so1456585a34.0;
        Fri, 10 Nov 2023 12:57:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699649838; x=1700254638;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nm5zX5sql3IowmYolUuWYQdm2nSrl6pQAH5NV0J1g1c=;
        b=eTb/NnOKIr2/9/5/hbG/PuQWyJ76Sw0m7/skGvKTdJvMidzBAYyCF1hGv3VEPxKiAf
         ssN6c5CT23n70SqDwScuizYPMHVo0PNGFLd70L/Cc5UrGPcqhvpE4LbSaSNxSBeUncb1
         9lORHJpkn1+6AsS5mrzw2OhP/zxpfm0w3Qe7bDJFvJ7hgUo7hBIO1dXDjjIQCe+xrW+Y
         NMCf62EYTQVKK6c62P/1exZzNnDLLAdQ7NV0Hsew2OOetCpvsJv93o7kg6i9+h3O89DN
         e9eeg5IILhHAwynSu3EnmCX/Z6zsMG7bvA6MCHNG7GBvbXGsOQs+O4Qm3DlRS7ltpnq7
         cXgg==
X-Gm-Message-State: AOJu0YyUyFa7l8/DOjoRsJrOTjTRtxkQdqfbOXEfMeR2gFA0ZHPpEK4P
	+GL9J1Kt5khOKqTVndaS3Q==
X-Google-Smtp-Source: AGHT+IHtZtVlwtJPvoY4OrZnDnqXkONweOm+3JHkApZQBHo5IGHFFFxQ0l5z/Eo218CP8JWWycngxQ==
X-Received: by 2002:a05:6808:640c:b0:3a8:75f8:540a with SMTP id fg12-20020a056808640c00b003a875f8540amr497862oib.44.1699649837752;
        Fri, 10 Nov 2023 12:57:17 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j7-20020aca1707000000b003af6eeed9b6sm48245oii.27.2023.11.10.12.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Nov 2023 12:57:17 -0800 (PST)
Received: (nullmailer pid 418039 invoked by uid 1000);
	Fri, 10 Nov 2023 20:57:16 -0000
Date: Fri, 10 Nov 2023 14:57:16 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Jagan Teki <jagan@amarulasolutions.com>, Nicolas Belin <nbelin@baylibre.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v8 04/12] dt-bindings: phy:
 amlogic,g12a-mipi-dphy-analog: drop unneeded reg property and example
Message-ID: <20231110205716.GA413638-robh@kernel.org>
References: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-0-81e4aeeda193@linaro.org>
 <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-4-81e4aeeda193@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-4-81e4aeeda193@linaro.org>

On Thu, Nov 09, 2023 at 10:00:05AM +0100, Neil Armstrong wrote:
> Now this bindings is referred from amlogic,meson-gx-hhi-sysctrl.yaml and is
> documented as a subnode of a simple-mfd, drop the invalid reg property.

Why is it invalid? It's preferred to have 'reg' in MFDs even if Linux 
doesn't use them. If there's a chunk of registers you can define, then 
do so. If it's all register bit soup, then fine, omit it.

Rob

