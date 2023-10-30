Return-Path: <devicetree+bounces-12979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 231FC7DC17D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D09F1C20ADC
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C93F21A70F;
	Mon, 30 Oct 2023 21:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBCB1C286
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:02:42 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59D6EDD;
	Mon, 30 Oct 2023 14:02:41 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3b3e7f56ca4so2750357b6e.0;
        Mon, 30 Oct 2023 14:02:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698699760; x=1699304560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d7f1xtNDZ2uDSqBxTL8RZj3B3UCu3G/3InhqrWq5zmE=;
        b=EHN889V/7iU1eJNrtj8FEdvl0+Oun6scFR4S6u0gLSj2athWAKZamWJClvcqdC0tZY
         4f9L3pW0Gdu07Cg8lMRvUngLAAGVNAuE5owrFfMn4yVRZ5PyVfu1ftylJa7vK30oxW7F
         1gwWKvt9P17SPExvhSCQse/GB2kgEPAS+Y7iDwGefc/Wx8kutn5bdaUi0WMu+M6Xt3iE
         AGQzp1kMAy6uvTpT5rLvQkV8RToEhrjXGTkE7KADGKM3BupCN3NQ4HCVsBRSdHuxtbeT
         3awYiB2phlg1BFJD11655q+xqbWrEy5yeklw4arQL4+rqFIFgH+G1j5IC0I02FfNy6hz
         HrcQ==
X-Gm-Message-State: AOJu0YyqLl90bsuPILWDIzzBlOLhu14ghO+SlagrqfyoLvSH2Vvc1/7m
	2e53B2V7OXVM/B4jy9HG3j7AIbrMJg==
X-Google-Smtp-Source: AGHT+IEIAyLxg6HwrCzx3hlGBX4hCgvdOO1NyX+dV0BfyIjLzSLOUFRLFUBIowlOSbqHK1sdnH83zQ==
X-Received: by 2002:a05:6808:1526:b0:3a7:4878:235a with SMTP id u38-20020a056808152600b003a74878235amr11894866oiw.29.1698699760623;
        Mon, 30 Oct 2023 14:02:40 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bk28-20020a0568081a1c00b003b274008e46sm1524847oib.0.2023.10.30.14.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 14:02:39 -0700 (PDT)
Received: (nullmailer pid 2457362 invoked by uid 1000);
	Mon, 30 Oct 2023 21:02:38 -0000
Date: Mon, 30 Oct 2023 16:02:38 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Rao Mandadapu <quic_srivasam@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH] dt-bindings: soundwire: Add reference to
 soundwire-controller.yaml schema
Message-ID: <169869975649.2457261.10866906758422041610.robh@kernel.org>
References: <20231016155537.2973625-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016155537.2973625-1-robh@kernel.org>


On Mon, 16 Oct 2023 10:55:37 -0500, Rob Herring wrote:
> The soundwire-controller.yaml schema already defines the form for devices
> in child nodes, so there's no need to do the same in the QCom controller
> binding. Add a $ref to the soundwire-controller.yaml schema and drop the
> child node schema.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/soundwire/qcom,soundwire.yaml       | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
> 

Applied, thanks!


