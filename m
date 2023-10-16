Return-Path: <devicetree+bounces-9001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 117237CB239
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36A771C20B20
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 953DC33997;
	Mon, 16 Oct 2023 18:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdgUttbP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789D131A9F
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B64C433C9;
	Mon, 16 Oct 2023 18:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480526;
	bh=SPQHicwszrYG4iAv02EGjtDfKtjCM6t2EONlIMyuy9g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mdgUttbPyZRkWy1G073UelRPmbxGTLaLIWvro6JPSaNj4FukKSE8bKi4Td/bmikc+
	 VWs8PURR/b1rxD121kqExml3GlfBC/vZP5mG0R2Y6EwQhkV22XdqOWVI2GieilSgdm
	 T7EgECPwqIie8La9B3R+pLyoeKK0yqbi76aWl+7crQrGufdmVdoUfduEcGhDdH2AwQ
	 jG9rNLzVOgxZuuOAI6jqaxeIkmS/VyOakaPOG8DVlnFzN11Ay+HSZ34LQIwgd/ZHFW
	 d+pYesrg8uuo6WeQvn7/mAC3QO1Wl2gr9ASE085GXd1WCRMtn7t9rfjE5cbtEuwU3J
	 wsr5OfmLqwcLw==
From: Bjorn Andersson <andersson@kernel.org>
To: cros-qcom-dts-watchers@chromium.org,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add ports subnodes in usb/dp qmpphy node
Date: Mon, 16 Oct 2023 11:25:48 -0700
Message-ID: <169748074958.1245023.9455563372415056854.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-sc7280-qmpphy-ports-v2-1-aae7e9c286b0@fairphone.com>
References: <20230929-sc7280-qmpphy-ports-v2-1-aae7e9c286b0@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 29 Sep 2023 14:51:22 +0200, Luca Weiss wrote:
> Add the USB3+DP Combo QMP PHY port subnodes to facilitate the
> description of the connection between the hardware blocks.
> 
> Put it in the SoC DTSI to avoid duplication in the device DTs.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Add ports subnodes in usb/dp qmpphy node
      commit: 2278b16f12a9cc33b95a980e05d4d8f3f8e0abfa

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

