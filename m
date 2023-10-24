Return-Path: <devicetree+bounces-11455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB52C7D5CFF
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:18:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58140281A28
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6FA23F4A7;
	Tue, 24 Oct 2023 21:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="GFPZJn7e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD733E496;
	Tue, 24 Oct 2023 21:18:28 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED03F10D4;
	Tue, 24 Oct 2023 14:18:25 -0700 (PDT)
Received: from notapiano.myfiosgateway.com (unknown [IPv6:2600:4041:5b1a:cd00:524d:e95d:1a9c:492a])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 93039660733F;
	Tue, 24 Oct 2023 22:18:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698182304;
	bh=0Kx46hWoZhd9AjDuAvZ/QtThbE95Ul2nr4W8t1nPEqU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GFPZJn7e29ISpv4p52Xuk4yP7rl53n3xQUBib7y7FRi2gXcPpmesDmuyR6V3Bsq2Y
	 3vRYuVOEBxw9uANbny7I5pCBWlVgXEndGAGlBXRp3ZwBSB/XHhaglQgROH4O6WT+7I
	 D9ZV/hT0i8OYXpBYLt9RNBqREQZnHGWxYqA+fT6gKtglfoL/kmGo36ub9CKqnbjWkQ
	 3uupgyKnJidGFChQTbGUnJ5oZWjXXPl0fKJGIIuY3M82M22MEvILFa+3o8JWBZKuze
	 VOJfyp8bzJpIlA8Qj7EL+8AvAXSr9x+qJ0GMrzpO0kiQEHl8XfuLBh+e2/4NHvdhpG
	 eFuF80qTSu47g==
From: =?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>
To: Shuah Khan <shuah@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-kselftest@vger.kernel.org,
	kernel@collabora.com,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/2] kselftest: Add test to verify probe of devices from discoverable busses
Date: Tue, 24 Oct 2023 17:17:59 -0400
Message-ID: <20231024211818.365844-2-nfraprado@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231024211818.365844-1-nfraprado@collabora.com>
References: <20231024211818.365844-1-nfraprado@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add a new test to verify that all expected devices from discoverable
busses (ie USB, PCI) on a given Devicetree-based platform have been
successfully instantiated and probed by a driver.

The per-platform list of expected devices is selected based on
compatible and stored under the boards/ directory.

The tests encode the devices to test for based on the hardware topology.
For USB devices, the format is:
usb <test_name> <controller_address>[,<additional_match>] <ports_path> <configuration> <interfaces>

The additional match field is optional and used to differentiate between
two busses (USB2 and USB3) sharing the same USB host controller.

For PCI devices, the format is:
pci <test_name> <controller_address> <device-function_pairs_path>

Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>

---

 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/devices/.gitignore    |   1 +
 tools/testing/selftests/devices/Makefile      |   8 +
 .../devices/test_discoverable_devices.sh      | 165 ++++++++++++++++++
 4 files changed, 175 insertions(+)
 create mode 100644 tools/testing/selftests/devices/.gitignore
 create mode 100644 tools/testing/selftests/devices/Makefile
 create mode 100755 tools/testing/selftests/devices/test_discoverable_devices.sh

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 3b2061d1c1a5..7f5088006c3c 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -13,6 +13,7 @@ TARGETS += core
 TARGETS += cpufreq
 TARGETS += cpu-hotplug
 TARGETS += damon
+TARGETS += devices
 TARGETS += dmabuf-heaps
 TARGETS += drivers/dma-buf
 TARGETS += drivers/s390x/uvdevice
diff --git a/tools/testing/selftests/devices/.gitignore b/tools/testing/selftests/devices/.gitignore
new file mode 100644
index 000000000000..e3c5c04d1b19
--- /dev/null
+++ b/tools/testing/selftests/devices/.gitignore
@@ -0,0 +1 @@
+ktap_helpers.sh
diff --git a/tools/testing/selftests/devices/Makefile b/tools/testing/selftests/devices/Makefile
new file mode 100644
index 000000000000..ff2fdc8fc5e2
--- /dev/null
+++ b/tools/testing/selftests/devices/Makefile
@@ -0,0 +1,8 @@
+TEST_PROGS := test_discoverable_devices.sh
+TEST_GEN_FILES := ktap_helpers.sh
+TEST_FILES := boards
+
+include ../lib.mk
+
+$(OUTPUT)/ktap_helpers.sh:
+	cp ../dt/ktap_helpers.sh $@
diff --git a/tools/testing/selftests/devices/test_discoverable_devices.sh b/tools/testing/selftests/devices/test_discoverable_devices.sh
new file mode 100755
index 000000000000..91842b0c769f
--- /dev/null
+++ b/tools/testing/selftests/devices/test_discoverable_devices.sh
@@ -0,0 +1,165 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (c) 2023 Collabora Ltd
+#
+# This script tests for presence and driver binding of devices from discoverable
+# busses (ie USB, PCI) on Devicetree-based platforms.
+#
+# The per-platform list of devices to be tested is stored inside the boards/
+# directory and chosen based on compatible.
+#
+
+DIR="$(dirname "$(readlink -f "$0")")"
+
+source "${DIR}"/ktap_helpers.sh
+
+KSFT_FAIL=1
+KSFT_SKIP=4
+
+retval=0
+
+usb()
+{
+	name="$1"
+	controller="$2"
+	path="$3"
+	configuration="$4"
+	interfaces="$5"
+
+	# Extract additional match if present
+	if [[ "$controller" =~ , ]]; then
+		additional_match=${controller#*,}
+		address=${controller%,*}
+	else
+		address="$controller"
+	fi
+
+	for controller_uevent in /sys/bus/usb/devices/usb*/uevent; do
+		if grep -q "OF_FULLNAME=.*@$address$" "$controller_uevent"; then
+			# Look for additional match if present. It is needed to
+			# disambiguate two USB busses that share the same
+			# controller.
+			if [ -n "$additional_match" ]; then
+				if ! grep -q "$additional_match" "$controller_uevent"; then
+					continue
+				fi
+			fi
+			dir=$(basename "$(dirname "$controller_uevent")")
+			busnum=${dir#usb}
+		fi
+	done
+
+	usbdevs=/sys/bus/usb/devices/
+
+	IFS=,
+	for intf in $interfaces; do
+		devfile="$busnum"-"$path":"$configuration"."$intf"
+
+		if [ -d "$usbdevs"/"$devfile" ]; then
+			ktap_test_pass usb."$name"."$intf".device
+		else
+			ktap_test_fail usb."$name"."$intf".device
+			retval=$KSFT_FAIL
+		fi
+
+		if [ -d "$usbdevs"/"$devfile"/driver ]; then
+			ktap_test_pass usb."$name"."$intf".driver
+		else
+			ktap_test_fail usb."$name"."$intf".driver
+			retval=$KSFT_FAIL
+		fi
+	done
+}
+
+pci()
+{
+	name="$1"
+	controller="$2"
+	path="$3"
+
+	IFS=$'\n'
+	while read -r uevent; do
+		grep -q "OF_FULLNAME=.*@$controller$" "$uevent" || continue
+
+		# Ignore PCI bus directory, since it will have the same backing
+		# OF node, but not the PCI devices as subdirectories.
+		[[ "$uevent" =~ pci_bus ]] && continue
+
+		host_dir=$(dirname "$uevent")
+	done < <(find /sys/devices -name uevent)
+
+	# Add * to each level of the PCI hierarchy so we can rely on globbing to
+	# find the device directory on sysfs.
+	globbed_path=$(echo "$path" | sed -e 's|^|*|' -e 's|/|/*|')
+	device_path="$host_dir/pci*/$globbed_path"
+
+	# Intentionally left unquoted to allow the glob to expand
+	if [ -d $device_path ]; then
+		ktap_test_pass pci."$name".device
+	else
+		ktap_test_fail pci."$name".device
+		retval=$KSFT_FAIL
+	fi
+
+	if [ -d $device_path/driver ]; then
+		ktap_test_pass pci."$name".driver
+	else
+		ktap_test_fail pci."$name".driver
+		retval=$KSFT_FAIL
+	fi
+}
+
+count_tests()
+{
+	board_file="$1"
+	num_tests=0
+
+	# Each USB interface in a single USB test in the board file is a
+	# separate test
+	while read -r line; do
+		num_intfs=$(echo "$line" | tr -dc , | wc -c)
+		num_intfs=$((num_intfs + 1))
+		num_tests=$((num_tests + num_intfs))
+	done < <(grep ^usb "$board_file" | cut -d ' ' -f 6 -)
+
+	num_pci=$(grep -c ^pci "$board_file")
+	num_tests=$((num_tests + num_pci))
+
+	# Account for device and driver test for each of the tests listed in the
+	# board file.
+	num_tests=$((num_tests * 2))
+	echo $num_tests
+}
+
+ktap_print_header
+
+plat_compatible=/proc/device-tree/compatible
+
+if [ ! -f "$plat_compatible" ]; then
+	ktap_skip_all "No board compatible available"
+	exit "$KSFT_SKIP"
+fi
+
+compatibles=$(tr '\000' '\n' < "$plat_compatible")
+
+for compatible in $compatibles; do
+	if [ -f boards/"$compatible" ]; then
+		board_file=boards/"$compatible"
+		break
+	fi
+done
+
+if [ -z "$board_file" ]; then
+	ktap_skip_all "No matching board file found"
+	exit "$KSFT_SKIP"
+fi
+
+echo "# Using board file: " "$board_file"
+
+ktap_set_plan "$(count_tests "$board_file")"
+
+source "$board_file"
+
+ktap_print_totals
+exit "${retval}"
-- 
2.42.0


