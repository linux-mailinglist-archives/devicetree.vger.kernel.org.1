Return-Path: <devicetree+bounces-320692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mrx5N7CoSmp8FgEAu9opvQ
	(envelope-from <devicetree+bounces-320692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 20:55:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8352E70AD3F
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 20:55:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=tillo.ch header.s=mail202603 header.b=DZ53J28f;
	dmarc=pass (policy=quarantine) header.from=tillo.ch;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320692-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320692-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F847300A488
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 18:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133C92FC898;
	Sun,  5 Jul 2026 18:55:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mdapi.ch (mail.mdapi.ch [31.3.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844442848A1;
	Sun,  5 Jul 2026 18:55:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783277742; cv=none; b=heFnfjp+RYeh12naRBaxqJc8KwSL5nYOlU9GaBXFjfMQrhqG6D4wjtMyBYB8ImNiLCkkz46eC2yguyC0sJ1bjai83s6X5T1FOkA9ag0N6oeVKu4Wek89Pc9YHsfNcciv98OJY4FpfcSoN45Vwa7ZJ0PejcndR2nzA7igjJQikGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783277742; c=relaxed/simple;
	bh=hIRVAbhVg74ibPgDqMroiyMfd0QBQnj3/npAxSfKpyU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lsxN12tYyDrT3+nZbujBgWMRKl/UI6AkeuQGcHazuFzzVnzgGTGLDfKp92wMxOmWPBfeNVFFNstEhKqEG1oMQG66GQpb0AEuyxwuEjPfKERAWD6ym8ie49HGvdPkQxyS9jn/sWK7H2qIL7LJC8vMzxM6SafdUq8/bbp2dt8naPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tillo.ch; spf=pass smtp.mailfrom=tillo.ch; dkim=pass (2048-bit key) header.d=tillo.ch header.i=@tillo.ch header.b=DZ53J28f; arc=none smtp.client-ip=31.3.128.54
From: Martino Dell'Ambrogio <tillo@tillo.ch>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tillo.ch; s=mail202603;
	t=1783277738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hIRVAbhVg74ibPgDqMroiyMfd0QBQnj3/npAxSfKpyU=;
	b=DZ53J28fOH+t2GJWaDWNiWzmumVZO1A89FRjDM36zr7fT2zgsqfBfcZFb4paIoBLW6Hvps
	Iw3w10VgxAQ2IKFOYW0zB+OdMONm78C+xbMUxuKkIM6IHX1DVeYBzZwIVnVSSBA04t/z4O
	oM66GuOtGJ89gjUSYEP+bRQExw9mr4NWYHBylcR1s/qJA+TQ4WsSkoEeRYJLyzSwnOfRsc
	poj/JdFTb53ZVIVHxZeYH+8QgCUGXqGnzBUcizgcB77QQjn7lZ7efa3YlC5dQBFSAi1a3/
	2dcWZAtaQcV6NR2TcbRLkHBH537VlbuKrD7Krk5JrDvDP+zY1qKyuItQ3drUTA==
To: matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com
Cc: kees@kernel.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Martino Dell'Ambrogio <tillo@tillo.ch>
Subject: Re: [PATCH v2] arm64: dts: mediatek: mt7986a-bananapi-bpi-r3: add ramoops region
Date: Sun,  5 Jul 2026 20:55:32 +0200
Message-ID: <20260705185532.139292-1-tillo@tillo.ch>
In-Reply-To: <20260528123655.2650868-1-tillo@tillo.ch>
References: <20260528123655.2650868-1-tillo@tillo.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[tillo.ch,quarantine];
	R_DKIM_ALLOW(-0.20)[tillo.ch:s=mail202603];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-320692-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tillo@tillo.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tillo@tillo.ch,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tillo@tillo.ch,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[tillo.ch:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8352E70AD3F

Gentle ping - is there anything I should improve on this one?

The matching BPI-R4 (mt7988a) patch is at:
https://lore.kernel.org/all/20260528123645.2650085-1-tillo@tillo.ch/

Thanks!
Martino

