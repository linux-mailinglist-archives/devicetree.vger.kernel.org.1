Return-Path: <devicetree+bounces-108381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D960699278D
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 10:52:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59559B23296
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 08:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922F218C02D;
	Mon,  7 Oct 2024 08:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="mLEMjr1y"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1D318BBA6
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728291155; cv=none; b=XLun+QTZFL5q1xKshas1rbbEgM+4ft0LBdGfrtr7FKb0D09UjqwB1A57AOO2YUmC+AVY1Xf2DvSp0Ng0jg8AMPgOJ6/m9jTPX2vvkevfAVyayKXfjVSojpGTuOSPS3jbkxf8IRUmpcVKWt0fu0/PhOEKtn15/IqN7CsPg1UHHXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728291155; c=relaxed/simple;
	bh=rjJs6/+LBe3JuPUUwumlHtFe+K7btVqCHR1LK6ewR6U=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BdST2kDb49FAEjX4RKZC3C3MpXkQIo5a2pe9/ha18FDsz8WkZSH/nsHHjRed1IMbWeGbh17o8PR0UP0oes2oxnzc7hllsfWJ0HYYoW3CeYqfg+wXo/ym/axoJOUskzPhKVxzBLXY5jfW27Gn4nGOmd9HmJrv2lZwILhRwE94BYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=mLEMjr1y; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1728291142; x=1730883142;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rjJs6/+LBe3JuPUUwumlHtFe+K7btVqCHR1LK6ewR6U=;
	b=mLEMjr1y3msfWoq/Or0z7TjbfsMZKUVcyzT+6v2CpYPpT6y3557aRfr5+aRGM11c
	UvP3/zhcGgiGNHcMQsI8KYX2ncPjwCT3XID3Rqyvn7pENf7zAeaonc3YFREGEMCr
	VfrMOgNKqN9QvqHgEBzCccsBTq48qlBSvbiGmNTuHKQ=;
X-AuditID: ac14000a-4637f70000004e2a-f5-6703a145764b
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 33.A0.20010.641A3076; Mon,  7 Oct 2024 10:52:22 +0200 (CEST)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Mon, 7 Oct 2024
 10:52:21 +0200
From: Wadim Egorov <w.egorov@phytec.de>
To: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
CC: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<simona@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<bbrezillon@kernel.org>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
	<robh@kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH v2 0/2] Introduce bus-width property for input bus format
Date: Mon, 7 Oct 2024 10:52:11 +0200
Message-ID: <20241007085213.2918982-1-w.egorov@phytec.de>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsWyRpKBR9dtIXO6wckzwhYnri9isri/+DOL
	xeqW6YwWa/aeY7KYf+Qcq8WVr+/ZLJ7PX8docfLNVRaLl7PusVl0TlzCbnF51xw2i4Uft7JY
	tHUuY7V4v/MWo8WkeTdZLf7v2cFuMfvdfnaLLW8mslp0v1N3EPbY+20Bi8fOWXfZPWZ3zGT1
	WLznJZPHplWdbB4nJlxi8rhzbQ+bx7yTgR73u48zefR3t7B6bD5d7fF5k1wATxSXTUpqTmZZ
	apG+XQJXxtzf75kL9rFVHD3/gLWBcSFrFyMnh4SAicTzRX1ANheHkMASJomGj5uYIZxHjBL3
	v7xmBKliE1CXuLPhG1iHiICfxK0v+9hBipgFNjFLfH69GywhLOApMfv0JGYQm0VAReLunttg
	Nq+ApcT/vxfZINbJS8y89J0dIi4ocXLmExYQmxko3rx1NjOELSFx8MULMFsIKP7i0nIWmN5p
	514zQ9ihEkc2rWaawCgwC8moWUhGzUIyagEj8ypGodzM5OzUosxsvYKMypLUZL2U1E2MoNgU
	YeDawdg3x+MQIxMH4yFGCQ5mJRHeiDWM6UK8KYmVValF+fFFpTmpxYcYpTlYlMR5V3cEpwoJ
	pCeWpGanphakFsFkmTg4pRoYeS2L5u/6/ezzE5e4LaqP1RWcF+foSUcIrZnnyR+gFywtW1rG
	e0BCvelbu93BKsdiyxmOLg6MZlxxky/kd6otuWEi6sd6bt/q+w+8VNIf/FYx1Znet7DAqvf8
	2eZHF7c8vJTVqZgvIJBYrKfg73Tsbgw329Rcr0/z7r3rdLln8tz+WtLuLbpKLMUZiYZazEXF
	iQDYfVnFuwIAAA==

This patch series introduces a bus-width property for the SI9022 HDMI
transmitter, allowing the input bus format to be configured based on the
number of RGB input pins. The default is set to 24-bit if unspecified.

v2:
  - Reorder patches to have dt-bindings go first
  - Use bus-width instead of data-lines as suggested by Krzysztof
  - Handle default case separately as an error case

v1: https://lore.kernel.org/lkml/20241003082006.2728617-1-w.egorov@phytec.de/T/

Wadim Egorov (2):
  dt-bindings: display: bridge: sil,sii9022: Add bus-width
  drm/bridge: sii902x: Set input bus format based on bus-width

 .../bindings/display/bridge/sil,sii9022.yaml  | 15 +++++++++-
 drivers/gpu/drm/bridge/sii902x.c              | 28 ++++++++++++++++++-
 2 files changed, 41 insertions(+), 2 deletions(-)

-- 
2.34.1


