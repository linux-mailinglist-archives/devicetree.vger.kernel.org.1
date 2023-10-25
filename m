Return-Path: <devicetree+bounces-11972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3B27D747F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:40:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD9B5281CF7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37F431A76;
	Wed, 25 Oct 2023 19:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E2E30FBF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:40:16 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEF0193;
	Wed, 25 Oct 2023 12:40:15 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3b2d9ac9926so40052b6e.2;
        Wed, 25 Oct 2023 12:40:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698262815; x=1698867615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bgzWQGUF2R94XSvaqGsE9kf71dMgnkeRT2bUDQQ5vCg=;
        b=r2MkOu+rsW9gBavov31SG31pajrP1jmAvR+6VS9fziwkUAC4YonD9e4GTHqQjKnh4a
         W2H5TyHxB7eRS8HTWiOs7G7vrWjJ7vgmqH5iwiS8j3/M4eOhHFuRZVq5K/Bcv17FCzvp
         XOCDJxnss2s5Wlla7auD3jHH2/kyYayR34VMiIYPnfpYEtlzS0yzaBm80C3kdCcwxfai
         bgS1cOVojBU52KGyfRiJ5vZArEKB9kOPvb2Y8aK/AuDZtBEmXICnYX8abyUR+o11n19k
         BPXQGJ5zeFIHLDh6M5IG/1SFHFoy32VVp6ujRWWM6dBaNEUro0b/DUbOaww73eHODj25
         qKQQ==
X-Gm-Message-State: AOJu0Yz2aOI87dhrK1XjlzhGSifYXrPVRlmBXLc++Ie0ULpiOnxE1T4X
	giOdawarmuactQT0lVUPTw==
X-Google-Smtp-Source: AGHT+IFeJP7N/L5R+uMmYJroNwQpvnXY+ul54ClclPvR8XWk7eVljdarNhM7eS8z/FAvzyX6wsoIOw==
X-Received: by 2002:a05:6808:2201:b0:3a4:ccf:6a63 with SMTP id bd1-20020a056808220100b003a40ccf6a63mr23179813oib.55.1698262815183;
        Wed, 25 Oct 2023 12:40:15 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b25-20020aca1b19000000b003a99bb60815sm2485395oib.22.2023.10.25.12.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 12:40:14 -0700 (PDT)
Received: (nullmailer pid 1037636 invoked by uid 1000);
	Wed, 25 Oct 2023 19:40:13 -0000
Date: Wed, 25 Oct 2023 14:40:13 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH 03/10] dt-bindings: clock: qcom: document the SM8650
 Display Clock Controller
Message-ID: <169826281293.1037580.4025547355263346758.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-3-c89b59594caf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-3-c89b59594caf@linaro.org>


On Wed, 25 Oct 2023 09:32:40 +0200, Neil Armstrong wrote:
> Add bindings documentation for the SM8650 Display Clock Controller.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/clock/qcom,sm8650-dispcc.yaml         | 106 +++++++++++++++++++++
>  include/dt-bindings/clock/qcom,sm8650-dispcc.h     | 101 ++++++++++++++++++++
>  2 files changed, 207 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


