Return-Path: <devicetree+bounces-4007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4F57B0FF7
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 02:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CAA7E281B80
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 00:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4FC163;
	Thu, 28 Sep 2023 00:30:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC3E7E2
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EA20C433C7;
	Thu, 28 Sep 2023 00:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695861001;
	bh=kXFSCeRU2ImTAfuVFvWc2Qp0CvqqeJOrJwWl5+HdpAk=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=atPeUuvoPLi3iU+dg7MQuE4O7PqPJfd6TEPAINWhLnshhqP9xQOmzXnX+LLWu6yBJ
	 hYJuR7q3aRBFudSxvb8F7ZFx2xY53PzDVZoQei3TqxGycOeVMHoshEPvAYAXL3JxeI
	 xZ/hLAor3pDublhIXvj1xjtlsgCwpINT6pYGL2PF+NXM94mmgoeuwbfRZoRADjCqst
	 Qp/JXiEDuPi1YzZo331Z7rP8x6hyUtYnGnibm4Sz8+xCu2GDV2pwtyIOVbRXouu+ZV
	 Trymnp67pw1LcKjUt8VyqTEmf5b1TYcW6dQ3e/95KH4rIz49BAryNXT2dWXhhzdAYV
	 QyxTvI+7USs7g==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [RESEND PATCH 1/2] ARM: dts: qcom: apq8064: drop label property from DSI
Date: Wed, 27 Sep 2023 17:34:05 -0700
Message-ID: <169586125037.1226038.2973634569568481893.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org>
References: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 24 Sep 2023 20:33:34 +0200, Krzysztof Kozlowski wrote:
> DSI node does not accept nor use "label" property:
> 
>   qcom-apq8064-asus-nexus7-flo.dtb: dsi@4700000: Unevaluated properties are not allowed ('label' was unexpected)
> 
> 

Applied, thanks!

[1/2] ARM: dts: qcom: apq8064: drop label property from DSI
      commit: 83daed13a5aa0ca563bfde920178ca67fbbdb5f3
[2/2] ARM: dts: qcom: sdx65: fix SDHCI clocks order
      commit: 88fc274cb6c4bd643b0157db2602f685af57b846

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

