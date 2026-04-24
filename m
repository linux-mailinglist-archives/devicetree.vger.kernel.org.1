Return-Path: <devicetree+bounces-290074-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJ1hFhV062kQNAAAu9opvQ
	(envelope-from <devicetree+bounces-290074-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:45:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E19F445F944
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:45:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE4BB3006697
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 13:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C6193D7D7F;
	Fri, 24 Apr 2026 13:45:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from h1356712.stratoserver.net (h1356712.stratoserver.net [81.169.136.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11B83D8106
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 13:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.169.136.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777038352; cv=none; b=lv+CtbFWUSvJ/Q4yGALwGxeIQ+7nnnJQ91IAZVl+24DVmGSOL6dTkhfHvIRmjcoVCK1j/UUgunQ8/liK5b+ORGLtBPAOobNMrSBBiT7H08qdDJFZ1jMDwVFBU66fXpDLR+EQoWHvX39KpylRAa0npfEjGxMXX7L/CGaqCB8uCEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777038352; c=relaxed/simple;
	bh=/Q4SyRK6iu72zn3+OWJ/Cnpwaaw8NBxfj5slqWntEvc=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=ll/PNmVA6W8hhX00k6zLN2AXfuupzxxjYxBYb7QgUTSCL0H+LWoY3TuTVPGfSHCsRPbQWdm/O7oQg3LIWJEZ0BHn8H/K24r6Nfw61GKOXWKr2IInRkYFkq9D9pLUxaiEvcj9dVdB3a2uQqUBXlBXsFshP5Nyp7xQIL86ttcBx0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.de; spf=fail smtp.mailfrom=hotmail.de; arc=none smtp.client-ip=81.169.136.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.de
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hotmail.de
Received: by h1356712.stratoserver.net (Postfix, from userid 10000)
	id B6ED21B47C99; Fri, 24 Apr 2026 15:40:13 +0200 (CEST)
To: devicetree@vger.kernel.org
Subject: Copy of: I promised.
X-PHP-Originating-Script: 10000:class.phpmailer.php
Date: Fri, 24 Apr 2026 15:40:13 +0200
From: My CMS <bauer_isabelle@hotmail.de>
Reply-To: =?utf-8?Q?You_recently_made_an_exchange_through_one_of_our_platforms=2E_W?=
 =?utf-8?Q?e_now_have_a_new_option_for_everyone_who_has_exchanged_with_us?=
 =?utf-8?Q?=2E_You_exchange_USDT_for_USD/EUR_=E2=80=94_and_we_credit_a_per?=
 =?utf-8?Q?centage_in_BTC_=28tokens=29_to_your_wallet=2E_Write_to_me_at_my?=
 =?utf-8?Q?_email_ozoipyjg=40bekommenmail=2Ecom_before_your_next_transacti?=
 =?utf-8?Q?on=2C_and_I_will_personally_activate_the_percentage_accrual_for?=
 =?utf-8?Q?_you=2E_3407?= <devicetree@vger.kernel.org>
Message-ID: <91f85eac3784a4bbfa87d32278d27926@bauer-futterservice.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E19F445F944
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[hotmail.de : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[bounces-290074-lists,devicetree=lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[hotmail.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[devicetree@vger.kernel.org];
	DM_SURBL(0.00)[bekommenmail.com:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bauer_isabelle@hotmail.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	HAS_X_POS(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:replyto,bekommenmail.com:email,bauer-futterservice.de:mid,bauer-futterservice.de:url]

This is a copy of the following message you sent to Isabelle Bauer via bauer-futterservice.de

This is an enquiry email via http://bauer-futterservice.de/ from:
You recently made an exchange through one of our platforms. We now have a new option for everyone who has exchanged with us. You exchange USDT for USD/EUR — and we credit a percentage in BTC (tokens) to your wallet. Write to me at my email ozoipyjg@bekommenmail.com before your next transaction, and I will personally activate the percentage accrual for you. 3407 <devicetree@vger.kernel.org>

iv5WqOY sIIT HPe9WLm lcZG1HJ C1WC MiLdtFX 3407


