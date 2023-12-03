Return-Path: <devicetree+bounces-21038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1737C8020E5
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 05:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48E291C2087E
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 04:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76CB53B3;
	Sun,  3 Dec 2023 04:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN7nB0yh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A356E6119;
	Sun,  3 Dec 2023 04:52:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB084C433CD;
	Sun,  3 Dec 2023 04:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701579121;
	bh=pA+FLFKuwWelK1NLR8w/NkS7oubagvVjaTi+ojO0VqE=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=gN7nB0yhgW4ujiSkvpuEqSK360Rkg4/N4/GH6v6mRWGM/keT9ag4cNGu9vJJy8J9p
	 d+sVV2L0ORG5rhcZK+J0INJXmUWlTVm3K48/0Sv9bDbMJtMvGz6Dgy8NFVfsjLbrX0
	 gRnyaEF0IWZokWJaVU9h9K6MlFcxje+IMC89AoJjTQi9Cd7Xqwp8/SSQoj8KWTR1+p
	 GoMTR5TiwqfLOO23Tn9g4U65CgUqaLoNoJZmnJ+/vVAJzMqi+la/wg4GJltM75X0G3
	 Qze6KJRV8IPgQf0EYtOGpetZVagTp0VHXdY4iwD6W0BAuoTOc3t+hJ72cwNx2As9xk
	 jj6cgA04UQXFg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gianluca Boiano <morf3089@gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: msm8953: add SPI interfaces
Date: Sat,  2 Dec 2023 20:54:47 -0800
Message-ID: <170157925834.1717511.4158281748447808778.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231013110531.84140-1-morf3089@gmail.com>
References: <20231013110531.84140-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 13 Oct 2023 13:05:31 +0200, Gianluca Boiano wrote:
> This change add spi_3, spi_5 and spi_6 interfaces to
> MSM8953 devices.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8953: add SPI interfaces
      commit: be69109e93c78cb3b9c191a21fc2b54291a711da

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

