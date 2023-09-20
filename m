Return-Path: <devicetree+bounces-1553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF07B7A703F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:10:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED5E61C208D0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EF1D17D8;
	Wed, 20 Sep 2023 02:10:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08F223A8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:10:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F17B5C433CD;
	Wed, 20 Sep 2023 02:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175801;
	bh=I1d5uc/9R6rdSA0sR8DEjcC/Ef9Z1bWXA9sE8rqp/Bk=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=l47lUqerGDFz6XhMHSXPRNhv2gCOrMlIvIys2m5CdeZFTwV8XTD2vgALsb98UpV8D
	 iW7ppMHQYQrGnMWZJ9BIrQoJAVzWbKxdWcMsWfkiRi144uppxtdRDcBSARoqkrIMcH
	 OTID3CUwCgs63o/rLt+gR1QnmukP/WVeO1Cg6ZJ57BL9o02CLxG5qdSYUi3KEo5BE8
	 fsdEYxCg1ehPFDgjIhdARYCqdDtoXVGUJ8joKSOY/LuNDz/9rof00zUAEaKj4sG/3v
	 wwpAaNjNnuOJicx8OTtlCsiB45wo4FYrkAOwhDuZR/iYME5zvc2FZh1yx1CfCAJWbR
	 7XXQmq4dyOGBA==
From: Bjorn Andersson <andersson@kernel.org>
To: cros-qcom-dts-watchers@chromium.org,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280-crd: add Bluetooth VDDIO supply
Date: Tue, 19 Sep 2023 19:14:01 -0700
Message-ID: <169517603988.822793.8908614443019733182.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230816060502.16789-1-krzysztof.kozlowski@linaro.org>
References: <20230816060502.16789-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Aug 2023 08:05:02 +0200, Krzysztof Kozlowski wrote:
> Bluetooth requires VDDIO supply and Doug Anderson suggested it is
> vreg_l18b_1p8.  Add one to satisfy `dtbs_check`:
> 
>   sc7280-crd-r3.dtb: bluetooth: 'vddio-supply' is a required property
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280-crd: add Bluetooth VDDIO supply
      commit: b9a2ee03019609f580ac5cae8211371119025909

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

