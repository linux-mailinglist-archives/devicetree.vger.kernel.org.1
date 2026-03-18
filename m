Return-Path: <devicetree+bounces-277443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOipG5v3umlwdwIAu9opvQ
	(envelope-from <devicetree+bounces-277443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:06:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D93DA2C1C84
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96156300333C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669383EE1DA;
	Wed, 18 Mar 2026 19:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scrittaperbarca.com header.i=@scrittaperbarca.com header.b="PINaSBbp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpcmd11120.aruba.it (smtpcmd11120.aruba.it [62.149.156.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335383ED105
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.156.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773860760; cv=none; b=K1Mj5/SOJL7ImKOMGwFN5dlTIf0mcOCkfwHoYU4pCBtOONYFg1OOIy4VWMzWcPUYL8BHKy8o1BD7LGu5xxm/mWOQgwqLdhQ2xqGUt56uV7TgeTGZx75tu70VAAmYQFbPvBksyeaseMb6z32dD0Q6/UHrgjy8XUo5YxDnkmKjw7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773860760; c=relaxed/simple;
	bh=oY33/4N7xTQrmUt4cyNLegoYbNkEv4yo0//GRNjtvtw=;
	h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type; b=CvLFaFX5gVjREawNaz2lQoWuTIPmTya2g+ydubey25pBEyZQ4sowyvxvjHziL/1WsmMCUVSSjEQxG/ouQ28H2oI644vnwFUfD4M/T453JWzuBgseiAinE2UQJG9dsH2sFNhoRSLPqLVe/SzvaQzd+x/HTtHGk/crdb03cQ3kyVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scrittaperbarca.com; spf=pass smtp.mailfrom=scrittaperbarca.com; dkim=pass (2048-bit key) header.d=scrittaperbarca.com header.i=@scrittaperbarca.com header.b=PINaSBbp; arc=none smtp.client-ip=62.149.156.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scrittaperbarca.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scrittaperbarca.com
Received: from www.scrittaperbarca.com ([89.46.104.189])
	by Aruba SMTP with ESMTPSA
	id 2wAJwrNECfibd2wAJwYdzv; Wed, 18 Mar 2026 20:02:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=scrittaperbarca.com;
	s=a1; t=1773860567; bh=oY33/4N7xTQrmUt4cyNLegoYbNkEv4yo0//GRNjtvtw=;
	h=Date:To:From:Subject:MIME-Version:Content-Type;
	b=PINaSBbp8b+HdmH0RQXFIGn+EhmYO31XvDO7AE0Dw4gtFdDqGCVT24BL8Mzg4fKWl
	 XjZpodL/1jfGAbNGAQdHvfcB/BiEfos+RWuNF+neTQlAeko8DgEJwyesEDy6S4LbrC
	 +Fd0aJfNBIsrLyoyuEM6M1y4g4G1ZfD+/PKb6Ocj9kmS3ru+QT4v0Dj6uPwsCk4d3O
	 aYfwy4HIpf2F22FtzTq+D8van3MCRTG4iM0AKjwe7XO583m0WszOMYNAPs6tj+HtsC
	 X4qnHV0Xky9OLSTsijqwfQDg2IX7FZUsedGdUGptaW2E4Po+XYkM11LLLICZVAkW5O
	 2KCtdbb/oY9wg==
Date: Wed, 18 Mar 2026 19:02:47 +0000
To: devicetree@vger.kernel.org
From: Scritta per Barca | Crea la tua scritta in acciaio inox <info@scrittaperbarca.com>
Subject: Abbiamo ricevuto la tua richiesta
Message-ID: <ocjAWWzAQWdxe4EcK0sqmf050mhKH2UIKsRaj3bzhYU@www.scrittaperbarca.com>
X-Mailer: WPMailSMTP/Mailer/smtp 4.7.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfOuj+SpneBrwTM4wqvZSf3s5GPigNPy5sRCJdPF8Hfl5wdegpSRuh2zJGWcWOHjr6z6HgJ3d32zFTDgzXjSxDxDqwzC0ty+IcrsUIwUFdW7wNd4zvvda
 GKsKQR+/+SsY3LY0xVRJUDvPervYQwqtaOoCA/Fl7bb60HR/ToN/ghaDCVjHE1LcIGS2R5/8/c45lx5GydcKfhg6f/hW6rYwor1QHsHNaDza71BaxqGMWJxq
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[scrittaperbarca.com,none];
	MID_RHS_WWW(0.50)[];
	R_DKIM_ALLOW(-0.20)[scrittaperbarca.com:s=a1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[scrittaperbarca.com:+];
	TAGGED_FROM(0.00)[bounces-277443-lists,devicetree=lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[info@scrittaperbarca.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	REDIRECTOR_URL(0.00)[tinyurl.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,scrittaperbarca.com:dkim,www.scrittaperbarca.com:mid]
X-Rspamd-Queue-Id: D93DA2C1C84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Ciao Makeenvemn,

Abbiamo ricevuto la tua richiesta con i seguenti dati:

Nome: Makeenvemn
Email: devicetree@vger.kernel.org
Messaggio:
Lost your drive and smile? It happens to the best of us. But you can reclaim it with discreet, effective solutions shipped fast. Privacy first, quality assured. Explore our mood range today.  https://tinyurl.com/36bswubw#ILJZxj

Ti risponderemo il prima possibile.

— Scritta per Barca | Crea la tua scritta in acciaio inox


