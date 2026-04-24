Return-Path: <devicetree+bounces-290071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AS3EZFy62nCMwAAu9opvQ
	(envelope-from <devicetree+bounces-290071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:39:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FB145F557
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:39:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9F413008519
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 13:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40B033E347;
	Fri, 24 Apr 2026 13:38:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from vps3.invisibleink.co.uk (vps3.invisibleink.co.uk [213.161.85.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B422D3290A5
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 13:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.161.85.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777037923; cv=none; b=SLxzWF/htAg+DgqUXHPbVYzHq8jNiOPqNe7NarM2G8d9txbBDY6vttzQ4mfq9u+C9xaoD/rlNVgyCYpGZHTGOLu/oS8BFud4ZsE596551QK08Db2zfyuQV9VZkBhYEo+KOiLwp8P2H6hUVbJKP9GAuDDyfyJyjSLXdGar134fwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777037923; c=relaxed/simple;
	bh=pmnS5/i9114/6fZbcbpM67h/q8b4rScWmo1KYvBTxQQ=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=gvu5fsrFyDJiAOV92woFeXIAay3Vdsb+ibj/H1z2CLxP2L+vaUnEapFyNIjtGNMYk7sCBRFx7iX8C3sdKgR/1wq9nQdelgeQTWydcA5w7Ux84VGjXXredyBFXndiGNwitCVgHhlWmsvQ1OHI5OK+XxcMcPbKK5Xfrcv5L8D9lJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=none smtp.mailfrom=keithwaithe.com; arc=none smtp.client-ip=213.161.85.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=keithwaithe.com
Received: by vps3.invisibleink.co.uk (Postfix, from userid 10004)
	id AAC5641733F6; Fri, 24 Apr 2026 14:29:11 +0100 (BST)
To: devicetree@vger.kernel.org
Subject: Message sent from your website contact form.
Date: Fri, 24 Apr 2026 13:29:11 +0000
From: "You recently made an exchange through one of our platforms. We now have a new option for everyone w" <essequibomusic@gmail.com>
Reply-To: "You recently made an exchange through one of our platforms. We now have a new option for everyone w" <devicetree@vger.kernel.org>
Message-ID: <F4kWrUP5KXn153Pui2fsK8vOKJGikPnkZak45Aq4c@www.keithwaithe.com>
X-Mailer: PHPMailer 7.0.0 (https://github.com/PHPMailer/PHPMailer)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Rspamd-Queue-Id: E2FB145F557
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.86 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_WWW(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[bounces-290071-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[essequibomusic@gmail.com,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree];
	R_DKIM_NA(0.00)[];
	HAS_REPLYTO(0.00)[devicetree@vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:replyto]

Hello Keith Waithe, 

You are being contacted via Keith Waithe: 

Name:     You recently made an exchange through one of our platforms. We now have a new option for everyone w
Email:    devicetree@vger.kernel.org
Subject:  Message sent from your website contact form.
Date:     24th April 2026 @ 2:29 pm

Message: 

UOPEpKG 5Kmm vcyYiwl XdhTDoC 7Wje tgTv7dJ



