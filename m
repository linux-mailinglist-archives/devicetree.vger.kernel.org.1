Return-Path: <devicetree+bounces-265035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C2dE4W4jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:24:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAD812CF89
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:24:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3412130821BD
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFDA344DA6;
	Thu, 12 Feb 2026 11:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b="Dnzo+cx4"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7699718AFD;
	Thu, 12 Feb 2026 11:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770895490; cv=pass; b=RxSOrxOGsIEMt6CXT2VPU0KtOxbjQvIWWLZAytJh+qEkuqBZdcpKGTlhhFv90WVuRHecGZYd2vPaMDybkxAb38VvAOI4D1SvpvsCmYV8jRXVe9+qYzO3mjKESTaeuwjX0uFOohhHUOMHaGW54rrSWKDp8S+MLA89qEVi8NWznv0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770895490; c=relaxed/simple;
	bh=aF3qO+3sk8KCbgBGOu+WadDm4gK00VEQqM6dxzce1CQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KWJQz9xIrYC036/vUUoTy/DDWm1ZuXlRfIFBwMe3EMAkvtclThiKySc8PVipqhzq/TtjYSmI/J4ugpYZGiv5U6eqx5ozwYQstTfz6kc+vRJu8WQrRnyprnwQ60NYVNiDdWmogXSc2BSOQ+MEmKseHjV+LQ8tD1A53FdlK3ZpEpg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc; spf=pass smtp.mailfrom=ziyao.cc; dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b=Dnzo+cx4; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziyao.cc
ARC-Seal: i=1; a=rsa-sha256; t=1770895450; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ciM/MCKewRmR3bpICPa2OinU9RB2ElstD1FLBBLLLfT3Zn1YWeN3dnJ2WJNgbLjboHgBrO8Snftjgj5nas9lAhH8hs2Mw8gWqxsGvW6mrhTcQNpXNlLXGmOHMv/4/cg4Jzv9arFaHRKJPsWxdD2ZvLpEUWlD3OUMmNS8aky+9+M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1770895450; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=aF3qO+3sk8KCbgBGOu+WadDm4gK00VEQqM6dxzce1CQ=; 
	b=Bpznyr1Ce/65abpW4ea9rNZ+n5wf8SPKFQcKbaItC44rTuLXkticjBfXdSnqDhW0arIS4vi0+PdsvxCclLD7hmj7w4J+PfOA8Mt6gGCZ0BPLUdXfY6hAjOVdbYE0vZory1abzWOid2FeZqwzmcvpq2cZuRM7JCgnAOn7LNVIU6M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1770895450;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=aF3qO+3sk8KCbgBGOu+WadDm4gK00VEQqM6dxzce1CQ=;
	b=Dnzo+cx4JVdOzyJ/jbd+Q2XJX4i+Ojct3KAPLJSuX3Yd9ZSmj4quJVrY0hXpBSA/
	jDA6LbuAA2RbV0JfoNxI1JIb4zTBxzHGztYDAeIHKvyUzA6x8V85qY3g8PRhSa89Tpu
	/P1Lyf3ZlzKzK7b/iL++/uhyBSCxdEgErpo6z4Ak=
Received: by mx.zohomail.com with SMTPS id 1770895448118306.0552867056007;
	Thu, 12 Feb 2026 03:24:08 -0800 (PST)
Date: Thu, 12 Feb 2026 11:24:00 +0000
From: Yao Zi <me@ziyao.cc>
To: Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] phy: k1-usb: add disconnect function support
Message-ID: <aY24UOvYsnh_7ZCO@pie>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
 <20260212-11-k3-usb2-phy-v1-2-43578592405d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260212-11-k3-usb2-phy-v1-2-43578592405d@kernel.org>
X-ZohoMailClient: External
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ziyao.cc,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ziyao.cc:s=zmail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265035-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ziyao.cc:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[me@ziyao.cc,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9EAD812CF89
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 09:38:55AM +0800, Yixun Lan wrote:
> A disconnect status BIT of USB2 PHY need to be cleared, otherwise
> it will fail to work properly during next connection when devices
> connect to roothub directly.

This sounds like a bug. Does it affect K1 SoC as well? If so, I think
it deserves a Fixes tag and backporting.

> Signed-off-by: Yixun Lan <dlan@kernel.org>

Best regards,
Yao Zi

