Return-Path: <devicetree+bounces-12285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C667D8A7E
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:39:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 665D4B2115D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 322BC3D987;
	Thu, 26 Oct 2023 21:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1E211C9E
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:39:25 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84A7210E;
	Thu, 26 Oct 2023 14:39:24 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3b2f4a5ccebso869986b6e.3;
        Thu, 26 Oct 2023 14:39:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698356364; x=1698961164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=owGB7B4AKx9aC9FfJUL9KzWkWR7ZglsVcL0jrgxqndE=;
        b=Khs6ZIpM79ntX9Sb42+08eu+NbWZee7gADo0ORZtT8NKrYGFccg89T0XiCnkHBZNej
         WAdOo+Oy8jK4TQ39opE7K2eqJ4XYzJ2Y0+Pm0y9uGgIHxGzcfxgRMd4I31K7bCQDTmSB
         LIl0Y6KhJvPcO0hPcg+QEQ0QgZIVBw0ACBM1Fs7f5L6oF4YYMO84KCbWpgMsYzw/Fd0V
         zJMDdEqugc1co8ewujY8zJqUkcU+QmUQ4rtipnQx07cQRqGx7I2XZFrNsAyHzJ8s2YNo
         G+qTIksTlk/qNrgtg2FgaIBhwHFvhFHvKhPZtS56LFMkKOKHuWE1Kywgo+VYQ5WgK9h2
         wNBQ==
X-Gm-Message-State: AOJu0YzPOKe8tBovI5b53Ed1ebPbvFF1mFeTxIHbgzbjr+/QIp7NqPIt
	Qogg6G1Z5LJwhOdBGouTkg==
X-Google-Smtp-Source: AGHT+IFhQna7OtMxgkFIDFlhS0L2auquNBNgiVZqtGP36y5bCp4caQ57mkHl3frZkcZRzmA7qQ3TeA==
X-Received: by 2002:a54:4415:0:b0:3a4:3b56:72b2 with SMTP id k21-20020a544415000000b003a43b5672b2mr722017oiw.8.1698356363730;
        Thu, 26 Oct 2023 14:39:23 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h24-20020a056808015800b003ae5cb55513sm39685oie.38.2023.10.26.14.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 14:39:23 -0700 (PDT)
Received: (nullmailer pid 443891 invoked by uid 1000);
	Thu, 26 Oct 2023 21:39:22 -0000
Date: Thu, 26 Oct 2023 16:39:22 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: cache: qcom,llcc: Document the SM8650
 Last Level Cache Controller
Message-ID: <169835636164.443852.14392766930073177451.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-llcc-v1-0-ba4566225424@linaro.org>
 <20231025-topic-sm8650-upstream-llcc-v1-1-ba4566225424@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-llcc-v1-1-ba4566225424@linaro.org>


On Wed, 25 Oct 2023 09:31:36 +0200, Neil Armstrong wrote:
> Document the Last Level Cache Controller on the SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


