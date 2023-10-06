Return-Path: <devicetree+bounces-6500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B01C97BB8E4
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:18:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 406EE2822C0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A258920B19;
	Fri,  6 Oct 2023 13:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krjLWP6X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842711D55B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:18:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE96CC433C8;
	Fri,  6 Oct 2023 13:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696598329;
	bh=u2GIT0lse2wS60plD52rNEhfKu8JINFb0VqbN2wQLa4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=krjLWP6Xj7pgflul8+Fhu5Pv/P4FQ1+zhfx2pLjkOnylFNtLTiRZKY2hbTXrrQceO
	 9/Pv5uQGIxuUmjNDxEPwyGwsGEcoCuK6qiGWTleQg3o0a/Y1/prREpD5x7ILg874uL
	 MMPcr5OPzTuyBPMrcL2/8Pro4NGAI/VW0RDHqn79af47JrJKBO9ABHb2FYBAm7t0PU
	 sS1w3IYIgYzQsXxM618aJhdBad+D87DXCqkvBcOQBigcK04cIPTzGQAPvKD7NSQ0u2
	 cG4nx6oEjdCqR9aSJ1JFoisKiwYQvbLpWjSKadYDtmX4+YpEFoTcmfrJn+soVIXudJ
	 Kyu2ajSJSXcfA==
Received: (nullmailer pid 3410063 invoked by uid 1000);
	Fri, 06 Oct 2023 13:18:43 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Linux PM <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lukasz Luba <lukasz.luba@arm.com>,
 devicetree@vger.kernel.org,
 Amit Kucheria <amitk@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
In-Reply-To: <5716404.DvuYhMxLoT@kreacher>
References: <5716404.DvuYhMxLoT@kreacher>
Message-Id: <169659832348.3409986.16820307308672715034.robh@kernel.org>
Subject: Re: [PATCH v1] thermal: Remove Amit Kucheria from MAINTAINERS
Date: Fri, 06 Oct 2023 08:18:43 -0500


On Fri, 06 Oct 2023 13:21:14 +0200, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Amit Kucheria has not been participating in kernel development in any
> way or form for quite some time, so it is not useful to list him as a
> designated reviewer for the thermal subsystem or as the maintainer of
> the thermal zone device bindings.
> 
> Remove him from those two places accordingly.
> 
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
>  Documentation/devicetree/bindings/thermal/thermal-zones.yaml |    3 ---
>  MAINTAINERS                                                  |    1 -
>  2 files changed, 4 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/thermal-zones.yaml: 'maintainers' is a required property
	hint: Metaschema for devicetree binding documentation
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/5716404.DvuYhMxLoT@kreacher

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


