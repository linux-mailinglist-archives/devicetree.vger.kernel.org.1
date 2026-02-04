Return-Path: <devicetree+bounces-263216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAXiGdlkhWl3BAQAu9opvQ
	(envelope-from <devicetree+bounces-263216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 04:49:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F228BF9DA8
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 04:49:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6EE653006F3C
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 03:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F6E13321BD;
	Fri,  6 Feb 2026 03:39:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pawsdelights.com (unknown [1.237.48.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F423321B0
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 03:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.237.48.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770349182; cv=none; b=p2s6l7655iueKH5Hl3BjRMMT/QyM4eHh5EEOwBPD4lb1TPuVnXR+rWD7W0mIRan4uH8cAhH7tNFKGz0FjDTugNNHFszRhQCSPITXMwpuPDdGis/QO3DARouzlevwk+bL9/ORl0aKm4lgTPcTl9gahL6tj7uPZyAchLbQY/x8+W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770349182; c=relaxed/simple;
	bh=+un2x8eMJkEysQ7gdtsrBWp58jFrC1SA1/l6MoF0zHQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=tz+QdByYJvk8nP71nTad45CpEQ1EYPJHivFcxOXKAUZf6U5OTWA92gSvQ2ROGjZcVkrPLSfaH+5UMu6QnWrrahERu9PNFvPvua7zEt0Hv3EQCSlTFjbhUOxxOhp8PmFcIjTCMYBJMiGl3HJWZMDmVrWYP9wFgeHsZURoTeAE7bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pawsdelights.com; spf=none smtp.mailfrom=pawsdelights.com; arc=none smtp.client-ip=1.237.48.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pawsdelights.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pawsdelights.com
Received: from [84.233.216.239] (unknown [84.233.216.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pawsdelights.com (Postfix) with ESMTPSA id 8DE1467702BB
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 23:54:25 +0900 (KST)
Reply-To: euromillions9090@gmail.com
From: "Euro Millions" <music@pawsdelights.com>
To: devicetree@vger.kernel.org
Subject: =?UTF-8?B?SGVyemxpY2hlbiBHbMO8Y2t3dW5zY2guLg==?=
Date: 4 Feb 2026 15:54:20 +0100
Message-ID: <20260204155419.DE1AD284A6EB028B@pawsdelights.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [14.84 / 15.00];
	FUZZY_DENIED(12.00)[1:eda327c2d6:1.00:bin];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DATE_IN_PAST(1.00)[36];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263216-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DMARC_NA(0.00)[pawsdelights.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_SPAM(0.00)[0.394];
	HAS_REPLYTO(0.00)[euromillions9090@gmail.com];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[music@pawsdelights.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c04:e001:36c::/64:c];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F228BF9DA8
X-Rspamd-Action: add header
X-Spam: Yes

Herzlichen Gl=C3=BCckwunsch, Sie haben =E2=82=AC650.000,00 bei den monatlic=
hen=20
Gewinnspielen von Euro Millions/Google Promo am 1.Januar 2026=20
gewonnen.

Bitte geben Sie die folgenden Informationen ein, damit Ihr=20
Gewinnbetrag an Sie =C3=BCberwiesen werden kann.

Vollst=C3=A4ndiger Name:
Heimatadresse:
Geschlecht:
Alter:
Telefon:

John Andrew
Online-Koordinator

