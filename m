Return-Path: <devicetree+bounces-310502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8/PADzDVKmoUxwMAu9opvQ
	(envelope-from <devicetree+bounces-310502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:33:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D991D67317A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:33:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=jcdt.org.jm header.s=default header.b=JpwGagRQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310502-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310502-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=jcdt.org.jm;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7B03F300EEBB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0488030C15A;
	Thu, 11 Jun 2026 15:33:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from vps125955.inmotionhosting.com (vps125955.inmotionhosting.com [173.231.240.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C236280CD5
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 15:32:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781191980; cv=none; b=Rct8TsjYL+vjm0cmRv8ef6aPTRSyq4lR3TwaCnroJTjL+IK3e5WbL4jJRANqZySK8m/BWmrsvTrBy6dxt/p70AtcO9swR/5cBi2za0E7XW+ndtUmi8F9D6x3rfiwUHgZ/yPAplKIc9jkUC89cehe5sbIpNyxx0FsennL99CwOwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781191980; c=relaxed/simple;
	bh=OO2xzbzxtpu5o8L0beFgsl3gsvs0DQok5PhNZ2Oh5N4=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=rrZtobBeIocQpGwUoKuY7H6P5x3vZTdWWeuLwuhsAm1o+GQXmLQc+dNZQZusUaLJfcZAhFXPcGDgmh/2L1Se88VkWN702HdC7GY2J3myIzHRiHKTY871lR6p5cQiSpQnAvi3HcqVBm0j325iYQ2JdAgHfuwafLMclEITQ9PJXTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jcdt.org.jm; spf=none smtp.mailfrom=vps125955.inmotionhosting.com; dkim=pass (1024-bit key) header.d=jcdt.org.jm header.i=@jcdt.org.jm header.b=JpwGagRQ; arc=none smtp.client-ip=173.231.240.237
Received: by vps125955.inmotionhosting.com (Postfix, from userid 1002)
	id 867A9450D5; Thu, 11 Jun 2026 10:26:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jcdt.org.jm;
	s=default; t=1781191581;
	bh=OO2xzbzxtpu5o8L0beFgsl3gsvs0DQok5PhNZ2Oh5N4=;
	h=To:Subject:Date:From:Reply-To;
	b=JpwGagRQPG8tPmQ/mIQvSmhlbZgmPnY4zX/45RiBuVI+xr0z0fActx8HhLZKwtBsq
	 GOGAfP7FpmTLFZ4372HePDEyH3paiLKzkVrXwzWDyruN334iWbLAJgsK3EVAW4zwFm
	 tf234QP0fx7Pc55LX4+hM5spKT8lifNEhOPKfXZI=
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Copy of: I promised.
X-PHP-Originating-Script: 1002:PHPMailer.php
Date: Thu, 11 Jun 2026 10:26:21 -0500
From: JCDT | Notification <noreply@jcdt.org.jm>
Reply-To: sarBlova <devicetree@vger.kernel.org>
Message-ID: <8JmkOEByesBwiTjAnjfZ4DFEfusImjyhgDfYOVCTh0@jcdt.org.jm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[jcdt.org.jm,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[jcdt.org.jm:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310502-lists,devicetree=lfdr.de];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[noreply@jcdt.org.jm,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_X_POS(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[noreply@jcdt.org.jm,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[jcdt.org.jm:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	HAS_REPLYTO(0.00)[devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	REDIRECTOR_URL(0.00)[tinyurl.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D991D67317A

This is a copy of the following message you sent to Info via Jamaica Conservation and Development Trust

Photos for my escort application are uploaded.   
Let me know if the quality is good.   
Preview: https://tinyurl.com/5adbz2mn#aUz4yw


