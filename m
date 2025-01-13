Return-Path: <devicetree+bounces-138252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36897A0C414
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 22:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50A45160EA3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 21:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 597061D516B;
	Mon, 13 Jan 2025 21:48:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431A51C3C0D
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 21:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736804887; cv=none; b=c5MqC2cW+qywuLZtoWVpP3O42BxATthpoC+tFyo807bmylgaDEc648ca/XU2k1gnEC3ohgiD38t3r/7MmQBSeRFjxZrLqBWfCM934E37/c0SCwA/gKge2iYFBewBzCgEb90PwL0nE90F/KKS+foa9PpcNs51KsbpX6bX7DwiX9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736804887; c=relaxed/simple;
	bh=/T9wlEE2KktegrL5Ud6xAGKqat1tczm3iqBwONdixVg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=uCZQ9VWZGBZwDzbI2tkPyKgaZtUOyBAnOYMswHR/oPMUsHQXfqsskcD5fsAZ35eZ8Y4maU+aS/5rxXDfhR4QVzRYb+jDOf8tOV0B4vY1v1SpBWONyILpR8ak0S+i2d8jjIPuxxZSAj726H8Zr4MECXjq6jLdzfMY2CY6DZmz0NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXSHx-0004KA-SE; Mon, 13 Jan 2025 22:48:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXSHw-000KFY-14;
	Mon, 13 Jan 2025 22:48:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXSHx-008gzR-1c;
	Mon, 13 Jan 2025 22:48:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Jan 2025 22:47:59 +0100
Subject: [PATCH] checkpatch: suppress MAINTAINERS warning for newly added
 device tree files
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-b4-dts-mainainers-check-v1-1-794ed5749a94@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAA6KhWcC/x2MwQqDMBAFf0X27EJibMD+SvGQxpe6iGnJigjiv
 zcIc5nDzEmKIlB6NicV7KLyzVVs21CcQ/6AZapOnekexlrH756nTXkNkisoynFGXDgF4wcM0Tu
 Aav0rSHLc59d4XX8V//nOaQAAAA==
X-Change-ID: 20250113-b4-dts-mainainers-check-fa069e9c63ee
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Whitcroft <apw@canonical.com>, 
 Joe Perches <joe@perches.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>, 
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Linux ships with thousands of device trees and device tree maintainers
have indicated that they don't want to see hundreds of maintainer entries
added for them[1].

Yet, checkpatch.pl keeps warning about it, which is annoying:

  WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?

Avoid this by making the warning conditional on the file not having a
.dts or .dtsi extension.

Link: https://lore.kernel.org/all/e3b73baf-b36b-17c0-f414-bbf2dd746411@linaro.org/ [1]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/checkpatch.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 7b28ad3317427a6bf9e27b77065aa3915cb13053..269cfa459162bbc00c2372cfcb0da709f9202a79 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3401,7 +3401,7 @@ sub process {
 		}
 
 # Check for added, moved or deleted files
-		if (!$reported_maintainer_file && !$in_commit_log &&
+		if (!$reported_maintainer_file && !$in_commit_log && $realfile !~ /\.(dts|dtsi)$/ &&
 		    ($line =~ /^(?:new|deleted) file mode\s*\d+\s*$/ ||
 		     $line =~ /^rename (?:from|to) [\w\/\.\-]+\s*$/ ||
 		     ($line =~ /\{\s*([\w\/\.\-]*)\s*\=\>\s*([\w\/\.\-]*)\s*\}/ &&

---
base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc
change-id: 20250113-b4-dts-mainainers-check-fa069e9c63ee

Best regards,
-- 
Ahmad Fatoum <a.fatoum@pengutronix.de>


