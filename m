Return-Path: <devicetree+bounces-1590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 503867A714E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09FD9280EF5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FF9620E0;
	Wed, 20 Sep 2023 03:55:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1FF3C00
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21922C433C8;
	Wed, 20 Sep 2023 03:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182102;
	bh=hK596dJoYGTkHfI4ZSE6n+owN4RF4o588Yyi0Dx7eaE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kt+S8y63VXWaI18RPpLiQeJY/17QLLroNPlP6rcOgRZU23SaZZTrEDCAby1Rmgpuc
	 NFABu7ro1DeB84S1DefZSK5Kw5GeVsFrwO036Nj3hiLk/WPe5wwVMIMv9lSDaZtrNn
	 bdlPw96n5z8Xd66vNCyyE3DEpskITSgebjRGv6VOo+2BEkdfj5Sbh/DpUQtoHC+2uc
	 ewsDPxxvlY2rbZAm6JPnztdL8FukPYwqXe4bVcWbuuvS5ExK73GPlDZvrzq79hBd8q
	 DiBn3kPcFeqsUK9AAFkU9xMwfaa/UbPqt48J1TgkAvzeXMoBh/xq0y5YxYvvt4yaFU
	 oHsqvEhMI8PRw==
From: Bjorn Andersson <andersson@kernel.org>
To: cros-qcom-dts-watchers@chromium.org,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Subject: Re: [PATCH RFT v2] arm64: dts: qcom: sc7280: drop incorrect EUD port on SoC side
Date: Tue, 19 Sep 2023 20:58:53 -0700
Message-ID: <169518233714.1055386.9339650924194822510.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230820075626.22600-1-krzysztof.kozlowski@linaro.org>
References: <20230820075626.22600-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 20 Aug 2023 09:56:26 +0200, Krzysztof Kozlowski wrote:
> Qualcomm Embedded USB Debugger (EUD) second port should point to Type-C
> USB connector.  Such connector was defined directly in root node of
> sc7280.dtsi which is clearly wrong.  SC7280 is a chip, so physically it
> does not have USB Type-C port.  The connector is usually accessible
> through some USB switch or controller.
> 
> Doug Anderson said that he wasn't ever able to use EUD on Herobrine
> boards, probably because of invalid or missing DTS description - DTS is
> saying EUD is on usb_2 node, which is connected to a USB Hub, not to the
> Type-C port.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: drop incorrect EUD port on SoC side
      commit: 39c8af78cbefb8c71a5ad1fa088e761ef418f0a0

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

