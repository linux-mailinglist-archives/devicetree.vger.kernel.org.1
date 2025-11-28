Return-Path: <devicetree+bounces-243001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5A9C925D3
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:50:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E7893AB4F2
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1888527F16C;
	Fri, 28 Nov 2025 14:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="ossTzV0k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EF227B336;
	Fri, 28 Nov 2025 14:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764341410; cv=none; b=B9eDkFZsL/94zDyBxsRJJKvdScVyEIORFwqn0p1Y0gUMkN0qAXioP006yd0Lja/pdwE+TBUMUGVFq07n8XY5Ohlx21ky2I648/E9VqIvzjcJeW4b9rdFr5FOHPzLpbZIX6NZlGi/yAfqhPSq6lcO9dPJaYU7PN0khNJrqN/HEpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764341410; c=relaxed/simple;
	bh=8pwHNqUBy4hYh93P/6NARNx+r581uCQTvJE2cYL8hQI=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=S84xxn6qovhExx5my67iXPQ3sZPJxUSZWQaZ6cSgAIkWPAfF/iFf+19OEoNSRoRtzNy896eJFtEOE17qi3mK0slX8kB03zExdAjr8J6aByxzVR2Y5cJmXY66zjvIC/5QmIy7nl2dRtQJO3rr3tuX6QN0l3i6zC589yXXGmZE1NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=ossTzV0k; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ASCnkX22284613;
	Fri, 28 Nov 2025 09:50:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=/FKoaye++d3/P0nvjkR/T+zq1RM
	720Z2BiOhPMPjILk=; b=ossTzV0kLFeFYXkrdyc+2QpxM0wNQbWo2hmJl2OYg/U
	q7oeeR8zfXXT7Tk44ATibrYSE7vNWloAjxkOnXqLha5gYVOGEAkiXCwk8k2urWab
	3NiW3vBfG7Z8bTvyhoxnakZua/og11eCLOpe8okzRLQfFMOR3HV7qWjz1ZZhIMzA
	GChJDcyT43xbVizuemIp9t059sdgPM9Y5omf40Smqb9EJNoobPNfbOO8noC5wvJm
	GFNtppuLtvjy7eYReFcIP8NTt2pLCI4jOQpus0mK+Gst3bvicVj6bPSyjeBvqxF7
	3iSvJMxkaFGm3yJ5W0ppmmcn+edd/Eor2cJRFbB5tNA==
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4aq370ajy8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 09:50:04 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 5ASEo3YB027513
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 28 Nov 2025 09:50:03 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 28 Nov 2025 09:50:03 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 28 Nov 2025 09:50:03 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 28 Nov 2025 09:50:03 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 5ASEnshK011641;
	Fri, 28 Nov 2025 09:49:57 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu Miclaus
	<antoniu.miclaus@analog.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/1] dt-bindings: switch: add ADG1712 SPST switch binding
Date: Fri, 28 Nov 2025 16:46:12 +0200
Message-ID: <20251128144627.24910-1-antoniu.miclaus@analog.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDEwOSBTYWx0ZWRfXw1LmK5KGjnGC
 VRAZSThCDZrUjU21iVBgNW67t49GBvQ7G23OSLGZGkNxVNETDeOHl2TbUEOb4uvf7XSNjQHZcjg
 lZ2589UjO8IA3bqgccbkXK+Q3JPeO+c0svevQuJXoCWlz/clk43Dy6XwkooYPuDiPzWr19yS3hc
 BJazbgAYtIQyxzFQ6LxLTMvvcym+JlLRf4zye0/fimlKJVLbWI7zItTScdN0v5lUoEYpNmKL6rh
 /yBKIHX11U+YYINK9o6inBxsW5Ybt61ZAfMMnqWmfq7xkraOclh6JX/xMfG6jXGG9IRnoSIrAZS
 NdJSRFsLj4MDKvZXxzQR4uQkwepMJINa6dFWcZYUqrl96+of1O1ywrPY/jPFfwV++7sw92VlSr6
 RVuCdnt7U0B4TCTRerjARpd8FTkYHg==
X-Proofpoint-GUID: iJklt0Pdhy0VphpNygUGUoiXmA_HsPz2
X-Proofpoint-ORIG-GUID: iJklt0Pdhy0VphpNygUGUoiXmA_HsPz2
X-Authority-Analysis: v=2.4 cv=PpeergM3 c=1 sm=1 tr=0 ts=6929b69c cx=c_pps
 a=PpDZqlmH/M8setHirZLBMw==:117 a=PpDZqlmH/M8setHirZLBMw==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=ggEV3rZny3h1ZReJJYwA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280109

This series adds devicetree bindings documentation for the Analog Devices
ADG1712 quad SPST switch. The ADG1712 contains four independent single-pole,
single-throw (SPST) switches, each controlled by a dedicated GPIO pin.

While the device uses the existing gpio-mux driver infrastructure, a
dedicated binding document provides clear documentation on how to properly
represent the ADG1712 in devicetree, following the pattern of one
mux-controller node per independent switch.

Antoniu Miclaus (1):
  dt-bindings: switch: adg1712: add ADG1712 SPST switch binding

 .../bindings/switch/adi,adg1712.yaml          | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/switch/adi,adg1712.yaml

-- 
2.43.0


