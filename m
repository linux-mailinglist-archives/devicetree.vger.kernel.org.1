Return-Path: <devicetree+bounces-1522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E47CD7A6EE7
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:03:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EF01281789
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623FE34197;
	Tue, 19 Sep 2023 23:03:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AF946A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F064FC433C9;
	Tue, 19 Sep 2023 23:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164616;
	bh=/Dcw7zKC8BcBHNTeIR44kvNUH+eJPDiCfQUsI4Z5I54=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rCclC7fIhDJmgNDXlHqsdnjDeyHaEABcJWcMB2oy6ta2zyQ7K3TIfp0Xi/73mq5ti
	 NrCTFJGnwrvfkkl0vbIfeogl+eXNyzWiuPbXgyQpJg3TiCm/JzCCt9QlQFn6O3NOnZ
	 8rkVxX/NzgEZZtkIuG7iaJ47hnaWpksnrbaL0cS1j5ybgyfncJAgtC9Dgf5e8qImOT
	 sns4X861QhvvPXJNiuJw1wpKIu8vpAws8wilxkQ1fy0ATZZKtRNv1fWpjS2gOtHOzL
	 CEVgoXV60Fms9j8TVrogasL1Se4NGh0b8LhP3TcCM4Mtl5x97q9QJd6riCQtE6w++0
	 OOTC4kW7xY1uA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: sdm630: Add support for modem remoteproc
Date: Tue, 19 Sep 2023 16:07:28 -0700
Message-ID: <169516485985.787935.13554174726198807178.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230719093458.2668842-1-alexeymin@postmarketos.org>
References: <20230719093458.2668842-1-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 19 Jul 2023 12:34:58 +0300, Alexey Minnekhanov wrote:
> Modem subsystem in SDM630/660 is similar to MSM8998 and
> device tree node for it is based on the one from msm8998.dtsi.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm630: Add support for modem remoteproc
      commit: 09f1642eca6eb6d25a630214098350dc02917954

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

