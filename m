Return-Path: <devicetree+bounces-11977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D66047D74B9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:49:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 124051C20D49
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 622AC31A92;
	Wed, 25 Oct 2023 19:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07D42E64F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:49:45 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1DC193;
	Wed, 25 Oct 2023 12:49:44 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1dceb2b8823so49781fac.1;
        Wed, 25 Oct 2023 12:49:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698263384; x=1698868184;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KlpnZS6vHRIFnFbC0pQo/A91UW+0pz54vArEwjVrVww=;
        b=LUyc8PU+GNTKhltVRNVptyX0JC3ROB1lDqdbTQvZ/Lhn9VUeUsL+gZIMnI+bUd01xC
         xXW7s3BYZS/NLL2oBLgIWlrgwyQDwGAjxdu0G7oOLJD2ZWHA+E6STkcf2AHFBrTGBsN4
         RTm7GeDskvW2QDy8363BCIY6d9FktI8/HwR460bU2nxjX+Nq8bLZJBLwjae/sjTzsu1Z
         oQbbyR+2A1QVIHq59kCYXKg3AWBnGitxyRZwHAP3dzMo3gENk1tnS6pEeSzAY4ydvM1/
         ab6v0HTyQH2m1Ef5x8wTim1vmxApe+8FcxjJoE6Rb/oqDag/GZ7LcvN7jXnLqX3ZEdKD
         gSiw==
X-Gm-Message-State: AOJu0YwjVSmHGNdLEftN8pK8dgISfZMO4nWTMLp/9ZZDtMCTUvHpAC2/
	V9ivHJkbh4VdPihLAmYnxw==
X-Google-Smtp-Source: AGHT+IGBHca4D69sq5SUb+4A1BYOlPKyV6+DnZxSCW2CC4ONvq8/C5HyP20X+NVQ6jOPYr1M+S+tgA==
X-Received: by 2002:a05:6871:34a1:b0:1e9:e413:b9d with SMTP id ni33-20020a05687134a100b001e9e4130b9dmr368135oac.2.1698263384044;
        Wed, 25 Oct 2023 12:49:44 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t1-20020a4aadc1000000b00581fc1af0a7sm124913oon.28.2023.10.25.12.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 12:49:43 -0700 (PDT)
Received: (nullmailer pid 1048139 invoked by uid 1000);
	Wed, 25 Oct 2023 19:49:42 -0000
Date: Wed, 25 Oct 2023 14:49:42 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Taniya Das <quic_tdas@quicinc.com>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/10] dt-bindings: clock: qcom: document the SM8650
 Display Clock Controller
Message-ID: <20231025194942.GA1038327-robh@kernel.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-3-c89b59594caf@linaro.org>
 <169824516120.243773.546101172844888564.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169824516120.243773.546101172844888564.robh@kernel.org>

On Wed, Oct 25, 2023 at 09:47:33AM -0500, Rob Herring wrote:
> 
> On Wed, 25 Oct 2023 09:32:40 +0200, Neil Armstrong wrote:
> > Add bindings documentation for the SM8650 Display Clock Controller.
> > 
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  .../bindings/clock/qcom,sm8650-dispcc.yaml         | 106 +++++++++++++++++++++
> >  include/dt-bindings/clock/qcom,sm8650-dispcc.h     | 101 ++++++++++++++++++++
> >  2 files changed, 207 insertions(+)
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/clock/qcom,sm8650-dispcc.example.dts:18:18: fatal error: dt-bindings/clock/qcom,sm8650-gcc.h: No such file or directory
>    18 |         #include <dt-bindings/clock/qcom,sm8650-gcc.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/clock/qcom,sm8650-dispcc.example.dtb] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
> make: *** [Makefile:234: __sub-make] Error 2

Looks like the series got split up in the delivery causing this.

Rob

