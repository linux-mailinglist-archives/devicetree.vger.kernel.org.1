Return-Path: <devicetree+bounces-10695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D947D281E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 03:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8B32B20C98
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 01:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F99410F2;
	Mon, 23 Oct 2023 01:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4ifp8iz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57EC10EE
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:42:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81BE7C433C8;
	Mon, 23 Oct 2023 01:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698025361;
	bh=jNTnqKIA9zSEXZ2g2t8trq95ee1lqOdZ++9oTgWdJkQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E4ifp8izwADeCTvVUcbR92whapYaa7T10OSUuU4jZgOeRSn7Vj9NfEmQtSw5LC0MC
	 3pKql3qzG6fN218JAjqc3wQKx/DsO33A0nk6c0xpINN2alcnYaFe+VpZUbLHpL/maK
	 xccEFBCo+t1HivNIlGCAiOaDgb6JVfICGBY7F4jC9wFw20FS/N1qfKV4z7z8+WkxRW
	 Sxpi27MZ59secb3vJ22w9vD09b9qXoZQS13vGUHmQ1Zl4gqDLi0uHZ9RZOy8DyJV4U
	 1Khs1YOXcn4kUALdtxIlYo1PebV717aTPbTImepz1ZyQuTFe9bCkuxPAYeYt2BDykK
	 4yJRBwLBMFwVA==
From: Bjorn Andersson <andersson@kernel.org>
To: linux-arm-msm@vger.kernel.org,
	Rayyan Ansari <rayyan@ansari.sh>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	Andy Gross <agross@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH v3 0/6] Initial support for MSM8x26 Lumias
Date: Sun, 22 Oct 2023 18:47:02 -0700
Message-ID: <169802554634.845827.17802503631403350590.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230930221323.101289-1-rayyan@ansari.sh>
References: <20230930221323.101289-1-rayyan@ansari.sh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 30 Sep 2023 23:07:55 +0100, Rayyan Ansari wrote:
> The following patches:
> - Add device tree files for Nokia/Microsoft Lumia phones based around
>   the MSM8x26 family of Qualcomm chipsets, utilising a common tree
> - Document this support
> 
> v1: https://lore.kernel.org/linux-arm-msm/20230811213728.23726-1-rayyan@ansari.sh/
> v2: https://lore.kernel.org/linux-arm-msm/20230813152623.64989-1-rayyan@ansari.sh/
> 
> [...]

Applied, thanks!

[2/6] ARM: dts: qcom: add common dt for MSM8x26 Lumias along with Nokia Lumia 630
      commit: 244281556a11549501eb5093e9ab0ad8a87b7d4f
[3/6] ARM: dts: qcom: add device tree for Microsoft Lumia 640
      commit: 45dbc34693e8ad30c33edfdc94acaf4672de0e24
[4/6] ARM: dts: qcom: add device tree for Microsoft Lumia 640 XL
      commit: a16f3bcf867efdab422b711b18c023089fbeb96e
[5/6] ARM: dts: qcom: add device tree for Nokia Lumia 735
      commit: 00400a98b2c3fd5d497635747fec4b882299bc05
[6/6] ARM: dts: qcom: add device tree for Nokia Lumia 830
      commit: 8677233e59137f78d4d578f3d5a21557c1bab342

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

