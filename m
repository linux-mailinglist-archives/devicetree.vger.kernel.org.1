Return-Path: <devicetree+bounces-276614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6C8hHCkwuWkYuAEAu9opvQ
	(envelope-from <devicetree+bounces-276614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:42:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1932D2A8287
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A5E03037150
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B413A63F8;
	Tue, 17 Mar 2026 10:33:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECFB736655E;
	Tue, 17 Mar 2026 10:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773743626; cv=none; b=c9zBx9SevKZlUdHPwQV8tlHAAIR1Lhemhwc+/mwNUtiMJopE9eHSC5/iiJznlyBUQD+4meET2LxqAv2dyCrf1nvEoX71OjR4wTfCnZrIxDLzwx2fYaq6VWMBwFCPRMw2yXeGuW+8FJH6c0ssvAl80IKNA6Re5kU8FSN5U0Lu1Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773743626; c=relaxed/simple;
	bh=d2R9tPM2+7oBoEhs9V0jHFBGqwVZRY0lEQdmAPC1DNY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NEARq7ILfVlhmM74dKLmU5hlf8b/YX5MQgEDaGm7ivoAOKZhvcqS3sOJzFwKbXPm8u9Qs75YPMmx3uJOwCL4Mm+HvQ8TXoqJ54t2iNX6wrgD45VGOv9bcVmw/qwgYqXGrQrTXFS23wUWc+3SXKeGw+B+/9CiGA9oUyMI7M1RtwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5877F1476;
	Tue, 17 Mar 2026 03:33:38 -0700 (PDT)
Received: from e142021.fritz.box (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 066BE3F7BD;
	Tue, 17 Mar 2026 03:33:41 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>
Cc: Salman Nabi <salman.nabi@arm.com>,
	Vedashree Vidwans <vvidwans@nvidia.com>,
	Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
	Nirmoy Das <nirmoyd@nvidia.com>,
	vsethi@nvidia.com,
	vwadekar@nvidia.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/8] Arm Live Firmware Activation (LFA) support
Date: Tue, 17 Mar 2026 11:33:26 +0100
Message-ID: <20260317103336.1273582-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276614-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.716];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,arm.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1932D2A8287
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi all,

this is version 2 of the Live Firmware Activation kernel support. There
were some significant changes to the code compared to the previous v1
post [1]: the images are now managed using an embedded kobject, joined
by a kset representing the /sys/firmware/lfa directory. The locking has
been overhauled, there is no longer a global lock, but just the kset
list lock, and a readers/writer lock when doing the actual SMC accesses.
Also this series now includes support for the ACPI notification, as
contributed by Veda [2] (many thanks for that!), and support for the DT
interrupt. Also there is a new sysfs switch file to allow the automatic
activation.
This is now multiple patches, mostly to help review and to give credit
to Veda's work. If people agree, some of the patches can be squashed for
submission, eventually.
More detailed changelog below.
==============================

This series implements the kernel side support of the Arm Live
Firmware Activation (LFA) specification [3]. LFA enables the activation
of updated firmware components without requiring a system reboot,
reducing downtime and allowing quicker deployment of critical bug fixes
in environments such as data centers and hyperscale systems.
It requires explicit firmware support, both via an agent running in EL3
(for instance in TF-A, already merged), but also in the firmware
component to be activated. TF-RMM recently merged support for this.

Unlike the usual firmware update process (which may use tools like
fwupd), LFA focuses solely on the activation of an already updated
firmware component, called "pending activation" in LFA lingo. This works
by signalling the LFA agent (part of the EL3 runtime firmware) via an
SMC call, which then does the heavy lifting of the live update, in
cooperation with the to-be-updated firmware component.

Key features of the driver:
* Detects LFA support in system firmware (EL3).
* Lists all firmware components that support live activation, identified
  by their GUID.
* Exposes component attributes (e.g., activation capability, and
  activation pending) via sysfs under /sys/firmware/lfa/<GUID>/.
* Provides interfaces to:
  - Trigger activation of an updated firmware component.
  - Cancel an ongoing activation if required.
A more detailed list of features can be found in patch 2/8.
Based on v7.0-rc1.

This work is conceptually similar to Intel’s Platform Firmware Runtime
Update and telemetry (PFRUT) [4] and TDX module updates [5], but
targets Arm platforms. The driver has been used to successfully activate
a Realm Management Monitor (RMM) firmware image in a controlled test
environment. RMM is analogous to Intel’s TDX module.

There is effort on similar work from the OCP [6]. Future work may
include integration with utilities like fwupd to automatically select
the appropriate driver, based on platform architecture, for Live/Runtime
firmware updates.

Please have a look, test and comment!

Best regards,
Salman and Andre

Changelog v1 .. v2:
- restrict build to arm64 (the LFA spec only supports AArch64)
- rename and extend central data structure to fw_image
- use separate GPR register sets for some SMC calls
- provide wrapper for error messages to prevent out-of-bound access
- return GUID in the "name" sysfs file when image is unknown
- fix wrong attribute in pending version number show function
- add missing include files and order them properly
- fix memory leaks in error cleanup paths
- handle lifetime using embedded kobjects and a kset
- drop global lfa_lock, use kset list lock and kobject refcount instead
- add DT binding documentation
- add timeout and watchdog re-arming (contributed by Veda)
- relax timeout period and do not block while waiting
- register ACPI notification (contributed by Veda) and DT interrupt 
- refactor ACPI notification code to allow sharing with DT code
- use faux device instead of platform driver
- add auto_activate file to control automatic activation
- introduce rwsem mutex to prevent using stale sequence ID
- use labels and goto instead of infinite loop when retrying activation
- initialise workqueue only once (thanks to Nirmoy)
- various cleanups on reported messages and code formatting
- rebase on top of v7.0-rc1

Changelog RFC .. v1:
- Updated SMCCC version 1.1 to 1.2 per the LFA specification requirement.
- Changed "image_props" array to a linked list to support the dynamic
  removal and addition of firmware images.
- Added code to refresh firmware images following a successful activation.
- Added a work_queue to handle the removal of firmware image attribute
  from it's respective kobject "_store" handle.
- Refactored prime and activate into separate functions.
- Kernel config for LFA now defaults to "y" i.e. included by default.
- Added individual kernel attribute files removal when removing the
  respective kobjects using kobject_put().
- mutex_lock added to activate_fw_image() and prime_fw_image() calls.
- Renamed create_fw_inventory to update_fw_image_node.
- Renamed create_fw_images_tree to update_fw_images_tree.
- Added two more attributes due to specs update from bet0 to bet1:
  current_version: For retrieval of the current firmware's version info.
  pending_version: For retrieval of the pending firmware's version info.
- Minor changes such as, improved firmware image names, and code comments.
- do...while loops refactored to for(;;) loops.

[1] https://lore.kernel.org/linux-arm-kernel/20260119122729.287522-1-salman.nabi@arm.com/
[2] https://lore.kernel.org/linux-arm-kernel/20260210224023.2341728-1-vvidwans@nvidia.com/
[3] https://developer.arm.com/documentation/den0147/latest/
[4] https://lore.kernel.org/all/cover.1631025237.git.yu.c.chen@intel.com/
[5] https://lore.kernel.org/all/20250523095322.88774-1-chao.gao@intel.com/
[6] https://www.opencompute.org/documents/hyperscale-cpu-impactless-firmware-updates-requirements-specification-v0-7-9-29-2025-pdf

Andre Przywara (4):
  dt-bindings: arm: Add Live Firmware Activation binding
  firmware: smccc: lfa: Add auto_activate sysfs file
  firmware: smccc: lfa: Register DT interrupt
  firmware: smccc: lfa: introduce SMC access lock

Salman Nabi (1):
  firmware: smccc: Add support for Live Firmware Activation (LFA)

Vedashree Vidwans (3):
  firmware: smccc: lfa: Move image rescanning
  firmware: smccc: lfa: Add timeout and trigger watchdog
  firmware: smccc: lfa: Register ACPI notification

 .../devicetree/bindings/arm/arm,lfa.yaml      |   45 +
 drivers/firmware/smccc/Kconfig                |   10 +
 drivers/firmware/smccc/Makefile               |    1 +
 drivers/firmware/smccc/lfa_fw.c               | 1008 +++++++++++++++++
 4 files changed, 1064 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,lfa.yaml
 create mode 100644 drivers/firmware/smccc/lfa_fw.c

-- 
2.43.0


