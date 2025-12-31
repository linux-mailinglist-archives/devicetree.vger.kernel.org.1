Return-Path: <devicetree+bounces-250710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25ACEB390
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 05:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F21873013E8D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B004925B1C7;
	Wed, 31 Dec 2025 04:24:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mta21.hihonor.com (mta21.hihonor.com [81.70.160.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD8519067C
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.70.160.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767155078; cv=none; b=VJaFWtICyO1XUynoGJk3irJaSr+W3QQZMJIhpMQvXE7cT82Sk4ZI0ci8atGjX369bCZYd3eBr1sERU9w+8YFUEEeuyVjlez6LSgjWnrGdsK1GyOuXlDO1ptQzD2FPNiUnUDMQdQUkrx/xXP0ZBkZepveDhWRFWeSSZwpteBwhi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767155078; c=relaxed/simple;
	bh=JpLx6u3RByxab3q3MrhMfN7CnJn4EZI9DVrHWKKHDXQ=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=MUQPtGxkqdZJmR211h98yL5pCyPn2ZfubsByhQb+YD8AQF05KgGpCY+BloH/d7HnxFdApAuREqy+Cx8ucEAydptu4nhILs6ii4qanRQpDjr5kTf13rcFQZNG4ysfeQvDTOKILm2UEfLeTZZ/oJdHRRhXs9N9qejeTD3ceQewiEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=honor.com; spf=pass smtp.mailfrom=honor.com; arc=none smtp.client-ip=81.70.160.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=honor.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=honor.com
Received: from w012.hihonor.com (unknown [10.68.27.189])
	by mta21.hihonor.com (SkyGuard) with ESMTPS id 4dgxDz3CqTzYkxqq
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:05:07 +0800 (CST)
Received: from a002.hihonor.com (10.68.31.193) by w012.hihonor.com
 (10.68.27.189) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.27; Wed, 31 Dec
 2025 12:07:53 +0800
Received: from a002.hihonor.com ([fe80::a01d:4706:c5b4:4c15]) by
 a002.hihonor.com ([fe80::a01d:4706:c5b4:4c15%7]) with mapi id 15.02.2562.027;
 Wed, 31 Dec 2025 12:07:43 +0800
From: huangchangchang 00018334 <huangchangchang@honor.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC: liaoguangrong 00030419 <liaoguangrong@honor.com>, yuanlinyu
	<yuanlinyu@honor.com>
Subject: query of unexpected behavior with the 'of_find_device_by_node()'
 function
Thread-Topic: query of unexpected behavior with the 'of_find_device_by_node()'
 function
Thread-Index: Adx6Cv+RU5z6WiQlR/KOE6N/sWHQsw==
Date: Wed, 31 Dec 2025 04:07:43 +0000
Message-ID: <d48e993368f0417fbcf1f57f60934d0b@honor.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Linux Kernel Community,

I'm currently working on a custom LCD driver on an ARM-based SoC ("Qualcomm=
 Snapdragon 8850") running Linux kernel version 6.12.38-android16-5-ge01589=
ce999a-abogki361520241-4k.

I've encountered an unexpected behavior with the `of_find_device_by_node()`=
 function. I have the following code snippet:

```c
11286 dsi_device =3D of_find_device_by_node(NULL);
11287 if (dsi_device)
11288     LCD_INFO("hcc ****\n");
```c

When this code executes, I observe that dsi_device is not NULL. Instead, it=
 points to a struct device that appears to be a reg-dummy device. Consequen=
tly, the LCD_INFO message "hcc ****" is printed.
My understanding of of_find_device_by_node(NULL) is that it should typicall=
y return NULL, as the function expects a valid struct device_node * argumen=
t to find a device associated with a specific device tree node. Passing NUL=
L does not refer to any specific node, and thus I would expect no device to=
 be found.
Could you please clarify:
1.    Is this behavior (of of_find_device_by_node(NULL) returning a reg-dum=
my device) considered normal or expected under any specific circumstances, =
kernel configurations, or platforms?
2.    If not, what could be the potential reasons for this observed behavio=
r in my setup? Could it indicate a specific local modification or patch in =
my kernel sources that alters this function's behavior?
Any insights or guidance would be greatly appreciated.

Thank you.

