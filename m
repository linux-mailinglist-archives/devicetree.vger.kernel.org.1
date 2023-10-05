Return-Path: <devicetree+bounces-6109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC0E7B9DB3
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 11AFDB209C6
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A2B26E1E;
	Thu,  5 Oct 2023 13:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQz4G4yY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4085266C8
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:55:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1FF0C43215;
	Thu,  5 Oct 2023 13:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696514104;
	bh=ruPafLxqiqN5GVxCe5nkJ2euYsptGUelC3r4B7yxjts=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WQz4G4yYnAdDDEo1AaWaMUeq+Ut8JXdSfJlNQcrG0O9WNOg2EptQ/FY/ZcdWUvTMG
	 i3Fngj/gkp6CClxwXXLKWH+0xKI/IGpm3cg8WCvtLWM5xwmNt7wx0TAOKFJOzC/928
	 VoNPrNPKCDAoqctzmVPhaRbjgre0dB7d0bpKvb/u3rDa+5EfIF1vSjUzFCthlVqHQz
	 bdPlYV7e1P2sDeS7IAYcqyxA3hUL7NH1diuUHIAM/xis2VRjtNvljpYzVTwnjkzSC5
	 IVmC/vjFvY+q0nmbauREp932iuThtGgzHx/YVkUKsQqFHfF6R2y3+FtDwQG6DrKYlZ
	 on2FyWwL/MOmw==
From: Lee Jones <lee@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231002-pm7250b-gpio-fixup-v2-1-debb8b599989@fairphone.com>
References: <20231002-pm7250b-gpio-fixup-v2-0-debb8b599989@fairphone.com>
 <20231002-pm7250b-gpio-fixup-v2-1-debb8b599989@fairphone.com>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: mfd: qcom,spmi-pmic: Drop
 unused labels from examples
Message-Id: <169651410138.777767.3255528451615557124.b4-ty@kernel.org>
Date: Thu, 05 Oct 2023 14:55:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 02 Oct 2023 09:00:11 +0200, Luca Weiss wrote:
> There's not much point in having unused labels in the binding example,
> so drop them.
> 
> This patch was originally motivated by ea25d61b448a ("arm64: dts: qcom:
> Use plural _gpios node label for PMIC gpios") updating all dts files to
> use the plural _gpios label instead of the singular _gpio as label but
> this example wasn't updated. But since we should just drop the label
> alltogether, do that.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: mfd: qcom,spmi-pmic: Drop unused labels from examples
      commit: cac94656ff2b16827d7cd455f0d3746280cf3138

--
Lee Jones [李琼斯]


