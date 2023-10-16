Return-Path: <devicetree+bounces-9000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA77CB238
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:22:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 559DD1C20902
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C5E3398B;
	Mon, 16 Oct 2023 18:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrhKsf8n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FDA31A9F
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FAD9C433C7;
	Mon, 16 Oct 2023 18:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480525;
	bh=4IXyrwzYOLnqIcmXT7Mu1qH4NasffBNzcPLLevm/ZZk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VrhKsf8nQm3cw57Jskq1lrMdOd8F7cP1NdqOddQmklJmS6pQnnW1oB0dhVRTP3zrH
	 MdLBDnL6MAUuSbk8Gav4PgThusxMD8tr/2Zpu1DQ44zpnDH6L/XF92h+o0VWUdL4Dd
	 p3YTv0lnZVUgMKWRD0UoM3r3/KLikCU1026FGU/AEzexs/rj11TezlbHgPSeJ7BMCm
	 sc/BNcOfcwRKSwaBAOmkDve4BTL8KcuJ61AgK9lHDEstJkfrPLsO/wSSCa2uxaPT1R
	 viWpbINWZq2fsTGYzQS4AmgIAiXth9FVSkGXeCtL4A0nUVN26SaDvcLOkT+LQm9NPj
	 CQdpMGG1ue35A==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] SM6375 features
Date: Mon, 16 Oct 2023 11:25:47 -0700
Message-ID: <169748074955.1245023.6551188335111911232.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
References: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 27 Sep 2023 11:21:39 +0200, Konrad Dybcio wrote:
> Enable modem & wifi on sony 10 IV, add bt uart to the soc dt.
> 
> 

Applied, thanks!

[1/4] arm64: dts: qcom: sm6375: Add UART1
      commit: 1529f6a43cc4feeb78f6063ae3ae7d8003594de6
[2/4] arm64: dts: qcom: sm6375-pdx225: Enable MSS
      commit: ea6b3c61559f647d183322fc5431f2a5e78123d3
[3/4] arm64: dts: qcom: sm6375-pdx225: Enable ATH10K WiFi
      commit: 6ffcd65f27d7d083b9bfae56c9b5fe1a0b7500f8
[4/4] arm64: dts: qcom: sm6375-pdx225: Add USBPHY regulators
      commit: 2ea7de2f804432dd17bcfa97576f0ccf2054cd6e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

