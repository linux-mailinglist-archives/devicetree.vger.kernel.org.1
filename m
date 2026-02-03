Return-Path: <devicetree+bounces-262393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DLdFdROgmltSAMAu9opvQ
	(envelope-from <devicetree+bounces-262393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 20:39:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAF6DE2E6
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 20:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36C81301BC05
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 19:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBECF361DB0;
	Tue,  3 Feb 2026 19:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TMxJV6WX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VUiaXdIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EBD2EA490
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 19:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770147537; cv=none; b=PSfYc3O6uCzh7PDVAA0HrNW4E+dKGooGpAyX6hMdEdl6nXEwWMuEzHt7Ga74cTgWyZ6gXoLD8KyxOwrPzDWXQy4H40eEbK3ADvsUkAzA1sQswFYiLnBiZqTCIwrFVCLUBoUa0oA63eVG73zWM4LIXGCtxzuNpf5KLlP4ohvPUyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770147537; c=relaxed/simple;
	bh=yw7ChvNfk/HcHJm2A+1trVKKGLfqJZ8ysuHZIfGb4is=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TkfTCfdkzEQE8JBWi2Zipvl+rddBUCxHBV9umqiatuykok0uQ5+FOugPlqj9HpxUOt8/hwfNeM7A6VE95tlJ6pvYa2F1U46LHlH7cR1C2DolYBbOKYghpibcijnvDbF/pW/VOJAVBKfWDs4PRzjaJnXdNoTcN24t9ncXhxzT69U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TMxJV6WX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VUiaXdIO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613IlpZr2613555
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 19:38:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=h9+tceDJVv+KlB9oeo+MtIrba4b541DMzAR
	JUMskHSE=; b=TMxJV6WXdK0ifh/UJZB4vPD4p57lrQRK1yS6yayA3Edvk0oxMk/
	8MUPnyFqjwJfa9YxxSxJf+FXACumBMQEo36Wbcs6CjI7iPCLRF1f+1ryGY4c4qRE
	mbaRwRb/joCJUMeRMolZbIxyUmPrkjoWUMQrun4sGZJ+na2JQCUT2zQTBt3XuhoL
	Afd0/STP28D4JYq8xsgoQXvCfhSziX6c6pMe6m3QbD37MNrBiIpKwPmDtbIp36Cw
	330nIbDuSBeVvjiRrJmJOlpfhlIQSBfT7d+0t81i+hIsUu4NzjIAvgBZj3+vZt5j
	qS8kSk8O4CvE6KPcICtkW2JmJndg0SUOQAg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3h07hfje-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 19:38:55 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a854129e2eso25766025ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 11:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770147535; x=1770752335; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h9+tceDJVv+KlB9oeo+MtIrba4b541DMzARJUMskHSE=;
        b=VUiaXdIOl+3TjWh9D/LuJBuwc09k0qWiBSC+XGLpNZXo6NDw1iXzSj3SimQTfqcjMy
         rxjDdKr+K1ch/AFIggvssmCqBLmFFdSJBUwRhEn5Dlk9E3Rau7GWA4Lyk8YVYVeheyn+
         FWfOzUjBNt4dMqCI1+1rqoQzDqwKaKaIaseiit+IB3IJ4E8KM3oXG/qF+H+YJfgOkfMM
         uZnYlfpXGAirIxpVhjqVsmiu57IW28pTxFX+FyT7XAMBT2IUys/Uh6vDo0XgViAvs8F4
         8kca6onfbajWMBiS5JlVjLPbUEKNuM7O52ROjZwM12wYPcNRRFYqWohyYP/LwNfp3GV+
         9MLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770147535; x=1770752335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9+tceDJVv+KlB9oeo+MtIrba4b541DMzARJUMskHSE=;
        b=tRx60cCem47X970/NSPo9edPeVTN+5MxS3Zvm7fYOClK+aBk2NSWGmIXrWGxLZcIbu
         FxoeM/f7SeVas9QzV4u5CBTiupBg2s+0s6TKRYpq0wUWUQrIcFuv+C2gsEB02vwgm1Nr
         aGaOz/KmPxJyQLjuyrLNEYqtFzjVa2VoG+Ejl2Anrt3jzyviGpMtxHMVZZdl8lVWC8X+
         R1akpyOFPSpsh8fIGkGwjvov5+6Ya+yFVdCjYoxmVksANe68MxsYXflvyxynDk+9cM+m
         gAkfU8O72pveHEvTUYVch8ll50uwEMcUSAivVi2HfyuDFy9RcD5YzAfZEGz5EyA9YmbH
         Ioxg==
X-Forwarded-Encrypted: i=1; AJvYcCVA3NM7wjrtRBG9S2zDaeelN8H1qTejBNbEGo+19ZYhv9yGPFFuqAzFFtlCE7H203GXaDEYUqxI1b1X@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3+ddkaAdTSs18e0KKGGtWP5QRIyERvwOFRgXwGT0Ww8yNX0wi
	khurBbqIzzVjqqtStVhjKmIemxu0Fgg4Dd/ogpwGNqzqMLpiA0b/BvN3j3kvXNvGEL6FaRZWc+U
	idFcNDXysQGHgCgTGSfkG6EQ+w4j4svwApAEjwNiK1yAPnFGW1CAhccUy4SW1HHKg
X-Gm-Gg: AZuq6aKSizpJ3xD1QVEB3+aHAYRTAE7IxAJJwas/5NDBCKuWcu7u/DDNnNnsUR10iNq
	1kPtJKbH8tMsGUDa0OswiNh3zXVInubK57HbzGCwj9oEePShOHNWQRHOQyWBvOa0uGi4Q4cBGtH
	UWh9YJccaAU7y2ZM9UARLznjffUkh5/I8mag2mW7SIXWaclAwElOiwoBsHVwBrDNId3KSoV4UES
	OxJHJLGbB22aS+wJwoRcI8LMB2YI9f1YwldNdmVCUnb+cGMFqxB/hgPNTU7gE4SE4mXIEwEYbk/
	zaGRXUyU53Hb1mMf1UiQs6qiADVUqCIhxmon2GcLDIDd9rlwVfe1Xhw5RlGOFo/DceqKcZ2JqVT
	EZ7IrDmFzuayv6IRufkqSlCYpWAcNRU2h4Hm1MGEc
X-Received: by 2002:a17:902:f70e:b0:2a9:320a:1bf8 with SMTP id d9443c01a7336-2a933ce4e54mr2678065ad.1.1770147534810;
        Tue, 03 Feb 2026 11:38:54 -0800 (PST)
X-Received: by 2002:a17:902:f70e:b0:2a9:320a:1bf8 with SMTP id d9443c01a7336-2a933ce4e54mr2677925ad.1.1770147534320;
        Tue, 03 Feb 2026 11:38:54 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9338a11f1sm3368055ad.38.2026.02.03.11.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 11:38:53 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
Subject: [PATCH v3 0/1] Introduce Lemans EVK Peripheral Mezzanine
Date: Wed,  4 Feb 2026 01:08:47 +0530
Message-Id: <20260203193848.123307-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDE1NiBTYWx0ZWRfX3Cc7eS8vz1Mz
 qDi9LGVlRXUzEGw/xQqrabB38e52Spw6OsD6vmw/JmTZCrWMKOM55Qr9NgccBr37BeCXSDvBXYX
 DhFALLd7Al8pCaZ6B3HbEqAg6yaUCNtGvvJTA8XZZ2INc5bbCc56PxGPS/4K7EPuGb8z/ukK/mf
 Eg81YbaoLnf93hQck7W5d5xEXYbLKUlOL5mjUdZqEAL7qy4LHkl9pkvvNKgMti1wU6HuMCVT58p
 Ze7aMg0Zk6SCmFoaESL2vsg+wqdZvl1O4eBOLPr3WICsmUm2x2pg/b6IDqQOD+s4Cbz3r6MQwhy
 bCsqdwttvTx9Gr46pbVyQ26rIhtBoGbJ73mWSBM12hZBq4oz5sgj7ymyPRkO4+95eQ7lXukiEGp
 klV4U0FRq9gVwZHSOUGMtABm5AdWWqRLjeZAKRUBtFfETL1H39ievoRD4S8A7PCKgMfFQ1bP+Z6
 JM6dm+cNJ/tdJC1hVHQ==
X-Authority-Analysis: v=2.4 cv=CMknnBrD c=1 sm=1 tr=0 ts=69824ecf cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i9EfSPZJsWMLY0D97e8A:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: yJV3O9GUeFFbx4oLa4xqou9lkIzPLAEL
X-Proofpoint-GUID: yJV3O9GUeFFbx4oLa4xqou9lkIzPLAEL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_05,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030156
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262393-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ABAF6DE2E6
X-Rspamd-Action: no action

Introduce device tree support for the Mezzanine peripheral expansion
card used with the Qualcomm Lemans Evaluation Kit (EVK).

The Lemans Mezzanine is an additional add-on card which can be stacked
on top of Lemans-evk board to extend peripheral capabilities of
Lemans-evk used for industrial applications.

It connects via expansion headers on the lemans-evk and provides
following peripherals :
- 4x Type A USB ports in host mode.
- TC9563 PCIe switch, which has following three downstream ports (DSP) :
   - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
   - 2nd DSP connect M.2 B-key connector for connecting cellular modems.
   - 3rd DSP with support for Dual Ethernet ports.
- eMMC.
- Additional 2.5GbE Ethernet PHY connected to native EMAC with support
  for
  MAC Address configuration via NVMEM.
- EEPROM.
- LVDS Display.
- 2*mini DP.

---
Changelog

v3:
- Sort regulator nodes - Dmitry.
- v2-link: [2]

v2:
 - Move "regulator-always-on" and "regulator-boot-on" nodes at the end -
   Konrad.
 - Drop labels for inner entries of ethernet1_default pinctrl node -
   Konrad.
 - v1-link: [1]

[1] https://lore.kernel.org/all/20260129172850.1175728-1-umang.chheda@oss.qualcomm.com/
[2] https://lore.kernel.org/all/20260202194234.3701434-1-umang.chheda@oss.qualcomm.com/
---

Umang Chheda (1):
  arm64: dts: qcom: lemans-evk: Add Mezzanine

 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../boot/dts/qcom/lemans-evk-mezzanine.dtso   | 301 ++++++++++++++++++
 2 files changed, 305 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso

--
2.34.1


