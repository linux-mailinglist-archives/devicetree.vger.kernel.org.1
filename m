Return-Path: <devicetree+bounces-272638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KE+FEwErmlq+wEAu9opvQ
	(envelope-from <devicetree+bounces-272638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:20:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A64EB232A3B
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EF6230107F1
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 23:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D510E311946;
	Sun,  8 Mar 2026 23:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="JgBXpDIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43101.protonmail.ch (mail-43101.protonmail.ch [185.70.43.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363101CAA78
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 23:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773012028; cv=none; b=Fe0L92dD/UyYq8xTr3iSu4inYIUqCCv6RDsBCpQbNhVHCVP4NQJbipoaV96RKEQ9uDVThvhW4+glog7ooqkSyj5h//vJJa9aEI0p3BL+sX8rYOmXRin2vyTeah3C7RZFAVCBLCiEuv5gv15EIe2EOjmxyudKMhXpNo+g04iEYzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773012028; c=relaxed/simple;
	bh=OVNfy1dOLR6fLlJ63dBBVUVhrWhM3UP4iVE9xKxc3T0=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=lEUvlx3/axN5UMiI0xY7o92b4ocjieokw1u6Bg08rOyFIH5dmxjTH/xVteBADozSqw23SMW8MmBjYY6ubvPbSwtVIKS53YO6XKeELBHM5twSPUnWykyTFvCvrGQN5LB4iZKw9zR5an6JkcliI47i7/SoKn5J0FjWgrD8oc8/Zko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=JgBXpDIE; arc=none smtp.client-ip=185.70.43.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773012025; x=1773271225;
	bh=hpW5dj12Cx/i71mCTHgcHn217TNHginpnW3eYHTykNE=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=JgBXpDIEzmNe7mu5gHGwkg1bsJEYI4e4YC/K25DQiMAJIwVnTc9AqMxFr54irgTui
	 2V8hJ1MqaaRJpon1rNKh2uLRSxKtHNg5BmqfWWvWqHlAGoIs5WIpojNiH7KmYt9IYf
	 relZTJ6EZno1cIsVoPBjv7byYhI8u8C53k59E2wwVQho94Q8IyryuqFIz8ULuqVgtL
	 PN2Dx/6MH9VXeC2wlz7TMrjCmWsqB/lUpp6jmEYXX/4uFbT7JMAuQ3qflFhLDqM/X0
	 0pN3vPgkSQAcBbGpO0cYnUA5+4azcMHjY+8uMGCKLXMmxYo3Ou6QM6PBw8JyLx4a2L
	 TZJiHU1l3Xafw==
Date: Sun, 08 Mar 2026 23:20:19 +0000
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH RFC 0/2] usb: typec: qcom: Add shared USBIN VBUS detection via GPIO
Message-ID: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 3cb58a88a9367d9540281d0dc09fd258b054381f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: A64EB232A3B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272638-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Action: no action

The ASUS ROG Phone 3 has two USB-C ports whose VBUS lines are both
wired to the single USBIN input on the PM8150B PMIC. This means the
Type-C port controller cannot distinguish which port is providing
VBUS, causing one port to be unusable when the other has VBUS present
from a charger or PC.

The downstream vendor driver also appears to be touching
TYPE_C_CRUDE_SENSOR_CFG_REG for restoring CC detection after enabling
BYPASS_VSAFE0V but does not appear to be necessary with the upstream
TCPM stack?

Feedback on whether additional register configuration is needed would be
appreciated, but functionally this appears to work as is. After these
changes and configuring the property in DTS I am able to use a flash
drive on the side USB port (pm8150b_typec) while I am connected to a
charger or my PC via the bottom USB port (rt1715).

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
Alexander Koskovich (2):
      dt-bindings: usb: qcom,pmic-typec: Document vbus-detect-gpios propert=
y
      usb: typec: qcom: Add support for shared USBIN VBUS detection

 .../devicetree/bindings/usb/qcom,pmic-typec.yaml   |  6 +++
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c | 46 ++++++++++++++++++=
+++-
 2 files changed, 50 insertions(+), 2 deletions(-)
---
base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
change-id: 20260308-qcom-typec-shared-vbus-7d37c6b2d155

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



