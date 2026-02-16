Return-Path: <devicetree+bounces-265652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jMDCOiShkmlmvwEAu9opvQ
	(envelope-from <devicetree+bounces-265652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 05:46:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A22F140DEF
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 05:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AB84300A742
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 04:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D1F029CB57;
	Mon, 16 Feb 2026 04:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b="G4dlI7uf"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-e107.zoho.com (sender4-pp-e107.zoho.com [136.143.188.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505F22882B4;
	Mon, 16 Feb 2026 04:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.107
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771216843; cv=pass; b=AlxHbe3e/bIv1cED63oxT4BesvLcvf+gZi/3r2vn4iImx4Y6z/PZkPTTJ91dlxSFvMow9hhJ3T1TLaei9HOQu34z1sqlQohH5T1XUrCDdeqHLIyEwg7CumkVaJoAFjQCLBEvGXJsz7cGSjD1zvKPvEUB00qOwBV5aTzRti33ZYw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771216843; c=relaxed/simple;
	bh=dwoKVpl6ioy/SALJvpxxpzFdHH3Io/eujHQSAMFaXTA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZM/TEVyrA71D/uk3g71Plh6D/BXIwAIgYZwlzl9oTJY9+xLbSzq0yuwV/Sq4i6pY1cHcIHvO2P3Uk0miSszQkEjgav05op10AeU7MPtDpnnIz0YvwSf8aGfJP019UxvcMRUATMrOuV8ewWuD0AyhnOxTPEZ+06U9nx3hwuML/cQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc; spf=pass smtp.mailfrom=ziyao.cc; dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b=G4dlI7uf; arc=pass smtp.client-ip=136.143.188.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziyao.cc
ARC-Seal: i=1; a=rsa-sha256; t=1771216819; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Dws1CK1Ncg9xfL/bS9uHyb+7p3KS8L1uqY7QMUaOA0sMjQCoGnZ5ioWSEuNNOf2TbnDg1lw5x6dGXe+QExV7XBvL4moUTYJL+ty3pbEB+O9pOvV7ajEKzsovSghr/7BLAymeY02Pp1F30+O2uNkmGDY8u+i/+xStD6VkJcGP7b0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1771216819; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=E4yO3rtfux2YLjw+kJJwbVUfdaJfx7vt8Qi+ogorLoo=; 
	b=PssSJJmcWSrgvJU4zlJ4vTHv+I0gbVHZ3AL7AuQ7nVdlQ9kk6QnIqP4nWG5+usMK/cslDitSjX7wnfcKha4Tfj/p9Vv2TkpTEJ6k6cB7jniBwGNSpQgpkjM2SQgYsPWQvgiddoy6qZh/ZqNJOYyh9FBjjV2Xrxm7mJZuUT3lTEw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1771216819;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=E4yO3rtfux2YLjw+kJJwbVUfdaJfx7vt8Qi+ogorLoo=;
	b=G4dlI7ufZwJI2frTfOUFrNS2HUXmxpcCrDB19BiMj3NUCN6NLqqMhJQLkrm0QQvP
	eYGWT9WpT+Ctm5n8207y1cStIYIwkEc4WscNjcjNiGdWPB3KNF4pp6l+myEw6TBs88A
	cclrcxZn2zeS0zsNzA103SmaqJfXpJgKHe8+Zbow=
Received: by mx.zohomail.com with SMTPS id 1771216817194335.9362570477522;
	Sun, 15 Feb 2026 20:40:17 -0800 (PST)
Date: Mon, 16 Feb 2026 04:39:59 +0000
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
Subject: Re: [PATCH v2 3/3] phy: k1-usb: k3: add USB2 PHY support
Message-ID: <aZKfnxXrYVXE8oP4@pie>
References: <20260214-11-k3-usb2-phy-v2-0-6ed31e031ab4@kernel.org>
 <20260214-11-k3-usb2-phy-v2-3-6ed31e031ab4@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260214-11-k3-usb2-phy-v2-3-6ed31e031ab4@kernel.org>
X-ZohoMailClient: External
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.34 / 15.00];
	URIBL_BLACK(7.50)[ziyao.cc:email,ziyao.cc:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265652-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[ziyao.cc:s=zmail];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[ziyao.cc,quarantine];
	DKIM_TRACE(0.00)[ziyao.cc:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[me@ziyao.cc,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziyao.cc:email,ziyao.cc:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3A22F140DEF
X-Rspamd-Action: add header
X-Spam: Yes

On Sat, Feb 14, 2026 at 08:29:16PM +0800, Yixun Lan wrote:
> Add USB2 PHY support for SpacemiT K3 SoC.
> 
> Register layout of handling USB disconnect operation has been changed,
> So introducing a platform data to distinguish the different SoCs.
> 
> Signed-off-by: Yixun Lan <dlan@kernel.org>

Reviewed-by: Yao Zi <me@ziyao.cc>

