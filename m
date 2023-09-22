Return-Path: <devicetree+bounces-2601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6AF7ABA99
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:46:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3ECEA1C208C4
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 20:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7672944491;
	Fri, 22 Sep 2023 20:46:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662DD22F00
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 20:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94D09C433C8;
	Fri, 22 Sep 2023 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695415615;
	bh=eay6GwYQbfaEzmyzwcvObd/DgNe3CLNUVoO6E+d20yg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yymq+uiS81ryk1wf6TWAs6DfaLd+Bub4d5HtHmprEtMX0a8w+jxgubF/KSPj+P+7d
	 8bbgHPhfBPBLUYRskGRbyn76wZmedtoNQEJYyOfm5aHm56nkas6iWREe95iw670Mo7
	 i5QGoAZCM+wxr8wKoWW5cwEiZwcXxi7hmrHW57Jx4eiQ3cCL85CowjnI2ZMMw0hpv2
	 mHxnnn9LSOhu++DQ4l3PkB34imIAo5TyMjTpNYdP1u8FT2vmwXogCPUk4aSyLa8RKR
	 zw3zY5qjWkB8RRHjp/pRbFGEfYEZBRbBH9Q3JgoaqtNItWc/06+Tj0vgdlGEghj4Pp
	 xOTzmAGe48/LQ==
Received: (nullmailer pid 3551557 invoked by uid 1000);
	Fri, 22 Sep 2023 20:46:52 -0000
Date: Fri, 22 Sep 2023 15:46:52 -0500
From: Rob Herring <robh@kernel.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: devicetree@vger.kernel.org, will@kernel.org, quic_tdas@quicinc.com, rafal@milecki.pl, quic_tsoni@quicinc.com, linux-kernel@vger.kernel.org, kernel@quicinc.com, quic_shashim@quicinc.com, robh+dt@kernel.org, catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org, quic_aiquny@quicinc.com, andersson@kernel.org, geert+renesas@glider.be, agross@kernel.org, quic_kaushalk@quicinc.com, quic_tingweiz@quicinc.com, krzysztof.kozlowski+dt@linaro.org, nfraprado@collabora.com, arnd@arndb.de, maz@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, tglx@linutronix.de, konrad.dybcio@linaro.org, peng.fan@nxp.com, neil.armstrong@linaro.org
Subject: Re: [PATCH v4 1/6] dt-bindings: interrupt-controller: qcom,pdc:
 document qcom,sm4450-pdc
Message-ID: <169541561121.3551501.7523205377363170934.robh@kernel.org>
References: <20230922081026.2799-1-quic_tengfan@quicinc.com>
 <20230922081026.2799-2-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922081026.2799-2-quic_tengfan@quicinc.com>


On Fri, 22 Sep 2023 16:10:21 +0800, Tengfei Fan wrote:
> Add SM4450 PDC, which will used in SM4450 DTS.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


