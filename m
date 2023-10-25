Return-Path: <devicetree+bounces-11817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A03247D6B3A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2000FB20CE6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BDD6273FD;
	Wed, 25 Oct 2023 12:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkXkYfyS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE7E1F607
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:21:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F330C433C8;
	Wed, 25 Oct 2023 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698236490;
	bh=Okz7c5dGviB2uHQSZqH4cKSK6Sowbf5t1NKnOKrQ7hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IkXkYfyS3NZWmbxzxm3uLKvX7SCxiEwxnoMdBNTx2FFRQ3GvZxLWZ6Kpd/1+VlSdT
	 giw07NoUWUHq03K3+USdePtGfOarLh0Gp3E264Q/6f9x2QCBuLAX6nEBymy6EGY3JE
	 LzyLVlHq7LSQQWIhfHTDVSp7wUy/pGubLjuoCiTVGYZj6rl5cwE+vs0gkW8Mt42GHB
	 Z/59EbxnQYi5UMB66yOUtPmTEv295OnXWzGYbKs70pRM6GP/nrXDoPxecLB5wY1v6B
	 B0OFBGEdRtX+3q8SUHv0687Dp5PBEd+GeaPWDkKNOPBJGBn1AG1PHFlM/YgpR9Y2R3
	 wvw+0QwNv/Blw==
Date: Wed, 25 Oct 2023 13:21:24 +0100
From: Lee Jones <lee@kernel.org>
To: Nikita Travkin <nikita@trvn.ru>
Cc: Rob Herring <robh@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916
 vm-bms and lbc
Message-ID: <20231025122124.GO8909@google.com>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru>
 <169808265626.861066.13083505051202182067.robh@kernel.org>
 <53474576e3c860a1bb93f811cfe3964a@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <53474576e3c860a1bb93f811cfe3964a@trvn.ru>

On Tue, 24 Oct 2023, Nikita Travkin wrote:

> Rob Herring писал(а) 23.10.2023 22:40:
> > On Mon, 23 Oct 2023 11:20:32 +0500, Nikita Travkin wrote:
> >> PM8916 (and probably some other similar pmics) have hardware blocks for
> >> battery monitoring and charging. Add patterns for respecive nodes so the
> >> devicetree for those blocks can be validated properly.
> >>
> >> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> >> ---
> >>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml:
> > Error in referenced schema matching $id: http://devicetree.org/schemas/power/supply/qcom,pm8916-bms-vm.yaml
> > 
> > doc reference errors (make refcheckdocs):
> > 
> > See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru
> > 
> > The base for the series is generally the latest rc1. A different dependency
> > should be noted in *this* patch.
> > 
> 
> Somehow I missed the memo and thought it tracks -next...
> 
> This patch depends on 7f590e3831 and 5cee843d56 in linux-next.git
> They were applied in [1].
> 
> I'm wondering if the bot just bails out when the "depend" is present
> or there is some more sophisticated logic to suggest the base to it?

So is this good to go, or not?

-- 
Lee Jones [李琼斯]

