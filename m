Return-Path: <devicetree+bounces-304012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DAhJHLZGGpDoAgAu9opvQ
	(envelope-from <devicetree+bounces-304012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 02:10:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B25E05FB9CC
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 02:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54BB730B6E85
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 00:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0CFC157A5A;
	Fri, 29 May 2026 00:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mythread.it header.i=@mythread.it header.b="CzKqJxZI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpcmd0757.aruba.it (smtpcmd0757.aruba.it [62.149.156.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C148D4A23
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 00:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.156.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780013355; cv=none; b=EWDQL18hFEVfaFhB3LsmhOlKCbJJubYBwzh+xPivH9R+6qZnI2a6b+z7F33FzGdOYQt979gJiAvaLWMxwlmkv1Rwew+bTv6BdCWN6cRfRX4ikNC9Kt6wdjo/wJ54G6mdYyN+DK1noYXSWgDvpWr7+a2x57+RZgr4EDD9a3m+L9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780013355; c=relaxed/simple;
	bh=5u8Fg5vtsCQBtsotdH5esRw3mX1604EFdvjvTl71aV0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=STKRKinW+VDTfHnWAFW2uXoPaF/O0Rv4ErEOMZ6areBpX4v93TEhIG59cw91J7EzDma0du4xYUJR/TDvkYX6FJtQLJYyyAz/lEnZDK3m7xLEoA+deLDTy7LN30ab2+Bcj8Kt0jBkgUaEd6CJvvMcDTgnDX3y6C4aLhYfM9w4UWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mythread.it; spf=pass smtp.mailfrom=mythread.it; dkim=pass (2048-bit key) header.d=mythread.it header.i=@mythread.it header.b=CzKqJxZI; arc=none smtp.client-ip=62.149.156.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mythread.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mythread.it
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Skjiwb0oZtpTfSkjiw9YPX; Fri, 29 May 2026 02:06:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1780013163; bh=5u8Fg5vtsCQBtsotdH5esRw3mX1604EFdvjvTl71aV0=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=CzKqJxZIfmnLpD2ZE01LtVJS8b9je0nKIjM67ya5r0jLirI2ii0IxGNrMJdVrvKUj
	 zVXDhLp9KtaPp6PHkCd4j1b7zuft0Og8e9w/g8qoW2SQGBZsgLNBE1uTgLGtKhhR3l
	 TyFbdiyUdLTuvBZUDfNQ61lT/qd0ZZbCUPOTrc9vqrV5/2ZS3Pl8taUEb74lz1rLJs
	 3sS10L7KwQwJ3UmnTvpPCeOlFeC2ou3WrZWj4UqBG0sUwI0Md3NSGIu2tltvnAwn9M
	 EzCEQM1imoU3GB7iAMmB/4vUrDeUelhODg2rz6/DdWposLOhvk7i04YLz/roeLjwN/
	 rsg8fhZydONcQ==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Fri, 29 May 2026 02:06:00 +0200
Subject: [PATCH 2/4] bcma: allow SHIM-style mini-EROM wrapper-less cores in
 scan
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260529-add-bcm6362-wlan-v1-2-722242777f58@gmail.com>
References: <20260529-add-bcm6362-wlan-v1-0-722242777f58@gmail.com>
In-Reply-To: <20260529-add-bcm6362-wlan-v1-0-722242777f58@gmail.com>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Alessio Ferri <alessio.ferri@mythread.it>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfBcr/DglRpxN7rw6gJy2iDE09fw681n/E0jjnusTr+YBzo0LvhdgKX9REQgLsE+08MNT4wD7AwS0wWzXJJxSryGamNMzjPD3JAECY5TxJEBqpCpvQZjQ
 jtNQyPnP/Nedax3aMJKayvYunmGdpvpOeIXNFL6EW4gfX8gyUyJXg2A73FbfvY+Nfd9QlEoYW+daAjCliaJOEvgIzRis69RY7OYX+Qd+UmK3U7vvV1PLoB0u
 2C5QtwVSKfpRZ8a1k3PeQOkP68M00EKZ05Fg6g68FNKvHo376SjaoXNZQg7alQLznV9EwQME4znJHzZapoiWomx4bxEIibWgzIInH7QxO0fD4YBjUTo4yc2T
 0xIQnInC8zUdo/YlUaNwEl6viUSG71eGNuKwBk7peD6QfG2lLYVvpjWgjTbeizGQrizxGLY09PdyXOw2KrER7EhgCGWbbvJhfVc/iXAkEhmn6vNNabCCQvlH
 GZn6vNEF9cuq+TFWK98ZdraTT736/WIjykftNuFjKJ90kTacCr6eOcT7lPM=
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mythread.it,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[mythread.it:s=a1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304012-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,mythread.it,kernel.org,pengutronix.de,broadcom.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[mythread.it:+];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alessio.ferri@mythread.it,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B25E05FB9CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

bcma_get_next_core() rejects with -ENXIO any component whose
component_B descriptor reports NMW=NSW=0 unless its core id is in
a short allowlist (4706 MAC GBIT, NS_CHIPCOMMON_B, PMU, GCI).

On SoCs that publish a SHIM-style mini-EROM (i.e. BCM6362) the
WLAN backplane lists three components:
ChipCommon, IEEE 802.11 and BCMA_CORE_SHIM. None of the three is
in the existing allowlist, so all three are skipped silently,
bus->cores stays empty, bcma_find_core(BCMA_CORE_CHIPCOMMON)
returns NULL, and a later bcma_chipco_watchdog_register()
dereferences cc->core->bus on its first line and oopses mid-probe.

Assisted-by: Claude:claude-4.8-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/scan.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/bcma/scan.c b/drivers/bcma/scan.c
index 983a62ddeebb..782fc53eb6b3 100644
--- a/drivers/bcma/scan.c
+++ b/drivers/bcma/scan.c
@@ -318,6 +318,21 @@ static int bcma_get_next_core(struct bcma_bus *bus, u32 __iomem **eromptr,
 		case BCMA_CORE_GCI:
 		/* Not used yet: case BCMA_CORE_OOB_ROUTER: */
 			break;
+		case BCMA_CORE_CHIPCOMMON:
+		case BCMA_CORE_80211:
+		case BCMA_CORE_SHIM:
+			/* SHIM-style mini-EROM SoCs publish CHIPCOMMON, the
+			 * IEEE 802.11 core and the SHIM core itself with
+			 * NMW=NSW=0 because clock and reset gating happens
+			 * at the SoC level via the SHIM Control register,
+			 * not via per-core DMP wrappers. host_soc.c sets
+			 * bus->shim_attached on those SoCs from pdata; the
+			 * strict NMW=NSW=0 rejection still applies to PCI-
+			 * attached cards and to SoCs without that quirk.
+			 */
+			if (bus->shim_attached)
+				break;
+			fallthrough;
 		default:
 			bcma_erom_skip_component(bus, eromptr);
 			return -ENXIO;

-- 
2.54.0


