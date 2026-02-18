Return-Path: <devicetree+bounces-266467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE26OlXwlWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:01:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5640615800A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:01:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0596B30028C2
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E82D92DC352;
	Wed, 18 Feb 2026 17:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="nTSIaoNe"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (pouet.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E3B22D4DC;
	Wed, 18 Feb 2026 17:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771434060; cv=none; b=oU3vTwYUYuWLrZzcWffaI14vGrrDZVW3AYTRrEN2iKZ1kWdWQ3CIISmLFsxNYDqyCEyyh1iMsthH3rY8925O7b1NudZ4jjBZ9eN3rvzvMbBmigkU2OkPQphACLq6APfTXMOTNC8EDaifi8J79qCrucBesZNYnw5KYWNPm20bd9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771434060; c=relaxed/simple;
	bh=CfvbqxEGqLIstZIbfTF6jYSXXOfDbT5deJahXMkpfHM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hmeinWE03EgS8uiX7VX2E+cQoivjO+xiQbs7RWWJ0P/1Ms8S8mIsb4GgA3hqt74gPq5FU8XMlCMtHeT4KAtELR6GUjhya5ZcJmgY0p1ujJ6NMRUXwx4pFPkRErh+0VgpJaBdmFwx37Zay9OfAnsfJjmIlvEk1mzpuhEfYU2t/Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=nTSIaoNe; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from [IPV6:2a01:cb06:a05c:5374:3961:b3cf:cce7:dce0] (2a01cb06A05c53743961B3cFcCE7Dce0.ipv6.abo.wanadoo.fr [IPv6:2a01:cb06:a05c:5374:3961:b3cf:cce7:dce0])
	by courrier.aliel.fr (Postfix) with ESMTPSA id 67E144A574;
	Wed, 18 Feb 2026 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1771434055;
	bh=CfvbqxEGqLIstZIbfTF6jYSXXOfDbT5deJahXMkpfHM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=nTSIaoNez7Rhd3lfu8TJdVMFZGIuiQPEPuX7/ei6mCEnGgAp4iMQm20z5SMLlznrA
	 fucCSIHuetiYN4gECV9YS1IdOIFEl7xu40mrhWmbg+6dUBkN9SjZo2kRbuGnYMg1dS
	 qFnz/srKy5POt+xlMNeh9Q+08Kr44LSGQmoh1Mp4=
Message-ID: <5e0b6a3c-23e0-4c2b-9a89-6b3632ecc7f1@aliel.fr>
Date: Wed, 18 Feb 2026 18:00:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 6/7] arm64: dts: amlogic: Add clock and EMMC for T7
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-amlogic@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260218102045.35633-1-linux-kernel-dev@aliel.fr>
 <6d86917f-5326-4ce2-91e3-c57534e5e8a2@kernel.org>
 <0af0667d-c140-4f6d-86cc-6be0460bf81a@aliel.fr>
 <f7e662db-63aa-49f3-842c-10a8346b70a6@kernel.org>
Content-Language: en-US
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
In-Reply-To: <f7e662db-63aa-49f3-842c-10a8346b70a6@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[aliel.fr];
	RSPAMD_URIBL_FAIL(0.00)[8c000:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266467-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[mmc.8c000:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,aliel.fr:mid,aliel.fr:dkim,8c000:email]
X-Rspamd-Queue-Id: 5640615800A
X-Rspamd-Action: no action

On 2/18/26 5:39 PM, Krzysztof Kozlowski wrote:
> On 18/02/2026 17:36, Ronald Claveau wrote:
>>>> +
>>>> +			sd_emmc_c: mmc@8c000{
>>>> +				compatible = "amlogic,meson-axg-mmc";
>>>
>>> Compatible says axg, DTS says T7, so something does not feel right.
>>>
>>
>> The SOC family is T7, but the emmc is fully compatible with this same
>> axg code.
>> I did the same as used in meson-g12-common.dtsi or meson-s4.dtsi, which
>> use the same compatible.
> 
> You still should have a dedicated front compatible (needs documenting in
> the binding) expressing full compatibility.
> 

ok, I will use something like that:

compatible = "amlogic,t7-mmc", "amlogic,meson-axg-mmc";

Best regards,
Ronald

