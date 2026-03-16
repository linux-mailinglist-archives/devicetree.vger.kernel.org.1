Return-Path: <devicetree+bounces-276359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEUvCYBHuGmLbAEAu9opvQ
	(envelope-from <devicetree+bounces-276359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:10:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C167929ED98
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C45AA303FA90
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC923D301E;
	Mon, 16 Mar 2026 18:09:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ovadiavps2.interhost.cloud (telemenia.com [185.18.206.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8768C3D0917
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 18:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.18.206.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773684544; cv=none; b=rkMJYzIe6RIvdAgCxx3hPFxRnL4fHk/j7F5fOmqnCqQhMnO9JfaZh8pswogWA8JpRdq+qQZB9dxkIB1oG16aIwEtT8FvZ6vbev8fDUCKe+3rSncjmDkztAL5oYE0YUL7o66WLgKooa+9bK7hGQtsbx1aYhdrtvjyYsF5+ut9InU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773684544; c=relaxed/simple;
	bh=MesbLBYGUWb8oE9Zf3/PgkPHBujP4oDLA/JekvPqkHM=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=MLqvUouo4WlEn8til9/I356APh5A6WTKerdCC2H/7pS8Oz4xLX49LYulQEHQmTBndD7l5lJpW5dqwhSjuf2obY4xCgJOdn0Gi+N6ofgsBY/AVlY8hhQAWTaga4dSC4YK/0GaUD9mwvIeIngyI9kNvXDkXMKjX8QK9CikK3r8TqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=telemenia.com; spf=pass smtp.mailfrom=telemania.adapt-web.com; arc=none smtp.client-ip=185.18.206.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=telemenia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telemania.adapt-web.com
Received: from telemania by ovadiavps2.interhost.cloud with local (Exim 4.94.2)
	(envelope-from <telemania@telemania.adapt-web.com>)
	id 1w2BQ7-0007iD-A2
	for devicetree@vger.kernel.org; Mon, 16 Mar 2026 19:07:59 +0200
To: devicetree@vger.kernel.org
Subject: Telemenia "[your-subject]"
X-PHP-Originating-Script: 1279:PHPMailer.php
Date: Mon, 16 Mar 2026 17:07:59 +0000
From: Telemenia <info@telemenia.com>
Reply-To: nir@ideallogic.net
Message-ID: <NfbvfEIkrzsLyDqFi4YVohClTYwZHCwoeXWPGe9alQ@telemenia.com>
X-Mailer: PHPMailer 6.5.3 (https://github.com/PHPMailer/PHPMailer)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Authenticated-Id: telemania
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276359-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[telemenia.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[nir@ideallogic.net];
	TO_DN_NONE(0.00)[];
	HAS_X_POS(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[info@telemenia.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.664];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	REDIRECTOR_URL(0.00)[tinyurl.com];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,telemenia.com:mid,telemenia.com:url]
X-Rspamd-Queue-Id: C167929ED98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank for contact us on Solatec Theme
Here is your info, 

Phone: 84721752291
Service: Decentralized power plant
Message: Is everything just... gray? Low mood can make life feel pointless. But real relief exists without the long waits. Quality options shipped fast and anonymously. Browse our selection and feel the change.  https://tinyurl.com/nzay2bs6#iPormt

-- 
This e-mail was sent from a contact form on Telemenia (https://telemenia.com/en)


