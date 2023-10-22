Return-Path: <devicetree+bounces-10608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E9D7D23A4
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0146BB20D01
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27BFA10945;
	Sun, 22 Oct 2023 15:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqrBIifU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032CF63B2
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5007C433D9;
	Sun, 22 Oct 2023 15:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989567;
	bh=DrNGws2BbDIJSL5/4j3CgtnQlWq5CA2V5NGPeMNac00=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PqrBIifUu6XWT1lpS5o+VILXZKP5gkGS6XZyYbvlfJvm3U8E7MUk/9Z/tmUUtHNGq
	 JwHC/QEGmoVz4CBGHx9Gwld6FQT2XkHwoRqwg0aY9iFzL6rL+WT/lW+Yffue4olBPY
	 VMNlnqvn6DailPOuhlsJ2fhRoqdms17AZOCJNr2TL/mk62LsvVdsw1YuojMuHDvHIT
	 Q/baKWbyUOfjV6Dy9GxoDB1MWGnsEFa+YjBH73Veoi82PijKfmAD1F7DLB2g1C4r2t
	 OoLa/Bi8mai5oOa2Cmv2eAMYV1CFz/aecUuFyxS1QLusf0/1pcJ5KRmIqxV3MuLR6M
	 44PhJPYcK+Zxw==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: Use the correct DP PHY compatible
Date: Sun, 22 Oct 2023 08:50:15 -0700
Message-ID: <169798982297.271027.18200659862754581550.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>
References: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 29 Sep 2023 18:02:57 +0200, Konrad Dybcio wrote:
> The DP PHY needs different settings when an eDP display is used.
> Make sure these apply on the X13s.
> 
> FWIW
> I could not notice any user-facing change stemming from this commit.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: sc8280xp-x13s: Use the correct DP PHY compatible
      commit: 0cd080dd6d08817c9980d2069197b066636b0f23

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

