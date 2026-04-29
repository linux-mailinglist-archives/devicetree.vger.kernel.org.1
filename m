Return-Path: <devicetree+bounces-291230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id csPpC2ZX8WnAgAEAu9opvQ
	(envelope-from <devicetree+bounces-291230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:57:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2ABB48DD59
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:57:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 532D53029241
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 00:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B589214204;
	Wed, 29 Apr 2026 00:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b="lkwrEdAV"
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58BE1A682C;
	Wed, 29 Apr 2026 00:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=218.76.62.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777424224; cv=none; b=kXcAEwavPbJRMmB18mCXksImR4oPYpDqyMW228HR0MNK6/KkXNjskjpoQlXGI0/hSKkWjKKdHkSDfw+GhGq/PDo9KCoXadIGnWCSIUxqUZXZg1ZrTzYg13cTtrzmallP6Q3dMCN4G+zksBGkG4tzxFLthwKb1i6DMC1/egqp2Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777424224; c=relaxed/simple;
	bh=4czbswj4ht+A87lTkdcd08crGu9AEPernCdFv5ThrwI=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=YGqiAGsOQtpUb5sWA8QwWDz0RtuocTl4biZfBr4dwldb/XWlfZqIzQWEn1KMwUbc0/fUAaKqzk4veISy6KV2OBL64Cn1ssCw/RYA0KqSaj1sBj76RuW04oS8lIDl0AWvkj+skmmuNSw/ffnwdKgWoycFXdjU7p1EiTNak5oQPoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=pass smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=lkwrEdAV; arc=none smtp.client-ip=218.76.62.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ultrarisc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:
	References:Date:Message-Id; bh=KMl/DXyKt0CwRNL4eOdNzXil5p4m9/51p
	alhvFtb1Jk=; b=lkwrEdAVJ3T33HJmbKZ8FbOsYr7gxijC3om73VoICJecU+gRD
	fx6AIw2ycIdUDBYNXaLyQ2bRPVd0KLT3Z3E6+lBXo6dRo4dVHC2lYtPvlTPqpab/
	Xc2PogI4t7kkANU6nXW37oGq8rMsEIW1Qjg16K1szgulRBnMlkPHaPJEvY=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwA3cUJ5V_Fp_B4DAA--.1799S2;
	Wed, 29 Apr 2026 08:57:29 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v5 2/4] serial: 8250_dw: build Renesas RZN1 CPR value
 from DW_UART_CPR_* definitions
From: Jia Wang <wangjia@ultrarisc.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jia Wang <wangjia@ultrarisc.com>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
 linux-serial <linux-serial@vger.kernel.org>, 
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <afCS7GEG7gtyC7RH@ashevche-desk.local>
References: <20260428-ultrarisc-serial-v5-0-97de63b1e3eb@ultrarisc.com>
 <20260428-ultrarisc-serial-v5-2-97de63b1e3eb@ultrarisc.com>
 <afBhkbGLsuqUitOl@ashevche-desk.local>
 <23c80500-f2c1-0eb3-f640-00f7b108059b@linux.intel.com>
 <177736726936.2886867.7725295920724488690.b4-reply@b4>
 <afCS7GEG7gtyC7RH@ashevche-desk.local>
Date: Wed, 29 Apr 2026 08:56:45 +0800
Message-Id: <177742420562.3222151.9689419292413018986.b4-reply@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777424206; l=1149;
 i=wangjia@ultrarisc.com; s=20260309; h=from:subject:message-id;
 bh=4czbswj4ht+A87lTkdcd08crGu9AEPernCdFv5ThrwI=;
 b=aleoixAjfRCIOq4JvlJdssuNfQRSsaLUgal5WrjqOTgcvlwjcpvsyS6aVVeeZSRyDQLO2GjPq
 FHF8Ra0GbLxDxcUS8OtHSaYRbFpqmV2H9q6SyPpx0Vc/piOJ0/gNUHC
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=XvYkrelqJIIzobY7j+nIg8rsfv5kzaOzuc1UPhd087U=
X-CM-TRANSID:AQAAfwA3cUJ5V_Fp_B4DAA--.1799S2
X-Coremail-Antispam: 1UD129KBjvdXoW7XrykAF4fZr1rur18uF4fAFb_yoWDZrX_Ar
	W0kr4kua1kC39Fvw4DK3sIkws0krW7Zw4YqryrWF12kr9rX3s8Xwn5uasYgFnav3yIkr92
	93WYqryF9F4qgjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJ3UbIYCTnIWIevJa73UjIFyTuYvj4RJUUUUUUUU
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQAKEWnti78ACwA6sb
X-Rspamd-Queue-Id: B2ABB48DD59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-291230-lists,devicetree=lfdr.de];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On 2026-04-28 13:58 +0300, Andy Shevchenko wrote:
> On Tue, Apr 28, 2026 at 05:07:49PM +0800, Jia Wang wrote:
> > On 2026-04-28 11:41 +0300, Ilpo Järvinen wrote:
> > > On Tue, 28 Apr 2026, Andy Shevchenko wrote:
> > > > On Tue, Apr 28, 2026 at 01:26:27PM +0800, Jia Wang wrote:
> 
> ...
> 
> > > #define DW_UART_CPR_FIFO_MODE_FROM_SIZE(size)			\
> > > ({								\
> > > 	typeof (size) __size = size;				\
> > > 								\
> > > 	static_assert(IS_ALIGNED((__size), 16));		\
> > > 	static_assert(__size <= DW_UART_CPR_FIFO_MODE_MAX);	\
> > > 								\
> > > 	FIELD_PREP_CONST(DW_UART_CPR_FIFO_MODE, __size / 16);	\
> > > })
> > 
> > Thanks. I tried that approach, but the statement-expression form does
> > not work in this case because the helper is used in static initializers.
> > So I'll keep it as a plain expression macro for now, and just rework it
> > into a cleaner multi-line form.
> 
> Still you can move FIELD_PREP_CONST() into it.
>

Right, I'll move FIELD_PREP_CONST() in. By the way, does your Reviewed-by
still hold?
 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 
> 

Best Regards,
Jia Wang



