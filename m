Return-Path: <devicetree+bounces-272788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBeqBB2WrmnRGQIAu9opvQ
	(envelope-from <devicetree+bounces-272788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:42:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E86C236628
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD9B73050D54
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BCA3377EC6;
	Mon,  9 Mar 2026 09:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdN77l2H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B04256C84;
	Mon,  9 Mar 2026 09:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773048474; cv=none; b=pvDghBaTcHiK7vMrNRlBGR59CQlUTbA084BL1KTVaG5poQCZJQMOrYnylGwOvruSMbGKL6E146A2Px8PtrFXzvh6+hE8kYnTGRvrjur8VT8V7m6yf5aM68LUoOh7a1CgbgHW7/ufGZtkCM3VN4fAwrpYY2zf7B0BaTzyWxbls04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773048474; c=relaxed/simple;
	bh=vAyN1hj0U3Oa8JbuK8YxYaCody3qygBNDhbFwrsgF+c=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tQ8zgjKR6KoWac991AA/6iqqoVUtmMtV/dRMxbHFonzWn9cKeFmoNHKA7HMfIBl/4QB3gztr3ncUNcKCn204icLkcfWvzldX6bRsimEYr7CN0579I950hykhkAAn4eeSndXMUT3t6TVQF+XCsC0HCDgNmnSeg7Pn6zNfSbAfq3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdN77l2H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D684C4CEF7;
	Mon,  9 Mar 2026 09:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773048473;
	bh=vAyN1hj0U3Oa8JbuK8YxYaCody3qygBNDhbFwrsgF+c=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=PdN77l2HC78giLy4naVWy4l7pSbJ3kswsoXn1F3iFmq1OOE+aFxy8+9tgJmnzBzUF
	 3J7PsFzbuPa9CYNftnaqQaMIiIgFuASprrS76B+tfo2tXSYpUxCEp3s1FlVL8cAkOq
	 mf/wAKvIm8tznWxSAGeQdCANsNAC0XstEXZLYU3jrpzR9o8cicqI6hz5pk9bJ6Dekh
	 VGAUdWcYb3FhTj8jpVGpUenFrYkIrH64f1ROjaCIJwiIoTYXwVXgGmgNX3zQnipSUN
	 qW3yfiS4APQsaJ4gjduYxnmc2JDoHHGNIapfrBM56e/WPiIE646XQepfLZbeorRFUg
	 Esi3Nss/7o/Mg==
From: Thomas Gleixner <tglx@kernel.org>
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Frank Li
 <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, Haibo Chen <haibo.chen@nxp.com>, Adrian Hunter
 <adrian.hunter@intel.com>, Shawn Guo <shawnguo@kernel.org>, Lucas Stach
 <l.stach@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, s32@nxp.com, Christophe Lizzi
 <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, Enric Balletbo
 <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, Ciprian Marian
 Costea <ciprianmarian.costea@oss.nxp.com>
Subject: Re: [PATCH v4 6/8] irqchip: add ARCH_S32 dependency to Kconfig
In-Reply-To: <20260306161555.9000-7-ciprianmarian.costea@oss.nxp.com>
References: <20260306161555.9000-1-ciprianmarian.costea@oss.nxp.com>
 <20260306161555.9000-7-ciprianmarian.costea@oss.nxp.com>
Date: Mon, 09 Mar 2026 10:27:50 +0100
Message-ID: <87h5qps67d.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 9E86C236628
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272788-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_TO(0.00)[oss.nxp.com,kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.621];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06 2026 at 17:15, Ciprian Costea wrote:

That subject line is useless. It says that it adds a random dependency
to Kconfig, which tells nothing. Subject lines have to be descriptive
and useful on their own w/o the need to decode them through the actual
change log.

Just fold this change into the previous patch which adds the ARCH_S32
support into the driver.

Thanks,

        tglx

