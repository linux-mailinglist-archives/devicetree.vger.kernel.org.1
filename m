Return-Path: <devicetree+bounces-11979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 286677D74C1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:50:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE159B211A6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89D531A9C;
	Wed, 25 Oct 2023 19:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883C431A8C
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:49:58 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86FD3E5;
	Wed, 25 Oct 2023 12:49:57 -0700 (PDT)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1dceb2b8823so49914fac.1;
        Wed, 25 Oct 2023 12:49:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698263397; x=1698868197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n3vKikt6OYeWXb3oAjUYhU4Xuj5wy7N9Rjuk8Md7fhc=;
        b=g76KLeCzyyZPv5HIQ1m3nFoccoFTfdHIVNfKTr4rIpQD2Ljbqn2Xy9/F9oB1uG7F/S
         wL+GLksCHbaglU3Y8XZ0qXMFKnuUwhj79v1eCaemCUcnzM6G4gS5MZGIuvf1E/wF3Y0s
         UbYRa07nGvzRC3d7hxrM+4b2htV99k7DvXvvAyWDKfCBETnAjsjsKzw4s/Ld2hhL7jZa
         65sWNp3SZ5A9Dp2JEKD4Vg3iz2oBdHtivBw4gw9wF6gyGsSCt9hkRY3G48DEWJwNuJHn
         gEUm3oMXWR9SYpa3VNJTZW2oNHRqBylNWTuWeB1Innc7G3EFaJib23BTiTzLfZQQRZZr
         kD3A==
X-Gm-Message-State: AOJu0YwMnSrEO636jb1B6qf+n3779Klx0DK7ndyI0ct7+pPuCIRAJOfV
	ePWP9vQ2EKpRIkTLSsBpmA==
X-Google-Smtp-Source: AGHT+IG+ATueitqR135p6yft5vgODyhSKOGqBS2G/7od18w9fuimk/yuzsnNtLNqNNkrXHyYBFZ81Q==
X-Received: by 2002:a05:6871:458a:b0:1e9:7912:3bd9 with SMTP id nl10-20020a056871458a00b001e979123bd9mr487526oab.9.1698263396674;
        Wed, 25 Oct 2023 12:49:56 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id le25-20020a05687c341900b001eae28db525sm2726904oac.23.2023.10.25.12.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 12:49:56 -0700 (PDT)
Received: (nullmailer pid 1048441 invoked by uid 1000);
	Wed, 25 Oct 2023 19:49:55 -0000
Date: Wed, 25 Oct 2023 14:49:55 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Taniya Das <quic_tdas@quicinc.com>, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 05/10] dt-bindings: clock: qcom-rpmhcc: document the
 SM8650 RPMH Clock Controller
Message-ID: <169826339456.1048387.10202962523113487323.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-5-c89b59594caf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-5-c89b59594caf@linaro.org>


On Wed, 25 Oct 2023 09:32:42 +0200, Neil Armstrong wrote:
> Add bindings documentation for the SM8650 RPMH Clock Controller.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


