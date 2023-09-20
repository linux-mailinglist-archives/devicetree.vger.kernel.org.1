Return-Path: <devicetree+bounces-1591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC487A7150
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA181280EF5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 633DB3C00;
	Wed, 20 Sep 2023 03:55:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5533E3D67
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37E65C433CA;
	Wed, 20 Sep 2023 03:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182103;
	bh=0OfGAgj9B1M3uxCBGkPH9BLHjbYOKxkiMUU8NAeOGHI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CJwm0YAYHIjHSxVZvAIEg3D0lNLRhTwOD09zYRWASl2ua1KazmYXstWULRe4iRmCT
	 dQjUY3jvMWUsEURYOph4hswyF2vb3lGSuVNrw++XbPmdX/QBovu063VFyxccXoQY5W
	 UA4HdBW0+yBIsRySYgf2h4TPBlNUdS8WBOku3O7pjWAUXtVT9bbIxVoWltFOj/tfJr
	 BwdhQzMUP0dxSzARouFtwrgMO3lV5PClElRp0xLcqqEi50CCly3x1MBj32iMvyfSjA
	 Gmy81cODhCZz+tOy/ZHMGAM7ljZVqVmrIsIX+MO+QyO0TJgtjUku8Ag9EUdbVwFrz8
	 RjUca/Y5KTKGQ==
From: Bjorn Andersson <andersson@kernel.org>
To: linux-kernel@vger.kernel.org,
	"Lin, Meng-Bo" <linmengbo0689@protonmail.com>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephan Gerhold <stephan@gerhold.net>,
	Nikita Travkin <nikita@trvn.ru>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Markuss Broks <markuss.broks@gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-samsung-j5-common: Add accelerometer
Date: Tue, 19 Sep 2023 20:58:54 -0700
Message-ID: <169518233720.1055386.10935054486033154435.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230904123123.2593-1-linmengbo0689@protonmail.com>
References: <20230904123123.2593-1-linmengbo0689@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 04 Sep 2023 12:35:03 +0000, Lin, Meng-Bo wrote:
> J5 and J5X have ST LIS2HH12 accelerometer.
> Add support for it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8916-samsung-j5-common: Add accelerometer
      commit: 922c031eb2b4897cc01f4159f7325a2dcd8d6c7e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

