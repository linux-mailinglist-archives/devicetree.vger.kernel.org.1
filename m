Return-Path: <devicetree+bounces-276169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBaLO8gDuGlpYAEAu9opvQ
	(envelope-from <devicetree+bounces-276169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:21:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 949BE29A404
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C134F301DDEE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D92D3988E1;
	Mon, 16 Mar 2026 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y149H9Ug";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mq9U+vWB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003703976B0
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773667223; cv=none; b=RJ62xEDLZR3mdMjm0bcQjlyIR7sxBlM31yn7qWtVrIMnihHjmI4D3vuwlCUv7/c/xEB4Iixklw6zZw1mbKhtSj7XFMu0HUgOzlb6B/NygPhbC7m8rl3oGQtPEpil9mnnllr4zEW0IoiQyJAcO13qMiHs4FD2FKPEqGiwTW7S9jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773667223; c=relaxed/simple;
	bh=dJbTfvAcFEBr0KgQiHACLmah4/Nutv+8vmj1PgJofSc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dMAkaHkKn1FNxv0PMIISVu4eOqqtEgNqXB+p4xZF9kfBwUwxX9g84J6ZiYRtBWyb7A3U79NquDXIlk3JdJtkzucIgnritCPlS82CktNalUYKTdyISYWUijPoYeiDcLLQl3xZBzq0EHgcmPI8lRJsHAmKXqA59b3aq11aYtSSrwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y149H9Ug; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mq9U+vWB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GBfBiw1282129
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pbJPBsQP9F6kyoPC+2wB07LxBFNQb4kGKV2bLW+wM9w=; b=Y149H9Ugm11cflVU
	PmU1pISnb4e3D7cdu0GnqzOV/b80saYTAFSFeHYJg2nci5UhilckxhrS8GX0bCMa
	GQ5sinfUCD7cnekK8EPRrQ9iFU5Ut6goACXpmB+EBVABFAuGW4ZC1rR5SC4vBnqe
	rYug0nX+xnItYIsAYVgqRrAnewJRffdI8b+tQev6pZTRqhap3HyaiHANuvftzJRd
	yVlDF5EF7hIu702yTgKWDwNNdL9aGQTJDaeSjuFwvUBJPu8mIxCBB70MHtFkOrZK
	IN22NcE13MmlsnKly3RqzV9rip3G1JubUeVw4wxG68l29p8BipNOdu/DGxgVynQm
	yVwScA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc5s7k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:20:21 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35b9894f9ceso1624714a91.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773667221; x=1774272021; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pbJPBsQP9F6kyoPC+2wB07LxBFNQb4kGKV2bLW+wM9w=;
        b=Mq9U+vWB1gXAb2m9wTlrTGGcHK6OnvDEAehKv0shhf/G7xfds3iodQ55FYMp15Z9Me
         qAeRq4X5XSBb8sHSq6IDhAi2dINW8QLi5zVVnVz5Cg8ksK8P8ZfjRD8z5HI71MoNLR0A
         pkBx6CSdrN6mJXrD+N8BA0+q3ifUkBMD4/KATIwUsPEgH+UdhDDezwQqKUvsYRAD6h1E
         U7ck6AuV2G5z3+cEu26K76HYB99ZiAkwgFXz2qZeyYu8d9SoKsYqkt7TjtZrjuSeRTUG
         CBuJk21f6n9DSiC8jKXxY5IsK2XDmcwE0ogFQlOTuLtkgRosn+vXgY0AClPR9mz9BVe/
         sa7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773667221; x=1774272021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pbJPBsQP9F6kyoPC+2wB07LxBFNQb4kGKV2bLW+wM9w=;
        b=gN5uX3pAZ0Mr7VAd0TQmiBKIpChao/Ft21rpntleSJ6me6c49HAi8QCrEwprH3CUlv
         1D4kUxRTEh521joSRu2fjEhX13IFFolkTTE5rPCxlePKm8aidsntOwJzIx/iotxtQ8Qd
         Nqu15/n6nYwFZ1UBxv/MqzHpgisPXpIYuuE77c1SwsxckVKp4bcHGioU/D809LdgAKps
         YDOnqizk2pDP6Wepb7nXCUPPuxBaLUOcrXKg66pvVIjoRawz/rfHbAIC5X171GUcPPzs
         n5JFdva9D4OU0hnJOgHKVAIQNL0Y6vghbKthy6w1PDNL03Zl5fezdEAOd9iv9zh3uoCw
         tcrA==
X-Forwarded-Encrypted: i=1; AJvYcCU4vqHdcdCKpwRlDuHVR0fgdN6/jua5gx+N+Z5WOr9GzaTQBJAK0oXHo7v2ud7hHRdlUut8eK6CMq2Z@vger.kernel.org
X-Gm-Message-State: AOJu0YysW6hOGQ6dKNa5MXMYaHjtjE0n1GIWbtYuPUDpa2GDgOOBSKQs
	hy/mnoP5Rs+Nh1RI5yuD7YZfQW/F6cPWc6EWL9hJ1YYSrknDQbGXx4+8foGNa+0YugqDdObngYZ
	J4z1v0YvCDc6aawB+PNhc2jLYa7Cd2Yd20IBD1nCbrEdRcUxfvmWGJJe+J1elvbbX
X-Gm-Gg: ATEYQzymrd3b0OzqBN507ikqwe+IG3jUVvd0Tdap1LayYiLvhxBCuy4cMqW5TvQAnYI
	uHfxeAra30pQFQeqMLbH7ryeodaiQ1wlvL+aNK9OX2W4IsL1nlfFMHuz8z2NYzBagBnCbxCGslM
	QdKCcujmespI6al3lZI8+2V8bl+L+sH644vtsu0D/ZaOrX/AjZhOM8npvrHs4lxi9AGg/X/Zb5z
	vJXoFmYZbkUicySvj24i9ZygVZ34Bn0NVoI+B76Nsbx0EIbe5qE4rjtuLaxAveMN6fFMNKJ5xhr
	cPKOsLiBge88yOui7DF1lX7NPIgoN0xr4wTm7F1XS04bQKHk5bcEn8jJHEibdwKaYWSqlgdJWEc
	mI++CNzP0Gw0uwUZvzIIa09cPDKMS2pl6HSfcp43Sun4EhcYMaX4Xcwzzhg==
X-Received: by 2002:a17:90b:4a47:b0:359:83d3:27d3 with SMTP id 98e67ed59e1d1-35a21f007ccmr11940408a91.2.1773667220602;
        Mon, 16 Mar 2026 06:20:20 -0700 (PDT)
X-Received: by 2002:a17:90b:4a47:b0:359:83d3:27d3 with SMTP id 98e67ed59e1d1-35a21f007ccmr11940380a91.2.1773667220116;
        Mon, 16 Mar 2026 06:20:20 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b9303eb9bsm5209648a91.8.2026.03.16.06.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 06:20:19 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v2 3/3] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus controller
Date: Mon, 16 Mar 2026 18:49:50 +0530
Message-Id: <20260316131950.859748-4-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316131950.859748-1-viken.dadhaniya@oss.qualcomm.com>
References: <20260316131950.859748-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b80395 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=2RAHEg2qjUOD6Jr5jaMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: urPi6sX_TTpmck5Wu15MWnyzk3rFhHkx
X-Proofpoint-ORIG-GUID: urPi6sX_TTpmck5Wu15MWnyzk3rFhHkx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDEwMSBTYWx0ZWRfX5Dtxm/gEIfi7
 gfCsQvRQbzTsKgNgF71E6gHCfGgOHoWEAn7U0yCoUGooRKtYGS/bvdvZpzOpiVF31yu9mjDGbJ0
 I1FEFLlKhPM3ICCJUoUDJWaqcvJHgbtqdPuFnFRLOemlBuP2MVaMvItf9bxGSPTCRi71o8QRwsa
 S2WQXsqnzo1PewiIusFJbH9jmO5Rbj2L2y+Lz2kRmeWwpa5K7/zK73h9ABi5zSeEWaNNw/XSPFO
 LnX9fDXqktroRboP+fhZF7jpY69H+K9aHHtv+q3ihS572QTYQZTtKO+Hqv95rx/oby75y3BGW6r
 zZmlZkraVGSbxrKHu9R8XL2kHQdy8izDQcCa88gTi4EYJB4t48u0eSTip+3BY0mlfspJY0lTlij
 noYiujwwz+MMdd4iuj27H1Hw2HOf9ljwEEhYx73+JqxXWNY+lY+H6qURo0039aH4dBsZEUpkgnJ
 QwCuM9YvSG36nN2ihRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160101
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276169-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viken.dadhaniya@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 949BE29A404
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
The controller is connected via SPI3 and uses a 40 MHz oscillator.

The setup was tested with CAN-FD loopback and actual data transfer
using an external PCAN-USB FD adapter.

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
v1 -> v2:

- Drop the gpio-hog property.
- Add the microchip,xstbyen property to enable transceiver standby control.

v1 Link: https://lore.kernel.org/all/20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com/
---
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 22 ++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index e3d2f01881ae..245961722f84 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -44,6 +44,14 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	clocks {
+		mcp2518fd_osc: can-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <40000000>;
+			#clock-cells = <0>;
+		};
+	};
+
 	dp-connector {
 		compatible = "dp-connector";
 		label = "DP";
@@ -1151,6 +1159,20 @@ platform {
 	};
 };
 
+&spi3 {
+	status = "okay";
+
+	can@0 {
+		compatible = "microchip,mcp2518fd";
+		reg = <0>;
+		interrupts-extended = <&tlmm 7 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&mcp2518fd_osc>;
+		spi-max-frequency = <10000000>;
+		vdd-supply = <&vreg_l11c_2p8>;
+		microchip,xstbyen;
+	};
+};
+
 &swr2 {
 	status = "okay";
 
-- 
2.34.1


