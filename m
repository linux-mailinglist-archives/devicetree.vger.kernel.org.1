Return-Path: <devicetree+bounces-12283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3027D8A5B
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE16C1C20E5D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA3A3D976;
	Thu, 26 Oct 2023 21:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BA03D972
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:30:16 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 883A11B8;
	Thu, 26 Oct 2023 14:30:15 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6c496719a9aso696183a34.0;
        Thu, 26 Oct 2023 14:30:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698355815; x=1698960615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uumGThsJ2tlUaZjqU3bdbGfVUfgLKIQvS1lFDTq8c1w=;
        b=Xf3I8DQBAiralYV1Jj+Qen1VW85y5mi+4USd2HhHhIrhRzFR2ZNBez47loA6zcuWtf
         n+16yqsI+z8aIYoXzn2VQyCgGgIh7gz2ltxV/I//8a2oTl7iwB3VIYEzilldbKBo88Nx
         9d+qTGnC7zNPj6Rs7sJH5t9rPe6JKu5s4Yl2WdKnSMHOeMzyHGhsBBmcOoxv/eiq2Jvi
         esUPl3yVFp9WSSjVNLtiHhmyecFcshEwvafPw1If8PTmpUj+RNzqP9jmqad96Icr+gkz
         O5zY3QZu89zleIjVEVIOLm9wUkbwXVYN9gFWkuC8NLYB/yhhNzAf2Ipx01+2yt4aID7Z
         C5jA==
X-Gm-Message-State: AOJu0Yw+C4NiJmr4V3KVTORvU0FuzCOvQoOEirqh0BR5A4PjhtdIRW4m
	eVwVj1M+4HlpmMfvcoq2KA==
X-Google-Smtp-Source: AGHT+IHpAIzrvCKKP9M3qSm4lSVVUNNQifVFkf7JpI2Hg+LQCSJEKd/X1+kX9BNdDutzrXnjp/OvKQ==
X-Received: by 2002:a05:6830:349b:b0:6c7:c1b0:19f1 with SMTP id c27-20020a056830349b00b006c7c1b019f1mr2676824otu.1.1698355814815;
        Thu, 26 Oct 2023 14:30:14 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q20-20020a056830019400b006c631df1690sm20775ota.69.2023.10.26.14.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 14:30:14 -0700 (PDT)
Received: (nullmailer pid 431241 invoked by uid 1000);
	Thu, 26 Oct 2023 21:30:13 -0000
Date: Thu, 26 Oct 2023 16:30:13 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>
Subject: Re: [PATCH] dt-bindings: crypto: qcom,prng: document SM8650
Message-ID: <169835581287.431203.13078545461412266189.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-bindings-rng-v1-1-6b6a020e3441@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-rng-v1-1-6b6a020e3441@linaro.org>


On Wed, 25 Oct 2023 09:28:54 +0200, Neil Armstrong wrote:
> Document SM8650 compatible for the True Random Number Generator.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>  Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


