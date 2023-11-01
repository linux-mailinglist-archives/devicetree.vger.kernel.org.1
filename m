Return-Path: <devicetree+bounces-13347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1307DDC04
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 06:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48C22280EEF
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 05:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D1CE1841;
	Wed,  1 Nov 2023 05:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0FMlpxG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBBA7F
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 05:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CF60C433C8;
	Wed,  1 Nov 2023 05:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698814896;
	bh=XGnCho/WGyMRfp4cQpFyBldzXv2oODVRS9OoFwEpSlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D0FMlpxGrIAc0jGl0ETFQ1uumpZhEZvEAl47B0/QOohrkFiourQbVflAh2kmU2OR8
	 Ak3r5iESSQSjkvLDoAcQYDpqFd2AX6ST58tWOSRjLyHMTHc7HzNyRQ0B0gpo3nNnd3
	 GxEei54OjT5fVbJ+bDh9xn7qWMVHWdR185q747IohRlbivNPLej7ETrZSStB92ywcz
	 fY4+VlkwdFMAPh5ZNr5EmHA9OA8FEX9Tmuf4JA2tNVpTMF5I6sB2ldXRZf6bJHTKND
	 oEO31OAQXZ9Mltskjlcy/hRcPP1UakdJuUkHRywtKgGPbI3Kc9ysN2Cngv/xp98hLE
	 a8vGsNA1if+TA==
Date: Wed, 1 Nov 2023 10:31:16 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziqi Chen <quic_ziqichen@quicinc.com>
Cc: quic_asutoshd@quicinc.com, quic_cang@quicinc.com, bvanassche@acm.org,
	beanhuo@micron.com, avri.altman@wdc.com, junwoo80.lee@samsung.com,
	martin.petersen@oracle.com, quic_nguyenb@quicinc.com,
	quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com,
	linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: ufs: qcom: Add msi-parent for UFS MCQ
Message-ID: <20231101050116.GB2897@thinkpad>
References: <1698811270-76312-1-git-send-email-quic_ziqichen@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1698811270-76312-1-git-send-email-quic_ziqichen@quicinc.com>

On Wed, Nov 01, 2023 at 12:01:09PM +0800, Ziqi Chen wrote:
> The Message Signaled Interrupt (MSI) has been used
> by UFS driver since the MCQ be enabled. Hence in UFS
> DT node, we need to give the msi-parent property that
> point to the hardware entity that serves as the MSI
> controller for this UFS controller.
> 
> Signed-off-by: Ziqi Chen <quic_ziqichen@quicinc.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 462ead5..d2f505a 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -103,6 +103,8 @@ properties:
>      description:
>        GPIO connected to the RESET pin of the UFS memory device.
>  
> +  msi-parent: true
> +

This property is not Qcom specific. So this should be part of ufs-common.yaml.

- Mani

>  required:
>    - compatible
>    - reg
> @@ -318,5 +320,6 @@ examples:
>                              <0 0>,
>                              <0 0>;
>              qcom,ice = <&ice>;
> +            msi-parent = <&gic_its 0x60>;
>          };
>      };
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

