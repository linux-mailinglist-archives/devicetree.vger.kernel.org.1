Return-Path: <devicetree+bounces-1583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC507A713A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16C9E1C20A7B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EA9523C4;
	Wed, 20 Sep 2023 03:54:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEF123A8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:54:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D29CBC433CB;
	Wed, 20 Sep 2023 03:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182095;
	bh=VATz1YuiOizNoYOp18zfXULPZiNNbfUSxGAA3RGZDGo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AjHfha4uDGodr/Jv4pn78mbZVIS+ptUq2TGp1p2ZnlwnKmtIhfFTMyoVzaRq3LEuj
	 Q3qVnHJyWbHDhn8twm8PVSXW/jgfCJ3btpkRHONh5MzpNwxGdzyg9rtpuLnAqhICIW
	 Yac5vJwmgbyXq/RFoHYNhgjnjA2HP6aVuNWOYleDspQJqrOKVCgZvk7+UKbcMCaMEO
	 0cAn/2nDgnR7OO+jqqamtPXFXVOfC/L3waaDAlsYLTnwo2/zIytJmVlgDjpnClyj3H
	 GFW+5ucT9SauJhc6vfXTXokJIzHol5FXexlKiRS5JfHtGBCJtwzhNYhd5RQxtEzmj7
	 IvRdVDANkphxA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/3] arm64: dts: qcom: sm8350: fix pinctrl for UART18
Date: Tue, 19 Sep 2023 20:58:46 -0700
Message-ID: <169518233717.1055386.285753115535542575.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230825214550.1650938-1-dmitry.baryshkov@linaro.org>
References: <20230825214550.1650938-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 26 Aug 2023 00:45:48 +0300, Dmitry Baryshkov wrote:
> On sm8350 QUP18 uses GPIO 68/69, not 58/59. Fix correponding UART18
> pinconf configuraion.
> 
> 

Applied, thanks!

[1/3] arm64: dts: qcom: sm8350: fix pinctrl for UART18
      commit: c1efa960114f743924b884da098298512a7e9983
[2/3] arm64: dts: qcom: sm8350-hdk: add missing PMICs
      commit: 2037fefcdea0252b45f9003659f8b0431054c417
[3/3] arm64: dts: qcom: sm8350-hdk: add pmr735a regulators
      commit: 4e4c45f90ee313a4b475591a3109ff5314127f40

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

