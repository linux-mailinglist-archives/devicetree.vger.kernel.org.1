Return-Path: <devicetree+bounces-13061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF5B7DC74C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 950E3281626
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B6710952;
	Tue, 31 Oct 2023 07:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=monolithicpower.com header.i=@monolithicpower.com header.b="l1hUwc+M"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B532010A00
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:29:38 +0000 (UTC)
Received: from mx0b-002bf204.pphosted.com (mx0b-002bf204.pphosted.com [205.220.172.86])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88902C0;
	Tue, 31 Oct 2023 00:29:37 -0700 (PDT)
Received: from pps.filterd (m0207525.ppops.net [127.0.0.1])
	by mx0a-002bf204.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39V3LBVR014430;
	Mon, 30 Oct 2023 23:58:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	monolithicpower.com; h=from:to:cc:subject:date:message-id
	:content-type:content-transfer-encoding:mime-version; s=pps1;
	 bh=8AjB/JwrB69XBwDF9L++gF7xwO/o6qmFV/TAXkdYvA8=; b=l1hUwc+MJ3Le
	SwG981NWfmlN5+T3PuZpDHmFwoxMErgRZkYyTiKCfAUK2ttTbjLL5O6gJyWAWacT
	JQFc/a+55adTVRKD6JrRcDtVkANWtVoihlnxvn37akpyE5Ygt2p4kQcqgFMRTO62
	xHbx/NEySRtLrdzABp6h0BPWIdj2Dv40o83YDWr971/20F1hAUw2L3Yz63mlljax
	a+sCOgzwbVEh74lCvsSrw1DlCpfq34lG5UoASELjRPkOCiSSsPkyjFqhRPWR9x8U
	vc1Vl0xvfFqI4c5tdCGuSxbYH0blfMg9y3NzXaPrFbpqRleRGFbsSpKygkVDSJxB
	URO3nE8mhQ==
Received: from webmail.monolithicpower.com (mps-vpn.monolithicpower.com [12.33.0.20] (may be forged))
	by mx0a-002bf204.pphosted.com (PPS) with ESMTPS id 3u0xyyunyx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 30 Oct 2023 23:58:57 -0700 (PDT)
Received: from CD-MSH02.monolithicpower.com (10.10.70.19) by
 MPS-MSH04.monolithicpower.com (10.10.10.206) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Mon, 30 Oct 2023 23:58:55 -0700
Received: from CD-MSH04.monolithicpower.com (10.10.70.213) by
 CD-MSH02.monolithicpower.com (10.10.70.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Tue, 31 Oct 2023 14:58:53 +0800
Received: from CD-MSH04.monolithicpower.com ([fe80::69c9:32c5:3392:58d]) by
 CD-MSH04.monolithicpower.com ([fe80::69c9:32c5:3392:58d%2]) with mapi id
 15.01.2242.004; Tue, 31 Oct 2023 14:58:53 +0800
From: "Yuxi (Yuxi) Wang" <Yuxi.Wang@monolithicpower.com>
To: "pavel@ucw.cz" <pavel@ucw.cz>, "lee@kernel.org" <lee@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>
CC: "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "wyx137120466@gmail.com" <wyx137120466@gmail.com>,
        "Yuxi (Yuxi) Wang"
	<Yuxi.Wang@monolithicpower.com>
Subject: [PATCH 0/2] leds: Add a driver for mp3326
Thread-Topic: [PATCH 0/2] leds: Add a driver for mp3326
Thread-Index: AdoLm4lJaIN3HyCNRxGHUTFD6lwVZg==
Date: Tue, 31 Oct 2023 06:58:52 +0000
Message-ID: <b2a603bac3aa47e2bfbcbcd7154a4166@monolithicpower.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.84.127]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: bxKeg3u0HYuvGmPBF0_9-VtJ6dx0ryBm
X-Proofpoint-ORIG-GUID: bxKeg3u0HYuvGmPBF0_9-VtJ6dx0ryBm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_13,2023-10-31_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxlogscore=645
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2310240000
 definitions=main-2310310053

Add the binding description and the corresponding driver for
the mps mp3326.

Signed-off-by: Yuxi Wang <Yuxi.Wang@monolithicpower.com>
Yuxi Wang (2):
  dt-bindings: leds: add mps mp3326 LED
  leds: add mp3326 driver

 .../devicetree/bindings/leds/leds-mp3326.yaml | 184 +++++
 drivers/leds/Kconfig                          |   7 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-mp3326.c                    | 632 ++++++++++++++++++
 4 files changed, 824 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-mp3326.yaml
 create mode 100644 drivers/leds/leds-mp3326.c

--=20
2.25.1

