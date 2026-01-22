Return-Path: <devicetree+bounces-258437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DlSNIo5cmmadwAAu9opvQ
	(envelope-from <devicetree+bounces-258437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:51:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B76F66827C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B76677C352A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A5B348463;
	Thu, 22 Jan 2026 14:15:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D655134676F
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 14:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769091306; cv=none; b=aRYrWwTmSGm4Rgb2Q8lWKhvObX5xZ38t2PrecRFowiRfdtP/uiRy0rxfwOsR8/z++RGKpcSkbTvHC/DNAH6uWkC7kEi2FRNQ2gZ8JrLo33cok1Xfg0PSTQEGJW7SfaZEU0GZ7zBAC3fwJqX4i8whPcboAk7NDIsJoIzQ/B4Y54M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769091306; c=relaxed/simple;
	bh=xHyoy3gOZ3D9x2lDxIGnNg30+Y9jPnz3tKr7/dQ28d4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cyj5BsaePGmOt4VDP7YIDDbfdned0GcrT2LuKuV5IM3BKcUo8rYCVh7N+CmcKdm9qyObIORrRLrs+4AcTo9si4sVU9f5qD0pnVxH0yP72H191DLSU2H4XOFaNG/3a/UaJCfwlzmWYP0+iHi5doKGEvfoZaaVlPFAQoGP1qa/j/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTP id 60MEEGmV004846;
	Thu, 22 Jan 2026 22:14:16 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from ANB420.andestech.com (10.0.12.111) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server (TLS) id 14.3.498.0; Thu, 22 Jan 2026
 22:14:21 +0800
Date: Thu, 22 Jan 2026 22:14:20 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: <andi.shyti@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-i2c@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <pjw@kernel.org>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH 0/4] Add I2C support for QiLai SoC
Message-ID: <aXIwvACl3sQuYLE0@ANB420.andestech.com>
References: <20260115145244.435890-1-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260115145244.435890-1-ben717@andestech.com>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 60MEEGmV004846
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	DMARC_DNSFAIL(0.00)[andestech.com : query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ben717@andestech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_FROM(0.00)[bounces-258437-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: B76F66827C
X-Rspamd-Action: no action

Hi all,

As Krzysztof said in patch 1, this series should be the version 2 of
[1] with detailed changelog, not a new series. Thus, please ignore this
series, and review [2]. Sorry for the confusion.

[1] https://lore.kernel.org/all/20250207021923.2912373-1-ben717@andestech.com/
[2] https://lore.kernel.org/linux-i2c/20260122-atciic100-v2-0-7559136d07cf@andestech.com

Thanks,
Ben

