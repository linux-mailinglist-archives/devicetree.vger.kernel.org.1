Return-Path: <devicetree+bounces-4010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1157B1000
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 02:30:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7B4D6281EE0
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 00:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A46368;
	Thu, 28 Sep 2023 00:30:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD721C3E
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 375CEC433C8;
	Thu, 28 Sep 2023 00:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695861004;
	bh=V63eA5yCKI+xdf6WmB5lSNze6MwPjapovYb9697Emnc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TIPv+MA69gM390NSnBkE5SWeMMdkT2pXxflO0QoI2tuaenlVsx5yQJiJIOh5oMR0G
	 MnJ8OA3uS+J1ILbCn8iLRAYh2XeSJNQ/qOje3nLTcoHMIiebdA+ubtgyQKtH5Y5jfE
	 zayvqgKyS+e2Bcbzp2XSGzNmmT0Mx3aCnzQHTSvS7yYlaFITF3mf1PQxE7JakoDz9J
	 gTu50u4ER3kYYQdvKfgS2pyN5FTEajTMIpUT/nMub3SRZEUkBkt8A3PCPnp8yRUdvV
	 5y9FqGx0g79RM3pvx8WHUmsAZMGwlFDFTxQZje7EHxtdTNapq5CKuDH+eg5+PqKWgR
	 x3cvOPLFmc5ew==
From: Bjorn Andersson <andersson@kernel.org>
To: linux-arm-msm@vger.kernel.org,
	=?UTF-8?q?Matti=20Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: apq8026-samsung-matisse-wifi: Fix inverted hall sensor
Date: Wed, 27 Sep 2023 17:34:08 -0700
Message-ID: <169586125032.1226038.6907362990209916790.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230922011211.115234-1-matti.lehtimaki@gmail.com>
References: <20230922011211.115234-1-matti.lehtimaki@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 22 Sep 2023 04:12:11 +0300, Matti Lehtimäki wrote:
> Fix hall sensor GPIO polarity and also allow disabling the sensor.
> Remove unneeded interrupt.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: apq8026-samsung-matisse-wifi: Fix inverted hall sensor
      commit: 0b73519790d29e4bc71afc4882a9aa9ea649bcf7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

