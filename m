Return-Path: <devicetree+bounces-22961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A7E8099D6
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 03:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A65831C20CB1
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 02:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9393FDB;
	Fri,  8 Dec 2023 02:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYxOnLtf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC0C63D7;
	Fri,  8 Dec 2023 02:53:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2858C433CB;
	Fri,  8 Dec 2023 02:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702004025;
	bh=WIghwBFnPfK3b0KldIVUfMhIxq24v7A2PN7RSq8O9KU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QYxOnLtfTVtz55lweH9URNHpbj5NsBoGzpLUuX23Tgrt7+6kUSUfcMV0lt665k1By
	 IST9l+JSara5Htw4IvwYWAocqeVYDSIOoix2iq+I8O2Jk0RmhKYJqp3/OYUEd0gcFk
	 oQ/jexfcvYWCvLGaGavzdhDdzKTRxoUQJR4otlX8k7eO/vEmRvc/yxPdB9uPgNMKKq
	 hTw0VfqUmxHTXjo4D/Bch/F21a223Ss0dm/rE1ZxttfTeeAoWfniZKv57IbI9Zl6V2
	 nnxwP/kLZAX/zwJ+mI2C3nRpnQutvKDhO7KRAMGTBxY5j5UVHXar0k67U9MXSbC3hi
	 dtuD2Yo3dUNnQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: ipq9574: enable GPIO based LED
Date: Thu,  7 Dec 2023 18:57:49 -0800
Message-ID: <170200426908.2871025.1319951665237619510.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231025-ipq9574-led-v2-1-59b2725697ad@quicinc.com>
References: <20231025-ipq9574-led-v2-1-59b2725697ad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 25 Oct 2023 19:01:25 +0530, Kathiravan Thirumoorthy wrote:
> Add support for wlan-2g LED on GPIO64.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: ipq9574: enable GPIO based LED
      commit: 2928212b6ef24d6a4f2af849157ac18546030b97

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

