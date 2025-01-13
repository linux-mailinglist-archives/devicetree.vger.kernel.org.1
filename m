Return-Path: <devicetree+bounces-138068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB1FA0BA46
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:50:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A187C3A4E05
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D41C23A0F2;
	Mon, 13 Jan 2025 14:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="D+w4RxjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.sberdevices.ru (mx1.sberdevices.ru [37.18.73.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FCD44409;
	Mon, 13 Jan 2025 14:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=37.18.73.165
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779832; cv=none; b=W6TEKaXQXl3M2lOS4jdlF13nnQD17soajOxvrKH7XwsQo6hErsU3xMIhukLS2nxFm7kGo96JnUHIda2scRyONKBySyLOV+dUmR3NpvQPP0f2kcz8JhnoGVhe3rzKBewccDJTBlrWgLD3/lAexvwFSxQuV3vifVqfjhfDsMzdTpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779832; c=relaxed/simple;
	bh=7KvE8j+4pN0K0rSxsoELbLESV9+Fx140Q67buw+gOBs=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=obRK260lRLRcdM3XCH26yUL1czZP05xTBY63Y3MU3PiOsAuuDkUUhhC1ZfcKVZsvOWIRxpqShS+P+D7TLJuMZKCVi1Wtgqncd7jBIXx5Zvm1Lk9H8ds1ieUlPGF4mBPNiLfwnJfCK5vyBg0swXQxtaiaiiUf2Yysi+PePJSq1Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com; spf=pass smtp.mailfrom=sberdevices.ru; dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b=D+w4RxjD; arc=none smtp.client-ip=37.18.73.165
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sberdevices.ru
Received: from p-infra-ksmg-sc-msk01.sberdevices.ru (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 20D6D10000A;
	Mon, 13 Jan 2025 17:50:09 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 20D6D10000A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1736779809;
	bh=3Z0sdnVMXkMM+PvR3lzPK52+uryZkoCDg7AZ36tPRr4=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:From;
	b=D+w4RxjDwuC6fWy2qdieubaEQBk++0K+QSltkUkmp5vBe7SRwXHCsr32e1QqqS9jm
	 mPSsHstDaw+Eb4Q8AeBtwptf0Ae/JzU/HxFfuBwPLgJCB2vM+agE8kWq0GRItGJVqM
	 zWxuSwlXjGtLcCvAnyhLogXjx1q1kDdS1AI7Qo+ahU7cJdLCikga1VdekU+PVCtHBD
	 bXMtu1VAoNNW4iwTKYPvUqe95eZ5cMFg8IKc0Pr5L9zOf6WVOSdYYhP9ewBM/44e/w
	 jv3atxiGARRLgHgWjTSx6+ywrrCYuO4FzgY9sG7R0UenlcGJ6OusrgubKjMChFruY9
	 4jeAvC2QXn4EA==
Received: from smtp.sberdevices.ru (p-i-exch-a-m1.sberdevices.ru [172.24.196.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Mon, 13 Jan 2025 17:50:08 +0300 (MSK)
Message-ID: <388076e3-35f1-4573-b682-90f6f5932f28@salutedevices.com>
Date: Mon, 13 Jan 2025 17:49:20 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Introduce initial support of Amlogic AC200 board
To: Christian Hewitt <christianshewitt@gmail.com>, Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>, Jerome Brunet
	<jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, <linux-amlogic@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
	<neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Xianwei Zhao
	<xianwei.zhao@amlogic.com>
References: <20241114154856.3353691-1-jan.dakinevich@salutedevices.com>
Content-Language: en-US
From: Jan Dakinevich <jan.dakinevich@salutedevices.com>
In-Reply-To: <20241114154856.3353691-1-jan.dakinevich@salutedevices.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: p-i-exch-a-m2.sberdevices.ru (172.24.196.120) To
 p-i-exch-a-m1.sberdevices.ru (172.24.196.116)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 190309 [Jan 13 2025]
X-KSMG-AntiSpam-Version: 6.1.1.7
X-KSMG-AntiSpam-Envelope-From: YVDakinevich@sberdevices.ru
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 49 0.3.49 28b3b64a43732373258a371bd1554adb2caa23cb, {Tracking_smtp_not_equal_from}, {Tracking_uf_ne_domains}, {Tracking_from_domain_doesnt_match_to}, lore.kernel.org:7.1.1;sberdevices.ru:7.1.1,5.0.1;127.0.0.199:7.1.2;salutedevices.com:7.1.1;smtp.sberdevices.ru:7.1.1,5.0.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1, {Tracking_smtp_domain_mismatch}, {Tracking_smtp_domain_2level_mismatch}, {Tracking_white_helo}, FromAlignment: n
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean, bases: 2025/01/13 14:03:00
X-KSMG-LinksScanning: Clean, bases: 2025/01/13 14:02:00
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2025/01/13 07:04:00 #26996016
X-KSMG-AntiVirus-Status: Clean, skipped

Gentle ping.

On 11/14/24 18:48, Jan Dakinevich wrote:
> Changes v1 [1] -> v2:
>  - added "Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>" to
>    dt-bindings
>  - don't share the definition of sound card between ac2xx boards
> 
> Links:
>  [1] https://lore.kernel.org/all/20240521222155.28094-1-jan.dakinevich@salutedevices.com/
> 
> Jan Dakinevich (2):
>   dt-bindings: arm: amlogic: document AC200 support
>   arch/arm64: dts: ac200: introduce initial support of the board
> 
>  .../devicetree/bindings/arm/amlogic.yaml      |   1 +
>  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>  .../boot/dts/amlogic/meson-sm1-ac200.dts      | 109 ++++++++++++++++++
>  3 files changed, 111 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-ac200.dts
> 

-- 
Best regards
Jan Dakinevich

