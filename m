Return-Path: <devicetree+bounces-9004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C76007CB250
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:22:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E01701C20AEF
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42142339BA;
	Mon, 16 Oct 2023 18:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7xuNzYP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232B731A9F
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2542C4339A;
	Mon, 16 Oct 2023 18:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480529;
	bh=D3lvxz34unyH65s2yVEAdU7RQleW7M+mejIznp0HEb4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=D7xuNzYPgCr1PXU7ctKhvWMbKSBHbx6rhvV3wdFjYUXYY7V5gpTtZHwCI0pXcLEds
	 P/Tv3RbHz55h81LpJUaeH8jaenvtmQ4WfQTx8HRf24nAVgSeTGQ7rGKPJZzfBTUHMv
	 W8TqcVW2JmQSYf7+mbmlBdRNC2ugQohTSdc/h27l1VfLncFcAaZhZQMuPJGj6BwCZY
	 3smPDpkhqQa6sGVVy/2QqaMz5aSadwCyaaQuixXb6EIkFPXLBMlLRRG70+CL8s+vXr
	 bYz68LAS3sLq8U37iVR63Bhkj1Ii8znOJ52oNipYdXIduJZU5xy9Y10XVta/qV58i4
	 HLmmu8JqoOIVg==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Raghavendra Kakarla <quic_rkakarla@quicinc.com>
Cc: quic_mkshah@quicinc.com,
	quic_lsrao@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: sa8775p: Add RPMh sleep stats
Date: Mon, 16 Oct 2023 11:25:51 -0700
Message-ID: <169748074961.1245023.10066294124757569075.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929054805.27847-1-quic_rkakarla@quicinc.com>
References: <20230929054805.27847-1-quic_rkakarla@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 29 Sep 2023 11:18:05 +0530, Raghavendra Kakarla wrote:
> Add device node for sleep stats driver which provides various
> low power mode stats.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sa8775p: Add RPMh sleep stats
      commit: f19a9a341d6faaf8d04bb6d9fb1f6a367ca0ed3a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

