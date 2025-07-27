Return-Path: <devicetree+bounces-199991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0CDB13089
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 18:27:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D0953AA607
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 16:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FE8B2248A5;
	Sun, 27 Jul 2025 16:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OZynjd0b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21021224AFA
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753633552; cv=none; b=TgY/p0ClpqwXRmd2K8yi32OgmqaDse72dSbiQAma7gl5ZNHB+sQ9Vj+Vtaykw+q4xbzL2J90SO+c9JYkTjfQm9+6V6p9FmR6Ao0CB7txpUKVZDANjedeur2dST3v2e/xNNlWZ2akoFY6ahx2VljTfqczLkWdGxfpxgf7GqvqJCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753633552; c=relaxed/simple;
	bh=TXtx922bW7Cthax35l5eL6qlXJtqJfd163vx/p8QQUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rxk0Vp1FhjhdR5nEFqczaPZteziVpR+SAL7CIfY/ECo4GPsQ19GJNQ0tDmH0CQdMltwsekQ4UJsKm7iHs6rR4ZNCExQBU6g4T++4+oAoB5R2h6aVO8xEvw7BCF2Gw/kxhmAlOUb1SNg2OKj54VLj+CABQaTKk2x0nSuDltX4t0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OZynjd0b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RDt6fR008054
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dVmI/zpQBLHcmY6/km9+lnVLqKzUs1cGOy2afpNbw1A=; b=OZynjd0bEGHbnJJ3
	IWW/B+kDbmJVKigmjkl1uTDl5LCq3FVamQjo/ab340CcnS6W4wYsKSqRSuDZ2xkI
	uz8pouY58AIthEQHNdVJwGEj59ZvtTQXhmLF02qtSg7q8eiTg4WaYmnR/CIQ5D0B
	1ZqsG+u5s4c+Jsx5dpDME/gZh48EggAr8o15CvWkLUA2/YO78dQ34EX0bxrsGKGw
	OZJ21VI9E33OgyfTJcE+YqK9O+ShZptev+nOH/8JKUHXN4NtqY4X98m+vKoXn8rh
	yUXH9MTJfN6Mi7Y6Nv9MoR3L0UOP9zON8kbAUOP/PewWsFd1oJ4Vb2E9CEwYx3J5
	Ylt8dw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q85tbcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:50 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b00e4358a34so2468425a12.0
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 09:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753633549; x=1754238349;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dVmI/zpQBLHcmY6/km9+lnVLqKzUs1cGOy2afpNbw1A=;
        b=S6m58zNrw7CyreEVJpjPMtUNvq6cGLYqaCtnau0rx3gv3O7UZHPhY2n3mihYtMW9tt
         tVpYqdD8b94Y8ZFLeTp+qVlBSswLjMF6/DS0dTsxbW4aJiKQLA3OIJga/lyUt2k0xuxr
         uh3WBFAQOuuzRdvOG2yBw8UjfCewlvXNv0IIL3t6cBDl0M74bT2OnX+jr+TFC93tuziF
         umL9PDURTIE1YGd5CLIYlEliy7mRPu7scRGSvnDlCVsIZcqJa3JEgvtv1l2HuLAC56ix
         RhdZZX72rEwPq/oNG/Au3PcmHOfCIZyiFTh8aHCweqaMflRhZM4zJ/gxKCVC6zz1DS7r
         y53g==
X-Forwarded-Encrypted: i=1; AJvYcCW47aotv1HkoeclX80MNTsAOSSkLml7Xumo1H6/JpzZrXhpwqfnh8A03vy0mQgRdwNYOjpdx7zCiQuS@vger.kernel.org
X-Gm-Message-State: AOJu0YwIFh/GG/8XAHId+K/afcOQth2pjFxCX+aXK9ARieVp8Hj1ZEru
	ptVpjjkP7cj0YJiqqnBsd3DcsCZRQ96SZnwKCYSd9zWkK1C3lzMcvj/mi/q575khvoKqwcoDwUh
	WReeWpBbeAA8IKaS8D9PSb4AOCQB5gay6hlqIw43jT8w9VejSfWzJ7pZw7ifmCVti
X-Gm-Gg: ASbGncviCdk5bPrY/305fTtFF/vMvXF1C6lzbzNWPDS9d1KbY26/OVCXjhy9UM7VL//
	rC4FvuK/Y987cjNkxMP22Zz/lg6NUpw6jU5EfXYUB/Hh+WRRJASOKyF66TOHQj1HustrkowIu6/
	JuFNICh41WU7yEoBy4R4l6Rsjz4uNBLO/lh6456Ya28PUu/TnXNsuWJj9Kkbaeg1jaVmOSszWxO
	g0MRCIxGYAxf2pXrYJEaY8SmL6jfnXvaJepJYCT5HHdS4P2bG/cbzHI1dtEwiYjrmcpslByV2G0
	a2NAtXEmwRlop5xZx0fRG9GvMD5fBRDd3zhyacgF07pqewgbk/P/PQCvm/6Kc/y76cuZ2zYX714
	8
X-Received: by 2002:a17:903:1107:b0:23f:d903:d867 with SMTP id d9443c01a7336-23fd903d9fdmr68042125ad.35.1753633549300;
        Sun, 27 Jul 2025 09:25:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEL3wWdtZ6aYUyxBwD4I04sxzmNGeS8xOyoLA0/pGD4nypDDQZu/utCQqLS7ndqtErXNjHKbw==
X-Received: by 2002:a17:903:1107:b0:23f:d903:d867 with SMTP id d9443c01a7336-23fd903d9fdmr68041555ad.35.1753633548710;
        Sun, 27 Jul 2025 09:25:48 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fd9397ebbsm29110325ad.210.2025.07.27.09.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 09:25:48 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 21:54:49 +0530
Subject: [PATCH v13 06/10] dt-bindings: arm: Document reboot mode magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250727-arm-psci-system_reset2-vendor-reboots-v13-6-6b8d23315898@oss.qualcomm.com>
References: <20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
In-Reply-To: <20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753633495; l=2577;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Pb0JW5FgpXpfFWALyentRdrGNmebMgVj4WCNzS0Y1bY=;
 b=q2Cpgc5X/5vvp5IW+bSMM73MNGrPdxZ9TyGWHgnn7fEPw/7YCTssgw97rASyUi8M1FNatC4RE
 D62Y1b8i1PMAAg0ElzQjqtUuEhXWnmNzMVrBj50GG82dX0mbqehtdl0
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDE0NCBTYWx0ZWRfXzlWmsCz/stwQ
 TU1CosN7mSJis/u7e+M/zNEiL4jrIwDVNbnObVe/caFRV06+Iuvkef4K8CfdeyhBXjFR0s8crB6
 PP1XL2xm5tyfMWSbUpqHbjltN4ljJp78ztJiXILjnedvhxZmHlqNzWZ7vDv0bMuJ6hDysMA4aQc
 9PsFCOxOpBApXANUUmVPbiXRb3hAZdG5WuJZgOttEaFOGGlrBW6eD/Hht+Hj0qWEs7jWOK+4rBm
 vmNu/7//+bpmMhFZMbvDpw6OQPb8yZhhdDPJM/n19lvsMwfA/Plq5YU8BxmY7U1u8BrhC5kta23
 NoYboGnQ7z0HLQJxyk3NbvfupreCs0WIQawEkEiU/tns1EFwLZiZPWa76IAnoJwh07v24H6zZhQ
 LrelHWEEB+iEtzLILguAYWCFr8DJniHYgfFmr9ToaYv6ivtsPsCuCTjBx10DwPqsdYOjZ0ve
X-Authority-Analysis: v=2.4 cv=TqLmhCXh c=1 sm=1 tr=0 ts=6886530e cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=UInjrUrXc7y1C1sAkbYA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: Bo8M0inUAotVQM5W_T6A3mZJckv7ITHJ
X-Proofpoint-GUID: Bo8M0inUAotVQM5W_T6A3mZJckv7ITHJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_05,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507270144

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

Add bindings to describe vendor-specific reboot modes. Values here
correspond to valid parameters to vendor-specific reset types in PSCI
SYSTEM_RESET2 call.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 43 +++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 7360a2849b5bd1e4cbadac533c1a7228573288d4..da3a584c76b48e313a5d4cb7c8e0c3a3628fd1bb 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -98,6 +98,27 @@ properties:
       [1] Kernel documentation - ARM idle states bindings
         Documentation/devicetree/bindings/cpu/idle-states.yaml
 
+  reboot-mode:
+    type: object
+    $ref: /schemas/power/reset/reboot-mode.yaml#
+    unevaluatedProperties: false
+    properties:
+      # "mode-normal" is just SYSTEM_RESET
+      mode-normal: false
+    patternProperties:
+      "^mode-.*$":
+        minItems: 1
+        maxItems: 2
+        description: |
+          Describes a vendor-specific reset type. The string after "mode-"
+          maps a reboot mode to the parameters in the PSCI SYSTEM_RESET2 call.
+
+          Parameters are named mode-xxx = <type[, cookie]>, where xxx
+          is the name of the magic reboot mode, type is the lower 31 bits
+          of the reset_type, and, optionally, the cookie value. If the cookie
+          is not provided, it is defaulted to zero.
+          The 31st bit (vendor-resets) will be implicitly set by the driver.
+
 patternProperties:
   "^power-domain-":
     $ref: /schemas/power/power-domain.yaml#
@@ -137,6 +158,15 @@ allOf:
       required:
         - cpu_off
         - cpu_on
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: arm,psci-1.0
+    then:
+      properties:
+        reset-types: false
 
 additionalProperties: false
 
@@ -261,4 +291,17 @@ examples:
         domain-idle-states = <&cluster_ret>, <&cluster_pwrdn>;
       };
     };
+
+  - |+
+
+    // Case 5: SYSTEM_RESET2 vendor resets
+    psci {
+      compatible = "arm,psci-1.0";
+      method = "smc";
+
+      reboot-mode {
+        mode-edl = <0>;
+        mode-bootloader = <1 2>;
+      };
+    };
 ...

-- 
2.34.1


