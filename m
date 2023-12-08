Return-Path: <devicetree+bounces-23139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDF580A5E6
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:51:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9736B20C93
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 14:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 492141E50B;
	Fri,  8 Dec 2023 14:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWuyvLCM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28170179A7;
	Fri,  8 Dec 2023 14:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECB29C433C9;
	Fri,  8 Dec 2023 14:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702047066;
	bh=SQpHakPT9JqzKdX2icL5N+lKtBj/wLSQWGlTEM4Dl7A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qWuyvLCMN/BsuaUXoYhoLQ5LVed9yAIqxRnRk0V8Gs9JshOFjGvoAW2flAPUo+Y/f
	 maVAQdXVxMoGBeTzffSt/AM349OygJrC+pgOwyuUU8PotvgkPcTJSEIBRUu8qCJLVe
	 rgJiFqYLQZMMCeyhQ9hft4s36cmaXgb0fOdqKZ7jO3EUnAUDq4PeixzALDybYQAYhL
	 j6HNUwg0XANCoDA2o97C/3oppKo2SjsxxED0QTFYm8IjaG6NxGu4p2xC5L7QIoWav8
	 xys6PERdD6Uf8MJOXB6EF8bm8aM/97eh7cZbHnF8uhYDse0IME3XADQ8JQXRz9GEPK
	 9LNVxPHKrGOMA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Dang Huynh <danct12@riseup.net>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Caleb Connolly <caleb.connolly@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v2 0/4] Add PM8937 PMIC support
Date: Fri,  8 Dec 2023 06:55:15 -0800
Message-ID: <170204733625.342318.3741380066572261384.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121-pm8937-v2-0-b0171ab62075@riseup.net>
References: <20231121-pm8937-v2-0-b0171ab62075@riseup.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 21 Nov 2023 12:34:58 +0700, Dang Huynh wrote:
> PM8937 is a power management IC. It is used in various boards with
> MSM8917, MSM8937, MSM8940 and APQ variants.
> 
> This patchset has been tested on Xiaomi Redmi 4X (MSM8940).
> 
> 

Applied, thanks!

[4/4] soc: qcom: socinfo: Add PM8937 Power IC
      commit: d50b5cb1a8f7db8ad2dc6a13f0cabedf7a7e1540

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

