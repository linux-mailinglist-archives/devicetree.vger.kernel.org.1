Return-Path: <devicetree+bounces-276398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ+PEFJvuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:00:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9CC2A0796
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:00:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61DA03079F96
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F97B35AC1A;
	Mon, 16 Mar 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="nFbH/R6m"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (lpdvsmtp11.broadcom.com [192.19.166.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA2D13B7A3;
	Mon, 16 Mar 2026 20:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773694594; cv=none; b=Km/er5RinFRKY+yNv07LtmsUj8AjTGHYQmuNo6xbMPvtIFn5yYTSsrqLi6tn3yik4Jt0JV27I7ljntB87ehEosNMcoNFqFka+HXT4iokupl8YbWioNjbW0WTIzy3iV7yBEuYRUQhVCRyAogHXRhx8USNNzAqB9iLesFXs8sX8Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773694594; c=relaxed/simple;
	bh=k05/EK7vyxufzjsmkp/Jz+yJRVq8SpCUSA0q0f0ezAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TgX2A5o4lMPB9lLSWPOytIITqNmtsaMLxZgpBYyziN5MbmDi3fxzQ5itnD/bH9lZTRuMV2F8HbwKa+cJk2r65ziPfylouRJRiKQUWQQl6oM8ldAIbMpxF4/9NbQnyNYpBnAw6R5DjwHChoJ2msXVUmOqiTPW9qfwKcjsD9hMUmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=nFbH/R6m; arc=none smtp.client-ip=192.19.166.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 3B1C0C0000F2;
	Mon, 16 Mar 2026 13:56:27 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 3B1C0C0000F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1773694587;
	bh=k05/EK7vyxufzjsmkp/Jz+yJRVq8SpCUSA0q0f0ezAc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nFbH/R6mA8CzhutBR3wQ5kLTO0M9BTF4GypJzoyMQ/HT8qgwuxqMVOlMVsdT+Z7d/
	 O5JHgUWncJtI/C8EtYJiAYgEs7A3CoTME8OcqGeQXbhxsQStREDuNv1h9VwZ9lahLS
	 Lm8Wzsslvl+7XjH2He4btI7GnfswxOZMWKB452Ts=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 0EC6BA83;
	Mon, 16 Mar 2026 13:56:27 -0700 (PDT)
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
Subject: Re: [PATCH 6/6] arm64: dts: broadcom: bcm2712-d-rpi-5-b: update uart10 interrupt
Date: Mon, 16 Mar 2026 13:56:26 -0700
Message-ID: <20260316205626.2147181-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226-raspi-dts-updates-v1-6-60832d20ff04@linutronix.de>
References: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de> <20260226-raspi-dts-updates-v1-6-60832d20ff04@linutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=dkimrelay];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276398-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,broadcom.com:dkim,broadcom.com:mid,linutronix.de:email]
X-Rspamd-Queue-Id: 9C9CC2A0796
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 26 Feb 2026 09:55:59 +0100, Gregor Herburger <gregor.herburger@linutronix.de> wrote:
> On the -d revision of bcm2712 the uart interrupt is on 120. Update it
> accordingly.
> 
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

