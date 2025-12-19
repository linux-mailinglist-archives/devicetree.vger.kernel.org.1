Return-Path: <devicetree+bounces-248074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5048BCCEA89
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5133B301918E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8E92D47E9;
	Fri, 19 Dec 2025 06:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="PWLpySN9";
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="Jkf18CPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90C7A2C17A0;
	Fri, 19 Dec 2025 06:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.130.44.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766126409; cv=none; b=Mg3uJKx1Lkd0ppCDmM4Bw685MfXd9kWgdeBSK1o9xT5ZZz1aZHOK/bD7bUEsLZIPvixrMaW8kP6BbRzpXRhLjv4spB8RkScSKvAEqjq3pQqRZMCfN9LAgBX6NufFEpmcfXTxT80gH34chHlyIF6DtwtOdzBR2NlcIZuqUykDlJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766126409; c=relaxed/simple;
	bh=WeSvhySpxWYrxwFbJF7mP7FTo6Zga4jsmV8Rc8k76jA=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=EA9UtXSevrHNpzYZSzV1W87kWjjM5+ww0DIwzwFfLXrZpkFtQCfNyQtY5vdN9acYSb+3YfpW/0q3HEeycaBSqufNiMLJOA3I0LDefyBPhT8uAsckKcL9rb2YwyzhjSMV2epIA3I6sxlhSQAFjGnnq7mb2x354o8B8vWqUGaYtn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com; spf=pass smtp.mailfrom=richtek.com; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=PWLpySN9; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=Jkf18CPz; arc=none smtp.client-ip=220.130.44.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=richtek.com
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1766126405;
	bh=TJf0D7C9n5cK6PmqNoA3FJHpZ4cKwWfHCJEORBgmpJQ=; l=541;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=PWLpySN9t1ZqfwY3vSH3HGhbWEcOSUrgP246mu1yKET7Il4Vy8hPPxTbAQHGJMMaK
	 RtPO7ThkZX5anx9d54c3JNJYes4zIUUq4VNDZhOrF78AATQBKONwdkas70njRdF5kK
	 u7a495gFL7Y7Xcsa7oc12U3p87mhTAm35O9wtWW1sqrmszUal86oLKPR8n/15X6vdl
	 O/clkOStdwPJoCt8nwQZQbvBZzW0TLZA8klIO48RhQE5YW1fTqRJM4mPAIOqSUrUUt
	 z8IZpsYg1b/vj5XCPjVRxd14NkKBuGs9zkv72kgSYOvvjCf+CHlor7+BmWEGALnHOL
	 P8x59FpWDAVDQ==
Received: from 192.168.8.21
	by mg.richtek.com with MailGates ESMTP Server V3.0(1128081:0:AUTH_RELAY)
	(envelope-from <prvs=144339BFC1=cy_huang@richtek.com>); Fri, 19 Dec 2025 14:40:03 +0800 (CST)
X-MailGates: (compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1766126403;
	bh=TJf0D7C9n5cK6PmqNoA3FJHpZ4cKwWfHCJEORBgmpJQ=; l=541;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=Jkf18CPz1fA330qh7NxoLsbn7U0hxRUHsbUNh34vvy1irCd5eyuWOaXR17WtfvvCV
	 OyYIfeCGjHnsCxMlPsTJls+BLIvH35loF3X6mUK2ctDVTzpy3xpzvQx0YQtfWuJDoj
	 MaRUbTawK93JkEq49ABCPHw5SKmK3jpfi/uzNTo1g4QwGZsQAL/WbhSEW7epTnSx1H
	 T0/FLy12DViomF6Ib//dFgf2MZAY0wWtDUxNBZFkALDUHGqU8uXkN+fMUlwDd3sctM
	 JpfzyhMfy4V1Xd9TtU/OhoXybIrJb9PmI3T7Ly18oojatewnUKKPUvfz9wiKZ0n6r3
	 A1Yv69JflEJXw==
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(2572444:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Fri, 19 Dec 2025 14:36:28 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.26; Fri, 19 Dec
 2025 14:36:24 +0800
Received: from git-send.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1748.26 via Frontend
 Transport; Fri, 19 Dec 2025 14:36:24 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, ChiYuan Huang <cy_huang@richtek.com>,
	Alan Lan <alan_lan@richtek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] Add Richtek RT8092 support
Date: Fri, 19 Dec 2025 14:36:18 +0800
Message-ID: <cover.1766125676.git.cy_huang@richtek.com>
X-Mailer: git-send-email 2.43.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: ChiYuan Huang <cy_huang@richtek.com>

This patch series add rt8092 regulator support.

ChiYuan Huang (2):
  dt-bindings: regulator: rt5739: Add compatible for rt8092
  regulator: Add rt8092 support

 .../bindings/regulator/richtek,rt5739.yaml    |   5 +
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/rt8092.c                    | 313 ++++++++++++++++++
 4 files changed, 328 insertions(+)
 create mode 100644 drivers/regulator/rt8092.c


base-commit: ea1013c1539270e372fc99854bc6e4d94eaeff66
-- 
2.34.1


