Return-Path: <devicetree+bounces-241623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B946C80273
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:16:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4249E3A7029
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5A62FDC2C;
	Mon, 24 Nov 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QnLufYJa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FJhkUro/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE8F2FD68A
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982773; cv=none; b=kncv0dRaFW6oBnvI0Q4GiNwKYvOxIHGuPXX/PToF9YBYnVBR7CIiYv3o+vqW3hUpfnFMkorpbuBGz0NVsF4ojV5fbkXQ0nFZj+FnK5QOPvRnX0lTtBNERtG8QH+b2YXe12rIxe+doK9YvGiy6bKEeg5vzQj+mCvzzBOEaDJi7T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982773; c=relaxed/simple;
	bh=gvw6vJt65/j3kDflSAmg5Ggctp4w5GkDPc1mSBR1PtM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DjwE6xmg8NHWBdDAHuQPTdhx0SxL+J3OnVhGQaSBNIMUN1pUAeuTBuOImxz1yjmxTqiagdwhcaLi7xOireC765tme6nQ3kvGpXesT1a47vbPm1EXLVoZ43UA76boJdw67yISg8ADERaetXCBcPfT1Vq7XIYBvkawYe/4qtY5ej0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QnLufYJa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FJhkUro/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8agMh2492961
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FzYWAX8ciiG0wHhKqetFvk7149rfeYeDrlq54Hply/U=; b=QnLufYJaK2Yb6+ze
	G8sFDYfQbWBClxrc6SBIq61/y3rqdgxorSQtUOapl6AAivBxQDwTQjfQMyP466EO
	5AnSZTM+T85Gphv9sw7KaLP2odjTYdrQarEfRDPGGa35yIT7uMSZ2jmIbQlidU3J
	GeGFDns/SnfB8b2mlyj1RTqnQnFLl6YTuVIpPxA3rCnN4/9lQiImWQpGU1b/0IE1
	1n6jHTFuEc7hELIQjjJ70O6MyQtQaJVfUa7/gZvOsDFqc40txLha8bEhLr90QJZ3
	14H1QK0qLBuZMJ6EN/HsyCDM+zxzuM9d3tx5Dd7ncf+YnI4uoZX8+/+KeoF0QtFK
	6RfxVg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak694vrbd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295915934bfso65342725ad.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763982770; x=1764587570; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FzYWAX8ciiG0wHhKqetFvk7149rfeYeDrlq54Hply/U=;
        b=FJhkUro/mCaPRwdCpoWJZ54TYCP1iVsR4UAUlO0tPK79TN8wVrAuvW0oWGW5nsZG19
         fR7iZZYwEHEON+Drh/9Iao93BTceY5sDcQ/s7Jui819TxHLXAvFOv8EcJRSnkDXbl0co
         wZuC11VzC/t4Cm2GxHgJVfG3pD13uU2ApdrWABWrVMPw4KUDUkuAdhEtrxZZ3pPEqvG2
         JAlpaqjH8fAgWQiHJY7QYGqAG1W0ONPSBInvkuhQAJ/7sCDLNTGLmve9uMmx4xaBNF49
         EbM+b46tRg8c37jgyMXLJm6P7rxXfGWWfj+5kFoLf8QalUQk+JmSwokWGc+8rT5SpMqb
         DlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763982770; x=1764587570;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FzYWAX8ciiG0wHhKqetFvk7149rfeYeDrlq54Hply/U=;
        b=kVtpfbhLCGv4wRf81Jx13+AfJ/S2nJyH0B6POcOynVbK5ivZckY9s6JnYFPDDBFogq
         6aLMI7sRMPJj1lDzq1FNkFdi228GI3I2yN04QMwAcup5/4Iyfr1NuMUq1TpBGdqhRA5C
         JpbHjAtIeiTAamCKvRU+g86oNph0xfeGU6P0J7If88FBh+2WAG8x3bACQm5OvUaWXYuf
         eUr5zmlkov6SXE7O5DUoQDVe0E9vw075vnNxFx477kbS21+NDuSUazHTHJ8B9N4dQdu/
         xWiKlHUplKs+W5sZXZ1M0YIfDfSGx7Tk4zvGhl5dJc02RWcpOmmRyVMGsoRXfpJu+JEw
         xC/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWf1cDodRupe3B0MGohYzhJFf8TkPhpFXyIyt589JtquruDYjoUxxOGddLE6VMWA5XjRSdLGOphSS21@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd5PgZszzYk5JPNLjFX+XHfIIAs9hGH2rvLsw0Gn1emu8gjLqx
	8o3krZTDwoazpxiVULX3AbPoOiNolqHl5dwyPXD5FrM4jceXVtusyJ7FkCUF5hmeKimtLS2FlXb
	9xtUVExMrquiN8/GyrG57k2QAPkNhmegrIt5LHdu2s6GKnB8WbLbd8BpnWDExrD8=
X-Gm-Gg: ASbGncvq7ZY6uc9H401JZsidM+3SRWE3INrSBAzEHDzNHHg0o1YMI86ZUJ7ydktj5DG
	MgWsX22dxO3H5ecoqmn7CIc9rhrRYgMxVHUM27u5Vooncjr3LvvOId2ISdXeR3eZvl79Unl7/nU
	8Mmpi0oq2h7+CckUNHIQEGzKL7tOAnjaSt5qL35igx/UyWyfu/dnKpyn+5oGTMD+y4wH3oWFcfi
	fw9ISvCCbmWIkkCjKQwRg06ErchWmoy5BTZSIYScpNionmku32EjLnyHwW3L4V0Ivc3xAMJEWDg
	Xc7rBQco1YI5uMUyWFUF9sOosgaiHP4k3gH4jVjE9oLYlmosMl5An8S9tVmQWroBpDV4EwgMKZL
	uPbPH4qbNVH/gse3Ci/ykM74uCquVlZdHeQlbou8=
X-Received: by 2002:a17:903:2f8f:b0:299:f838:a279 with SMTP id d9443c01a7336-29b6c3dbdb9mr128059965ad.2.1763982770325;
        Mon, 24 Nov 2025 03:12:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDveKxAciudWptELKQFKCSinQSXZwY0H1MAxJj5zDA1IhZ3LDb68ilc20l+55j3RhtQdCkdQ==
X-Received: by 2002:a17:903:2f8f:b0:299:f838:a279 with SMTP id d9443c01a7336-29b6c3dbdb9mr128059735ad.2.1763982769916;
        Mon, 24 Nov 2025 03:12:49 -0800 (PST)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd7604de68bsm13133780a12.21.2025.11.24.03.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 03:12:49 -0800 (PST)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 16:42:40 +0530
Subject: [PATCH 1/2] dt-bindings: battery: Add SiLION battery bindings
 technology
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-add_silion_battery-v1-1-3c86b70d2543@oss.qualcomm.com>
References: <20251124-add_silion_battery-v1-0-3c86b70d2543@oss.qualcomm.com>
In-Reply-To: <20251124-add_silion_battery-v1-0-3c86b70d2543@oss.qualcomm.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kamal.wadhwa@oss.qualcomm.com,
        fenglin.wu@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763982763; l=910;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=gvw6vJt65/j3kDflSAmg5Ggctp4w5GkDPc1mSBR1PtM=;
 b=NnIeS+ZNNGHvis+Mn8ogwgdDKcSI8hu2XmpKHt7pA0spbbQtaqxm2ui6TfS8jEnT0Wj2+OFyl
 Zh2YZAsHvg7BSseqyU9WgS2K5Kzd38IgCqA8BgbfyeK/GZMwWiuLkLC
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5OSBTYWx0ZWRfX9GFqrJkYh92Z
 2xhD5K3yqO2vhtvwJrSQ4E4FvkiUX7wXJnsB0TizSJnfqr6tSQkyFQnyl98XZrZOBYJTvG5kXjD
 VYvr9O6WQsl9PtdxJjsMv7ujWp7rN1fPJeAdAn5FYafG2Mrc2kTRqndqP8UDFO6gPO8SwpdFJri
 Fy0BulvINqd2PXSKCAkwXOzjYGH2aLXtRXDbWMkoW1XmXZ8tsQeA/3rH9an+oYgvun6BT1lPxgd
 xOALQJ2EE6Q4GGGfuiw2myR3nqepayqKBm5XM4Z7ZgeV/RBzjfeN5CSdvt7HYobdbJ1E/qPIQJP
 CpkyX7uheX5pyQ74i/reApXW5EovbSGsfr/goPnnNLLF/Ff74Iz0VjBcHQ6LzeGxtA10OnN7LSs
 V2M/Utt0ViXEhPk6qCbA7cuoOu83/A==
X-Authority-Analysis: v=2.4 cv=YJqSCBGx c=1 sm=1 tr=0 ts=69243db3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3dr8tOzktftmaQavoPgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: SGWbpBwKwaGXOvlI7sLTr4wqpU7N9ody
X-Proofpoint-ORIG-GUID: SGWbpBwKwaGXOvlI7sLTr4wqpU7N9ody
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240099

Document a new battery chemistry for silicon-anode lithium-ion
cells.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/power/supply/battery.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/supply/battery.yaml b/Documentation/devicetree/bindings/power/supply/battery.yaml
index 491488e7b970397b409c248fb0c2a524301686a9..49cbd03956eeb9fc8be72540d8bf35840ccd7156 100644
--- a/Documentation/devicetree/bindings/power/supply/battery.yaml
+++ b/Documentation/devicetree/bindings/power/supply/battery.yaml
@@ -44,6 +44,7 @@ properties:
       - const: lithium-ion-polymer
       - const: lithium-ion-iron-phosphate
       - const: lithium-ion-manganese-oxide
+      - const: lithium-ion-silicon-anode
 
   over-voltage-threshold-microvolt:
     description: battery over-voltage limit

-- 
2.34.1


