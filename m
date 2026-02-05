Return-Path: <devicetree+bounces-262986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGf3OBZ+hGl/3AMAu9opvQ
	(envelope-from <devicetree+bounces-262986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:25:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0B0F1D36
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:25:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D377830058F9
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 11:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6EA13A782D;
	Thu,  5 Feb 2026 11:25:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEC32DECBA;
	Thu,  5 Feb 2026 11:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770290706; cv=none; b=BwlVg+SF3QcbwfH3+Lo3iROtTPA9rPviQnQeqSaANPWSxRyY7uu4c7H71FilbORMf5zD0HSUWJargje4k+56u/9+IZ4CSvpE6flUZBSo5YlHbhzfZy+BEFe2dJHzaGNUoIsfF1yqTSwNnP38QL/AZAftLnBcjEy3ThQ1ltoaAzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770290706; c=relaxed/simple;
	bh=hqUTCX9IJt5wvMqUFGNs+S1moTu723epdNMj+CIv6xs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eI+y7/x5+L4GhBrAV3gcDtwwkHwvFjQp7oPo29PYWcjR0e9OFpKcT8bGKMICAncoeNxbz/8VkgIAzd4A3gXOeKHqtgV9DNCzUkjawTduD4ceLFtQAtz6uQouZxRduBXL2fRpmwyMq4H8M2Xm4BtmG4yymnjia5SpkqXoQn9NTFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 941C8339;
	Thu,  5 Feb 2026 03:24:58 -0800 (PST)
Received: from [192.168.178.73] (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E9673F778;
	Thu,  5 Feb 2026 03:25:03 -0800 (PST)
Message-ID: <445035bb-71be-4751-a014-9ca67b1c0cb4@arm.com>
Date: Thu, 5 Feb 2026 12:24:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
To: Sudeep Holla <sudeep.holla@kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>
Cc: Debbie Horsfall <debbie.horsfall@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
 <20260127132206.036892e4@donnerap.manchester.arm.com>
 <c1259bad-be4d-4489-840d-4ab2f4e466f2@arm.com>
 <8c343e6d-14f8-4f55-8218-bc3f0813e8cf@arm.com>
 <20260130-light-piquant-termite-fcbec4@sudeepholla> <aYHmDTboOtkgac00@pluto>
 <20260205-intelligent-intrepid-robin-df42bd@sudeepholla>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <20260205-intelligent-intrepid-robin-df42bd@sudeepholla>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262986-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,arm.com:mid]
X-Rspamd-Queue-Id: 7E0B0F1D36
X-Rspamd-Action: no action



On 2/5/26 12:08, Sudeep Holla wrote:
> On Tue, Feb 03, 2026 at 12:11:57PM +0000, Cristian Marussi wrote:
>>
>> All of this madness was the best way I could find to address the problem
>> of supporting such new unidirectional mailboxes in the SCMI while NOT
>> breaking backward compatibility in the absence of mandatory naming from
>> the start.
>>
> 
> You can attribute this to my expecting an overly ideal scenario with
> bidirectional mailbox channels across all platforms using SCMI. At the time, I
> did not anticipate the range of configurations that rely on unidirectional
> channels.

Would it make sense then to add mbox-names parsing to the code, to 
accommodate new users? There is precedence in some drivers for 
introducing xyz-names for clearer and unambiguous resolution, while 
still falling back to some legacy, fixed associations in case the names 
property doesn't exist.

Cheers,
Andre


