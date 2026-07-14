Return-Path: <devicetree+bounces-325871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GUrROY7GVWrcsgAAu9opvQ
	(envelope-from <devicetree+bounces-325871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:18:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC64751119
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:18:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=suksangroup.co.th header.s=default header.b=tR+UnB5f;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325871-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325871-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=inbox.org (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5011A302D0A6
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 05:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F9530DEA9;
	Tue, 14 Jul 2026 05:18:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns1.suksangroup.com (ns1.suksangroup.com [103.13.31.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9994030C368
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 05:18:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784006283; cv=none; b=NE4xsiJ128VvS5YAzBoBEYa0yTYyrB2FCb4vvhjcSnGJydyec3w58Sdx+sLJoFot4nxfSL9noYf45oSeTDEYqi5iwwoABTbJ0+V7lBbL0zfttDtgOQT6wOKwn21r/OkGqPM9lfaP5Pw4l/g890i4sL2E5lCCQC8i/Edp2tBmRLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784006283; c=relaxed/simple;
	bh=yCDlmAkpgFkrEYqdFyx+G0yyauuYMBLfNK1d4DuVdT8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BP+UO2EMxtNO4KsFR8qf8v5w0Q6En7lmlTPahzHVgHXU5lTa21JL2Z0xo5UZVzyOr+6EMe27JHT3gM7wc84zQJhxOl+1LnvZzVuPOXpWPY2VvtAJVMIE2wuz5LfBsrTQmRpCqOPNFAXvPd220MB/oXJM6xvcJzX+j+DX+uYNDAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=inbox.org; spf=fail smtp.mailfrom=inbox.org; dkim=pass (2048-bit key) header.d=suksangroup.co.th header.i=@suksangroup.co.th header.b=tR+UnB5f; arc=none smtp.client-ip=103.13.31.55
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=suksangroup.co.th; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yCDlmAkpgFkrEYqdFyx+G0yyauuYMBLfNK1d4DuVdT8=; b=tR+UnB5fGfS4GuByPVV2DvbPaO
	Eo39QKsA2Vrpg2VXwihG/tAHm+DR8tjSX9INM8HxeRmWeBcF2KwJaIU022KLJhprDugJNfbWyz4Ll
	qPo7ZiQjscps0+OS4QGvh4vX4e+3kGSGReSRPkPYKMcZ7usmXFrphHgVIinDDbDsvKRkmDQYTpqrr
	/mWLpMhCf3S0HngCQrIZzFVboItbuLsOoyd4BS1zhRV0zputZ/8w6aHSFtYRi5jZOFasmUX4V9Glx
	rvnSGwkXYNHSg7CFzhlZHFMFUBF5L2RZZ+xeIbNG6iFdRn5ZHH5woe378auVGTdo2fhuPlyQf5sm3
	1gMbKPig==;
Received: from [207.189.26.187] (port=61400)
	by ns1.suksangroup.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <info@inbox.org>)
	id 1wjVWp-0000000FsdR-0JPk
	for devicetree@vger.kernel.org;
	Tue, 14 Jul 2026 12:17:58 +0700
Reply-To: hanns.schofield@lexcapitalgrowth.com
From: Harry Schofield ESQ <info@inbox.org>
To: devicetree@vger.kernel.org
Subject: Dear devicetree@vger.kernel.org, 
Date: 14 Jul 2026 00:17:54 -0500
Message-ID: <20260714001754.318B68DA0DBC1163@inbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - ns1.suksangroup.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - inbox.org
X-Get-Message-Sender-Via: ns1.suksangroup.com: authenticated_id: smtp@suksangroup.co.th
X-Authenticated-Sender: ns1.suksangroup.com: smtp@suksangroup.co.th
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Action: add header
X-Spamd-Result: default: False [6.44 / 15.00];
	ABUSE_SURBL(5.00)[lexcapitalgrowth.com:replyto];
	R_DKIM_REJECT(1.00)[suksangroup.co.th:s=default];
	SUBJECT_ENDS_SPACES(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[inbox.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325871-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_X_AS(0.00)[smtp@suksangroup.co.th];
	GREYLIST(0.00)[pass,meta];
	HAS_X_SOURCE(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_GMSV(0.00)[smtp@suksangroup.co.th];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER(0.00)[info@inbox.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[hanns.schofield@lexcapitalgrowth.com];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[info@inbox.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[suksangroup.co.th:-];
	R_SPF_ALLOW(0.00)[+ip4:172.105.105.114:c];
	MISSING_XM_UA(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inbox.org:from_mime,inbox.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lexcapitalgrowth.com:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CC64751119
X-Spam: Yes


Re:Good day devicetree,

Please let me know if this is best email to send you the project=20
info.

Kind regards,

Harry Schofield, ceMBA



