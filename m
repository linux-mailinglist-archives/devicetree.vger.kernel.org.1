Return-Path: <devicetree+bounces-287002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COkkHKfV3GmcWQkAu9opvQ
	(envelope-from <devicetree+bounces-287002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 13:38:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D52F13EB633
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 13:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 639DD3007F41
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 11:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6008F3C1976;
	Mon, 13 Apr 2026 11:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b="vGZiE8np"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.8bytes.org (mail.8bytes.org [85.214.250.239])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 868A63BF677;
	Mon, 13 Apr 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.250.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776080256; cv=none; b=k35wBmpS/gzKiHBmf4iHYUXxvD0D242L7GIQg8DznErWYeXDD+OX5KpVDr+3ABy4Wy1UPU3eUYBEaGrOxSeZva3qiJZdzx1wNJqceLXFFgLG/GW3l/CPLxhg4Zt6doTcMx5nV+oa6fKBpXaOmcToM5dmLK+BCLiuA9aHYm5DnuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776080256; c=relaxed/simple;
	bh=pi4Nq3JR4Vatn+X4duKPyDnTPGN+N5oNVQU0w963L28=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J7vTTreQ9/VzqOzvGEoYn2Pz2cMWNoi2ZoByPMIKbdgLLIk1nwktoHaQmItk0XaQ2avG/VH8T+0LVXb9IpGd2iJVlL/TZOvHlckA9deBRozR06bQ0DQXCyqVQMWW0r1Wyl0D7Y0NXk18xoNsBM86t+XMd8aD44kndF2xUO415Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org; spf=pass smtp.mailfrom=8bytes.org; dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b=vGZiE8np; arc=none smtp.client-ip=85.214.250.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=8bytes.org
Received: from 8bytes.org (p4ffe051a.dip0.t-ipconnect.de [79.254.5.26])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 654531C1B4A;
	Mon, 13 Apr 2026 13:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1776080253;
	bh=pi4Nq3JR4Vatn+X4duKPyDnTPGN+N5oNVQU0w963L28=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vGZiE8npq+oY+p6bdKObsi0UMK+/xHM9GX5A3Q7uGdVMDSY8wQhYbQgDEmY4V8Lhw
	 L2jAsXLgvDLQV/hUGKAVmoJx0+qe460CURiSXQSjQhGIOaCLuYxnHnX1o8Mvemu6Vo
	 guV0DUUAnyiaB1dq7kzwu7J4hqEHEgt1bK6OYp2D5AWR7qvEE9ZGiLG60isDahuLbO
	 zmXKlu3REkF6WMlhz88kRxZz7laO4R/1sEx9xRDzo3Xg9Yr4UANdNZvIJMLuj2WvDr
	 HWN47fpPiSHu9OTz6p2bbZwFUQkpyGhk4vaFZSWff/CAPVq0X0PyWSrw5WfWAyfaKe
	 xMvFqkt5TQA5A==
Date: Mon, 13 Apr 2026 13:37:32 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Drew Fustini <fustini@kernel.org>
Cc: Joel Stanley <joel@jms.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	devicetree@vger.kernel.org, Tomasz Jeznach <tjeznach@rivosinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Michael Ellerman <mpe@oss.tenstorrent.com>
Subject: Re: [RFC PATCH 1/1] dt-bindings: iommu: riscv: Add bindings for
 Tenstorrent RISC-V IOMMU
Message-ID: <5tr5kacx27a4g4udx43vemqvwhr4iaflacdrkz3d5tnd6vcldo@s6l34e2xyg5k>
References: <20260310003850.3837030-1-npiggin@gmail.com>
 <CACPK8Xc=imZXXPp-CYY39=Ww4oVDdXPS5My_R1qODzGhOD2qnw@mail.gmail.com>
 <ac7TByN3oQGSUpyq@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ac7TByN3oQGSUpyq@x1>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[8bytes.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[8bytes.org: no valid DMARC record];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287002-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[8bytes.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joro@8bytes.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[jms.id.au,gmail.com,vger.kernel.org,rivosinc.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lists.infradead.org,oss.tenstorrent.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,8bytes.org:dkim]
X-Rspamd-Queue-Id: D52F13EB633
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 01:35:19PM -0700, Drew Fustini wrote:
> I think it would go through Joerg's iommu tree, but I could if Joerg can
> an Ack.

I do not have the original patch in my inbox, but looking at it via lore it
lgtm.

Acked-by: Joerg Roedel <joerg.roedel@amd.com>

