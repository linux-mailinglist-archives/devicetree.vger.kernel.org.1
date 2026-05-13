Return-Path: <devicetree+bounces-296764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIUhJvVTBGp/HAIAu9opvQ
	(envelope-from <devicetree+bounces-296764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 12:35:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 138C05315EA
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 12:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F2BE309E344
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2CCE3A1D1C;
	Wed, 13 May 2026 10:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="IqlU/05d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA5339183C;
	Wed, 13 May 2026 10:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778668510; cv=none; b=ogscnofpBkBd99OderXq4MeseabeJBcxJXoOTiCZLq+CexAAsew4wakegGM4WyvAyrvMKpu2ou7Xw6AX/ED78ChaosIvWIQUhJZNCgvB9uPH5DZnepInTfdBktagAUFUJ6G6ex55JVmj79oX9Qe0b8RSn7TqsYGZuWL4eTyR8Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778668510; c=relaxed/simple;
	bh=sF+Pm4mfrfXND7lL5Z6QpI4cx9tugUfK4jX6T+Nq230=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FgCpjDALcpUZ1eFeCP8YPdqiTMw0RtPm/6cjTNaGNg7h6Tw1aJ19tDEZEeWJojPJfhq+AfTThc5nPSMdXfcOw9Dr8mvk+1584N8yib2jnV5v1INa9c1+Cr7SDEeQMBFD2zTfU0kOq9r9YEZyltZJ/imHcclC+6hc3eEIrpaiQfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=IqlU/05d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE963C2BCB7;
	Wed, 13 May 2026 10:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1778668510;
	bh=sF+Pm4mfrfXND7lL5Z6QpI4cx9tugUfK4jX6T+Nq230=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IqlU/05d+cufJULX5BEPfPMM2CUDbVBGecI6BkX5uxwnB/5dFoLkL8RB9bL2pwg8L
	 Iv4jruKLTFHbBo14xJEhqiJYfaTkKbr9plMyXCXXSHWwhAVc8Wbn1VKTB0DUJdzYTn
	 Bhetk4n7LD7/RuV5UNqZdwlGVA7xHyIska8Ov8AA=
Date: Wed, 13 May 2026 10:59:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: liu.qingtao2@zte.com.cn
Cc: krzk@kernel.org, jirislaby@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, marex@nabladev.com,
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, rdunlap@infradead.org, geert+renesas@glider.be,
	quic_zongjian@quicinc.com, arturs.artamonovs@analog.com,
	robert.marko@sartura.hr, hvilleneuve@dimonoff.com,
	thierry.bultel.yh@bp.renesas.com, julianbraha@gmail.com,
	flavra@baylibre.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
	linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	liu.wenhong35@zte.com.cn, liu.fei16@zte.com.cn,
	dai.hualiang@zte.com.cn, deng.weixian@zte.com.cn,
	jia.yunxiang@zte.com.cn, he.yilin@zte.com.cn, bai.lu5@zte.com.cn,
	yang.susheng@zte.com.cn, shen.lin1@zte.com.cn, zuo.jiang@zte.com.cn,
	hu.shengming@zte.com.cn, gao.rui@zte.com.cn, tan.hu@zte.com.cn
Subject: Re: [PATCH v2 1/2] Add ZTE LRX UART driver
Message-ID: <2026051332-footsie-ogle-4eba@gregkh>
References: <202605130851.64D8prqc083672@mse-fl1.zte.com.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202605130851.64D8prqc083672@mse-fl1.zte.com.cn>
X-Rspamd-Queue-Id: 138C05315EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296764-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nabladev.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,infradead.org,glider.be,quicinc.com,analog.com,sartura.hr,dimonoff.com,bp.renesas.com,gmail.com,baylibre.com,vger.kernel.org,lists.infradead.org,zte.com.cn];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCPT_COUNT_TWELVE(0.00)[38];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,zte.com.cn:email]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 04:46:51PM +0800, liu.qingtao2@zte.com.cn wrote:
> >From 08610be731b6fc3919d5eebfd2ff9d67f38a094c Mon Sep 17 00:00:00 2001
> From: Wenhong Liu <liu.wenhong35@zte.com.cn>
> Date: Tue, 28 Apr 2026 22:30:31 +0800
> Subject: [PATCH v2 1/2] dt-bindings: serial: Add zte,lrx-uart

Um, something went wrong with your email client, this should not be in
the body of the email :(

thanks,

greg k-h

