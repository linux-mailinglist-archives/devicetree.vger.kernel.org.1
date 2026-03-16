Return-Path: <devicetree+bounces-276388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKYWNrFruGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:44:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DF82A0538
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 03C0A3023D56
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEC61392818;
	Mon, 16 Mar 2026 20:44:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mta.ai112.secure.ne.jp (ai112.secure.ne.jp [150.60.158.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CB939E6E9
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.60.158.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773693871; cv=none; b=Izb0IBR3sEHoEsxtzWlLE6e164b1p72UoB2b6Vr7svQaWrjRug9cs02LCSjFJBVZGACfh4mBIoeqPTkCjSiGTz/MBrDFmAFqVoUPxmNWSw0vn4aeocVs37uUc1nWIQDgqMDby8jjZwqQvqVf96SYIPAPQsAAr+g75swjvjT4UnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773693871; c=relaxed/simple;
	bh=HTSbkAu6LzhBivZ7actY7nw3ZwOFD+8yHCqYOLbN4Rs=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=toQXDFTBuMPHYWlTuUDUeY+i8qQy1FWcCkgq+tgb6FQqsF60cBSIiEHA90MW3iIzPC3q7QNt0kdBZXAIEUvhrkSpHn2367CyYnJbi+Bf45ytKi68swBX1oOpBrQaYg6x1V02zk0EKdcqdfD1g9PwA405HGMgBoGzWlGfhozUehE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=towa-care.com; spf=pass smtp.mailfrom=ai112.secure.ne.jp; arc=none smtp.client-ip=150.60.158.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=towa-care.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ai112.secure.ne.jp
Received: by mta.ai112.secure.ne.jp (Postfix, from userid 10275)
	id 89D1C3D3B5F; Tue, 17 Mar 2026 05:36:40 +0900 (JST)
To: devicetree@vger.kernel.org
Subject: =?UTF-8?B?44GK5ZWP44GE5ZCI44KP44Gb6aCC44GN6Kqg44Gr44GC44KK44GM44Go44GG?=  =?UTF-8?B?44GU44GW44GE44G+44GX44Gf44CC?=
X-PHP-Originating-Script: 10275:class-phpmailer.php
Date: Mon, 16 Mar 2026 20:36:40 +0000
From: =?UTF-8?B?5qCq5byP5Lya56S+IOawuOmBoA==?= <confirm@towa-care.com>
Reply-To: info@towa-care.com
Message-ID: <859ae3e89dc1665ae0ceb4803a095889@towa-care.com>
X-Mailer: PHPMailer 5.2.22 (https://github.com/PHPMailer/PHPMailer)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[towa-care.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_PHPMAILER_SIG(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-276388-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REDIRECTOR_URL(0.00)[tinyurl.com];
	REPLYTO_DOM_EQ_FROM_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[confirm@towa-care.com,devicetree@vger.kernel.org];
	HAS_REPLYTO(0.00)[info@towa-care.com];
	HAS_X_POS(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.156];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 80DF82A0538
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--------------------------------------------------------------------------------
お問い合わせ頂き誠にありがとうございます。
本メールは自動送信専用メールアドレスからの送信となります。
本メールからご返信頂きますと当サイト担当のメールアドレスへご返送頂けます。
--------------------------------------------------------------------------------
以下情報で承りました。
担当者からの折り返しのご連絡をお待ちください。
尚、3日経ってもご連絡がない場合はお手数ですが、
一度お電話頂くようお願い申し上げます。


氏名：Agekbada

氏名カナ：Agekbada

会社・店名：google

メールアドレス：devicetree@vger.kernel.org

電話番号：82946227713

携帯番号：84482863265

メッセージ本文：
That constant heaviness in your chest? It's exhausting. Get back to enjoying life with simple, private help available online. Fast shipping, secure checkout, complete anonymity. See the options waiting for you.  https://tinyurl.com/44hsj6ha#ILJZxj

--
送信日時： 2026年3月17日　5:36 AM
IPアドレス：158.173.20.22
--
このメールは 株式会社 永遠  (https://towa-care.com) のお問い合わせフォームから送信されました


