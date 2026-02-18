Return-Path: <devicetree+bounces-266490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAluCFH9lWm/XwIAu9opvQ
	(envelope-from <devicetree+bounces-266490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:56:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 644D2158722
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 020DD3018BD3
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07273446AB;
	Wed, 18 Feb 2026 17:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="OrCxkhqm"
X-Original-To: devicetree@vger.kernel.org
Received: from 5.mo619.mail-out.ovh.net (5.mo619.mail-out.ovh.net [46.105.40.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC401238C29
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.40.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771437384; cv=none; b=kATzSW56kpDrgN9wu4/JzIP605+3bY57AO7wS+3Qmdg5DxcD4LqVNgNGJ2nP9poEQZKU1Guus7hjBDcZYJfi/ZP5WP23yOprxZE11LyQgkJ/JBINBF8Q81kujwKMuENbVyba/P19nJ/dSOKeuIREca0TqCUVrt/SR0WksbzvkEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771437384; c=relaxed/simple;
	bh=tyhElsxoTvad2sIiPmVtb1FmXgFvS9mRsa2qiAt8xAA=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=DoN0KPqCvFcVTiizZQFPUmuyUhjvh/wAE5A5D9SAVF9aAD+ihOHLU+YzI6URn3XhqPsxFLeiJfNSQHPAaY4Zk+GQGVAxd+1PDvhkIb0RBN6QcseUPo2WzrIcuCjy4vr3XziIc5ryHG36uSkMiUAeVqxKZ+T5NQOh/t0BI2ofFAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (2048-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=OrCxkhqm; arc=none smtp.client-ip=46.105.40.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from ex.mail.ovh.net (unknown [10.108.54.138])
	by mo619.mail-out.ovh.net (Postfix) with SMTP id 4fGMbs3P0Mz9xLs;
	Wed, 18 Feb 2026 16:36:57 +0000 (UTC)
Message-ID: <0af0667d-c140-4f6d-86cc-6be0460bf81a@aliel.fr>
Date: Wed, 18 Feb 2026 17:36:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 6/7] arm64: dts: amlogic: Add clock and EMMC for T7
To: Krzysztof Kozlowski <krzk@kernel.org>, Ronald Claveau
	<linux-kernel-dev@aliel.fr>, <linux-amlogic@lists.infradead.org>
CC: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman
	<khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, "Martin
 Blumenstingl" <martin.blumenstingl@googlemail.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260218102045.35633-1-linux-kernel-dev@aliel.fr>
 <6d86917f-5326-4ce2-91e3-c57534e5e8a2@kernel.org>
Content-Language: en-US
From: Ronald Claveau <ronald.claveau@aliel.fr>
In-Reply-To: <6d86917f-5326-4ce2-91e3-c57534e5e8a2@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CAS11.indiv.local (172.16.1.11) To DAG11EX2.indiv.local
 (172.16.2.112)
DKIM-Signature: v=1; a=rsa-sha256; d=aliel.fr; s=ovhex24454-selector1;
 c=relaxed/relaxed; t=1771432617; h=from:to:subject:date;
 bh=BB8J3JMtEPj5H0CRRPlNePbZc8U65x2uvJAooEjNMl8=;
 b=OrCxkhqmoZcDSL60qrYCnV9E5BfShFmPAzDQ+upkCRt6kTyrqAkN+C6ShoMTTHOAv+1ItcC5vasHn9virT/BWgwlikhkpzPFLhyZmZkWq23c4kCVK58RK5IRLA+4lXcUZEmDQHnkhI8SDr5lnYDykEJFBvvWmxq4nnUM11i5mSMXIcsBaBnRqSARFQc6Fa67MpHYOaBzhsxwZePCP6HZuZf7v2C+w/AXtDyd/wS8n6T6Tixit3cj7kJEu4iwugZl56c6NtAW4x/drvncPSU8qeX29Yg6oS1X5X9LlN8T4fcSopPIjylXAPG/tpJar8MnVjUP8trWr26pIk1C+EbYVQ==
x-ovh-tracer-id: 16909327752792051004
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTEvs4p4vQ7GXQ5O2JhWd9mTFTO0zoeJJDbrIokzMsxjA81NEwHUl2L95GjJ6SQ/tY45Ymi2tltV9rjNU4nFqVmUS3Yugb85209eNJjlP8FHv0teMyES8ilkogrcEY2cPzKrNC2De0B3Ccs07MCf+rkVElaryVzaXsMzcqOFq/9agWD63VqdWe9dvZGKsUjpqoxYFek7hNIZ4iCgdRkC687G2vFPP67qg6xEDdBZUIuhFlN7ERLL2iBH5w2YNQyReHIlZZ9sSBYaAQeTBSMx0uFXzYB2+RZ06S+cHERcxh6Z2TNSdAqlETtp5jnH3wOeuFAdQuv1dqzN8pm+Sm+zUsDmO8Jylx5nqK4ijLYVgBmWs8pcjAItMf3aXLysxNUKNO0+2hFGypLyPRYkTrOy2JpGuPyVf7TkYpN4/irGh0ISdtuUVUPx0S+6VsBnebSXGRKoi9uDDJyZL0JUkMvz2x3GAfEOh4WKUJ32ehXry4b51j04hB/vi47I3ux85rXP8+is+HLFPgeE6RoBmTaI/EbgAF/wuGpqM/YZX5pCKS95jCCASBNiRtKgyvJlo8BIWlscvJa+vydt5hD96KFVPKi4KAJpD4TGBSB5hHUScwqPxIBFQqbcgDhFVfHbRh+DzSySfX42n9fqzFXt02+nbrehn8BMKHuOb8FiPAG07swEmQ
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=ovhex24454-selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266490-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ronald.claveau@aliel.fr,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,8c000:email,fff01000:email]
X-Rspamd-Queue-Id: 644D2158722
X-Rspamd-Action: no action

On 2/18/26 11:23 AM, Krzysztof Kozlowski wrote:
> On 18/02/2026 11:20, Ronald Claveau wrote:
>> Add fixed clock and EMMC support for Amlogic T7 SoC family dtsi.
>>
>> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
>> ---
>>  arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 137 +++++++++++++++++++-
>>  1 file changed, 134 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
>> index 6510068bcff9..e5932eb3db2b 100644
>> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
>> @@ -3,6 +3,8 @@
>>   * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>>   */
>>  
>> +#include <dt-bindings/clock/amlogic,t7-peripherals-clkc.h>
>> +#include <dt-bindings/clock/amlogic,t7-pll-clkc.h>
>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  #include <dt-bindings/power/amlogic,t7-pwrc.h>
>>  #include "amlogic-t7-reset.h"
>> @@ -208,12 +210,14 @@ soc {
>>  		ranges;
>>  
>>  		gic: interrupt-controller@fff01000 {
>> -			compatible = "arm,gic-400";
>> +			compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
> 
> I don't get how this is related to "Add fixed clock".
> 
>>  			#interrupt-cells = <3>;
>>  			#address-cells = <0>;
>>  			interrupt-controller;
>>  			reg = <0x0 0xfff01000 0 0x1000>,
>> -			      <0x0 0xfff02000 0 0x0100>;
>> +				  <0x0 0xfff02000 0 0x2000>,
>> +				  <0x0 0xfff04000 0 0x2000>,
>> +				  <0x0 0xfff06000 0 0x2000>;
> 
> Neither this really.
> 
> ...
> 

You right, I will send a different patch to address that specific issue,
and I will remove it here for v2.

>> +
>> +			sd_emmc_c: mmc@8c000{
>> +				compatible = "amlogic,meson-axg-mmc";
> 
> Compatible says axg, DTS says T7, so something does not feel right.
> 

The SOC family is T7, but the emmc is fully compatible with this same
axg code.
I did the same as used in meson-g12-common.dtsi or meson-s4.dtsi, which
use the same compatible.

Best Regards,
Ronald

