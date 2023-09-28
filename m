Return-Path: <devicetree+bounces-4012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1F67B0FFF
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 02:30:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D05FE1C209AD
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 00:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84414163;
	Thu, 28 Sep 2023 00:30:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740E2522C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:30:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0D7BC433C8;
	Thu, 28 Sep 2023 00:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695861007;
	bh=0k+eI+Gw38M0qYVrDonrZDI7ENLrygBXyK4wdkKYoIM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gJKNQ9QzxA6g5H9FkV7CK1+VWtwCNfWftUclPa+Lsffv2aA+qnAcP8VKZUkIe36+Q
	 QowciZzooIDr/utrZc5FWRKV+79gbZUStIqGFGcUrFIviU8A58lLrFEUfkcdKReNCT
	 9DYLWkDaW/FiFb/D4Wy0NeS/AmOOD9BrCZkgxOVOpM+jpR17EkJtblTHpjWYX7PYsE
	 c1KIxhNmSc7Rb/NR1QVX14pzi1ZXeM2KKnPOnrhX/gKkGhGTPoXNZBLJ7zZ82bF2xt
	 6lO3oR7eN2O0of7YJMTDIvMUAFwNpuho7OVhgUnG4tBhxRkRpoeBkTqSpCb7U8ypaN
	 P1ObCCVXRnGVA==
From: Bjorn Andersson <andersson@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: apq8016-sbc: Add missing ADV7533 regulators
Date: Wed, 27 Sep 2023 17:34:12 -0700
Message-ID: <169586125031.1226038.4446511866663817791.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230922-db410c-adv7533-regulators-v1-1-68aba71e529b@gerhold.net>
References: <20230922-db410c-adv7533-regulators-v1-1-68aba71e529b@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 22 Sep 2023 12:49:55 +0200, Stephan Gerhold wrote:
> Add the missing regulator supplies to the ADV7533 HDMI bridge to fix
> the following dtbs_check warnings. They are all also supplied by
> pm8916_l6 so there is no functional difference.
> 
> apq8016-sbc.dtb: bridge@39: 'dvdd-supply' is a required property
> apq8016-sbc.dtb: bridge@39: 'pvdd-supply' is a required property
> apq8016-sbc.dtb: bridge@39: 'a2vdd-supply' is a required property
>         from schema display/bridge/adi,adv7533.yaml
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: apq8016-sbc: Add missing ADV7533 regulators
      commit: 33e9032a1875bb1aee3c68a4540f5a577ff44130

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

