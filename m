Return-Path: <devicetree+bounces-263834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLzVA0eEiWl8+QQAu9opvQ
	(envelope-from <devicetree+bounces-263834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:52:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A4C10C3EA
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CA8B53003813
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8125531814A;
	Mon,  9 Feb 2026 06:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="ZczRkzXw"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221792D839D;
	Mon,  9 Feb 2026 06:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770619970; cv=none; b=rLEiFIP/1hTAs5Pyy5/A1wE2HGLnbD697oYiqVdXvtOy3/YWkq+G1A6uZtIu3C+tydTR/lJKY+kickJ2vNDmlzua4IhuGirdEUoFHOTJitaspPkyDnAnAHRN88tMH5Q84Hb18XN7xy9evAqewxDolGohca/noEioanIkSQX1R/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770619970; c=relaxed/simple;
	bh=DXnA0j3/Uan5NIBQI4I1W6jnHOtSk+oiYxhKLyk1rQs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CRmAmiwGb5O5ET4DY5JEfgRTCuhEclcYzph2i2G7HjWjoyDdc6cq1tuXxsXDHyF0Vynw/yY82vADG3Ps79r7xgWFJCkbq7FasVWcp0zLEx480ExuMCYJsb8FmoDLqJXYzxzSlcFNQZXyPN+0fH0Xt0a0mqGawhlbuVA8O/ciZKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=ZczRkzXw; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770619967;
	bh=DXnA0j3/Uan5NIBQI4I1W6jnHOtSk+oiYxhKLyk1rQs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=ZczRkzXwsZb8Vw/Es5bl+YtLjtKWM8ggFl4VnyzivSXkJxsukfBKPb8BKjxgEaSw6
	 W36H3pIY8DaDHOJcdoyF6GV6x/BgedWJJpWgZvXxpXL8WtJDlOSxCCYfd2FvwAWJgb
	 FqU75z1xX1v/DSFsD2qONMNHJH/T63ZXMuOxNJUBhoNlLrO07QT77yZec17HF4tBa7
	 ZTymBHYvEGEJiP3uGTYtbRGzlo9TQUnKhunR6bBH9a1AM2bBigMlp9on8u/kfJOgm9
	 aWuB41PCIGSne8cqrcD0xTGrsZsys4L8ZHW5l7HvvYTFIrgW2F9WZaFklDEAfYXZO+
	 ZV95GtEoFbRgw==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5679B602DE;
	Mon,  9 Feb 2026 14:52:47 +0800 (AWST)
Message-ID: <e7671063304f1bfdb66bc4e7d271c9e836bbe3cc.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 2/2] ARM: dts: aspeed: add Meta SanMiguel BMC
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Potin Lai <potin.lai.pt@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Cosmo Chou
	 <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, Potin Lai
	 <potin.lai@quantatw.com>, Roger Kan <Roger.Kan@quantatw.com>
Date: Mon, 09 Feb 2026 17:22:47 +1030
In-Reply-To: <20260203-sanmiguel_init_dts-v2-2-6a5682c32b38@gmail.com>
References: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
	 <20260203-sanmiguel_init_dts-v2-2-6a5682c32b38@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263834-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au,stwcx.xyz];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 98A4C10C3EA
X-Rspamd-Action: no action

On Tue, 2026-02-03 at 17:48 +0800, Potin Lai wrote:
> Add linux device tree entry for Meta (Facebook) SanMiguel compute-
> tray
> BMC using AT2620 SoC.
>=20
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>

Ah, I missed that there was a v2, however my comments on the v1 DTS
still appear to apply. Can you address them?

Andrew

