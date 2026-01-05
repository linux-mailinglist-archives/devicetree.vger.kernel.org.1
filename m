Return-Path: <devicetree+bounces-251474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E08BDCF3646
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 12:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E13303009128
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 11:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF5B324716;
	Mon,  5 Jan 2026 11:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="1mGK7dFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB383101CD;
	Mon,  5 Jan 2026 11:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614372; cv=none; b=WRhBkdcHLVUm+7ZTqK1SBoEBf4egJ/X8Dh/JZLgGHrb5B0WlyMLDuNSt7lVPgQtB8kRUTZJRaEF7McWFH02DMJJ8qN53wQrwm2Dp6X0jP7WHBu7pcT08mJTooUTlys2zJD/bNS2/5FABqSS+Uq3c+8C/n5/W+yLtCPfzoPEPTf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614372; c=relaxed/simple;
	bh=+3yOfx7ZSt7ulyyV8vw1m4VMWXg69NhTENVtddAx8AI=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JqPGsmS3e0L3LG5viXrb4btCOyTT2GXJGGK+AnoHLyVwm/y8Xd2oWOCYlwcCEqK5wIGPvqQmZ8f9UVZhHn3EE/YHDh4cFDOZHW18r4xKA9Fpih7zmhWdV4axPeVk1sJGyhEOfMsrXEgkVok7tCyPOc9iobhhTp+LBjh5ZFd7svY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=1mGK7dFS; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605BlbIJ3540092;
	Mon, 5 Jan 2026 06:59:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=gYD/naRisGBRXQ6Si5NaPrx5cy3
	24lHhoEPvgjMDJ+Q=; b=1mGK7dFS/laPqrwqWi5m1Qm5VEkiWaz4C2BUo4ZM9rV
	9rjt91erb5//wVEqw40sPvEbI1lIaT66H20hYYDcWKA3KUyAG0yPxVcThUOBSonl
	2+FB8sI51R61cFIJw3eAjbqM5ch8B1JqwcmmE2878dPusKfSUOs4SVOn+WCHI63S
	i41MgN2x9beK5Kz3PKEJNkpLpQqGe5r0i8iq3F1LL0m4bcARqzL/GfJegeeECykG
	8gM0/5at/rdAnpqAaSTHqD7XHKLB6X8W1WduKfY6wm4D0riqtLBQf8ocnR2Uh2wb
	DO7O0heI5c36HVBJGMbAcGzyA62vv7VNHeLYWAFxlUA==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bewu4g8u3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 06:59:15 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 605BxEET037584
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Jan 2026 06:59:14 -0500
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Mon, 5 Jan 2026 06:59:14 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Mon, 5 Jan 2026 06:59:14 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Mon, 5 Jan 2026 06:59:14 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 605BwsSs014872;
	Mon, 5 Jan 2026 06:58:57 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
        Antoniu Miclaus
	<antoniu.miclaus@analog.com>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] Add support for ADG1736 Dual 2:1 Multiplexer
Date: Mon, 5 Jan 2026 13:57:55 +0200
Message-ID: <20260105115825.57032-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEwNSBTYWx0ZWRfXz1NOFMpI59QX
 8Jb+VUN8Vx8oZEQ1PICZ89btSlLwmrmkf/j6p4r+Il8W+CLY9bcEaCTqTYmFRE0hq5jr4LAsH9d
 c6Lbx8gtzzPpjDhfUCSgW1B8qv7qlU3SZE8Rbb8OjbKOFgwoUSu9ILxWSxfafIIH0DXRpTJlRmm
 HXY7Vgjs28v5b+Pl/GxE3DpfbMBRBfz6ISgCsoIGVIZusJtk22YroSIG4rNgL6sZ0gTPawCRBpn
 cmqNJEjDaJKgfRFpYAyUdaUdwwoi/B3AblYOx/bDVAWb2TqlS+jac4NXzfJx53uzb0DXljxKRhG
 z26WT4Z4BSe4wo/kqxE7CZ5h0OJLiONyHc4I1d5pfjj+D3bkh+u+YtqZghTWGk+8uLOb1AC6DQg
 ZhRV6HJP/vbyHAkBCrnPBdLId2D3eM7BGoHZmaIuWLC5vuMAZdOw5XjnLDiRaAbq26FaO2/poRW
 l5dU75v+4AgtbB3KEQw==
X-Authority-Analysis: v=2.4 cv=X5hf6WTe c=1 sm=1 tr=0 ts=695ba793 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=1Oaf8meqH_eina68J-QA:9 a=FRP3Pcshrw8A:10 a=A81Fa01t6NIA:10
X-Proofpoint-GUID: vn3Q91ZhE7LOQA68-bSZMRY66_Qm6tn9
X-Proofpoint-ORIG-GUID: vn3Q91ZhE7LOQA68-bSZMRY66_Qm6tn9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 clxscore=1015 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050105

This series adds support for the Analog Devices ADG1736, an analog
multiplexer containing two independent 2:1 switches.

Each multiplexer can connect its common output to one of two input
channels, controlled by individual GPIO pins. The device supports
per-multiplexer idle-state configuration and has a shared enable pin
for disabling all multiplexers simultaneously.

Datasheet: https://www.analog.com/en/products/adg1736.html

Antoniu Miclaus (2):
  dt-bindings: mux: adg1736: add support
  mux: adg1736: add driver support

 .../devicetree/bindings/mux/adi,adg1736.yaml  |  75 ++++++++++
 drivers/mux/Kconfig                           |  12 ++
 drivers/mux/Makefile                          |   2 +
 drivers/mux/adg1736.c                         | 140 ++++++++++++++++++
 4 files changed, 229 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg1736.yaml
 create mode 100644 drivers/mux/adg1736.c

-- 
2.43.0


