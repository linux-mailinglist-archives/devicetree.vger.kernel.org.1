Return-Path: <devicetree+bounces-272667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePGhEqk+rmndAwIAu9opvQ
	(envelope-from <devicetree+bounces-272667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:29:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF94D233850
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21CBD3009F9A
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 03:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88CB027816C;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkfi2mk4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642DE1F03D7;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773026982; cv=none; b=W+PYn6mCaC7PKzHyLnkVHUJz5VEzYN+xjYj2TdnoZ6XwO2+/mPz0MH4dTYJFSRlnU4dP61nTIqKCYaqJlFFHayR/n/XkryBctsKB5go90m44URDGdi4hD0E6WYC7nvrxz+cWCkCJjStnv2aE+cyk/J16WlA2q8mz450QIpem/yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773026982; c=relaxed/simple;
	bh=GaoP8wcFVTkbA0qAqdRsL25+1PTp6d7J/ewviONVA+o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ui2/oLCvd1mEP3dDACn508BIcGpiFPNYT7hyloJ/zNnLq0qdLlfSLWJ/S4a6alqK66bVclleOA6niSKSheAyK/W5RqAck3NaMOXyPa5eyYqZI/XSkCOplcPLVj1liJt3VPrqoSM5nrWTYXVBOMYvxZsjlLV8c7Ivby1+T+19L18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkfi2mk4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A4CEC4CEF7;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773026982;
	bh=GaoP8wcFVTkbA0qAqdRsL25+1PTp6d7J/ewviONVA+o=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=dkfi2mk4t3JAolTuCkgrASkFRIEnwyTKbECop4UEOr2WwDuFqR5bZyD8xNfO8tZjT
	 Amhs1faU20RdXe3I6YSEyLysbbNCDlmoX1zZhgy2U3FvtVop73QEGXEhxAzpdXXIp/
	 gS635NNbqE8v58IoF6vXIiiK5PcBGKa5kp6Tjg+MBBQ6eY1ChzDc3BHZElGZPWQUOo
	 1Zu19V4fGO/ch/olguZ/5vTSDSj7L1Xp3JXAQsTuznFwae9ptoBaD+xkU9Ek0FuGFN
	 AT+F7JAnCW+OAx7iyOescsNFhuIUXFh8bXC5y1d3e39JAq2lKwzz2oXYbk/s/ABbto
	 Lr7xUiB9paYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 178C3EA8525;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
From: Carl Lee via B4 Relay <devnull+carl.lee.amd.com@kernel.org>
Subject: [PATCH 0/2] ARM: dts: aspeed: anacapa: add eeprom devices
Date: Mon, 09 Mar 2026 11:29:26 +0800
Message-Id: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-0-45092310e0e6@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJY+rmkC/x2NwQqDMBAFf0X23IWoKLS/Unp4Js82h8awKUUQ/
 71Lj8PAzCGNltnk1h1i/OaWt+LQXzqJL5QnNSdnGcIwhzFcFfbW9GmKVsmkKIioUKSkZLXNrWc
 iFT2wMMwYp0U8V41r3v+r++M8f8Xs9lx6AAAA
X-Change-ID: 20260309-arm-dts-aspeed-anacapa-add-eeprom-device-a1aabe06a35b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 carl.lee@amd.com, peter.shen@amd.com, colin.huang2@amd.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773026981; l=628;
 i=carl.lee@amd.com; s=20260203; h=from:subject:message-id;
 bh=GaoP8wcFVTkbA0qAqdRsL25+1PTp6d7J/ewviONVA+o=;
 b=kgrps2Go1O4NvQWUFzsxLNEgYXY5NUMhGVNxD99zrowxmzORxAcbs5rIdv1EZnF/n4UTaLfVN
 vEF+OVFHqZ9AJqv/iM04dPXj3sUtCJWN4uWI6C3XLSaA+E4Ohews4Aa
X-Developer-Key: i=carl.lee@amd.com; a=ed25519;
 pk=pyq7QaQvoxMg806KVkRwpCbiah+7ncWr4MBpK1AEyjA=
X-Endpoint-Received: by B4 Relay for carl.lee@amd.com/20260203 with
 auth_id=623
X-Original-From: Carl Lee <carl.lee@amd.com>
Reply-To: carl.lee@amd.com
X-Rspamd-Queue-Id: BF94D233850
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272667-lists,devicetree=lfdr.de,carl.lee.amd.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[carl.lee@amd.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.980];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amd.com:replyto,amd.com:email,amd.com:mid]
X-Rspamd-Action: no action

Add eeprom device nodes used to store FRU data for the PRoT
module and NFC adapter board on Anacapa platform.

Signed-off-by: Carl Lee <carl.lee@amd.com>
---
Carl Lee (2):
      ARM: dts: aspeed: anacapa: Add eeprom device node for PRoT module
      ARM: dts: aspeed: anacapa: Add eeprom device node for NFC adaptor board

 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)
---
base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
change-id: 20260309-arm-dts-aspeed-anacapa-add-eeprom-device-a1aabe06a35b

Best regards,
-- 
Carl Lee <carl.lee@amd.com>



