Return-Path: <devicetree+bounces-286985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8I4/KJnH3GmcWQkAu9opvQ
	(envelope-from <devicetree+bounces-286985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 12:38:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 090313EAB88
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 12:38:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A84DA30221E7
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87157331200;
	Mon, 13 Apr 2026 10:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="VW4zImkQ"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6A93148CF;
	Mon, 13 Apr 2026 10:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776076328; cv=none; b=MsMKgKRmVczFnjeUJLiN4o3wg40gNIpKTVVQfsUdtJep6Egzsckv4Cdd4UhsmSE2ETzUx3nMB5HP4mdCkh5uPvmc+wfehijwpFq8upxamY+aXZuuZhyw3hcW5B5gwQXjU7WcZD0286e0f35IvBjLrPqh8v10W7FhHYBDtcjPL04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776076328; c=relaxed/simple;
	bh=ZqPutyXfURY4JqAzvot3E4VaS+HrR8bVUot2j45xsQg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=OsTjzGfXXUEJ2acLXCg0PaWJabg+W1s1MNKpWZti2O1AWyL/XwkWXqZhAr2YaSeI3XCSjV1T/RTafRIK8gRed1bGsHd/kzKhHzSiLF7NHC8wM9zn9NP3NiSXOE1hN+xGIQGt/3pI8GE3JP6UYAWrTOsjoR52CalnU2MfjoIohlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=VW4zImkQ; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Message-ID: <451ba56f-83cd-456c-81bc-c09e2594df1a@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1776076318;
	bh=ZqPutyXfURY4JqAzvot3E4VaS+HrR8bVUot2j45xsQg=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=VW4zImkQz89KLlouelDsZND4ph6bmMU0+d0qca5XJBMBjxMbUvxn6n0PXW1tWhMTX
	 kjD3GTvokQ001Fcj0A8STZTQ0ZC5LKE0o89NclXOWONePbxi/XQ4eUoNOABQg8+NEm
	 e7rotYrheKjtu5qvYBubSQUreNZkJ227bWbb+gxc=
Date: Mon, 13 Apr 2026 12:31:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Subject: Re: [PATCH 3/8] firmware: meson: sm: Add thermal calibration SMC call
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Guillaume La Roque <glaroque@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20260410-add-thermal-t7-vim4-v1-0-19f2b8da74d7@aliel.fr>
 <20260410-add-thermal-t7-vim4-v1-3-19f2b8da74d7@aliel.fr>
 <6200b372-149f-48f7-ae91-a5364562058c@kernel.org>
Content-Language: en-US
In-Reply-To: <6200b372-149f-48f7-ae91-a5364562058c@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286985-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:dkim,aliel.fr:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 090313EAB88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/12/26 12:47 PM, Krzysztof Kozlowski wrote:
> On 10/04/2026 18:48, Ronald Claveau wrote:
>> @@ -245,6 +246,14 @@ struct meson_sm_firmware *meson_sm_get(struct device_node *sm_node)
>>  }
>>  EXPORT_SYMBOL_GPL(meson_sm_get);
>>  
>> +int meson_sm_get_thermal_calib(struct meson_sm_firmware *fw, u32 *trim_info,
> 
> Exported functions should have kerneldoc.
> 

Thanks for your feedback, I will add it.

>> +			       u32 tsensor_id)
>> +{
>> +	return meson_sm_call(fw, SM_THERMAL_CALIB_READ, trim_info, tsensor_id,
>> +			     0, 0, 0, 0);
> 
> Best regards,
> Krzysztof


-- 
Best regards,
Ronald

