Return-Path: <devicetree+bounces-276394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKO2GktuuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:55:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E61D72A06D9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC5C0301ABBD
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A018535C193;
	Mon, 16 Mar 2026 20:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gDIklYhH"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (lpdvsmtp09.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698FC35AC31;
	Mon, 16 Mar 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773694536; cv=none; b=KrKHlF31HfgOAYT6o1jr4KqO4Hp3NfgVWtH94Dwc6WAs7RktZM0gx9SIzhgOPKWG2IK3Phmc207Vj7mgvVtGdBMy/RbmHG9czHkZCQFZrSnOB4evwaUSRRlR9srKW71QsMFrofIJbP8qJhs1Xb7rEwuXLteBBTLmVL+TU8upYiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773694536; c=relaxed/simple;
	bh=8lLaSsQg4hYHYnYyrgVOYs/w8ru8A8fig3DIZdD12hs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ugx8mqNooMgF9F03bsbQICE++VBcN8BYKOPXuWmCqe+tmhGB7wHptNnFzKtmR+63Y/tGmiMNT2WfJHVN931W66hfLgkEXWl6luprUvq8UKKDO50oSLmxp7dkdY33yMA1VmbfHBWQN70fjUTMbz6rOu0hXTeSscGDdWtotJeotEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=gDIklYhH; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 5BCD0C0000F4;
	Mon, 16 Mar 2026 13:55:32 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 5BCD0C0000F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1773694532;
	bh=8lLaSsQg4hYHYnYyrgVOYs/w8ru8A8fig3DIZdD12hs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gDIklYhHuosNV8xcwNfypaY2BJcYFQdqo+jhDopwWQU+vRvHTcZtWWPD32MQn4fle
	 auFzhEJlOIvd91A+SU76MmItOta43BB3T/ovEc6vhhGUZG0ML5/9B47fbgiJEsl/tX
	 9vSzSYey2INz14NCGKRqXd+lZh470y+96bLaVtR8=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 2F2C2A83;
	Mon, 16 Mar 2026 13:55:32 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Gregor Herburger <gregor.herburger@linutronix.de>,
	Andrea della Porta <andrea.porta@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/6] arm64: dts: broadcom: rp1: add csi nodes
Date: Mon, 16 Mar 2026 13:55:31 -0700
Message-ID: <20260316205531.2146805-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226-raspi-dts-updates-v1-2-60832d20ff04@linutronix.de>
References: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de> <20260226-raspi-dts-updates-v1-2-60832d20ff04@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=dkimrelay];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276394-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linutronix.de:email,broadcom.com:dkim,broadcom.com:mid]
X-Rspamd-Queue-Id: E61D72A06D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 26 Feb 2026 09:55:55 +0100, Gregor Herburger <gregor.herburger@linutronix.de> wrote:
> The RaspberryPi 5 has 2 PiSP Camera front end controller on the RP1
> chipset.
> 
> Add the relevant nodes to the devicetree.
> 
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

