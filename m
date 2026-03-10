Return-Path: <devicetree+bounces-273635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHfwFvxLsGnFhgIAu9opvQ
	(envelope-from <devicetree+bounces-273635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:51:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E01CA255138
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8DE0B302E542
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A153C4563;
	Tue, 10 Mar 2026 16:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="HRbJPWcF"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF94F507
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 16:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773161454; cv=none; b=ucdAlBWpbs9uPDVzjqjk6xHp/JX2lkKeFz5fKzaLXhsszzOo4CQUKhDDGzwQKbULfwvO0J6ALEuKXTsGxpXaPjQCxKmNoL8GYCDSMzCIJ4h89zUdFca9ekU9IQs9x+MBEQbEZtUuJPEGAHxKfFUngHqJBFj9vyyusGg4UjyzXOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773161454; c=relaxed/simple;
	bh=PZj1fcwaLVWKDKmtK0kUJv9/mrPhRMVOZLzPKyuWFJ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=mfERRCbsogWjfmtErC9WMDudWPFlt0HPUVaOlA4WsIY8WoI4mBNIppLvuOrWNRBarlgHS4RQGfCOStm5cpjpxisvqhz4hnT5sKRTuHKSse2ELEq7m8X/jDko6VuIqTpRaY9odsaCA2bJ/eo7eSfyHb04k8/z2qVeX6fNfLwPZCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=HRbJPWcF; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Date: Tue, 10 Mar 2026 16:50:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1773161450;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9SMoBYRHe8BuGZwLX7Nu4sjy0/B8sDrTJ2hSjkubIsk=;
	b=HRbJPWcF4u1V0tzoPI5iuIZawHvyv5chqENEJLgreHyZ9cflws0ME0GkIonFZzm6djM40h
	/ucIY5I1P5YkgIXMJxEMrGiD0MgMv0uCz0OT0gqWwxVR5Q2yv0WKTjwDbVymZbuY+suMdw
	zmAlMP0JAoFGSIP0aKK+LmaR6NE3i3YNeY3am3D6eu+lnsjrjvziqLQF/MUZRf8aiVo0xZ
	suRpFqBu0E7dOz8exCm6wX2YCrpC98sYv0mOWDogGgZoSnEd26iqXTLeMwMfeyyTung4AY
	ucQIW1S7ouhy6c0kuORsl81uFd/AOHh/a+R1aDZoOvXyt9n+ligJrcUI3NPk5g==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Hendrik Noack <hendrik-noack@gmx.de>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ferass El Hafidi <funderscore@postmarketos.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: Input: Add Wacom W9000-series penabled touchscreens
References: <20260307181557.66927-1-hendrik-noack@gmx.de> <20260307181557.66927-2-hendrik-noack@gmx.de> <20260308-vivacious-coucal-of-current-2d7ac8@quoll> <feae85c4-bea1-40b2-87d5-952b26ff3ee3@gmx.de> <fddf0e3b-707e-41b3-805b-2abeffed6c05@kernel.org> <f067754d-229c-4418-a367-6df5feb6cee0@gmx.de> <21aec29b-595d-4889-a71e-abe9e5ce834f@kernel.org>
In-Reply-To: <21aec29b-595d-4889-a71e-abe9e5ce834f@kernel.org>
Message-ID: <tbp04l.1q4xkmdkoohga@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8; format=flowed
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: E01CA255138
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273635-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[kernel.org,gmx.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,postmarketos.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funderscore@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,postmarketos.org:dkim,postmarketos.org:mid]
X-Rspamd-Action: no action

Hi Krzysztof & Hendrik,

On Mon, 09 Mar 2026 13:21, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>On 09/03/2026 14:12, Hendrik Noack wrote:
>> Hello Krzysztof,
>> 
>> 09.03.2026 13:56:41 Krzysztof Kozlowski <krzk@kernel.org>:
>> 
>>> On 09/03/2026 13:54, Hendrik Noack wrote:
>>>> Hello Krzysztof,
>>>>
>>>> 08.03.2026 10:15:35 Krzysztof Kozlowski <krzk@kernel.org>:
>>>>
>>>>> You received review and instruction what to do. Did you read it?
>>>>
>>>> I read the review of Dmitry and incorporated it into this version.
>>>
>>> So you ignored my email completely or it did not reach you (it is on
>>> lore.kernel.org though)?
>> 
>> I don't know what email you mean. You gave reviews on my first verison, 
>> which I already incorporated in v2 and then gave a review-by on v2, 
>> which I also added on v3, but now dropped, because I added a property
>> to the DT binding.
>
>The instruction I gave you when giving review.

If you gave review on the v3 dt-bindings, I can't find it on lore:
https://lore.kernel.org/all/20251205152858.14415-2-hendrik-noack@gmx.de/

On v2 you gave a R-b to the dt-bindings along with some instructions:
https://lore.kernel.org/all/2bf9dbd4-351e-4a79-9fcf-e41c5273d0be@kernel.org/
which were followed from what I can tell; your R-b was retained on v3,
but dropped on this revision (v4) because of new properties being added
(new `reset-gpio` property, technically also `wacom,w9002` compatible
but my understanding is new compatibles don't really matter much), as
your email said "Please add Acked-by/Reviewed-by/Tested-by tags when
posting new versions [...] unless patch changed (e.g. new properties
added to the DT bindings)".

You also gave an in-depth review on the actual driver itself on v1:
https://lore.kernel.org/all/20251028-funky-rose-rook-3ccab5@kuoka/

Best regards,
Ferass

>
>Please wrap your emails to standard email style, so reading will be easier.
>
>Best regards,
>Krzysztof

