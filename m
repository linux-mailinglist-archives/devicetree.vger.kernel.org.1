Return-Path: <devicetree+bounces-266560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNZwKhKTlmmshgIAu9opvQ
	(envelope-from <devicetree+bounces-266560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 05:35:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6C615C06A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 05:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13E4B3018594
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 04:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEF0A285CB3;
	Thu, 19 Feb 2026 04:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="F9yTs8dm"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F63624679C;
	Thu, 19 Feb 2026 04:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771475726; cv=none; b=f0jrx3JPuh0o+yycF2QsytjZbJn8uJ1wTryKJN1YRyYqfGta0ITqMrSIdoILfJniJpTOOX0wiSApO51uQLnGSFCn5V8/a2DXC958SqXiE121NAqlZBwUjbI3rWs4WtQB/VCObEa/fMD/jBxLTlAUrs6LvtZxbrjp8TyOQT7f3SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771475726; c=relaxed/simple;
	bh=NyyrHMdGiLTvP1/amS1ZW2JLJgrRkSD+cpPFiubvum0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GoJhCo+I42uYs1Y9Pi34ez6KBoc6CEZoWs7nMg6XyKTgVjy4zNhYYwT5LVxTGMe0u9Yyif3DZnTd5JmdxrTVZleMApVT1CvGlp77KJ/KknAU5hzT6/2QwiwJmtTrdekr22iF8CGNh1Tz1OFVZp14YlG+hYofF0i3yvLTIH68w14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=F9yTs8dm; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1771475723;
	bh=dbQGCcXacygdL0pttgXnvjZ05dWekjLf5mE44UOfY4I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=F9yTs8dmkr63M3IBkhGpgOB0FzU3XHFQDGa2PkvS9vvSCL05b3ywnu7EIT8zJYWQ4
	 nHKDCoL0uOVUMJKR5G7fwOJUVQArkS60TDvPRMgb0e2CaaScLe2pOfjDcXlNOuf+4C
	 OyntBq1bjEgs7fj2tOiJJahZ5T/e1xj7Hs1KkavNMJi/DY7VlwtyuF9s2p6Yn6QbCx
	 RLVRAlKyiOnyqOyz3o26eUL5MPviPYgbC2Z9R1owURtXww4ZUldV0xkqRIraPMi6ZW
	 qii2gNIdyrrfbWR6jnkIjX+cFy8Nh4aAXbTqmL5MYuZnUXPcDQmNPjCw2DAePOqkwP
	 af+458OiU7D9Q==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E1CF160033;
	Thu, 19 Feb 2026 12:35:22 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Carl Lee <carl.lee@amd.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 peter.shen@amd.com, colin.huang2@amd.com
In-Reply-To: <20260209-add-nfc-device-v1-1-748d1a98b2b5@amd.com>
References: <20260209-add-nfc-device-v1-1-748d1a98b2b5@amd.com>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: add NFC device
Message-Id: <177147572280.1160818.12060888145911808065.b4-ty@codeconstruct.com.au>
Date: Thu, 19 Feb 2026 15:05:22 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266560-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,codeconstruct.com.au:email]
X-Rspamd-Queue-Id: 1C6C615C06A
X-Rspamd-Action: no action

On Mon, 09 Feb 2026 10:25:59 +0800, Carl Lee wrote:
> add NFC NXP NCI device support to NFC tag reading
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


