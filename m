Return-Path: <devicetree+bounces-316049-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RW7hHTRaPmqLEQkAu9opvQ
	(envelope-from <devicetree+bounces-316049-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:53:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 035F56CC311
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:53:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ktiUQdQg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316049-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316049-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 71928300D769
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C10563DB327;
	Fri, 26 Jun 2026 10:53:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A4237188A;
	Fri, 26 Jun 2026 10:53:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782471217; cv=none; b=sUWjVF/x3JFreSA0KOVi1QKEotcZl4QBnOoIhe/D2g8U3bNlT92pJ7A6n6h5wid8GyT7BUEw6xMOvTaABrB/QQv8SIhmk3V4LYzLFg0CSeU74342KhekK3X+AcnITv5PnpLhykjALXfx++Pen3fzG5THfAxnyWIt3+Rq1gR5DqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782471217; c=relaxed/simple;
	bh=k4b/BPqIGDPh6NjPFaEn2eHsRKNvZYT2eoEw3kioFVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pp7RVYMygVvdjwKYw1f8cjU5yC+uGVqVBaqRLcwzlBTTxu0AYtz5xDUlBSDAgchpLZJQv70L20meMsdCY/8Ito285wgkR2hf5rjoWpD1SlAMUL2MS1g9qhMJHIlvPnIFDQkSDxxtOdvA83nu03dZkAJKTuDLrV20X5jNCDipn/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktiUQdQg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D71D1F000E9;
	Fri, 26 Jun 2026 10:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782471216;
	bh=po+ReanQt/H+Q889M4kf7cgjyS5Vi31nK8fSrnPhUOQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=ktiUQdQgO4kOLu/WGLqYLQ6/llR6jXosBAIY1Q7av3HKAEXb4n9w1SnFsyIHe8TU2
	 mcaDcr3qbT63mmz0rdE3yK9eE9X1RBnI/cHGK+YRMs7CTetfY/7DV9dMdePm+X3eU0
	 WHFa4U3AzN6WOyFipqXxXksYE57GKLAajpjoI4oU0NaMzUZHzx4/z6cXWSoKgFP8Wz
	 k5QNqXj/aHKbq3ZnRpGr+YTn7jSsOuPEUky9VQzKgI9k4bbrUK1pwV2orGF7JZ2d57
	 oIV9YeUii6JegDgJjRo5uXLHyE2YgclvPpC7IOzfFuPVN86BKktwSGF/rMJ+amKVJV
	 9OblI496ntL4g==
Message-ID: <d4952ad4-05a5-49ea-aadd-65785d241c4b@kernel.org>
Date: Fri, 26 Jun 2026 05:53:34 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: socfpga: agilex5: update channel
 interrupts for gmac1 and gmac2
Content-Language: en-US
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
References: <20260626042541.1091774-1-dinguyen@kernel.org>
 <20260626042541.1091774-2-dinguyen@kernel.org>
 <20260626043146.961401F000E9@smtp.kernel.org>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260626043146.961401F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316049-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 035F56CC311



On 6/25/26 23:31, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] Incomplete DT update: gmac0 is left with an invalid interrupt count that will fail dtbs validation.
> --
> 
> commit ce31f4c657e3508e9aef68e6da54a09c1d243026
> Author: Dinh Nguyen <dinguyen@kernel.org>
> 
> arm64: dts: socfpga: agilex5: update channel interrupts for gmac1 and gmac2
> 
> Populate the gmac1 and gmac2 interrupt list to support 8 TX/RX queue
> pairs.
> 
>> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
>> index 02e62d954e949..140e4bf9fb155 100644
>> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
>> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
>> @@ -670,8 +670,40 @@ gmac1: ethernet@10820000 {
>>   			compatible = "altr,socfpga-stmmac-agilex5",
>>   				     "snps,dwxgmac-2.10";
>>   			reg = <0x10820000 0x3500>;
> 
> [Severity: Medium]
> Should gmac0 also be updated to include 17 interrupts?
> 

There was an earlier patch that updatee gmac0 to 17 interrupts:

https://lore.kernel.org/all/20260609131641.28476-1-muhammad.nazim.amirul.nazle.asmade@altera.com/

Dinh

