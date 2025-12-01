Return-Path: <devicetree+bounces-243461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BE06DC97D57
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D85314E1EE5
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 728803191A2;
	Mon,  1 Dec 2025 14:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b="Xill1SXy"
X-Original-To: devicetree@vger.kernel.org
Received: from xmbghk7.mail.qq.com (xmbghk7.mail.qq.com [43.163.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369772C08AD;
	Mon,  1 Dec 2025 14:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.163.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598923; cv=none; b=RZDomoDjrbsCWrOdAXN0TQCz5jP0EuvgBXc1p/VkZU0OnSO0p8QT4Y4gcDV27LiBwWFtR9Tgl66klmoaDeQmYxp8XwQNRli26JV5J7GLxZTlZvPK2aZl/bwfEIso31NsOF8OPaPYt6R0/ncJIkD9Ty8mY7xwrQK7Dp7kE4lrpj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598923; c=relaxed/simple;
	bh=T7qadSE+8ledPGDv9lUwtBmwDWP+0IvEt1OJieaycuc=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=jlZCvpjF8aQb4XmVYsS5D00FAqqnsYN/8iEEb1KuAqCJhqFG8tm1nRg5W+UwDas4MP6W+AZ0zG5lOI+MCY7uZ0VvunFuY2B/3Pio81jxtYpqZ66Ev5ab5E6NiGdDDZWUPx7b7KJGVhmVBbtRyuhoL9u3hLsG6fgfQjUOF/Tz5Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com; spf=pass smtp.mailfrom=foxmail.com; dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b=Xill1SXy; arc=none smtp.client-ip=43.163.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1764598918;
	bh=qReGk1WfsHOyiBno1NOk+49x8+G9e2IJ9Nlz9CqVvbE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Xill1SXyHXW3k7RqkqPNe1wzab++SfKlJ5IHK6qahf2eoXDBHRO9cLGk372EnThbi
	 rF0+wA5kOw6h1xzvJbpA/0gOq0IumAGsYJXGW9u0Hx+99ca0wfgFs5SJhAE1Kf/iBL
	 FRNWSmH7VNfF/2ijqzEP91DLGkzQWvLWCsK2cDEE=
Received: from localhost.localdomain ([171.223.167.52])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 57691857; Mon, 01 Dec 2025 22:21:54 +0800
X-QQ-mid: xmsmtpt1764598914t0lb6isfh
Message-ID: <tencent_8B5693A42B580AB3A5359849CCE23E67B407@qq.com>
X-QQ-XMAILINFO: MXi6VldghLL7hK2ZUnJNNfhGA7vNfcTSV2ayxRc8tgS7vHncXysYwBoc1eMLYC
	 SQek9xtZmoueH0uG8IUXw5sKNTeHa24uUsIMgypgkfvXNtFnBFlsYMHiAgC1YedDKaACYAgIQ4KK
	 V6rqIEGUn5I9gC79AaBvqZPNBMjIAcJxvJoIgPc+HermF0dniDN//EiB4Jn98eS/jg1rTdex8Om2
	 +z3YANFU+ubCe3Prjv5bp+ezrVjA/+Sn+ZXuAfbwXlrKkdw1aLZZiRnSj/E7iGin/26SYyuCk+jb
	 6xAH0cu8DWzvi6vCmvdJhyO7f4IVeo0M2irsrpet2rkGH/YWBf//BRMqy+pcHtyzuhghobt835P+
	 nnkW8rCFFhMvmepr3lVep66C2dLlWNWVQJMNLoRPAeHGw952FIlo8vVYlXdPaxtCnOHWHWCSAehL
	 niMHz5K/tgKiUjENvoCyw0b1q5YU3CZzMen/BZkQS8HYLaP+W8fAsGW7Qk9F0KROWj0R++BO7h+5
	 omACoW36iBweKMs5JS5B7htqN1rLD7ZMRzJT9WQbJIadmr12IzKtFyt/CFR9FkdINqVvdMLRF/x3
	 LEQRYyzGSa4WYmN7RCUb1CLeF61ligAV77L3Va6m8NcllS/RE3oz6vNubAZ+RsmXpzPVdh/tCBhr
	 Ba4N5mMZT+jbXXIQGU28nONBvFyi7x+aSpacK3A+RY/NvunL59u8SAfu7mSUrY1ylLLNPeftwtq/
	 /4Fuo7i5LXfhqb4/yoLFOgWkXiPW28NfWWNp+Nd4X8Kfba6wK6JFjQm6H29flrHh/0eBnHEmdbay
	 tqiRAYbCkvpM3+y4ssbfm7PozUtjPncvdzgZRPi07+PlgiBCBiwoZ/fz9Ri49V8wISYOzA/jP3D1
	 SNiAAjYeJRijxwz8cWM1m2ZoV7dgX7FUekJEPKQHhgMCZipwDIZfqTIbHZ0MGLuBNDB0jmyR9pAF
	 /aH/7zOSKssJ3tKaR5Blo0/qjFyqB0/BwyMXDx4NIywWorDW87Xvvp0DrvU7jeZYyT4t3azu8uwg
	 qNH1exvzK3oPanUsaxtqkJTQHkzFyi9MAEadYdid2h7o0xXxK392oZlxizFU8vN7XuzsbKl+Cl6X
	 08STXd
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
From: Renjun Wang <renjunw0@foxmail.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Renjun Wang <renjunw0@foxmail.com>
Subject: [PATCH RESEND 1/2] dt-bindings: display: simple: Add HannStar HSD156JUW2
Date: Mon,  1 Dec 2025 22:21:53 +0800
X-OQ-MSGID: <20251201142153.31160-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
References: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the HannStar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel to
the panel-simple compatible list.

Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 2017428d8828..918dd6d303cd 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -154,6 +154,8 @@ properties:
       - hannstar,hsd070pww1
         # HannStar Display Corp. HSD100PXN1 10.1" XGA LVDS panel
       - hannstar,hsd100pxn1
+        # HannStar Display Corp. HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel
+      - hannstar,hsd156juw2
         # Hitachi Ltd. Corporation 9" WVGA (800x480) TFT LCD panel
       - hit,tx23d38vm0caa
         # Innolux AT043TN24 4.3" WQVGA TFT LCD panel
-- 
2.39.5


