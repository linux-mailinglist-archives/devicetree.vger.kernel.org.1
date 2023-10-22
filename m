Return-Path: <devicetree+bounces-10606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 811CF7D239D
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 276961F21673
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497396FCC;
	Sun, 22 Oct 2023 15:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yg0vO6Pq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2508663B2
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9F0DC433C9;
	Sun, 22 Oct 2023 15:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989565;
	bh=hBgLuN4gmptdMYFU6Aqmt023U1kwjozrOwEimQ6osa0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Yg0vO6Pq3tf9IbiBrgLcCfMD5w5/dCinx1R0rp21qXirSvlGovrhIsRtLL55CvimE
	 IlQFFbtT49UhDR5dB0n2syIzk61zOo+EYWs6s/XSFGQ+RDrZx1o+QP7z5EjC4XPuwe
	 Qky9chStXkYTjHDwOhWtb1q2AjFXUbehWxjsTtAYnqGw7GUUZL+xmjHanD4kyISEHe
	 e4yDhON6/I5gSmJHTh0J5KA4O/+zHlDdC6MpuUee/8KvM9ZcrEnaEq7cuAxfi7QXy0
	 pbIHcBV5eBz81Uqn70ACCvO1NcM4MQ4/FVyt4YAJefxIj3uPsRp3eQszhrWpMvcmTv
	 rr37+pHD6fWeQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Apitzsch?= <git@apitzsch.eu>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH 0/2] arm64: dts: qcom: longcheer l8910 and l9100: Enable RGB LED
Date: Sun, 22 Oct 2023 08:50:13 -0700
Message-ID: <169798982353.271027.3963282631663809057.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231013-bq_leds-v1-0-cc374369fc56@apitzsch.eu>
References: <20231013-bq_leds-v1-0-cc374369fc56@apitzsch.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 13 Oct 2023 22:51:35 +0200, André Apitzsch wrote:
> With the driver for ktd2026 recently applied to linux-leds[1], the LED
> can be enabled on longcheer l8910 and l9100.
> 
> [1] https://lore.kernel.org/all/20231002-ktd202x-v6-0-26be8eefeb88@apitzsch.eu/
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: msm8916-longcheer-l8910: Enable RGB LED
      commit: 5017b8cdb7ebeb32d7f12a05b34d58662e137dbe
[2/2] arm64: dts: qcom: msm8939-longcheer-l9100: Enable RGB LED
      commit: a21796c631734ea5cf62507e63a2479261880514

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

