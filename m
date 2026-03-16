Return-Path: <devicetree+bounces-276397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFTGHTJvuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:59:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C63D52A0788
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:59:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4D4C305E9AA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18DA135AC1A;
	Mon, 16 Mar 2026 20:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="cptHexji"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B9B13B7A3;
	Mon, 16 Mar 2026 20:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773694579; cv=none; b=FbDhVmMIQLBcLdwWzMMJrn4d5r4SYl86oYWNTJ7q9P4M8Wy7vgU99mjKgfzytRzRZogu3D+i5HPyB44QqBRABlx8AYiifh22eOZjovUQosAm0qrJfm8eHBOrgFBCThmL1jVnnvyn6pCHrys7TYwwQ69CZhSdU5u0Z0t4SW3hbnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773694579; c=relaxed/simple;
	bh=dbhIxYnZkgrb0N9C4Hmlz/mkT5FN6g4OVjfTOWwsUpw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZG6+j+/cNhpY/ddLRhoN+f354CqK5vit7IagnQ+w7RnFM1Ahkz92Riy9O83wFsJzDcCRNZ1Gi0XTN9c8udLhsLwi3wj91K8BkvrQII99YyRxDF+Sw4Xnx17o4psQ2X4NtXvdKPCLJJMdjKFE7DHGIZyC/YFB6THx0+RAbLb9QQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=cptHexji; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 5D5EFC0000E2;
	Mon, 16 Mar 2026 13:56:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 5D5EFC0000E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1773694577;
	bh=dbhIxYnZkgrb0N9C4Hmlz/mkT5FN6g4OVjfTOWwsUpw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cptHexjijVv35UgRXyxDa0ZRTfevX/8e73PxCmIzlaNiqmH+y5lHhCoUmp4Sq3h/d
	 N2yFRSOP0v8w/8ypJly2GGbWC4td+K5L32EhSlvyIJ20SryI20laga0TaczQTfGPCp
	 v9JPP+QvrOhhO7jr+pHufvoc3GrLV3KLMFO/RbRY=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 31A17A83;
	Mon, 16 Mar 2026 13:56:17 -0700 (PDT)
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
Subject: Re: [PATCH 5/6] arm64: dts: broadcom: bcm2712-d-rpi-5-b: add fixes for pinctrl/pinctrl_aon
Date: Mon, 16 Mar 2026 13:56:16 -0700
Message-ID: <20260316205616.2147097-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226-raspi-dts-updates-v1-5-60832d20ff04@linutronix.de>
References: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de> <20260226-raspi-dts-updates-v1-5-60832d20ff04@linutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=dkimrelay];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276397-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,broadcom.com:dkim,broadcom.com:mid,linutronix.de:email]
X-Rspamd-Queue-Id: C63D52A0788
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 26 Feb 2026 09:55:58 +0100, Gregor Herburger <gregor.herburger@linutronix.de> wrote:
> On the -d revision of the bcm2712 the pinctrl differs from the c0
> revision. The driver already supports both and distinguishes the two
> with the compatible string.
> 
> Update the compatible string and reg length to reflect the different
> pinctrl.
> 
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

