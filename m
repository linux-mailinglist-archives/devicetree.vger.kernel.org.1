Return-Path: <devicetree+bounces-150454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B7A42335
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 15:36:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FD413B9115
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A1EF155308;
	Mon, 24 Feb 2025 14:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="IS0VP8m5"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011501.me.com (pv50p00im-zteg10011501.me.com [17.58.6.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A069815350B
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 14:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740407306; cv=none; b=FHrBy8hkS1DVCSWLLWTAWnEJjdzR2FwVq1dSnZt5J1rnzNOT4yMqFgUm7fVAbIm/7z7XRHRCWbLfb4xiTF39VhYT+ShFLuDmYbUXw4P+yfZQs1FusDEsZT/CHZXDxvQPlQqSwHl6U2q6B7TY2ocYfu26oDj7BHULdO3SXOVeICM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740407306; c=relaxed/simple;
	bh=2JMalLgjfRK25edIOS9ES/uni0TwoR7K+RntbNRCyu0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ALWafktKX9dmXSyFnRgmwViwOthUAXK70nSUhcT4mk5YRoNenFULzCIVDRUtLs+Lcbd0yMtuq65UtsMZzzt40ApiSJN15+dOJz/TYweu+4Svzk8S9hePNRt+gsjxf6Nsl7t4a/52UByOtwwG/gIihUJNRNa+I7AH4gQNC9fDT2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=IS0VP8m5; arc=none smtp.client-ip=17.58.6.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=Uj/PxR9uqsWz2zubPEqUz7qmP4inCOwAhIXu45X2hMA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:x-icloud-hme;
	b=IS0VP8m5wOBRPt9NmB6TcocaYEJpYH4F3oGiCDSf73FeGO3K3//FBuyrKSHEbEFmi
	 +wC3L6s/RJTiT2BRcRp4LAhFQWfpWCbxz1PuPcwcB1yTlLCJHmt8ySr2WtBM5yC3yl
	 mmusTAhqoFPxvmR2I9aUE4kdnX8ljADPX72eunpNc6z8VrRF+qA2MPmvMGeQyvicSB
	 pF8Mrf1NuODZl4Np0BzaO5dogXKZaL+5KRInHd9877PHDc7Q+8qjaw4c+nFlJsUdC7
	 mwwyJ9L0ZUtUG1fXaKZOoYL0Ww7T9VC9QFZtn4w9j9eQ7tqp/Y5RrSw8Zqn+Y2cFwD
	 5g84YzRA0hwhw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011501.me.com (Postfix) with ESMTPSA id DA8794A0237;
	Mon, 24 Feb 2025 14:28:21 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH 0/5] of: Trivial cleanup
Date: Mon, 24 Feb 2025 22:27:56 +0800
Message-Id: <20250224-of_bugfix-v1-0-03640ae8c3a6@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOyBvGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQyMD3fy0+KTS9LTMCl1DM1MLQ0tDy0QTEzMloPqColSgMNis6NjaWgB
 RUltbWwAAAA==
X-Change-ID: 20250120-of_bugfix-16581919a446
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: Gc5ElloVhbbKVDSgojrej0nZgjtN4HDv
X-Proofpoint-ORIG-GUID: Gc5ElloVhbbKVDSgojrej0nZgjtN4HDv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_06,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0 mlxscore=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 mlxlogscore=736
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2502240104
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

This patch series is to do some trivial cleanup.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Zijun Hu (5):
      of: Compare property names by of_prop_cmp() in of_alias_scan()
      of: Introduce and apply private is_pseudo_property()
      of: Correct property name comparison in __of_add_property()
      of: Do not change property state under __of_add_property() failure
      of/platform: Do not use of_get_property() to test property presence

 drivers/of/base.c       | 12 +++++-------
 drivers/of/of_private.h |  7 +++++++
 drivers/of/overlay.c    |  4 +---
 drivers/of/platform.c   |  2 +-
 drivers/of/resolver.c   |  4 +---
 5 files changed, 15 insertions(+), 14 deletions(-)
---
base-commit: 7526e4fe550f51bd8c41eb51492436117917e3f1
change-id: 20250120-of_bugfix-16581919a446

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


