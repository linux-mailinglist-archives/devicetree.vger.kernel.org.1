Return-Path: <devicetree+bounces-307304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +hrDMJ6lImrTbQEAu9opvQ
	(envelope-from <devicetree+bounces-307304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:31:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7B46475B0
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:31:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=novatek.com.tw header.s=dk header.b=ZqtyA6Kv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307304-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307304-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=novatek.com.tw;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71F173048909
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4133F825C;
	Fri,  5 Jun 2026 10:23:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ms1.novatek.com.tw (ms2.novatek.com.tw [210.202.87.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8763F7ABE;
	Fri,  5 Jun 2026 10:23:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780655029; cv=none; b=AaNQuXpOAT4CTP0RHJA+wEaoYmIHZdHlAeJ83jj069F6ihsvDK6x6Lio9zDZKATWfzcIT9lIyhYGdrsFilFOILhBoNl4nHghZBrk/jPHx6zmOwMcHDNz9fjsMvJsGkQWUQvJbQ1tiBES0DUy+hUgn5tSKnJSn7cngA9X40+hNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780655029; c=relaxed/simple;
	bh=Yk5RhYWbIMWV3oDQ1MmMBnVw/nT3Lwp3NroxK+zreDM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NoxpnQxVo0HhI0CfrEIoVJqRJxoZgBzHRKEo4ISp9pjpae5sDfyN2EaupQCCAW87JeOFGyzo3m+Y25sWF5bHLcEh9XA3Tvs53OnVMh8RQyPrZEiBm3MXtPxa7P5+BTZs52jGtMoGJsEsylENLLPy9qjC+FqEG/sVZkQNz4ttemM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=novatek.com.tw; spf=pass smtp.mailfrom=novatek.com.tw; dkim=pass (1024-bit key) header.d=novatek.com.tw header.i=@novatek.com.tw header.b=ZqtyA6Kv; arc=none smtp.client-ip=210.202.87.108
X-UUID: a088ad1260c811f183c5f7e20ac2d237-20260605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=novatek.com.tw; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From; bh=Yk5RhYWbIMWV3oDQ1MmMBnVw/nT3Lwp3NroxK+zreDM=;
	b=ZqtyA6KvsvdN453tNqc7u9Z6/HSoa4NC5fwDdp+GTqZk+uNUtIvnbVv8mMwwBIqpHkzgfTzYFdupBh7263fu0fcmUjUoQ5AK7nBtH9vt49bfcDNM9Yz96agvVot/5nWvjl+dq+zXVPjZLLmVoAqJ5JICZGcfDnWexcifeF5hCIo=;
X-UUID: a088ad1260c811f183c5f7e20ac2d237-20260605
Received: from spmgt1 [(172.20.13.10)] by ms1.novatek.com.tw
	(envelope-from <sp_isw1_at@novatek.com.tw>)
	(Generic MTA)
	with ESMTP id 157656841; Fri, 05 Jun 2026 18:23:42 +0800
Received: from oabuild50.novatek.com.tw (oabuild50.novatek.com.tw [172.20.13.160])
	by spmgt1 (Postfix) with ESMTP id C72521B315E;
	Fri,  5 Jun 2026 18:23:42 +0800 (CST)
Received: by oabuild50.novatek.com.tw (Postfix, from userid 1005)
	id A90C7C60082; Fri,  5 Jun 2026 18:23:42 +0800 (CST)
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
Date: Fri,  5 Jun 2026 18:23:31 +0800
Message-Id: <20260605102330.397329-1-SP_ISW1_AT@novatek.com.tw>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <be15f8f5-0826-4851-a5b6-788f3be3007a@kernel.org>
References: <be15f8f5-0826-4851-a5b6-788f3be3007a@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[novatek.com.tw:s=dk];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307304-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:Ben_Huang@novatek.com.tw,m:SP_ISW1_AT@novatek.com.tw,m:Shihpei_Hsu@novatek.com.tw,m:Toby_Chui@novatek.com.tw,m:andi.shyti@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[SP_ISW1_AT@novatek.com.tw,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[novatek.com.tw:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: EC7B46475B0

From: Ben Huang <Ben_Huang@novatek.com.tw>

Hi,

Apologies for attaching the confidential messages in these patches.
Since received potential code vulnerabilities from code reviews, may I send next patches for your review? No confidential messages will be added.

Sincerely,
Ben Huang

