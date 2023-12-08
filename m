Return-Path: <devicetree+bounces-22952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DD38099B7
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 03:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10E781F2135D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 02:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82BAC2103;
	Fri,  8 Dec 2023 02:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1pd9bo/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619D05234;
	Fri,  8 Dec 2023 02:53:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C8B1C433CB;
	Fri,  8 Dec 2023 02:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702004015;
	bh=2nB+32047idLop8zJ39E01kxCGpV9yx0H3PuyQtwUpo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f1pd9bo/Pz7Y/fljFZxAfnH5m4ngym+e1U6la8eq+ewCVeWu2aW0YM0zkHDGIAn27
	 iTLnBOCb/G79zFxjI+C560ZyL/V8aamdYDS79HRaU1LF57pScXLHuep+2iqEb6T+ic
	 x99ftxs9lMPUf/eGeUMQ7Tdn8iLCxZLT8ds67aME/PL15bKZ4qu08d8fEpJOdQJ9R9
	 LE8K/zwzZ1zf1g9wsNpdRPmPjr366Dhm2XM7ym6Skx0gH5Oz3rgvtndQiU9Y3NlN5M
	 CsDyOAzzYibXa3K8st4c8ImsSwXs0YKy4ODRBMhgGl/lK+aN0J21Go53MMvK4um1D1
	 IF6V2j+Mq+u7w==
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
Cc: Sibi Sankar <quic_sibis@quicinc.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom-soc: extend pattern for matching existing SoCs
Date: Thu,  7 Dec 2023 18:57:40 -0800
Message-ID: <170200426925.2871025.2044792437170118709.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231120100617.47156-1-krzysztof.kozlowski@linaro.org>
References: <20231120100617.47156-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 20 Nov 2023 11:06:17 +0100, Krzysztof Kozlowski wrote:
> Add missing QDU, QRU and SDA platform names to the pattern matching all
> Qualcomm compatibles.
> 
> 

Applied, thanks!

[1/1] dt-bindings: arm: qcom-soc: extend pattern for matching existing SoCs
      commit: 08105d9a5490551d86d95729bbbd3161652850dd

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

