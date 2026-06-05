Return-Path: <devicetree+bounces-307329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YxHmKr6qImpGbwEAu9opvQ
	(envelope-from <devicetree+bounces-307329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:53:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB4D64788F
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:53:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=novatek.com.tw header.s=dk header.b=zN0I83DD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307329-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307329-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=novatek.com.tw;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1C483158AF7
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 235354183B6;
	Fri,  5 Jun 2026 10:39:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ms1.novatek.com.tw (ms2.novatek.com.tw [210.202.87.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585124C77C5;
	Fri,  5 Jun 2026 10:39:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780655985; cv=none; b=Qquio4sUkrPc7M7nk0ydAfsZ9zSmzJ/MkR3ZLQdzVuytkw1NrE9V/MjtX9U/vtRXScahFexgTl672oWWJ05/wTOKC8k9eBS0sP45c+VVEPPQu9vRuWOqghD0vaBlU5N1C5HIkt7YXjGeySNHYxWjpzeDgyAFhtRFPEkdL32t7so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780655985; c=relaxed/simple;
	bh=dgdJlH6Ak9FiMF6QdlLGxYCo+6OzqYVCUHbdFuYq5LE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jl2TFvNkH67vytXPFf91h3Zq0IP/fodGNA4e8DzgPy/rqBrFWqmg4qYpQJqLpBlJ7t62+petNMHP84wjyC70r7P5JDpf59GiQccalfzdVYEPDptmQ9fRU1lTXxe1JYn4xhX76o4JIWMv9FbFuueErfBKhHjSfDhNcsMOoUh8jrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=novatek.com.tw; spf=pass smtp.mailfrom=novatek.com.tw; dkim=pass (1024-bit key) header.d=novatek.com.tw header.i=@novatek.com.tw header.b=zN0I83DD; arc=none smtp.client-ip=210.202.87.108
X-UUID: db633d2e60ca11f183c5f7e20ac2d237-20260605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=novatek.com.tw; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From; bh=dgdJlH6Ak9FiMF6QdlLGxYCo+6OzqYVCUHbdFuYq5LE=;
	b=zN0I83DDSbliAeL7g68740KEfchKiCxvBzJtD8RnvtR33tsc8/ALgQNdG3weo9tNjTRDgLEIW7BykIOIgGt+md45g12ghYChRF3cFvQDZqRqCb3BLUMFX273O5QLrAl+k+SSpUs8KPYc8OhzdLwyAdiSL1tz44RXNL7r9dpeVjM=;
X-UUID: db633d2e60ca11f183c5f7e20ac2d237-20260605
Received: from spmgt1 [(172.20.13.10)] by ms1.novatek.com.tw
	(envelope-from <sp_isw1_at@novatek.com.tw>)
	(Generic MTA)
	with ESMTP id 1874209996; Fri, 05 Jun 2026 18:39:40 +0800
Received: from oabuild50.novatek.com.tw (oabuild50.novatek.com.tw [172.20.13.160])
	by spmgt1 (Postfix) with ESMTP id 8DC4F1B315E;
	Fri,  5 Jun 2026 18:39:40 +0800 (CST)
Received: by oabuild50.novatek.com.tw (Postfix, from userid 1005)
	id 5E22AC60082; Fri,  5 Jun 2026 18:39:40 +0800 (CST)
From: SP_ISW1_AT@novatek.com.tw
To: krzk@kernel.org
Cc: Ben_Huang@novatek.com.tw,
	SP_ISW1_AT@novatek.com.tw,
	Shihpei_Hsu@novatek.com.tw,
	Toby_Chui@novatek.com.tw,
	andi.shyti@kernel.org,
	conor+dt@kernel.org,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH 1/3] MAINTAINERS: Add entry for Novatek NT726xx SoC i2c driver.
Date: Fri,  5 Jun 2026 18:39:35 +0800
Message-Id: <20260605103935.397609-1-SP_ISW1_AT@novatek.com.tw>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <41d72453-10cf-4ccd-87da-575b04532f08@kernel.org>
References: <41d72453-10cf-4ccd-87da-575b04532f08@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[novatek.com.tw,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[novatek.com.tw:s=dk];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307329-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:Ben_Huang@novatek.com.tw,m:SP_ISW1_AT@novatek.com.tw,m:Shihpei_Hsu@novatek.com.tw,m:Toby_Chui@novatek.com.tw,m:andi.shyti@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[SP_ISW1_AT@novatek.com.tw,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[novatek.com.tw:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[SP_ISW1_AT@novatek.com.tw,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,novatek.com.tw:mid,novatek.com.tw:dkim,novatek.com.tw:from_mime,novatek.com.tw:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFB4D64788F

From: Ben Huang <Ben_Huang@novatek.com.tw>

Thanks for your kind suggestion.
Fixing the vulnerabilities is in progress. v2 patches will be sent later.

Sincerely,
Ben Huang

