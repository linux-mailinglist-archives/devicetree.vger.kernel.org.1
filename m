Return-Path: <devicetree+bounces-1549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 491107A703B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 563BB1C20843
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92DDFA49;
	Wed, 20 Sep 2023 02:09:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B181FA2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:09:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ED8CC433CD;
	Wed, 20 Sep 2023 02:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175797;
	bh=X231F0W4UNjrve3JRnUM4cCtW/rxv8gXIFxjWMkm1Yw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c5BR//i5gD2qkTtwKeEJrlvf7gPrylBzHrbXB2qeguKAO/fEhtc221UyK3wSlu6kB
	 OH4ZX0ain5DaFpJnhe3dDNBQnpJdRtzRcuVHcfmMPUmirvRXGRWdo/rAmevd3V4wsw
	 oWgXQ7Zm4tzaj2RxAOZcYtAqNMYTOKEPTu92QKMWCBEux5aHAYfcX52DNClYJ+GYjD
	 7nekmamYzI7+Lj3Zt/K4eaiRGnd8nuCE42twU5YYnolgn8RIHGW+oCsWdJKBzkO7I/
	 wDIpIdDbc9G+HKJeE3R9fkd9e8RXVkrTDDWqKZnsMi3AFZrOE54ZbaTtNQ6hzPvhtC
	 qpI+fo1Hu5zjQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Cc: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
	Andy Gross <agross@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: qcom: sc7180: Move trogdor rt5682s bits to a fragment
Date: Tue, 19 Sep 2023 19:13:57 -0700
Message-ID: <169517603992.822793.4084645192755492251.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230816112143.1.I7227efd47e0dc42b6ff243bd22aa1a3e01923220@changeid>
References: <20230816112143.1.I7227efd47e0dc42b6ff243bd22aa1a3e01923220@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Aug 2023 11:21:53 -0700, Douglas Anderson wrote:
> Several trogdor boards have moved from the older rt5862i to the newer
> rt5862s, at least on newer revisions of boards. Let's get rid of the
> dts duplication across boards and promote this to a fragment.
> 
> Note: The old boards used to override the "compatible" in the "sound"
> node with the exact same thing that was in "sc7180-trogdor.dtsi"
> ("google,sc7180-trogdor"). I got rid of that.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: sc7180: Move trogdor rt5682s bits to a fragment
      commit: 8ff1aaba032dd00e71aadeafa0ef2f79d3693c99
[2/2] arm64: dts: qcom: sc7180: Reorganize trogdor rt5682 audio codec dts
      commit: 214945cbf375cc27d684f4cd2abb569e8c888688

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

