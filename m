Return-Path: <devicetree+bounces-268010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBIQDXHmnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:57:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCB918AD37
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:57:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9ACEB30D5BEB
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 043E33A9634;
	Tue, 24 Feb 2026 17:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eUcEFd9j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I0bgiQoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748E73A961A
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955761; cv=none; b=akFE9/cA3bcaklsZNsZvFi7VnYj14Zw4WRaNU1ZBrnD7nhxLVTqDE50qLbZBfrTWwt2DgxqbrLMzaT1+XmLhgil0psBFkgJxzfy+asf5SsjG2gK+SFPgDHCe9Gn+B7pvWmIqgaBilhswfZYSRgu+Gci0E0Lc7oXEj5NbGvTZQiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955761; c=relaxed/simple;
	bh=9oh1sckkh2C1ohYEAQGEpWZlxZnkblry8brMY0fXOXo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qWT3oks930gL2Lnf0BliT03ugeMiA/WdMOOho204mDrovTvrx9/jbt4BDQ+HHE9/yUwH+RKzN5vxbCuJM+IUh0+8lygwtwoSwMileeFiwts2IrSmQkjBaKbYYH9ir4PmvQohTiSECQ1ZOraPM1YBvkAZy/j+L8NYfP+IVX0ahb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eUcEFd9j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I0bgiQoZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OFlBw54044338
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:55:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hYJgXTA2R7z4h4lRZ8hroPs3UT7gAkIOfXYTE+ORk8E=; b=eUcEFd9jxoz/TL2M
	NJhrXnhp/E3jah66QBRaNNqPT4/HLIoMedFteCVUOfcSAbOiY0GfX/KLfVhSmjob
	RtFycf0Nsvc2gTOPgYDUsiqm2CV8nXQEUbWY1JBk80L3dGlhrMBa3F+1VcGPkQw5
	HS8wBX/sBuUlwEPK+teg7EmiCzCnNBePPmZSBXck5i43KZ3QQnL87Pp6Xdl1WckG
	4YohnsdFzHtT9Hv2izNLuMBah8laihPcG6nfJcSmROIZv6KQcgdaImMJCpZ5Y5sF
	vNShouOy5BI5sNpuhR1JqsHCitVHURc9pZIhIGgl5sA8joiEBA/+MM5dGj79Wsdg
	gSF49g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chexegfyr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:55:59 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-826c67a7aadso2437026b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771955758; x=1772560558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hYJgXTA2R7z4h4lRZ8hroPs3UT7gAkIOfXYTE+ORk8E=;
        b=I0bgiQoZPVqM+zTmGj6fNBBS2A3tq50nMBhTo7j0Ti91e3Kciz0FaPMR/1GHy8sDHm
         S3VJCTGAuHgZet6p9CVBDvgv1eRPT3LYRzjSptm2ggBV80hJyx9hIuS/p1F74gvR8EWc
         +KYIB3kee9HfbDxuOw1jwqMbcgndrOx/KmlqYzxErevfwrtOGos33llChcOQU/ISC7IC
         fO3+H7bhlnUVJcHt5QV4rwSN2Z/PX6tIt17FSqXi1tJZHneBm6xKOgcs0f+M8H7jkPSI
         M4fSMJ7ZWkgEKbK/6dFrlgPb/37kGE49POoolzL4PbQGlExaamiVZOdIaTidLlr+M/y8
         GIcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771955758; x=1772560558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hYJgXTA2R7z4h4lRZ8hroPs3UT7gAkIOfXYTE+ORk8E=;
        b=RBJ9YzyMUmJER0i4L8MzdVHA+J3AzIRB1KE5xggHm7wwu+g/C/261uMqiv9R5bg1FE
         chDGKS2ky1oijN3ix4zvXVK1LYtbEr1IYwsSASsYqRsocm/M9gHecx+k2MnFQ63gAtHE
         ViEsBB8zRnltYwqje7xomQ6C8pKkJq0al0svhbu8KlkgUnaVg0sAJpA/qT2qqnoU3P0W
         hfF6OqWC23BpSxpV99LFvIG0zC5h7evrCHgh3oDnaauW4St/ejrmDPaZYSmn6a8pya44
         BFyEPydgoCKJr0i8rt5JX7DmKfcx+xpuu8AfVt6CYPlJFek3UtcuKzNAWJcMyJf6oPG9
         Byig==
X-Forwarded-Encrypted: i=1; AJvYcCXFJ//34IJCyhoitSNp8XLQI1r2o71u4gwsS1Y51Kk6LXE0HV30A8sotJMXW+mwb8djhuxeZtD9ylAt@vger.kernel.org
X-Gm-Message-State: AOJu0YyDllILpAWI9xccxlGTJ3PKRuCODjI8drvkjntmBh28vNvakQjL
	6ofaOMHtoVAAw4o0f8Ezhn35Ez+vo9r6m9YNlr9L3W63qLQZ6nbvxjBl38tBNI+vL74g4aBktAu
	rtXve7g1G+p9uC0ij3f1YV61rgxRtPKohFhNeOk99V/xXwaGiqI2h9u26+x8lrJ9O
X-Gm-Gg: ATEYQzzAjSMbuAUtzfT9VSVQIvpIMScckieSvA+BkS49cx3UJVg/+Xht8lctL/u7v1Q
	nNiwnXsyt9Nmz0hwNVaapmz8kof8G/G7hlpHzLDFVNDUPUjCVTd8nXeXOIBDobXhZTeBTgYOyd5
	1Lw96zGxMFmtbD9pu/SMBnV/8+RBb/22JhWZYymVGjqT1yUXx4Cm7XLTrSC1pJUJ7znH0CN/vjN
	SqahRqpkSwD/wJiyBnqKSIMeKH2y4RlEPKY9DrH+okcpllp+mE9EhgshbnG9h9Ibbtrhq20cYDf
	H7k7cR5r8IgM8Y3gT4yB+H86fq0HqC8U403A3fOL0DuE3XfOG6wXMQmbxaz1AFWr5HRvkDYAasa
	M/SwklfOwrJ5Pw6Bt78DXCvTHS/Eeh6Vdu8TsgPU8PZb8FNibGFiraBAPBDx6AxNBmDDuZfdmY5
	aqHZ+pSekPFiQumcmeuxRCEB8PdWwVXh9KNEoq3EIYsg==
X-Received: by 2002:aa7:88cb:0:b0:81f:3920:77ed with SMTP id d2e1a72fcca58-826da8d7a31mr8271233b3a.2.1771955758009;
        Tue, 24 Feb 2026 09:55:58 -0800 (PST)
X-Received: by 2002:aa7:88cb:0:b0:81f:3920:77ed with SMTP id d2e1a72fcca58-826da8d7a31mr8271199b3a.2.1771955757519;
        Tue, 24 Feb 2026 09:55:57 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd68e147sm10338005b3a.19.2026.02.24.09.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 09:55:56 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 23:25:35 +0530
Subject: [PATCH v4 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260224-lt8713sx-bridge-driver-v4-1-b5603f5458d8@oss.qualcomm.com>
References: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
In-Reply-To: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        =?utf-8?q?=E6=9C=B1=E6=99=93=E6=98=8E?= <xmzhu@lontium.corp-partner.google.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771955743; l=3760;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=9oh1sckkh2C1ohYEAQGEpWZlxZnkblry8brMY0fXOXo=;
 b=pvOYgVgi/C91rA+xLa6Ak2CMkfXozjKKLF7VPMMdziKUACA3JQG6ASNvS1SurtKWaxBaG5aJf
 DCQhBVPOOHADSo6ngmrWWkWW2fuFWOoVBAi9ByIoFU+vgGXnYW8zVJn
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDE1MSBTYWx0ZWRfX7WAArYOKwiNm
 +NEw/zHH4jRa0ITgdnR/wC+/ZXYqZmBjECywGlwcC1jZ9IYV+Qqa7ehwJ6Dx75X3mMJ6Y3eCs6c
 J0BnCj0WSjUA58FOdIPrBe4IjBXvnWmOf5u7WBBLAw7iso6eB8MdnYAHbeGHkevwWuQHgyWMIPM
 M8t4FkwUzVfGYY/acU8H37N7pxgMpYXVt/KieHWKKSFbf1uABuKXVpsjkWRfEMUWc8+4emvXmDj
 Z5RiYINkrvTOLRgqibn317a5ZE8pg1Eg8xkNjENJG5r+P8bh+ajiSjpMVxSPOOG0VS+bWT7zShm
 QSj+G8NdE1C9U2NBD8FygpffLy/inGIvue4ieWllQQI53prJHF/OoYJkvK+WJVuEEMT6aVe0pYc
 PZ3FsnYwOQ9+bX4KHYv7VEeG9HT49M+b6O1tK2jKgvp6HGlLghoIfeeYGxiHUzv5tHfIciRcUsr
 UWjjPu9pqL4eK0/YsGA==
X-Authority-Analysis: v=2.4 cv=V85wEOni c=1 sm=1 tr=0 ts=699de62f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=1XWaLZrsAAAA:8 a=Kz8-B0t5AAAA:8
 a=u03R5FaqcccxyDpVlScA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=sptkURWiP4Gy88Gu7hUp:22 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-GUID: ezTYo8rQJIMS1pxfc2IAtiJKqcEMPcP7
X-Proofpoint-ORIG-GUID: ezTYo8rQJIMS1pxfc2IAtiJKqcEMPcP7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_02,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240151
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268010-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9CCB918AD37
X-Rspamd-Action: no action

Add bindings for lt8713sx.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: 朱晓明 <xmzhu@lontium.corp-partner.google.com>
---
 .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
new file mode 100644
index 000000000000..29a773154b39
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge-hub
+
+maintainers:
+  - Tony <syyang@lontium.com>
+
+description:
+  The Lontium LT8713SX is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter
+  that integrates one DP input and up to three configurable output interfaces
+  (DP1.4 / HDMI2.0 / DP++), with SST/MST functionality and audio support.
+
+properties:
+  compatible:
+    enum:
+      - lontium,lt8713sx
+
+  reg:
+    maxItems: 1
+
+  vcc-supply:
+    description: Regulator for 3.3V vcc.
+
+  vdd-supply:
+    description: Regulator for 1.1V vdd.
+
+  reset-gpios:
+    description: GPIO connected to active low RESET pin.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DP port for DP input from soc to bridge chip
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DP port for DP output from bridge
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Additional DP port for DP output from bridge
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Additional DP port for DP output from bridge
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        bridge@4f {
+            compatible = "lontium,lt8713sx";
+            reg = <0x4f>;
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    lt8713sx_dp_in: endpoint {
+                        remote-endpoint = <&mdss_dp0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    lt8713sx_dp0_out: endpoint {
+                        remote-endpoint = <&dp0_connector_in>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+                    lt8713sx_dp1_out: endpoint {
+                        remote-endpoint = <&dp1_connector_in>;
+                    };
+                };
+
+                port@3 {
+                    reg = <3>;
+                    lt8713sx_dp2_out: endpoint {
+                        remote-endpoint = <&dp2_connector_in>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


