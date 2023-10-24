Return-Path: <devicetree+bounces-11127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AF37D46D0
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:09:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B22471C20860
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 05:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 152E2538B;
	Tue, 24 Oct 2023 05:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="hEXV2o1U"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31AF1FA5
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:09:03 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35024111;
	Mon, 23 Oct 2023 22:09:02 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 55B0140905;
	Tue, 24 Oct 2023 10:08:56 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698124138; bh=q54NttpV1FfRW05qzlWZ1SqSwlAmXTZ6aSjxYGY7KXE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=hEXV2o1UII+xmJcFSZnJF9UHZabf0GNo8plNax/SOiQvjPdXGQw1t66tRy0tESmxx
	 fyXivHulTTnVTzBUpZ/oKA9gVAxSwOh4x5yLEp/nqAVZPo86jbRAqpv83cZHucPS/N
	 1e1ZORQSy/cqxVIj0tOW4NLs6lo69cHqgWunMs799NN7429L8HeyC5UgFfWdXM76Vw
	 7ezMPFjk08haR6/gjUFq66RwZERpFqtKvRdmJfgFQaROHwJDMh3wJOxN9pCGjSrua8
	 8Uu4KDzuE6tnxNyMHs1CanW8d6L02bOAIz1gJ1m6kVHJVFzib2SWB2b6+rqIw/eBvC
	 wsdyznY9231jQ==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Tue, 24 Oct 2023 10:08:56 +0500
From: Nikita Travkin <nikita@trvn.ru>
To: Rob Herring <robh@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Konrad
 Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, Bjorn
 Andersson <andersson@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916
 vm-bms and lbc
In-Reply-To: <169808265626.861066.13083505051202182067.robh@kernel.org>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru>
 <169808265626.861066.13083505051202182067.robh@kernel.org>
Message-ID: <53474576e3c860a1bb93f811cfe3964a@trvn.ru>
X-Sender: nikita@trvn.ru
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Rob Herring писал(а) 23.10.2023 22:40:
> On Mon, 23 Oct 2023 11:20:32 +0500, Nikita Travkin wrote:
>> PM8916 (and probably some other similar pmics) have hardware blocks for
>> battery monitoring and charging. Add patterns for respecive nodes so the
>> devicetree for those blocks can be validated properly.
>>
>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>> ---
>>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml:
> Error in referenced schema matching $id: http://devicetree.org/schemas/power/supply/qcom,pm8916-bms-vm.yaml
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 

Somehow I missed the memo and thought it tracks -next...

This patch depends on 7f590e3831 and 5cee843d56 in linux-next.git
They were applied in [1].

I'm wondering if the bot just bails out when the "depend" is present
or there is some more sophisticated logic to suggest the base to it?

Sorry for the inconvenience
Nikita

[1] https://lore.kernel.org/r/20230915-pm8916-bms-lbc-v3-0-f30881e951a0@trvn.ru/

