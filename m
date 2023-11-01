Return-Path: <devicetree+bounces-13476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED1A7DE2F1
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:25:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21758B20DE0
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A084314016;
	Wed,  1 Nov 2023 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74E17480
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:24:50 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFB0D10F;
	Wed,  1 Nov 2023 08:24:48 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3add37de892so3544087b6e.1;
        Wed, 01 Nov 2023 08:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698852288; x=1699457088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZK+aPtB2ShxNmmgyWDDoyiKDIyKkBTaaDzubNkBmA4=;
        b=JZGYVckG3B5GUnIGraYE1+L35oiFyTvoEwZBYa7VBMP669+mGvHDbIt3LhntWYlvZT
         EaE2Ffz7/1QUyoEUn9mXxOG84m+a1q5mciT/fpOPmJ0j8ilpjU0gPwEt6fxwFGfr/9bb
         bPL2TgdSQAZ8Ui2s4MA98+kFsOb7VBALJ9Jy9DTnZvE6lC5RprXW4Iml1IyBTnifZfdI
         O7HdZ6CtubnEOFq1SqNCjNLX0+0G+oPyIfqLM3ZI9uSIUFe8HolNCXPMT7FGU+PsuYbZ
         Mjjd0m0iOys5eimwfxnQnzHciszKzATWF0FQ6+ZFpxQVVik4pj+5TLCwgdcKhUZjvVJ4
         lf9w==
X-Gm-Message-State: AOJu0YzSQR+c2iiz4n4bKA/QXTSjl++8m9s5J0L5c0IrKbKT7+2ptIUx
	m5pxkn4Q4o1i5i1U+3vkIA==
X-Google-Smtp-Source: AGHT+IH8w3z0r/si0urHr1WhtjUbI6x8y1IzUM3+AoC5nRFvnQm5K5Dp7Pv57kb7o3a7czy3Zgb+xw==
X-Received: by 2002:a05:6870:59f:b0:1e9:8e4f:30dd with SMTP id m31-20020a056870059f00b001e98e4f30ddmr17014778oap.6.1698852287916;
        Wed, 01 Nov 2023 08:24:47 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id od37-20020a05687176e500b001db36673d92sm267318oac.41.2023.11.01.08.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 08:24:47 -0700 (PDT)
Received: (nullmailer pid 314135 invoked by uid 1000);
	Wed, 01 Nov 2023 15:24:46 -0000
Date: Wed, 1 Nov 2023 10:24:46 -0500
From: Rob Herring <robh@kernel.org>
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Sebastian Reichel <sre@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: power: reset: $ref reboot-mode in
 syscon-reboot-mode
Message-ID: <169885228581.314078.734374815542634865.robh@kernel.org>
References: <20231031-ref-reboot-mode-v1-1-18dde4faf7e8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231031-ref-reboot-mode-v1-1-18dde4faf7e8@quicinc.com>


On Tue, 31 Oct 2023 11:27:00 -0700, Elliot Berman wrote:
> syscon-reboot-mode.yaml should $ref: reboot-mode.yaml, but instead
> rewrites the properties. Update so it $refs instead.
> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>  .../devicetree/bindings/power/reset/syscon-reboot-mode.yaml       | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


