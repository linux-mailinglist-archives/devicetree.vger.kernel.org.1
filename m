Return-Path: <devicetree+bounces-48224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50461870C2E
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 22:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B87E285F6C
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 21:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10CBE7C6CA;
	Mon,  4 Mar 2024 21:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="jCWlCuWW"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-251-36.mail.qq.com (out203-205-251-36.mail.qq.com [203.205.251.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B791410A39
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 21:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.251.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709586404; cv=none; b=f15NztNHD4Y/X1PlLlgP3Y2w29Ay069l9P8syNWoTTtDVlycMTTUovn/WF3YBsnhSqyo0EAEZCoD2bxoxWzCVVqTBT3WpF+xxwf7nS+s1BrgG/9TdHwh+Ff/buOiwIHSWR1CTUxV4gsS6uHJYLksjdvUylYPFNfN1175z0SzDSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709586404; c=relaxed/simple;
	bh=1RBPyuhoclV+3nHd2TvOxcik9pGmejSzJqo7b+biXls=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=nQ0vNVniI0TOH8bUVSDwBIAlI5cz3EKm3SkDi9zzM+jkqtIlY8pv0t86dubBfeskVZvXVrGYOkyAl5ZhpVMhYBi4M3z8qHatyWgY9rY3Id3niIwl+sAekS28zg8cPT5Lz8MWU/DCaIzHxW/GLoeQNBYc8SFjtFpzarVnat7f0RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=jCWlCuWW; arc=none smtp.client-ip=203.205.251.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709586395; bh=Zq7j+pO9atzoOOHePaxM6b0KaYKNJGrtsSo0TfDn0y8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=jCWlCuWWYJ+fJkBYSAkqEsq1ls5f86p1GxuWmY0LxyrG/PVlTxT14rD6XV6LWWkPn
	 Ytv8br/QLJz98aSWlAbuQjGrRaBQfyEG7Uqdq8P0Kh1vWqbBuV7uEbQhjn0sNwyDgx
	 yBbKsIk6ozwx7hbLBjqXLwrVqG3n26UDW70tjNgA=
Received: from cyy-pc.lan ([240e:379:2240:e500:994d:62ab:74a6:932b])
	by newxmesmtplogicsvrszc5-0.qq.com (NewEsmtp) with SMTP
	id 1953A8D2; Tue, 05 Mar 2024 05:06:21 +0800
X-QQ-mid: xmsmtpt1709586392t2jklroa5
Message-ID: <tencent_0432DA968E39B81431F921F38D747C008208@qq.com>
X-QQ-XMAILINFO: M1rD3f8svNznhZHOdB+wuRpkNnO5yKpQhBGz3UE+dIQLnRktOPULLHEmxRfoDI
	 10MK/zPIKLM9Wdte/vVxtDXfnISN0jLZyYGa8nhKf1ZprY2DFe+64VyfP2IUq+awXf/vWxAIb+Lk
	 Mjs7vMejHw6JXf0ojrByWqdB5nhZkZyFUlGDWbaF7S6/w8zXuDJgdhiAveTAww+h5XTbFLjPhsvw
	 9sPI7bIBe++kzJ5l76xSsFAstQemDIXeWjjsuk6Oly71akKd81qbmMPjzg8YcT9UqytrkQTN3kgE
	 EzKoLfTrhzn5Ecqr9dECLh193hZ/MrW1s9MTT+0Dy94oX9uVkf+esIDMY0eBM/Re5pIbWGSg3FaP
	 21xCOhFh+eZNuaSWWPVg6UmpiKJw9Mi3E0M+mmogea1RRDwx096oRy2HTMh4ZyJOe9UH452P6367
	 xhIb9k/Q2jvtzPJ+BMQgRc7AqDS4Z+ojuL88KRt1Yw6uqISFaIeb0ikCQ0upFFwO5eXamYG8Vr9O
	 G1kqX7OPxdOgdx3Xvx3PEcswKRk3Qvmu2VWesxwGIsGIzsWVHNaFlJueDsH7gIIgAETY/BvbMqyv
	 P56tLLGvOzzqvpCczNhIUdGxAil0GIxRjS51axcjWDNcXa4hVmTHe5bWPpUeRqM+qvVAEBQIcAVW
	 dIT7xiabdUysS5sAFEuIAXZc4itcPIr9Fe5v0HO6tsWb030akqtydrJSRl9IlCpbR3GkFpGOm8/z
	 e9deXPd/JDHNuAKalcCpFrLldloua+giZbKu8tCrrM70OfmwTyAHFy2VlLG3j2nYVzNaMVuOAPKy
	 FHSOc4d4oiEfFyOcRvjH1kxpAynbU3E01Wu5z6zkYE9sNazTygt/CMhZIQ24CC2oU1LLFbkfdI3W
	 Fw7oFPy6sR+hnvCQjLg8foorVeO+sQxlHAhajs17QX4RH3+RNya0icqhH5Vmq6l5vYmX5CPfSGnC
	 +S804c95s+Sb7V0Bez4gud0p8QBY88pzYAnqAqqRY1sbGejWofgoEgKEI6hPtAklItqGhA/NCdoQ
	 5fGsQK4Cr9PHceujNi
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
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
Subject: [PATCH v3 5/7] riscv: Kconfig.socs: Allow SOC_CANAAN with MMU for K230
Date: Tue,  5 Mar 2024 05:05:59 +0800
X-OQ-MSGID: <20240304210601.777883-5-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_BB2364BBF1812F4E304F7BDDD11E57356605@qq.com>
References: <tencent_BB2364BBF1812F4E304F7BDDD11E57356605@qq.com>
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


