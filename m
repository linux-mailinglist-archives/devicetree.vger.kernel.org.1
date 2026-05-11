Return-Path: <devicetree+bounces-295329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOj3AS2AAWpWbgEAu9opvQ
	(envelope-from <devicetree+bounces-295329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:07:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB87508DED
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:07:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 090E9302416B
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 07:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5642D30E0ED;
	Mon, 11 May 2026 07:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgmgmgQz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E622FF66B;
	Mon, 11 May 2026 07:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778483127; cv=none; b=c5s1yoxt4hUJHScqpAAtqV+aMD9T6TMZ1+D2lhhMzzJqJz7gyzPR9hPZ6EAuZIo1JCjjCN7Z6GQKrsxmdz9eFqDi9istz4YvTbwyaQikqHJb3zxGQzH+6Sx/gu7DXEet5ERNT40Cc9yGXEtFvI8muPdGlnUkWr2t1MfWheXwDNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778483127; c=relaxed/simple;
	bh=cPWpJ3ODp7kHpyer+OEkVZg2DAv+YVBmvyXY8bdNLr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QvTQTuzgI1G5DVbnr9/zLe8z2KKjteopAPOAQZg7I12V5qts7MJURd6FT3b9k/M3F3iPebhNXi4U8medbfyycMxBLoB3se0ShhJCW8eDjpV3a1qClQXpRchNH0jQ4WlPFzVmBLvvQXiJS0YuhEQ+CLzG5gWCxtQLlrdhreIi7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgmgmgQz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31807C2BCB0;
	Mon, 11 May 2026 07:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778483126;
	bh=cPWpJ3ODp7kHpyer+OEkVZg2DAv+YVBmvyXY8bdNLr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cgmgmgQzpHjhq6mrGzVqYUF9vTKAlqZdnft/4nNKO7p3DrdPT2nbWweiJtKczehVu
	 WyqPzpUl+TGiBkC/t+8aIO8qTPXMHyJ/NlOaoYozyiRk5gqaYnEGl35vGn22aEbY9H
	 QzrV8vbLx+aBQu/o/VB77ORIhWoxiwXJXXv4TuBWGO+aN6Z/DWFk2qfnVYLBUuF53F
	 brawa9B4p6oVNIfsF6Epb7/YlZDwtTP8khlyfQhq2dvXxyq43u/z4qUJFLgrIq3ZLV
	 trK211h2zcuAPo4W7eGSrrIUlItC0gL2bZssvEzoNVn1ah6k3jks0ENgUK5ZHHNWQ/
	 8n7R5a7RjCmAA==
Date: Mon, 11 May 2026 07:05:22 +0000
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v3 0/3] riscv: dts: spacemit: enable USB3 on OrangePi
Message-ID: <20260511070522-GKB3624147@kernel.org>
References: <20260410100010.1197804-1-amadeus@jmu.edu.cn>
 <20260511060101.3782514-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260511060101.3782514-1-amadeus@jmu.edu.cn>
X-Rspamd-Queue-Id: 9EB87508DED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295329-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


Hi Chukun,

On 14:01 Mon 11 May     , Chukun Pan wrote:
> Hi,
> 
> >   riscv: dts: spacemit: add fixed regulators for OrangePi R2S
> >   riscv: dts: spacemit: enable USB3 on OrangePi R2S
> 
> Ping... This patch seems to have been forgotten.

Thanks for the ping..

Don't hesitate to ask if you think I've forgotten, or the patch
has been ignored for too long..

Yixun Lan (dlan)

