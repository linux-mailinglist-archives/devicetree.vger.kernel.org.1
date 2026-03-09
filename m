Return-Path: <devicetree+bounces-272913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LbzCZ28rmn6IQIAu9opvQ
	(envelope-from <devicetree+bounces-272913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:27:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9274B238CCD
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1FE05302F698
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D6A3A4F2E;
	Mon,  9 Mar 2026 12:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SaYtuYvP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MI8nrqds"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BF438F941
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058785; cv=none; b=sQxh5pybk+Xm3h0OAlbjKNNYr55AuX6YIip25lc1XY2ddGwqNW+5Cptlo5cMML+2MWfMpzgIzHgb9NkVeGpDGOtZspX8cMhUVXPvUeZNGu7IFnQ12OIGmsIlzpAKBVSVVpAkFfA39MidDgDoL4P8cFo6QaQgvHxeF17dvWzrHHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058785; c=relaxed/simple;
	bh=hPziMaLmNnvYOfd71gzrmLsr3XYx1AVEbrD6CZIrrL4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hxcWfLlh8hYdO2Cmr8MVJXF5uWcGSHQ1J3YUI7krjD4H9MLW3q/zur32fQxKzCGN6oISyF1efaeKea3WsfjgWl0Z+JqkgNCFcgpzQWyXprY3FPLgQY16BU1dI7p2X6Y9kt5ZEEO0k9ks5LSE6AAk+VKtBM7gV9JowN3rOeVX7XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SaYtuYvP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MI8nrqds; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629B3WpM2986038
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:19:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iGVLwkAqM7EnxDuUpo2PK1a+BHhPsc90eeo
	xnHGC8gY=; b=SaYtuYvPna3JTOaF54s93QPIwQEuDunQ1fSGFivBUW4MknqP1Ng
	27jBggtfdGxMNq+10G85M8YlBpFGh7Ro5fI5kfWV3Xw5/61h4DEvoB5yom24fO5x
	wFWNySxMNZ4aPgLDR/LsbGQPDlA8/rWDwx7HpUrCJCY2aNVxOCGCXaCxpvgzZTPh
	vU9jylRnjLFfObUEw4h4Xh/0o33fEEBDXn+msmxFQyBZrfig5roQ8Nqc2PCkwStu
	dX3CQQDZbYcx/TfQn6eZTGKxh7ijj7cjuYN31JqB3c392GbDcwZb4b+WB7RexnLb
	N2xehB0kQt+zewEow8kd1YNmrvWVqWqr7Nw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc3vdb8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:19:43 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7b8fe7c71so47992215ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773058782; x=1773663582; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iGVLwkAqM7EnxDuUpo2PK1a+BHhPsc90eeoxnHGC8gY=;
        b=MI8nrqdsZ+LDuE3diNhq61/UCSOm31OQdHr9qId+AJZQstvnBed8WD6L7AK27KpGll
         kcXWia+aJ7hTcZP++UQcb3wJXqXc8fZB7Akb95t9KvNoWJjqOcqxNqYw8bSpm8C+HtVu
         ylhR2FNUUVZ6hGvYgLTU7Cy31MXTxZDpobRFnSRfecISE2x5KVUSQ2ihh+zmNO9Eul7v
         cMokKKvO+NfbFr7GehKcPGUN7AB6rsiLMey1KPLcLdZHZVNt4CBkB0Pphp/CudDh974j
         gEpqPzYCMU9tPVzkPgPlhwXt/LicNbULuQimIZnnNPlqKnN5qjSt8ryxzO289d+fxe/O
         aLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058782; x=1773663582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iGVLwkAqM7EnxDuUpo2PK1a+BHhPsc90eeoxnHGC8gY=;
        b=cGZsdDafDhwrPKBWeDobfjYiNXWc7a8MVtXlwrDn7nINebGqf6T6saQjjL0xkHlV2M
         WJ2vcfen+XpgzuPWvwqIE5atgWuyAZ5VyaWSx1PmHxX9+R+b/+KP68ejpAWDauiZmE44
         WyeMCDw9Pe/hxZCPc55MaT6nvBm0kyjO67vJpfnYj75GFwwSnDKWX9hi3QbhwvW5h8Ga
         WhmJSIpJlz+CGImn4u6A5Yz2vCe+AzpShqxdLMLAQy+EWGerGG6mn+paOowbCjse7NEC
         26n8UCPMVcWcksWp4Wj7K5NUxKbHJjz+oXmJWxxypCq9VNpzOHHRfDZ/+TvGtDRHo3Tu
         ovuQ==
X-Forwarded-Encrypted: i=1; AJvYcCULvdfpwZI2YRxiu+gDcC83G6kJIUC4QtPUvNd6fvZYryFyLFIif3d53NO/Q+2T8PxdDGBjNX5uhHvD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/DwPkqa2Ji9lMpXtzxbQUBMP5NV5z+Ga8KSoNsL1ypkk6G+fb
	1Ww62DRF+pcHvI5TrMWVzaxzUgRvrTl/4mSU21lc0OLyOZJnqmiL5/TXmk0hGfW91jBqNYeuIbt
	0WRpTBRO+RnotVAorhmHnWNVweSiDsHJViNhh7rhdH3xGEAkpHLzyrQu+FJp2GXnsAnWf5Dwt
X-Gm-Gg: ATEYQzx/fabMHKY7Vp7xx/zfYHMp/SLCoOWcKSD++eDdWGMjqj9Ou6KSHGFxI5BuFqk
	ersgFNyuYvqc7A5RrXctS6sMNo/osMBlOLS/QV70xE3O4hQbSh4yHb4RaJMmh+eMNbkreVxrZlW
	4LYWicE2vQ0y6xjqzoWvfqEA9MdCSZMp3AIdjSHhqqPNDIV9xjj662sy2PqwhxpvwYDUudW8Rht
	EEOX+0gxadWpqk/ICPFECn3K+3WH5t/P+I0LlFpnnreXzXVYiQ+mHWb//U6c3SOjcuNk/Um9y+K
	PRj/KTHwgOuA4aruTWy4p+LsEb+UYgeaVGAwCxR27jxq8UKKm58vkp9wJ7h3CVJXsy5LqzliYr9
	a6T/ubYFXdAZxTLEBJbh+pAxbbJvE1I8U0/lEB5LWZusNJqeEZ0HI
X-Received: by 2002:a17:902:f541:b0:2ae:4ebc:71e4 with SMTP id d9443c01a7336-2ae824f4edemr78677305ad.7.1773058782515;
        Mon, 09 Mar 2026 05:19:42 -0700 (PDT)
X-Received: by 2002:a17:902:f541:b0:2ae:4ebc:71e4 with SMTP id d9443c01a7336-2ae824f4edemr78676965ad.7.1773058781946;
        Mon, 09 Mar 2026 05:19:41 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f7429asm115762575ad.59.2026.03.09.05.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:19:41 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com
Subject: [PATCH 1/2] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add model string
Date: Mon,  9 Mar 2026 17:49:35 +0530
Message-Id: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: exI-HKqTHax4Q-dqM1elttA5O7n1CHcI
X-Proofpoint-GUID: exI-HKqTHax4Q-dqM1elttA5O7n1CHcI
X-Authority-Analysis: v=2.4 cv=OOQqHCaB c=1 sm=1 tr=0 ts=69aebadf cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=JkbsG66tYhbsQ2DYzv8A:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExMyBTYWx0ZWRfX0F8YRidw0TW6
 HSGE62ibpTPrx1bG28isfZSMkgbJBHBm9kvCQhIo9Q31+gLeceS9CgpNTJj+C9BhULXpPUsbTi0
 Y0gs/QFJHUsrq6Do3V81vTSlh9H1M6+9LEbvBDagshMtlh4CeberNoCsEpYG3fKED0PbTV7x37I
 FVAIr98D9Kply9zxOruTqEU2haDTIn/mMjTjxEJSirFO+AbEzuzmiLCqh5DZr7OPGqjokLleVf0
 fqv07KlL7TVHAzyImxKHqN67N6o1sohMcfI0PKIr5Zaxn8XUuppEeOdx6n5teEzrDV+X9Dic8X0
 uHM4HlOlrx5Hw8JLa2jyr9eDJNomWJsJrARf1d0d9nJHAiESrpELEKHkgO7PSNHI38Ufv4vkljM
 +7lauRxUNy3Q8vJeSCJ41Xz9EgElBxT7N5ozAOls1C+QN+iLPgOnzTD4CeRyqh2h+LBVKO6kuE9
 Aerwc60fJ6i0g5wyjhQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090113
X-Rspamd-Queue-Id: 9274B238CCD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-272913-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The RB3 Gen2 Industrial mezzanine DT file lacks a "model" property,
resulting in the hardware always being reported as the "Robotics RB3gen2".
This prevents applications and user-space tooling from distinguishing
the Industrial mezzanine Kit from other RB3Gen2 variants.

To ensure consistent identification across all RB3 Gen2 mezzanines,
add the appropriate model string.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 .../boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 619a42b5ef48..7d6e425dae89 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -8,6 +8,10 @@
 #include <dt-bindings/clock/qcom,gcc-sc7280.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>

+&{/} {
+	model = "Qualcomm Technologies, Inc. QCS6490 RB3gen2 Industrial Mezzanine";
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;
--
2.34.1


