Return-Path: <devicetree+bounces-48136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F8F87053C
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 16:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9168A1F26016
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 15:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB7B535D1;
	Mon,  4 Mar 2024 15:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="tKhV0KcK"
X-Original-To: devicetree@vger.kernel.org
Received: from out162-62-58-216.mail.qq.com (out162-62-58-216.mail.qq.com [162.62.58.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BB05026A
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 15:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.58.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709565421; cv=none; b=Ee2J+QRYeF1dt//yNVJVN8E80YTWBOXe36ac8A+l+/kfW081nYsllLi/9YYQRfXr1NtXzdQLxjvjRekd44lzo5PZcO8La76s3xf27dQSv8WjbrtO3MY2U8IUZqxAaj5IEx4cImbntSgNUCVr2pEKQ56coZBGz/GtObOSyFOf99M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709565421; c=relaxed/simple;
	bh=1RBPyuhoclV+3nHd2TvOxcik9pGmejSzJqo7b+biXls=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=hkN8VJ/GCErpxHbNEoV6bB7uSRvXbScfve+oRfw8JmD/9jdOqBezpHWfbf2xtUP2ld79H7R4/Im4nJL2TZbHT6PvFhv1lbAsHPe0MzkrlNRbDeW0f/w0Vh3TEthkYdM9fWiTI9V4Fv+BAO/otk08cm+Vbr2JcHFdRVKFWNyFO4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=tKhV0KcK; arc=none smtp.client-ip=162.62.58.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709565410; bh=Zq7j+pO9atzoOOHePaxM6b0KaYKNJGrtsSo0TfDn0y8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=tKhV0KcKbi3Z3cCBkgQQ44qTruieoW0apVY5TC0CCNKH8cT58DkFrVyPWKWir1gNW
	 3XgFiiVxhdf6xHwi0xVXzALhfeqZTqQ1DVMd//PyBk8dAmbG/660jT1BRVUfjfLzRB
	 pJSaQe20khusIvP7P41P30LUJbXd7sST/oLZGx08=
Received: from cyy-pc.lan ([240e:379:2240:e500:994d:62ab:74a6:932b])
	by newxmesmtplogicsvrszb6-0.qq.com (NewEsmtp) with SMTP
	id 42726AAD; Mon, 04 Mar 2024 23:16:39 +0800
X-QQ-mid: xmsmtpt1709565408tx6g6kx2w
Message-ID: <tencent_CB98AA10FE4664BE0F410BED454764DCE007@qq.com>
X-QQ-XMAILINFO: OM81xDxpmoVkDm+I0fbFX/1HJ5fb/wJR3WA281dpFCJUX+Y9svJyFTnWk0b8Wt
	 BBmm2rtsHQyvqlRqS2sd3Cps94Fe/wscI9DMghzT6HYz+Cu2dDl/dRH7KRYt+XietT3N1wj64vbz
	 VYdnu13rxhB21jkieir24daSNqVfvDaqMzibq+PE+Ut0JUrNJ++fmX4nOTgy6E5kU4NV1LvHugeX
	 vfcJV1Wz+1EkvlOvnZeZqtdAx86XAnvra8U00nY5p+Jq5HFUoqgfQwSS2kGl02l08meWQN0SF70I
	 YGgRvyhL7Rlfgl9U80FACVscHLI/JmQIfBNr6nu2BsuCkHcCukrPzNKXsbreKo7Ta15PznGlOyP2
	 bEsT1eh7ijip57Jp26NsPSw+gx6QBWK2VCisXtb9J92Km8D5nU+MY8XX6pZlOrEd7do8F1v+TbN2
	 c3KrvmUdlnd8ALIsCSSYB4tDgFT7Rt5np0rhT4we6eMxfufZzigDAvbuqXwJqb7R35mQVYmNzUWM
	 ZwlgTx5PD/uG9vHuUSTIykPVCEXGJvGijfDWNMZLMr0CvyGMVu+h4B+6TlEuPhNE1/JdCEq2RvVj
	 CtYUozqcbC+spPi3W7lrxcryl3fwVOr9pYOAY4gJXlN+pvrXF1mz7zqqgUJ3DlyFHPQTKMfeUBo1
	 +iVmq1aKA7jLx4vxMpn9GIO7qEv+/bYU/h/f8D98X28SAJCOaE1kcSKJRSCellXBLDmHKZGtzAPo
	 TJHPmL4eAgKusBmKfyZCO1+kdh/Z2YIF6yzgTE4HA8UxhyjzGmFLZuHhi2cTgbYeOacU376K3YaL
	 AhKmhou5AlnYwfgj+XI2JMQzQYDbD+SDFanEEU1Dq8wA723oLJdZwnwcdfrszbhoLmbP2qS9K4P5
	 +EFjnkWL7WdchhJOhLwu+iox8TcJ0o7YaRdFmA0p/+5zuHzBLP48bX59AyZMlgKTpzVLLWp5d9MC
	 rqorNR6TJY8rOyvNIzaqFM8VuQRs8qHLRtrzN6fSRu36ZQgZOzXoiYXgZAH/n/PyJ5cPmDudZPUW
	 DAhfE3QRYjrUVyUqGD7XucC3ooVVA=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Guo Ren <guoren@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangyu Chen <cyy@cyyself.name>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 5/7] riscv: Kconfig.socs: Allow SOC_CANAAN with MMU for K230
Date: Mon,  4 Mar 2024 23:16:24 +0800
X-OQ-MSGID: <20240304151626.759150-5-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_64A9B4B31C2D70D5633042461AC9F80C0509@qq.com>
References: <tencent_64A9B4B31C2D70D5633042461AC9F80C0509@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since K230 was released, SOC_CANAAN is no longer only referred to the K210.
Remove it depends on !MMU will allow building dts for K230 and remove the
K210 string from the help message.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/Kconfig.socs | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 623de5f8a208..b4e9b7f75510 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -75,13 +75,12 @@ config ARCH_CANAAN
 	def_bool SOC_CANAAN
 
 config SOC_CANAAN
-	bool "Canaan Kendryte K210 SoC"
-	depends on !MMU
+	bool "Canaan Kendryte SoC"
 	select CLINT_TIMER if RISCV_M_MODE
 	select ARCH_HAS_RESET_CONTROLLER
 	select PINCTRL
 	select COMMON_CLK
 	help
-	  This enables support for Canaan Kendryte K210 SoC platform hardware.
+	  This enables support for Canaan Kendryte SoC platform hardware.
 
 endmenu # "SoC selection"
-- 
2.43.0


