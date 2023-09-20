Return-Path: <devicetree+bounces-1871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 605BB7A8A4F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:11:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A8C9281E68
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C16B8450F7;
	Wed, 20 Sep 2023 17:10:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5793D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09614C433C9;
	Wed, 20 Sep 2023 17:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229827;
	bh=3DI+rP4GUZdEpq6Mx+GyUnkKuBAxvddDZMe26L5pzv0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cDteWq/Zl71f0bIOEjfc7emTrMVhYb56O+f/uiuL9VB6Epz+Urtxofo7EUxPjKvHN
	 gguExDsyqiaDEmQhZTJ6vVgdqEb+BM5eC6+4QYv1kpjqYmrUf/XC7QRFzcDP7HYhtp
	 J4ZHkBa4FjPrOkHg/p7BM3QCQpMnXXvr2hKp003uHE/oZPKJxXfXtZ3FJ8azOHxBUx
	 xHGYez4KJm3YGjP+hZkA77t2p7bTc+IodRbCDOSSmgS9L0pIvlKZTb8KQuuy/eNhzm
	 2Q2K4LuiSGcZaS+sqaIQrAID7taYdd2l7E7ZyM9UohOI9i7WrF8+iX2dsCZdp1vrb7
	 aDyNs22CQXxQg==
From: Bjorn Andersson <andersson@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH 0/9] arm64: dts: qcom: msm8916/39: Reserve firmware memory dynamically
Date: Wed, 20 Sep 2023 10:14:13 -0700
Message-ID: <169523004970.2665018.7388281323259797805.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230911-msm8916-rmem-v1-0-b7089ec3e3a1@gerhold.net>
References: <20230911-msm8916-rmem-v1-0-b7089ec3e3a1@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 11 Sep 2023 19:41:42 +0200, Stephan Gerhold wrote:
> Refactor the MSM8916 and MSM8939 device trees to make use of dynamic
> memory reservations for the firmware regions, rather than hardcoding
> fixed addresses for each device. This allows to keep most of the
> definitions in the SoC.dtsi while defining the board-specific
> properties (such as firmware size) separately for each device.
> 
> The main motivation for this patch set is to simplify enabling the
> modem on the various MSM8916/39 devices. The modem firmware size
> differs on almost each device, which requires redefining *all* of
> the firmware reservations with newly calculated addresses to make
> room for the larger modem firmware. I've explained this in detail
> in a previous RFC:
> https://lore.kernel.org/linux-arm-msm/20230510-dt-resv-bottom-up-v1-4-3bf68873dbed@gerhold.net/
> 
> [...]

Applied, thanks!

[1/9] arm64: dts: qcom: msm8916: Disable venus by default
      commit: 29589248420766cd492e6db0632d6f59ec216e92
[2/9] arm64: dts: qcom: msm8916/39: Disable GPU by default
      commit: 0ce5bb825d54c904b217cc7f1131e084e02ed037
[3/9] arm64: dts: qcom: msm8916-ufi: Drop gps_mem for now
      commit: 40eb256e5fd1fd49813a27a252b7f45ccca89fde
[4/9] arm64: dts: qcom: msm8916: Reserve firmware memory dynamically
      commit: 0ed3d82862e8451cc2b14ddb1b064e72ba3e5a60
[5/9] arm64: dts: qcom: msm8916: Reserve MBA memory dynamically
      commit: b4f3a410061bf5a8cc148c9435479da580abf85b
[6/9] arm64: dts: qcom: msm8939: Reserve firmware memory dynamically
      commit: b22bef3dbc3a67a796f82f49a6df9e413211cb40
[7/9] arm64: dts: qcom: msm8916/39: Disable unneeded firmware reservations
      commit: 0ece6438a8c0492a7df036d57ac299500a25cb70
[8/9] arm64: dts: qcom: msm8916/39: Move mpss_mem size to boards
      commit: 35efa1be51bd6db067d7380b34538b17b9f250a8
[9/9] arm64: dts: qcom: msm8916/39: Fix venus memory size
      commit: e3c6386c6a5d0187f103fc9bf39850ac15c01690

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

