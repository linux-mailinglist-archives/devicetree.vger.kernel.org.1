Return-Path: <devicetree+bounces-261448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LP/K0knfmmLWAIAu9opvQ
	(envelope-from <devicetree+bounces-261448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:01:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A26DC2DEA
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:01:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1DB19300681B
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14A2431ED9D;
	Sat, 31 Jan 2026 16:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ovZxhndc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833582765D4
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 16:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769875261; cv=none; b=fI5zNpWhh7TjHkp8u2nGHMRiIBSgohuTPVbHFCSZ5BYmT/HTzxBQe/1AQwFbYsBW7eSEQRp1pmAJPxb6SCtgxzBvNLdUmJUckpvVPyx4bc64LOXTERbohFdFQrSGfW6szn7rDhpeWo10/eauF8qI8qTCDo67kt2Tb7dh8t3IHpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769875261; c=relaxed/simple;
	bh=yejpOMXPzkPs1BTMWVwwoFRdN1K7aZPHm5sr49+HsXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lI6ikivTdmB4HJYr4U+cTFLkOBNlZ+S8vRgalJwI8e7oMrhjQqHyPnS+/gXkIbaMCR91XPvE6k+aG5GSgr4iWISSH3PJBt4iQShgZ9mfzChIlfhaCrkJ/N3FjSZjAafUZs3j5cFN3uMkRtqTeusoejzdkZ1apoQOcxRaTf4aAU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ovZxhndc; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b8871718b00so535262666b.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769875258; x=1770480058; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fJLogjaQIREWDYxPFSLJELLqjbCy21hgcIev5TDCa9s=;
        b=ovZxhndcN0ayhxIif4/KUa8P2F95O9ZGJ09txMKVJ4wWnIUfzXDyxKsa+69VpHTokC
         S8j3b1TnNjCNcH+4q6rXMtHrUp4KO4xWOA5xyzv9+fkZIJyXkYl5HNir6CO9JRUqlwDR
         V0eRHRL0uk0hMODh5+dIpysOlw84RJshLxVGKmBzZnxryI2pUF+cAZsMj0cz98otbm0F
         aFD1+f2sY5Uf9TWoYpHlmPLWqCJ+T24z7CzxAPPydA6ITIx8FHxPnElJYWnQ8UlnCaD5
         lJQ9Gw6k023beQcg6K1Gonk6ZMjA1qAWrFb9LdEAafSKqgnCRIePd5vXQCD0arzBuXBh
         4gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769875258; x=1770480058;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJLogjaQIREWDYxPFSLJELLqjbCy21hgcIev5TDCa9s=;
        b=LszmXiLRHP6faoLecFredQpa6/CU1ui2+UGmzovZdAYBaO8DRTEslDyTRB2YnrW8kh
         IeG1fZbaQ34AdtYsxSBv/zQ5/4jQ6Shr/CdckDvqSLMzxAmvPsZ2PVHw6D+QV+94UEvq
         jNAlzIImacBtQDPHK2nsd08H6EQWAEi3rN+oPyZ+yWnRYUlz9mAFbxcHPLmUIjyKZFzk
         5Ko7GGUuB4NGqHZt8Kj7rjPp1M4+b/YnPmwaIhCEZm/ef8u48LsiaV75aw+oa8rdJ8bd
         3UgZtVwd79l+ccxPHtDRem5k7p1inpjAnpSEVKdFdKASD6tkAbKubPGsaHe+5FAt3gvh
         Yt1w==
X-Forwarded-Encrypted: i=1; AJvYcCUM3xOGVgpQCtJb1aTXiWmc1jUhH8sG46sVTy6co4Cf8iYxYxbxeylXr4RnzPR6AdnD0dO1JjjtJmRT@vger.kernel.org
X-Gm-Message-State: AOJu0YxEgNSyddyIK9IJzd7KpIZD0JDStDfcc5FbefbqJCWV04z3fhId
	nK+EcRDEzX2GIJVXQVntZYAUgd/TaaUfNM47IqHbLOS083gs3rvOlSJ9KJG7DaBNcJg=
X-Gm-Gg: AZuq6aIOjGivnxhq6Ey4DhuqZ5SpxMx+0PFlL5idp2j0J0SpnZ4DLXyxD/ibabcIoIS
	sjesyqLUZ+OcQqjvo3L7v0BkJ5bPi7FN8NTb/fx+7XM1EVW/UOcS4T9tuThc1jBG+n1DUdeBETe
	OINKYoftK5SdfozqUANOqXCcRQPxURvR+qQpfF9u1kxxpUWcIVuqrziyxGZi3+UU4F7Lkta8PeS
	UevBH+BWHMWYwwZVBh/GbgUVuW+qx5Xq24PlNbGDFWH6ynz7ZH3sfIiQmoXuPmw9P6yqASi/zXy
	PD9/X5vWn+e5y0jt8aoWNSbvthtmoSmmGkHhKqSQLg5pn7TKwP7StsIKZFWZZXAJYN/R/3Y1xdo
	Gjed7qvJNI3ayDl11jmtY2WF++gln6Vv0BoKQhybgJdupr/0GUK8pQldtFMjdPhyCOrZZ3yijFp
	a612DiaHKfVmuHbfoVF4dbmgxPG7nH
X-Received: by 2002:a17:907:96a5:b0:b88:5bd7:63b0 with SMTP id a640c23a62f3a-b8dff5af70amr373554666b.11.1769875257922;
        Sat, 31 Jan 2026 08:00:57 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf183f2bsm587629966b.32.2026.01.31.08.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 08:00:57 -0800 (PST)
Message-ID: <a7d42750-276a-4348-802e-30cfa4ad3a81@tuxon.dev>
Date: Sat, 31 Jan 2026 18:00:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/19] nvmem: microchip-otpc: Fix swapped 'sleep' and
 'timeout' parameters
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 stable@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-5-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120154502.1280938-5-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-261448-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:email,tuxon.dev:dkim,tuxon.dev:mid,thorsis.com:email]
X-Rspamd-Queue-Id: 7A26DC2DEA
X-Rspamd-Action: no action



On 1/20/26 17:44, Alexander Dahl wrote:
> Makes no sense to have a timeout shorter than the sleep time, it would
> run into timeout right after the first sleep already.
> While at it, use a more specific macro instead of the generic one, which
> does exactly the same, but needs less parameters.
> 
> Fixes: 98830350d3fc ("nvmem: microchip-otpc: add support")
> Cc:stable@vger.kernel.org
> Signed-off-by: Alexander Dahl<ada@thorsis.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

