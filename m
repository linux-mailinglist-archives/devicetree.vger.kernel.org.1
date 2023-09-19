Return-Path: <devicetree+bounces-1535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BCC7A6F23
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B75E81C20A6A
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20DD38DDC;
	Tue, 19 Sep 2023 23:03:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C340236AE2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAE3BC43395;
	Tue, 19 Sep 2023 23:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164633;
	bh=PdqeUwdYIZid0SRQB6tzM0l40ESLOa1+HI9+zaX0JGs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cnaEKfHvxfATbROVELzxdpIDU1eHZ+gi5Y70///kgyJqBcihCLNQUvzO/xUTWN2r+
	 PMLTpsM6EfBrNbMQ81xwXcbBLI0l8NnKOI+t+a7YPFIqlxIfR2rgBI1FqvECf1Q3VE
	 5CtmEmAo201qV961dFBkAJNz9WOOxxBdgohym7QEuA42gynvsJaMVYw3h+CblLGzwq
	 EmNiqFAzeJSaQdSkfNbzBED8g6pw6tLZm8N/Qhh6bdf4Um8Zq4OYlU3kP/kjZOtY7k
	 jr/lnUe2+53dTltopzA3tO6Rn0vzEthVg+qo65ca0CDt/pPRZi9/MIkgzVJ+ElfcLZ
	 ww83GJGTaILwQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nikita Travkin <nikita@trvn.ru>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jasper Korten <jja2000@gmail.com>,
	Siddharth Manthan <siddharth.manthan@gmail.com>
Subject: Re: [PATCH 0/3] Add display panels to gt5 devices
Date: Tue, 19 Sep 2023 16:07:41 -0700
Message-ID: <169516485996.787935.17825880295436617116.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230725-gt5-panel-v1-0-7c787e33a614@trvn.ru>
References: <20230725-gt5-panel-v1-0-7c787e33a614@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 25 Jul 2023 16:52:00 +0500, Nikita Travkin wrote:
> This series adds display panels to Samsung Galaxy Tab A (2015) tablets.
> 
> Both gt58 and gt510 gain display support and backlight is controlled
> with the DCS commands.
> 
> While at it, also enable touch-keys on gt510.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: qcom: msm8916-samsung-gt510: Add display panel
      commit: 4389a650323afe947900f631322fa4db4993d356
[2/3] arm64: dts: qcom: msm8916-samsung-gt58: Add display panel
      commit: 43525a7a96acad0648577770b84894af8dcb10d2
[3/3] arm64: dts: qcom: msm8916-samsung-gt510: Add capacitive keys
      commit: 20ef4f6445681217c0cb49dc21402cb2836b22aa

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

