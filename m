Return-Path: <devicetree+bounces-10613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE85B7D23A9
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 190F4B20E43
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAAE31094C;
	Sun, 22 Oct 2023 15:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POeBEqAe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8DB107B8
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40B12C433C9;
	Sun, 22 Oct 2023 15:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989572;
	bh=UFQMux8mJrhRG1jHtuMxgySyVsftohzaHt3B3BYT308=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=POeBEqAe91tjxitPUfPpIjYTGL6Y/vQ4chi1wcBZ/dL4mRbB/vfgRF3AzsDzCtm4x
	 3L33IgO+WFuU5nTahxy1thP5or6nykuTuryI3SS+1tBaDYS4t8JdYv3lC3EEVi8YyH
	 R2gueOxeKE096PVEMQ81ScQY3RsZfGFYBPw7N+BZXCQG+NdSM2pdB87wmai3MzIPuW
	 VN89KVnd7Ryf4bniqj1BFr2OmR8A5D/5vNPQQrYkA8tcv34Bmvwm1JufISLXSZV46s
	 lGq906v9GcTRbQTdMxLIqrr2cXmRYIcgUNkN6yOtNJs8BuTGqFVSwcMnLDv/CMW+yz
	 l8HTldCNOVc3g==
From: Bjorn Andersson <andersson@kernel.org>
To: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Luca Weiss <luca@z3ntu.xyz>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: msm8226: provide dsi phy clocks to mmcc
Date: Sun, 22 Oct 2023 08:50:19 -0700
Message-ID: <169798982357.271027.4496714712357504780.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230712-msm8226-dsi-clock-fixup-v1-1-71010b0b89ca@z3ntu.xyz>
References: <20230712-msm8226-dsi-clock-fixup-v1-1-71010b0b89ca@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 12 Jul 2023 09:52:07 +0200, Luca Weiss wrote:
> Some mmcc clocks have dsi0pll & dsi0pllbyte as clock parents so we
> should provide them in the dt, which I missed in the commit adding the
> mdss nodes.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: msm8226: provide dsi phy clocks to mmcc
      commit: 836d083524888069cd358776a4e6c4ceec04962e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

