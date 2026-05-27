Return-Path: <devicetree+bounces-303212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qP6fMaliFmpTmAcAu9opvQ
	(envelope-from <devicetree+bounces-303212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 05:19:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C475DED46
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 05:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C64F3042003
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 03:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 524F128688C;
	Wed, 27 May 2026 03:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="igtWyFI4"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50EB37B41C;
	Wed, 27 May 2026 03:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779851929; cv=none; b=VgCPmy47muKk5kufr5KtZWLLTIhjx9R4ZdEx0ytvqtNOaJBG6Y/kBk6HZez1kVUHpVVU/0An3hkv31w8AVgZHHN6qs15USHxVebKDPl8QrpbvbzaHtce4bmGavoyxTF7koy3BcWhm+z19nvGhjVFiBSI2cM3Nor27keTJFbAbDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779851929; c=relaxed/simple;
	bh=pXU3D4G1EOjHyl5tSTrOYW+1CBU/KkHhYZLolvDnBP8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GKp9fvB5AJVT5afhKJVyqfhRAFG5lz0+BnmZ35dvK13yVwdTrIfDTpI+VDUUTb4xVvp+3U9+5kIzXf88aRv2Mkcl30DrZD/vczqhDSnjljQJygxQSiYjQgpjNxnccbDy+YY1/v7Bpzz1RJ3gYfU/WVNvA1MPfsw9e3afSv2Mcxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=igtWyFI4; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779851925;
	bh=zJU8EAC9I7Spvd0nK3+SuI/L+eH9UzP8lKuPKonV7lk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=igtWyFI4rXsCZDEXA0z1LVxggWUxjy5e7qIQWXxdVYIY+6OqjUNjbwEjoxxUra4r6
	 kujgGJKcVPyV2jB8Pxr6Qx8fL3TpnII9O1zjy/4Sdn1s9VJL2A43Rj8bM7pA6NvWQC
	 nzXCDqaFOBKifl9Trm7SNdtyq9dojbxLyNz3irLaOssUL60FDZp1VCNqdIyPxgUS/Y
	 5/TbtsPbflpvLqAh9ozZ2LvAYWsF9saU/WJ8jATIE27YZtkxQM8wvf5zVmv2zio16h
	 24r9DkzcnalRQ+MxDU17eYhOymUzmNs0xO3lxKNwJWjJWr+rrt/Ld/uPs3MSQWYVkm
	 ZtoMgDU6dZOHQ==
Received: from [127.0.1.1] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 8729D6001B;
	Wed, 27 May 2026 11:18:44 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Patrick Williams <patrick@stwcx.xyz>, Potin Lai <potin.lai.pt@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Potin Lai <potin.lai@quantatw.com>
In-Reply-To: <20260523-potin-update-sanmiguel-dts-20260522-v1-0-169f5fceb5f9@quantatw.com>
References: <20260523-potin-update-sanmiguel-dts-20260522-v1-0-169f5fceb5f9@quantatw.com>
Subject: Re: [PATCH 0/2] ARM: dts: aspeed: sanmiguel: Update DTS file
Message-Id: <177985192444.444390.3815686212940487089.b4-ty@b4>
Date: Wed, 27 May 2026 12:48:44 +0930
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,jms.id.au,stwcx.xyz,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303212-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:email,codeconstruct.com.au:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 40C475DED46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 23 May 2026 10:28:06 +0800, Potin Lai wrote:
> Update the SanMiguel DTS configuration to fix incorrect GPIO
> linenames and resolve the IOEXP interrupt handling issue.

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


