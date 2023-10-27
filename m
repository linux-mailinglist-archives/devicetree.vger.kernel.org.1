Return-Path: <devicetree+bounces-12556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6157DA1D4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 22:35:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23EE51C210E7
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9692F3B7B8;
	Fri, 27 Oct 2023 20:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA553986E
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 20:35:42 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A29D1AA;
	Fri, 27 Oct 2023 13:35:41 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6cd33d51852so1635377a34.2;
        Fri, 27 Oct 2023 13:35:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698438941; x=1699043741;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0MCKR3GOOa2vZ/7J6O5w9Wxt+RdpyTKLpyAWuEdIOw=;
        b=OqJgWEm8BGf9KrfladeT2zmDhAqH6MFCazvYvpLSaVmyikwlS6NLliNOWsCEihxGqt
         HAi+7C12LqyvHmKZk7EojjwRAmUNajJ5AGBuN3HrZCVhsPVXUFdw+EUv1MyChZWzQJyt
         ZgDR7aoHOjBNzfaVutpOR9RFoMhvFk7eaZ5CP5egOGpRFnmYgKAANyieq9oXpPkRMh1U
         D+zn8yyw0CopWJV3u3264Qj+Sj+qa6RqneMa0JKTlcH9kK/2qeGCGsYSgxxs8xJQWYOm
         jPN9ZxlisNrnLWxIkfBCjaI2NGYsNkrsj6txG49F1v//Og5K2jNhrsyzQ3Z54+Z1taUt
         LN6w==
X-Gm-Message-State: AOJu0YyaSeisp3TR0/fcgCHw1nE96mrUY/Jcyf8uE5ufBfGZJczYPim1
	tDhyfhlKVEYeFNis2h93/w==
X-Google-Smtp-Source: AGHT+IFjNDirDMzT5Dcd+/NCUYRApXXNhOwqVIh4YUcK+n2IkbbOJWMQUXnRoSqH2Kmegr6O+qzJmw==
X-Received: by 2002:a9d:3e11:0:b0:6d2:e1fd:9f3a with SMTP id a17-20020a9d3e11000000b006d2e1fd9f3amr1603912otd.10.1698438940787;
        Fri, 27 Oct 2023 13:35:40 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e15-20020a4aaacf000000b0057b8baf00bbsm503418oon.22.2023.10.27.13.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 13:35:38 -0700 (PDT)
Received: (nullmailer pid 3327205 invoked by uid 1000);
	Fri, 27 Oct 2023 20:35:36 -0000
Date: Fri, 27 Oct 2023 15:35:36 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, kernel@pengutronix.de, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/7] regulator: dt-bindings: Add
 regulator-uv-survival-time-ms property
Message-ID: <169843893546.3327050.8390769854034176045.robh@kernel.org>
References: <20231025084614.3092295-1-o.rempel@pengutronix.de>
 <20231025084614.3092295-7-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025084614.3092295-7-o.rempel@pengutronix.de>


On Wed, 25 Oct 2023 10:46:13 +0200, Oleksij Rempel wrote:
> Introduce a new Device Tree property 'regulator-uv-survival-time-ms' to
> specify the survival time post a critical under-voltage event. This
> property defines the time in milliseconds the system can operate before
> the on-board capacitors fail, providing a window for necessary actions
> or preparations to be taken before power loss, aligning with the
> under-voltage event handling mechanism.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/regulator/regulator.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


