Return-Path: <devicetree+bounces-9318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BD07CCA52
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:04:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E45CFB210D8
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB292D7A0;
	Tue, 17 Oct 2023 18:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17112D78B
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 18:04:50 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3512993;
	Tue, 17 Oct 2023 11:04:49 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6c63117a659so3633288a34.0;
        Tue, 17 Oct 2023 11:04:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697565888; x=1698170688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EQMZZNtwxKp6PHrZvBpFDkR2RCeELkDJh7t0tRAV+Uk=;
        b=kfL9BHl1EzWyPNBXPsIcguFKKkMYU87ArwX2jjS4aglNvvJ4pYsFEGQCYcQszL8KU3
         c9MOFVCQAlrQ0bh1Jj8v06p4YOxpcT3G6TXCpRUgPHkkT7u8X9oLelEWF8dAs/TU5ltD
         IWqmlgiXG1kgiNWWsNOpILKnBYu6Yb1pWeUEI4XxicUSUWCqTqN9b7BI7rmCbnyoXiVs
         3v52qLhQqhMMnvbUr1XFPWWliLhLacs+sWX/QV5a/s6rggNI03lkQ7RX6i8IrdXsry8y
         DCYcpuzhm3ibhZXdhpu2MjP6nFBKcKZ0RkR2buCoY38uc8lqMLxVt8NkKlU1cZAKlYZB
         Ralg==
X-Gm-Message-State: AOJu0YwTOzjKFqRt/1oDr6hBrwYgwAHlLt9FhzlLt4m6OV2jL+MMbLId
	n9GaqihJ7IxcvkOmdmO0Vg==
X-Google-Smtp-Source: AGHT+IEIu8IPZQgV4rX5TrvEag75rqOcwwjFqP0xMOKHnwKuurJMGdtfsuM15VDdYSV6q3G4M5GkGQ==
X-Received: by 2002:a9d:65c8:0:b0:6b9:c49f:1af7 with SMTP id z8-20020a9d65c8000000b006b9c49f1af7mr3029577oth.20.1697565888470;
        Tue, 17 Oct 2023 11:04:48 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b7-20020a056830104700b006c6311b15f6sm338959otp.38.2023.10.17.11.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 11:04:47 -0700 (PDT)
Received: (nullmailer pid 2258965 invoked by uid 1000);
	Tue, 17 Oct 2023 18:04:46 -0000
Date: Tue, 17 Oct 2023 13:04:46 -0500
From: Rob Herring <robh@kernel.org>
To: Flavio Suligoi <f.suligoi@asem.it>
Cc: dri-devel@lists.freedesktop.org, Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, Helge Deller <deller@gmx.de>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>
Subject: Re: [PATCH v1] dt-bindings: backlight: add brightness-levels related
 common properties
Message-ID: <169756588486.2258419.14570431419592615885.robh@kernel.org>
References: <20231016150554.27144-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016150554.27144-1-f.suligoi@asem.it>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Mon, 16 Oct 2023 17:05:54 +0200, Flavio Suligoi wrote:
> Both files pwm-backlight.yaml and led-backlight.yaml contain properties
> in common with each other, regarding the brightness levels:
> 
> - brightness-levels
> - default-brightness-level
> 
> These properties can then be moved to backlight/common.yaml.
> 
> Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
> ---
>  .../bindings/leds/backlight/common.yaml       | 17 ++++++++++++++++
>  .../leds/backlight/led-backlight.yaml         | 19 ++++--------------
>  .../leds/backlight/pwm-backlight.yaml         | 20 ++++---------------
>  3 files changed, 25 insertions(+), 31 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


