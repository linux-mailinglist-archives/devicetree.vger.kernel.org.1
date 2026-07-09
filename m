Return-Path: <devicetree+bounces-323458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UJf9N8FfT2q7fQIAu9opvQ
	(envelope-from <devicetree+bounces-323458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:45:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4979A72E718
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:45:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ite.com.tw header.s=dkim header.b=r3ev+PKT;
	dmarc=pass (policy=quarantine) header.from=ite.com.tw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323458-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323458-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83CB530871D6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F4B3F4DE7;
	Thu,  9 Jul 2026 08:38:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (60-251-196-230.hinet-ip.hinet.net [60.251.196.230])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD643F413C;
	Thu,  9 Jul 2026 08:38:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586302; cv=none; b=nWRSFVcyu35EWbP3gDApxZ91mmveVDtYY5HCUyoQ77zlAOe0FUZhgU5EOo1BtMczWtc7OoASOh7tYA1OyW/lII8vx44xCB/fx4jXG1+wAzosYJAryqIBOyUeAZFU8oTWYzNFMqVdZZ05kKLX8uPpIBJxbaWhHfoGkk/iaGm64mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586302; c=relaxed/simple;
	bh=0RAsdOQ7TbwDoDcLQTfwCTi70ibg3pF0ahAjTb8hmOg=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=dOCd8jGzBOx+l61mlCHgBUqTBR9Pbfn0bx/49qmUcT1Z3yqit+jC1i1PJCTplCA2G9yJbEW2CMLnAxDzKopvLcVXXjuz9Wux9O1xNT0G6XUinfd+tEZeq7/tXEY7jOfGqC+Nuqv6hJdpgzaXjmTB9nMoH4390k53Oz4SfQr7mco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=r3ev+PKT; arc=none smtp.client-ip=60.251.196.230
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:subject:date:message-id:mime-version:
   content-transfer-encoding:to:cc;
  bh=M92FrE/A9zeLrPACzHMrrHqA2ulyDMPqJQNs1HKkhYU=;
  b=r3ev+PKTAJxDZWoaHFXrKVKa7e6/4eZDSrl4Euju2NcIyAGI67ZiDOLz
   YO+QZy7Oy1bMX1SxPip8C67LkBamiuuX7cuXX34nrBw5pfXt19I7RlWNq
   x8S9e10x4UdCqUJoc71kBLeawPg1jRe02X1YBKkee4suXv+b/tpfv7WVN
   55OPEbmv1LYrmSs6c8PFHROMH33owUVgD9VdACJ8oXWpEOpnS/vDnMuml
   yt5V0byn9VD1jZaG5eoutv648yKSni0JDSTcdc8nxnwUeyVrKq4PpgJQe
   b2EqaF/FOAHshPQ46GwXBKbyqI67yAiX0VfgqAzLP2aobdXQgaDPmx320
   Q==;
X-CSE-ConnectionGUID: ORaH4cyhS3K6W3L67QefRw==
X-CSE-MsgGUID: Qzd+vceSQtCiJDJlpaoong==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 09 Jul 2026 16:34:54 +0800
Received: from hscmail1.internal.ite.com.tw (HSCMAIL1.internal.ite.com.tw [192.168.35.58])
	by mse.ite.com.tw with ESMTP id 6698YlOi046605;
	Thu, 9 Jul 2026 16:34:47 +0800 (+08)
	(envelope-from amber.kao@ite.com.tw)
Received: from [127.0.1.1] (192.168.37.107) by HSCMAIL1.internal.ite.com.tw
 (192.168.35.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Thu, 9 Jul
 2026 16:34:46 +0800
From: Amber Kao <amber.kao@ite.com.tw>
Subject: [PATCH v2 0/2] usb: typec: ucsi: Add ITE IT885x Type-C PD
 controller driver
Date: Fri, 10 Jul 2026 00:34:41 +0800
Message-ID: <20260710-ucsi-itepd-feature-v2-0-41943fd5df38@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQrCMBBG4auUWTsQggnoVcRFnfzRcVFLJpFC6
 d2N7fJbvLeSoSiMrsNKBV81/Uwd/jSQvMbpCdbUTd756KIL3MSUtWJOnDHWVsCXgJgEOGcJ1MO
 5IOuyT2/3w9Yeb0j9n2jbfgRq0yN2AAAA
X-Change-ID: 20260605-ucsi-itepd-feature-95e6dcee4fc5
To: Jeson Yang <jeson.yang@ite.com.tw>, Yaode Fang <Yaode.Fang@ite.com.tw>,
        Bling Chiang <Bling.Chiang@ite.com.tw>,
        Doreen Lin <doreen.lin@ite.com.tw>, Eric Su <Eric.Su@ite.com.tw>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki
 Krogerus <heikki.krogerus@linux.intel.com>
CC: <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Amber Kao <amber.kao@ite.com.tw>
X-Mailer: b4 0.15.2
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 HSCMAIL1.internal.ite.com.tw (192.168.35.58)
X-TM-SNTS-SMTP:
	BF3E59F43647E0F07F30504CC29A9846A379E69FE69E45CC3EB0B38728FB00C42002:8
X-MAIL:mse.ite.com.tw 6698YlOi046605
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.34 / 15.00];
	DATE_IN_FUTURE(4.00)[7];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ite.com.tw,quarantine];
	R_DKIM_ALLOW(-0.20)[ite.com.tw:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323458-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[amber.kao@ite.com.tw,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jeson.yang@ite.com.tw,m:Yaode.Fang@ite.com.tw,m:Bling.Chiang@ite.com.tw,m:doreen.lin@ite.com.tw,m:Eric.Su@ite.com.tw,m:gregkh@linuxfoundation.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heikki.krogerus@linux.intel.com,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:amber.kao@ite.com.tw,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amber.kao@ite.com.tw,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ite.com.tw:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ite.com.tw:from_mime,ite.com.tw:email,ite.com.tw:mid,ite.com.tw:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4979A72E718

This series adds Device Tree bindings and minimal UCSI driver
support for the ITE IT885x USB Type-C Power Delivery controller
over I2C.

Per Heikki's review of v1, this series has been split into smaller,
self-contained patches. This version drops the Alternate Mode
support, the UCSI command-translation hook, and the auxiliary-bus
core/client split entirely. The driver now does nothing more than
register the UCSI ports and partners. Alternate Mode support and
the auxiliary-bus split will follow in later series, once each
feature can be reviewed on its own.

Note: This driver has not been tested on physical hardware. Runtime
verification was performed by building the module out-of-tree
against the currently running kernel's headers and loading it on an
x86_64 virtual machine, using i2c-stub with manual device
instantiation to trigger probe().

Testing performed:
- checkpatch.pl --strict: no errors or warnings
- dt_binding_check / dtbs_check: no errors or warnings
- Sparse (C=2 CF="-D__CHECK_ENDIAN__"): no errors or warnings
- checkstack.pl: no functions exceed 512-byte stack limit on
  x86_64, arm64, arm32, and ppc64le
- Kconfig tristate: tested =m, =y, =n, allmodconfig, allnoconfig
- Cross-compilation: x86_64, arm64, arm32, ppc64le
- CONFIG_SMP and CONFIG_PREEMPT: both on and off
- Strict warning mode (W=1 EXTRA_CFLAGS=-W): no new warnings
- i2c-stub emulation with manual device instantiation: probe()
  correctly rejects devices with no IRQ resource (-ENODEV), no
  crash, module load/unload cycle clean
- Fault injection (CONFIG_FAILSLAB, fail-nth): each reachable kzalloc()/
  devm_kzalloc() in probe() was individually failed and returned -ENOMEM
  cleanly with correct teardown; the runtime IRQ/UCSI paths were not
  reachable via i2c-stub.

Note: big-endian (ppc64) cross-compilation was not tested, as
TYPEC_UCSI currently depends on !CPU_BIG_ENDIAN upstream. Byte-order
correctness was instead verified via sparse.

Signed-off-by: Amber Kao <amber.kao@ite.com.tw>
---
Amber Kao (2):
      dt-bindings: usb: Add ITE IT885x support
      usb: typec: ucsi: Add ITE IT885x Type-C PD controller driver

 .../devicetree/bindings/usb/ite,itepd-it885x.yaml  | 105 +++++++
 MAINTAINERS                                        |  12 +
 drivers/usb/typec/ucsi/Kconfig                     |  10 +
 drivers/usb/typec/ucsi/Makefile                    |   1 +
 drivers/usb/typec/ucsi/ucsi_itepd.c                | 348 +++++++++++++++++++++
 5 files changed, 476 insertions(+)
---
base-commit: 8fde5d1d47f69db6082dfa34500c27f8485389a5
change-id: 20260605-ucsi-itepd-feature-95e6dcee4fc5

Best regards,
--  
Amber Kao <amber.kao@ite.com.tw>


