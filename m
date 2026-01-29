Return-Path: <devicetree+bounces-260913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOI6F0hze2mMEgIAu9opvQ
	(envelope-from <devicetree+bounces-260913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:48:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9735EB1260
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:48:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8467E3018C3E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 983DF32E13E;
	Thu, 29 Jan 2026 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="Pt6TX/I6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.sberdevices.ru (mx4.sberdevices.ru [152.89.196.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBD831DD98;
	Thu, 29 Jan 2026 14:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=152.89.196.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769698116; cv=none; b=EjVxvbHluV1REewpcrQfZbj26Wq+XKs3YY7Uykhh3a69VQUUDVnzJ9mT1Lg06VEIEXk3y7tBaB4eLgrhgkPV/4wpIAy25exk2ocsTWmlZ1Humcg/RDpk8DcMRx6hI7srlmCblPzBDOsTumveSuDdtTJk6EOfHO0832gas6wAMT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769698116; c=relaxed/simple;
	bh=fMnqtmctUICr5XkwOuN6cwvqU4hkEaFklwZGIsB9vf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=llhDR0p3T7PWPza19qHpe0K5c172FKAU5G0h8PL1r6MpF5U7aMHGmrdDXT1zK8o6iWefOBn0vYcSxjjf612rtzCv1fXEco7/Rm9TJNaX37X8+yo3cA2z8zF+Kyl5ZtWMC1h9lgPZgSpjs+OYQ1XRawgcyXByJMNCMTzwo35Ru3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com; spf=pass smtp.mailfrom=salutedevices.com; dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b=Pt6TX/I6; arc=none smtp.client-ip=152.89.196.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=salutedevices.com
Received: from p-antispam-ksmg-sc-msk02.sberdevices.ru (localhost [127.0.0.1])
	by mx4.sberdevices.ru (Postfix) with ESMTP id E25FC40004;
	Thu, 29 Jan 2026 17:48:24 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx4.sberdevices.ru E25FC40004
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=post; t=1769698104;
	bh=Kd3WI+TsllaYu1gglPGS5EzMwuvRBJh6elKjpwUOhxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:From;
	b=Pt6TX/I6S/KAfgVZ4UOgS23HYPHXljmZSPPF5K4jRId2REk8jt8As3ghiv1pq2aIf
	 lS7fiM/gO/1K/V8XldbWnExqf7ihZISM8VDOOwWPDFXNUZFf/cvuhAYlMZclad+Gun
	 YRLSwzo7DgA6bSQKLVGmm6gTHhgp1inbWDmvu1vIZP+LmOSEvjUn7xwVfUrJxUHxDJ
	 LRw79UQQuiOeF+ios8wVe+9bJ8eOeLKXsDv6I1H14igMG0OtIIwvieVHs6Cah6OZNG
	 U3Qbk51w025y++zDXmK8vSo/6ObCc+Ge6VmeLxIZAh1vY1F9A94K373eOvrdK8tgWL
	 MNS0VwNtCws0A==
Received: from smtp.sberdevices.ru (p-exch-cas-s-m1.sberdevices.ru [172.16.210.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "sberdevices.ru", Issuer "R12" (verified OK))
	by mx4.sberdevices.ru (Postfix) with ESMTPS;
	Thu, 29 Jan 2026 17:48:23 +0300 (MSK)
Message-ID: <88a0395b-1ab3-4ef0-96c4-440b3a5c96f4@salutedevices.com>
Date: Thu, 29 Jan 2026 17:48:17 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogW0RNQVJDIGVycm9yXSBbUEFUQ0ggdjMgMy8zXSBh?=
 =?UTF-8?Q?rm64=3A_dts=3A_meson-s4-s905y4-khadas-vim1s=3A_add_initial_device?=
 =?UTF-8?Q?_tree?=
To: Nick Xie <nick@khadas.com>
CC: "robh@kernel.org" <robh@kernel.org>, "khilman@baylibre.com"
	<khilman@baylibre.com>, "jbrunet@baylibre.com" <jbrunet@baylibre.com>,
	"martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "kernel@salutedevices.com"
	<kernel@salutedevices.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "xianwei.zhao@amlogic.com" <xianwei.zhao@amlogic.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260115030015.1334517-1-nick@khadas.com>
 <20260115030015.1334517-4-nick@khadas.com>
 <09df45e1-90b5-4618-9197-c724142bd83a@salutedevices.com>
 <PS1PPF62EEA9B1D287E26DFE619BB840508AE93A@PS1PPF62EEA9B1D.apcprd03.prod.outlook.com>
Content-Language: en-US
From: George Stark <gnstark@salutedevices.com>
In-Reply-To: <PS1PPF62EEA9B1D287E26DFE619BB840508AE93A@PS1PPF62EEA9B1D.apcprd03.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: p-exch-cas-a-m2.sberdevices.ru (172.24.201.210) To
 p-exch-cas-s-m1.sberdevices.ru (172.16.210.2)
X-KSMG-AntiPhishing: NotDetected, bases: 2026/01/29 14:38:00
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Envelope-From: gnstark@salutedevices.com
X-KSMG-AntiSpam-Info: LuaCore: 86 0.3.86 47cb2a3d3f5c7e795bff2d0998e8c196722872ab, {Tracking_uf_ne_domains}, {Tracking_bl_eng_cat}, {Tracking_from_domain_doesnt_match_to}, salutedevices.com:7.1.1;elixir.bootlin.com:7.1.1;lkml.iu.edu:7.1.1;127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;smtp.sberdevices.ru:5.0.1,7.1.1, {Track_Chinese_Simplified}, FromAlignment: s
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiSpam-Lua-Profiles: 199962 [Jan 29 2026]
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Version: 6.1.1.20
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.1.1.8310, bases: 2026/01/29 13:14:00 #28162110
X-KSMG-AntiVirus-Status: NotDetected, skipped
X-KSMG-KATA-Status: Not Scanned
X-KSMG-LinksScanning: NotDetected, bases: 2026/01/29 14:38:00
X-KSMG-Message-Action: skipped
X-KSMG-Rule-ID: 5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[salutedevices.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[salutedevices.com:s=post];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,googlemail.com,linaro.org,vger.kernel.org,lists.infradead.org,salutedevices.com,amlogic.com];
	TAGGED_FROM(0.00)[bounces-260913-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[salutedevices.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnstark@salutedevices.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,iu.edu:url]
X-Rspamd-Queue-Id: 9735EB1260
X-Rspamd-Action: no action



On 1/26/26 12:35, Nick Xie wrote:
>> Thanks for the patch. Since you have khadas mail I'm pretty sure you've
>> had the possibility to test it on the real vim board and I just don't
>> get it how it works with the voltage table above. The problem is that
>> pwm is calculated incorrectly in the upstream pwm-meson driver. That
>> voltage table appeared to be used in early amlogic bl loader and
>> appropriate pwm is initialized from a table's record. Duty cycle value
>> is translated to pwm regs correctly. Later when kernel start running
>> pwm-regulator driver is probed. It reads the pwm regs, calculates back
>> duty-cyle and search it in the table. Since calculation algos are not
>> match and the table doesn't contain full range of 0-100% values
>> regulator driver doesn't find current voltage. In such case regulator
>> core sets the minimum voltage from the table [1] and the SoC may hang
>> (depending on board) due to minimum voltage may be too low for the
>> current frequency SoC uses.
> 
> I'm not sure about the PWM issues, but I checked on the real S905Y4 hardware
> and  it works.

To prove my point: run the kernel with the next patch:

diff --git a/drivers/regulator/pwm-regulator.c 
b/drivers/regulator/pwm-regulator.c
index 7434b6b22d32..14d2730b21e8 100644
--- a/drivers/regulator/pwm-regulator.c
+++ b/drivers/regulator/pwm-regulator.c
@@ -86,6 +86,9 @@ static int pwm_regulator_set_voltage_sel(struct 
regulator_dev *rdev,
         struct pwm_state pstate;
         int ret;

+       dev_info(&rdev->dev, "setting voltage from table: index: %u, uV: 
%u\n",
+               selector, drvdata->duty_cycle_table[selector].uV);
+
         pwm_init_state(drvdata->pwm, &pstate);
         pwm_set_relative_duty_cycle(&pstate,
                         drvdata->duty_cycle_table[selector].dutycycle, 
100);

In dmesg there must be a message like "setting voltage from table: 
index: 36, uV: 689000"
If to take a look at operation points table for s4 in vendor kernels the 
lowest voltage is 0.769V for 100Mhz
so setting 689000uV even temporary may lead to problems depending on 
particular hardware.

>> Or I'm missing something?
> 
> 
>> There's not-yet-reviewed patch that fixes pwm algo [2]. There's
>> calculation example in the cover letter.
>> [1] https://elixir.bootlin.com/linux/v6.19-rc5/source/drivers/regulator/core.c#L1227
>> [2] https://lkml.iu.edu/2412.3/00826.html
> 
> What's the status of such patches?

the patch is ready for review. It's seems like nobody is interested

> --
> 
> Best regards
> 
> George
> 

-- 
Best regards
George

