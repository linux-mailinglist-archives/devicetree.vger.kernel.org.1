Return-Path: <devicetree+bounces-11831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 396A07D6C76
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6966B1C20CB2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEDF526E34;
	Wed, 25 Oct 2023 12:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="BJxvSeoP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1998467
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:57:27 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7A2C8F;
	Wed, 25 Oct 2023 05:57:25 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id EC8D0401B5;
	Wed, 25 Oct 2023 17:57:17 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698238638; bh=JzCgUGweZjRuxxNU1g3eIRDVzT4P0AzRXtHxoGPZHgY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=BJxvSeoPB8gqOmJj4wyYR8fTLT5fJgrw2rumFOHlm2mWm1D9LBquF40UE68tag0e0
	 gE13ZzabJCcd75kUGBBR5qhITZha5c4Hq6RlCJTRKGo7nqWxUQqSxHMLTFkpZZsieK
	 qIM+RGw7wGqCwAzCNecDRCeU+Iq8HBmN/0WmoZCIcMDoCnD1DIgdkCZyA1ofEX5G8l
	 1Lu37MoYZnlpeYiXwZ6swUTQUL3rpx4RGT54u19+40Fl6KpdIf4AzqC1aZNj05T6lE
	 jftmKGyBPlBN36GUnxri26i5VWxxQ8L1ScmsPhmEpmLX0ehuPzxMgpVlV7LfKcO/zc
	 qTz8Kf1+buwug==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Wed, 25 Oct 2023 17:57:17 +0500
From: Nikita Travkin <nikita@trvn.ru>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Konrad
 Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, Bjorn
 Andersson <andersson@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916
 vm-bms and lbc
In-Reply-To: <20231025122124.GO8909@google.com>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru>
 <169808265626.861066.13083505051202182067.robh@kernel.org>
 <53474576e3c860a1bb93f811cfe3964a@trvn.ru>
 <20231025122124.GO8909@google.com>
Message-ID: <eaa4a6e2d8539a0a772286f7f13ccc2c@trvn.ru>
X-Sender: nikita@trvn.ru
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Lee Jones писал(а) 25.10.2023 17:21:
> On Tue, 24 Oct 2023, Nikita Travkin wrote:
> 
>> Rob Herring писал(а) 23.10.2023 22:40:
>> > On Mon, 23 Oct 2023 11:20:32 +0500, Nikita Travkin wrote:
>> >> PM8916 (and probably some other similar pmics) have hardware blocks for
>> >> battery monitoring and charging. Add patterns for respecive nodes so the
>> >> devicetree for those blocks can be validated properly.
>> >>
>> >> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>> >> ---
>> >>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
>> >>  1 file changed, 6 insertions(+)
>> >>
>> >
>> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
>> >
>> > yamllint warnings/errors:
>> >
>> > dtschema/dtc warnings/errors:
>> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml:
>> > Error in referenced schema matching $id: http://devicetree.org/schemas/power/supply/qcom,pm8916-bms-vm.yaml
>> >
>> > doc reference errors (make refcheckdocs):
>> >
>> > See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru
>> >
>> > The base for the series is generally the latest rc1. A different dependency
>> > should be noted in *this* patch.
>> >
>>
>> Somehow I missed the memo and thought it tracks -next...
>>
>> This patch depends on 7f590e3831 and 5cee843d56 in linux-next.git
>> They were applied in [1].
>>
>> I'm wondering if the bot just bails out when the "depend" is present
>> or there is some more sophisticated logic to suggest the base to it?
> 
> So is this good to go, or not?

IMO this patch should be good, it passes the check on today's linux-next
on my end.

The only concern might be that if someone runs dt_binding_check on
for-mfd-next, it would skip that file with an error since there is no
dependency yet.

If this is critical to you, I was going to respin this after the -rc1,
but if you can pick the schema now, I can respin the remainder earlier.

Nikita

