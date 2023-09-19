Return-Path: <devicetree+bounces-1530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A777A6EF7
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BAD01C20A72
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44AD738BBA;
	Tue, 19 Sep 2023 23:03:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EFE46A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FF8FC433CA;
	Tue, 19 Sep 2023 23:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164627;
	bh=ZJ5bSMT5jCsxu8M3Q1hZGO35QQ7j76m8759+yAGYr4I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AVkWN61UMSFd4IHqxg5pFn6ry7UYJPAu3BO+PewAbAbE60nkg6yjSoxiavak0G7b9
	 cqnVq01SJl/nBr5x0O/xIyWj/uUWNZG4/LOy3IAHdjK8YUFyN38wHOAetCAGWVLVKV
	 DozNPZzekPwBcMYTN62e0LOxycOZdHYp1C7JpmJUlVv9pggcrTsjAbJLjzKbnFT/1e
	 6cZ6yiGnLZXl5uB/QEtZ77xrBJaCNetx/jUzOAlUHX340R+sFQam+huBIp+riGtRhl
	 UbNZ56vdg2OzFbr95LVwpx1sF0ieKliRtoisJBJ/UJNNW13RrlQjJT+sv1yk2GGUbh
	 +GbeyVlZ6mggQ==
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
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8450-hdk: add other analogue microphones
Date: Tue, 19 Sep 2023 16:07:36 -0700
Message-ID: <169516485982.787935.5219372367347199671.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230717143824.203352-1-krzysztof.kozlowski@linaro.org>
References: <20230717143824.203352-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 17 Jul 2023 16:38:24 +0200, Krzysztof Kozlowski wrote:
> Add proper audio routes for onboard analogue microphones: AMIC[1345].
> Use also new DAPM input widget (TX SWR_INPUTn) for them, not the
> deprecated ADC one.  Change is not compatible with older kernels not
> having the new SWR_INPUTn input widget.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sm8450-hdk: add other analogue microphones
      commit: f20cf2bc3f770a4f8ce098effbcae5ef5a0912a7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

