Return-Path: <devicetree+bounces-308066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f/d7MdVyJmqmWgIAu9opvQ
	(envelope-from <devicetree+bounces-308066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:44:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A660653A9B
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:44:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arm.com header.s=foss header.b=enkpkK0u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308066-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308066-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=arm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4687E3021B22
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 07:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C3B391E66;
	Mon,  8 Jun 2026 07:38:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32EBE34CFB9;
	Mon,  8 Jun 2026 07:38:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780904327; cv=none; b=e0ZyH/JX3aFtCkBzTEionRhPr+XLd2ABXCPTISUApv85/3T1yIK/PpU2puxnROyBKLUtabr1xIhnDzHsYY8sPAyNHrnluEWbqdMJpfhRwNAE6XqcgYljU2nK2fmb1tBlfuOp2SClkuYOE4/OfCCVl3AUuDwTOevlWuvFBZ9D1UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780904327; c=relaxed/simple;
	bh=SPAws/lhAws7/ucS0FCjJ/F5kS84Kk0lmu1Zg1EIo3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mmJ9gbzoxT1PDtNwjuJODgg492ib158sSjKkqClbb/g3TKlJ/uwA8lX74nGh/saHv1wfdXAINxUw+N0sKjX6YF9Mbbrhm/h797LVeZ09FpLRWJaQXCcCoU9gtctHjdPLlXrcRvFojjAaWeP1AJZAadJpETCAA4iXZMt0TrKKx6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=enkpkK0u; arc=none smtp.client-ip=217.140.110.172
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69BFD3290;
	Mon,  8 Jun 2026 00:38:40 -0700 (PDT)
Received: from [192.168.178.24] (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A3393F86F;
	Mon,  8 Jun 2026 00:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1780904325; bh=SPAws/lhAws7/ucS0FCjJ/F5kS84Kk0lmu1Zg1EIo3o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=enkpkK0uHHmW8awAneqEDFejZ0kEggRsSBDbMx0mOgu3hvlnfAQsOK6MnZtO7rCyB
	 lhDi55Irjlqw7gBNpxx7yGMk3cH0mwjQysRCNGiFuRiVAUdrgwHq+hzMlQPEJHZ9nP
	 KvljUJERgtgGKShZ09nsW6xZ7Jos1I3Aa1HavV+s=
Message-ID: <aa0e1539-cc59-4d3c-a0c5-a4f7cc1fe7c5@arm.com>
Date: Mon, 8 Jun 2026 09:38:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] riscv: dts: allwinner: d1s-t113: Add uart4 pinctrl
 required by NetCube Systems OpenNMC
To: Lukas Schmid <lukas.schmid@netcube.li>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Maxime Ripard <mripard@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20260606205452.2386930-1-lukas.schmid@netcube.li>
 <20260606205452.2386930-3-lukas.schmid@netcube.li>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <20260606205452.2386930-3-lukas.schmid@netcube.li>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308066-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[netcube.li,kernel.org,gmail.com,sholland.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lukas.schmid@netcube.li,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[arm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A660653A9B

Hi,

On 6/6/26 22:54, Lukas Schmid wrote:
> Added the "uart4_pb_pins" pinctrl used by the OpenNMC

Checked against the datasheet:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> 
> Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
> ---
>   arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> index 82cc85acccb1..00fddedfa36f 100644
> --- a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> +++ b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> @@ -191,6 +191,12 @@ uart3_pb_pins: uart3-pb-pins {
>   				pins = "PB6", "PB7";
>   				function = "uart3";
>   			};
> +
> +			/omit-if-no-ref/
> +			uart4_pb_pins: uart4-pb-pins {
> +				pins = "PB2", "PB3";
> +				function = "uart4";
> +			};
>   		};
>   
>   		ccu: clock-controller@2001000 {


