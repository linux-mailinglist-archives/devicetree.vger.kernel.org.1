Return-Path: <devicetree+bounces-325516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WxseHb3hVGqDgQAAu9opvQ
	(envelope-from <devicetree+bounces-325516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:01:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1273A74B371
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:01:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arm.com header.s=foss header.b=mpoy6yjf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325516-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325516-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=arm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B6633041A46
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0972409E01;
	Mon, 13 Jul 2026 12:59:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57AF361DA9;
	Mon, 13 Jul 2026 12:59:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783947566; cv=none; b=g603H9BlhCQvr/i2QTDaVFh2R3miuE3lWxhxnAP4u8rJDcJ6P6aYmMS89mRe7EIQNRaPKOf5ktPFGHwzDQUo8Ycz9zJ8JY1/mMGpWPpDb9ErHMtF7f5goMBh0jo+IAqF1IAlwDmC15uiCxYv6ijE9G0eq7kFwGXdSx34jIFEdio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783947566; c=relaxed/simple;
	bh=wcDXfVk32FROq/lsYLAGJRHnaY0Qj6QchI6Y5Vyq/C0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gUb/K7vqFAr5HvJ5IgiSMAxPiqTbXuS1zRcWAnp5q0d1Ump0CiJLG9365DjRE6RWX7qZ88JnCKIekH/dkFw1sv57rDmcYmO4QfII4kmQDTy0tM+JbPTje2nZjtupLk4JIdkfXqd5FcF/puT2sKvFrF9juAyNWZ6R1JExmJePmR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=mpoy6yjf; arc=none smtp.client-ip=217.140.110.172
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1327C1576;
	Mon, 13 Jul 2026 05:59:20 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AEBE3F93E;
	Mon, 13 Jul 2026 05:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1783947564; bh=wcDXfVk32FROq/lsYLAGJRHnaY0Qj6QchI6Y5Vyq/C0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mpoy6yjfXl0ZeCqb5O1TZ4YuxzIzKqDu4hB7IX1z9ziCRBAIkr0gTaXpVbpYMqarj
	 7YCGMjEbRC3yqK/A96DojrSn1xFU7x0teIh6lIPzGTJsD5M/Ar5eX2spERBUL6FNkC
	 P/oUkIQNzx6Dju8nKwEfhzT2t8yJrhn3QLFSvbYM=
Message-ID: <3f3e6dec-9e37-4731-8de1-bd9f3cee9b80@arm.com>
Date: Mon, 13 Jul 2026 13:59:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: perf: Add Arm Bus Monitor Unit
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: will@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1783439341.git.robin.murphy@arm.com>
 <1cd17d9c07e9695e1dffdeaa5409f0a1db8ccb81.1783439341.git.robin.murphy@arm.com>
 <20260713-noble-jade-wapiti-20ba9d@quoll>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20260713-noble-jade-wapiti-20ba9d@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325516-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:will@kernel.org,m:mark.rutland@arm.com,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[robin.murphy@arm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[arm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,devicetree@vger.kernel.org];
	RSPAMD_EMAILBL_FAIL(0.00)[robin.murphy@arm.com:query timed out];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1273A74B371

On 13/07/2026 8:26 am, Krzysztof Kozlowski wrote:
> On Thu, Jul 09, 2026 at 08:22:07PM +0100, Robin Murphy wrote:
>> +required:
>> +  - compatible
>> +  - reg
>> +  - label
>> +
>> +additionalProperties: false
> 
> You need an example DTS, unless this is a subdevice and part of other device as
> subschema.

I still fundamentally disagree with the necessity of "validating" my 
ability to understand my own trivial 3-property binding that I wrote, 
but whatever... v2 can have this which I've made up out of thin air 
since I have no real-world reference to hand:

examples:
   - |
     pmu@12340000 {
         compatible = "arm,bus-monitor-unit";
         reg = <0x12340000 0x40000>;
         label = "ddr_ch_1_2";
     };

Thanks,
Robin.

