Return-Path: <devicetree+bounces-12980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA867DC190
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68EC62815DC
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD7B41BDD4;
	Mon, 30 Oct 2023 21:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E89C1A736
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:06:00 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 711D7FF;
	Mon, 30 Oct 2023 14:05:59 -0700 (PDT)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-57f0f81b2aeso2743952eaf.3;
        Mon, 30 Oct 2023 14:05:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698699959; x=1699304759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B9b8yRbcU2SsJIUn99dRsWUQrYEHNEkALeq7pmho+k4=;
        b=qgaOoszgqJkXZcZskYQbj12u1sLoqQ+vS8qAvOtT2yQUx3HU6gW80e1tyTf/E0oBWA
         N3rC/xs2unE7GdLgowoA+QyCZhWcEYRFScWRtbXUGlT1U7Y9+ynQvHzU1WHU7j0KJ2XQ
         HzMSpbsmh4V2CZaW37m4meNJaBn/qj85vDcY82obLhnuwzh8Pwr5la/776r+Hv5P1qgS
         KCaHfIm9nGYCv7DgygwIqy3cI2H3E5uQMNRKNV1TxlvewowrN4d32mEgE5VtFYvu0wz4
         7vJ7r167DC7ne9k26BA4SuC3B6KSZeBvZ49nOujhcN4rYBRhdQRXtP71TToQmG+KxAWZ
         /Qfg==
X-Gm-Message-State: AOJu0YxQihyB06okhacnU5Bo5x3cZemlCIjSLtcq7Vs9GuVbAVauKsR5
	4SMMzAblPW/rK/JsdelgoA==
X-Google-Smtp-Source: AGHT+IG4qTbD6SgqI7z9BeiHmnh22XwU6n1Av0H01o3QjlBhOkUqSdyDIU2X/Y9zYeLL/JnesSOw1w==
X-Received: by 2002:a4a:e7d5:0:b0:581:f6d8:5ca2 with SMTP id y21-20020a4ae7d5000000b00581f6d85ca2mr10506008oov.6.1698699958719;
        Mon, 30 Oct 2023 14:05:58 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u17-20020a4a9711000000b0057bcbc23738sm1972423ooi.17.2023.10.30.14.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 14:05:57 -0700 (PDT)
Received: (nullmailer pid 2462145 invoked by uid 1000);
	Mon, 30 Oct 2023 21:05:56 -0000
Date: Mon, 30 Oct 2023 16:05:56 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Leo Yan <leo.yan@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, James Clark <james.clark@arm.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm,coresight-cti: Drop type for 'cpu'
 property
Message-ID: <169869995373.2462048.15638522466589160711.robh@kernel.org>
References: <20230925220511.2026514-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925220511.2026514-1-robh@kernel.org>


On Mon, 25 Sep 2023 17:05:05 -0500, Rob Herring wrote:
> 'cpu' has been added as a single phandle type to dtschema, so drop the
> type here.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied, thanks!


