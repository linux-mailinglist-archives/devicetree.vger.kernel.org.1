Return-Path: <devicetree+bounces-5532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED98A7B68CF
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:16:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9E9E428160F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6427C22F10;
	Tue,  3 Oct 2023 12:16:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B6D22F0A
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:16:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D63D5C433C7;
	Tue,  3 Oct 2023 12:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696335400;
	bh=HOMiDWufZS8RdGpxw7PziOf8wnBkhbZbrB+flX6wANQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FXcS12JQDypAcLO2+RuZJymMiJLGw4aAALOhEi0MZt+Ft2rZWejpbEshkDj3Gp1nH
	 hu45WqKRqFhK7B2l2e51FzopfWdKbLDGuJyUSYp0tcAaf8IudgMStT/xymuBGMzvwm
	 jAv2hczSB68xiTnsnfzFNn2PoOu4rmLxvBjy4tNLh4cv4hYMMyu8EPGnsjEgYg1sDe
	 99VMzye2SB+bf6GDfpUsx2jx9aoMy+mL+xruZVTvd2rb0kwFKmu3UmA209CB1iRzZR
	 UPCJkvxI1xgMfdJ1LTI18ov9qbUEYyMfA21F7tozPBotila4H3dE8K/JZqlMFBIkgR
	 PX0PH+SDv2dfQ==
Received: (nullmailer pid 282697 invoked by uid 1000);
	Tue, 03 Oct 2023 12:16:35 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: quic_narepall@quicinc.com, bmasney@redhat.com, krzysztof.kozlowski+dt@linaro.org, quic_nitirawa@quicinc.com, vireshk@kernel.org, quic_asutoshd@quicinc.com, quic_bhaskarv@quicinc.com, avri.altman@wdc.com, krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com, robh+dt@kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com, quic_ziqichen@quicinc.com, jejb@linux.ibm.com, cw00.choi@samsung.com, andersson@kernel.org, bvanassche@acm.org, conor+dt@kernel.org, kyungmin.park@samsung.com, martin.petersen@oracle.com, nm@ti.com, linux-kernel@vger.kernel.org, quic_richardp@quicinc.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, myungjoo.ham@samsung.com, konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org, sboyd@kernel.org
In-Reply-To: <20231003111232.42663-2-manivannan.sadhasivam@linaro.org>
References: <20231003111232.42663-1-manivannan.sadhasivam@linaro.org>
 <20231003111232.42663-2-manivannan.sadhasivam@linaro.org>
Message-Id: <169633539510.282606.1450427416869008072.robh@kernel.org>
Subject: Re: [PATCH v4 1/6] dt-bindings: ufs: common: add OPP table
Date: Tue, 03 Oct 2023 07:16:35 -0500


On Tue, 03 Oct 2023 16:42:27 +0530, Manivannan Sadhasivam wrote:
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Except scaling UFS and bus clocks, it's necessary to scale also the
> voltages of regulators or power domain performance state levels.  Adding
> Operating Performance Points table allows to adjust power domain
> performance state, depending on the UFS clock speed.
> 
> OPPv2 deprecates previous property limited to clock scaling:
> freq-table-hz.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/ufs/ufs-common.yaml   | 36 ++++++++++++++++---
>  1 file changed, 32 insertions(+), 4 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/ufs/ufs-common.yaml:90:20: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/ufs/ufs-common.yaml:91:26: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/ufs/ufs-common.yaml:91:36: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231003111232.42663-2-manivannan.sadhasivam@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


