Return-Path: <devicetree+bounces-11973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 036187D7486
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:40:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1D25281D41
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E3231A77;
	Wed, 25 Oct 2023 19:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA83E30FBF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:40:41 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA22793;
	Wed, 25 Oct 2023 12:40:40 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6ce2de8da87so69574a34.1;
        Wed, 25 Oct 2023 12:40:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698262840; x=1698867640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+7MAwKpUzwgGAIVoiREv1kIxax6UFmWki8e8KL5W6jo=;
        b=SVe2jvw8i6/4cszuGs5cJ8qU/3Vw4qzSyReXyOV1XYw+GwcXV5jKCqp6axjPcMBDje
         NkAIwPcpoPWUOWqWE1L8p0XfOmr62uSsivsi2aI3mV/oExMcMdZqZDyZh6/ac07d58Up
         m9xkPUfiU9q49HwzBQND/BeOcUK112EeQak2RgtY93ivFwXWgn+RFevBaPr2A27+rEhY
         23328X4VMirfqYse+icI0oCD2um6J/UA7iHWr+UqtsLbMN5eKXLZ90ILJ2C4coZ0Du67
         u3MRexBSqLl8CK0wPn9NApSYUoZh6bN3wRMIfwt5lxiiKv9G9oFBPM/T94EzZM8OnBHB
         Q2Nw==
X-Gm-Message-State: AOJu0Yw7Cxk+L9vOdVKbKFtYh8buC9xKXULBwYXNx4EzwohQQtuSiWmP
	iXQIznTDMFrkrdvYk5YTVQ==
X-Google-Smtp-Source: AGHT+IFcxU6mqudgZMrEKBzvcu7nowVTZw5K+NHrR50t+qC3ehsoBRlv3lsYw/T2o5QFSBYYgrSKzA==
X-Received: by 2002:a05:6830:4412:b0:6ce:29cd:b69e with SMTP id q18-20020a056830441200b006ce29cdb69emr21421396otv.6.1698262839991;
        Wed, 25 Oct 2023 12:40:39 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r24-20020a05683001d800b006ce1f9c62a1sm2329537ota.39.2023.10.25.12.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 12:40:39 -0700 (PDT)
Received: (nullmailer pid 1038207 invoked by uid 1000);
	Wed, 25 Oct 2023 19:40:38 -0000
Date: Wed, 25 Oct 2023 14:40:38 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 04/10] dt-bindings: clock: qcom: document the SM8650 GPU
 Clock Controller
Message-ID: <169826283738.1038135.10919191785530268283.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-4-c89b59594caf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-4-c89b59594caf@linaro.org>


On Wed, 25 Oct 2023 09:32:41 +0200, Neil Armstrong wrote:
> Add bindings documentation for the SM8650 Graphics Clock Controller.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
>  include/dt-bindings/clock/qcom,sm8650-gpucc.h      | 43 ++++++++++++++++++++++
>  include/dt-bindings/reset/qcom,sm8650-gpucc.h      | 20 ++++++++++
>  3 files changed, 65 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


