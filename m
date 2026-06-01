Return-Path: <devicetree+bounces-304928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMsGH3EnHWoTWAkAu9opvQ
	(envelope-from <devicetree+bounces-304928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 08:32:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E8A61A35A
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 08:32:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 428393019FE1
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 06:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58CD357D05;
	Mon,  1 Jun 2026 06:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTgy5EWu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706C35674D;
	Mon,  1 Jun 2026 06:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780295507; cv=none; b=WtbnFV6O7LJRDjfz5q5xr8DJX02lEer6wu9YGgmDCubpgqekTp/nmxbueZ+lwOLVRWlEoizfSOE6gupw7SWNQWE+Mtk36QAmiw8OTrlLn7d0XsuVDFJYkJJL7UCzJOANRoovHmDKaUGpc76iUYfY3WsdNQFRrM9/LeUocJEKwfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780295507; c=relaxed/simple;
	bh=1BjJuMfejcYeAdRAgiVOTf8QVvqeO7Hg98YMJ/fBj1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ki3J7q8IIxVKKNIhh8G6RzkUTVqI9a4VdNPGoOZriszyBu4R/G+iMf/KM0yd0D2n68YjBXjdUGoSNDPRYDXlhWK5yjznJWOUgaKaLu15sqD/2NWFzKeEvxQOOjTKzOqMNsug4qLm19uMWBmFWwfXoev090mEMPWa+0CQaSd8fh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTgy5EWu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BAE81F00893;
	Mon,  1 Jun 2026 06:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780295504;
	bh=nut7/auHhQh+rbp2DQMRfJ5Ro+4NzjUEZWNJ0Mo54Qg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OTgy5EWuQvrJ0X/m9axOBlTuBclDwZ8YwGy5P9JGUx+7KRirsSrkIdqVDgsE2RihO
	 gASkUVFu10t3YX0+LGdAgVU0lw1y/9CdBTyhjqypmALTNtoVkwnn9A/QC+bIEfjz+z
	 Lsc3TTjQw4m0s2xoxcOgrb6ZkUnDnFHM4EsoGrq6tsJM6gxKGkUzwIbD12fX7C4jEn
	 Li/MoUvU7GlyJotUiwqZqZLspg6U3Yq+8vAUqMLWgaqUvFjbwYO5ljpZ8bUj/heRn9
	 UemXa5JzmAvts7TVHnfn2RP2xheifxsOfpaFtWsYNR9lj6tnp+4ySdaYavW37uhKWh
	 h9K8PCt8jvd+w==
Date: Mon, 1 Jun 2026 06:31:41 +0000
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: enable PMIC on OrangePi R2S
Message-ID: <20260601063141-GKA3815935@kernel.org>
References: <20260520100000.575719-1-amadeus@jmu.edu.cn>
 <20260530021021.1167953-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260530021021.1167953-1-amadeus@jmu.edu.cn>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304928-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 15E8A61A35A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Chukun,

On 10:10 Sat 30 May     , Chukun Pan wrote:
> Hi,
> 
> > Enable the i2c8 interface and add the connected SpacemiT P1 PMIC and
> > its associated regulators to support voltage regulation on the board.
> 
> friendly ping

Ok, will take it, so

Reviewed-by: Yixun Lan <dlan@kernel.org>
-- 
Yixun Lan (dlan)

