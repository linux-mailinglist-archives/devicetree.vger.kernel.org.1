Return-Path: <devicetree+bounces-9002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B257CB23C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 390831C209A9
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B103399E;
	Mon, 16 Oct 2023 18:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEaTl21A"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8AC31A9F
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:22:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8312DC433CB;
	Mon, 16 Oct 2023 18:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480527;
	bh=ZDGzWqpGptHunNGf6sjXq1/leEpYHLdnSSo8ZzAe7k0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dEaTl21AwFQf8+jMG2XVE6hXv37D2lryb7eaJAdxCGwzFnwaVJUSZj6FewGkxAMF9
	 83gGJcnHbXuOFt+OMKlJq5xKdoiq81bikh0yJ9Jn4IoIpydEG6PC7j3GI7ybV7PqoM
	 l74vmYftsaQo/5yFhEpwHgPMpJqnspd0RWYV7wvC1067PIP+05z7DYmEOUp10pO01S
	 qBodbu4LNetnVe5EGKSwFPNGvtBVSGpqKUSo2bENl1lX+wvyoG2BwGrBxGtNUqjTWV
	 otnF29L90Ho1oxvIb07uTCqVdPXfkiECw41niA+E6Sk/61lqCbvva4xxoXSEF8hgyu
	 iuACWYs6cNkyg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Anusha Rao <quic_anusha@quicinc.com>
Subject: Re: [PATCH v3 0/2] Add common RDP dtsi file for IPQ9574
Date: Mon, 16 Oct 2023 11:25:49 -0700
Message-ID: <169748074957.1245023.2300595073941136634.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230927-common-rdp-v3-0-3d07b3ff6d42@quicinc.com>
References: <20230927-common-rdp-v3-0-3d07b3ff6d42@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 27 Sep 2023 12:13:17 +0530, Kathiravan Thirumoorthy wrote:
> Some interfaces are common across RDPs. Move the common nodes to
> ipq9574-rdp-common.dtsi like how it is done for IPQ5332. Use rdp specific
> dts file to include interfaces that vary across RDPs. For instance, IPQ9574
> has 4 PCIE controllers. RDP417 enables PCIE0 and PCIE1 whereas RDP433
> enables PCIE1, PCIE2 and PCIE3.
> 
> With the introduction of the common RDP DTSI,
> 	- RDP433 gains SPI NOR support
> 	- All the IPQ9574 RDPs gains USB2 and USB3 support
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: ipq9574: Add common RDP dtsi file
      commit: 0e8527d076cfb3fa55777a2ece735852fcf3e850
[2/2] arm64: dts: qcom: ipq9574: Enable WPS buttons
      commit: 0e2f2c506f01abcec412ccf91ed39ddfafbda60a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

