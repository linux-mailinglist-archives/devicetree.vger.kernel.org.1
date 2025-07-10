Return-Path: <devicetree+bounces-194893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD34AFFDCB
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 11:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28CCF1662CC
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7AB29B220;
	Thu, 10 Jul 2025 09:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ni2uPbDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB77291C2E
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752139039; cv=none; b=LSz4bYgIifUfnA6gfiHSlfeBFSYNtL/GVqtQL7B5BNcbHn2CVuH2iaxvXUSQoZTPg+846nA8RgRM6UY5mm/Mp71dua9MYvKtATpaKc+8Zbi/bzhpHkGIrpIBJqEPIPuwFfAqOmxg36cMc9K1vuU9t+LQ+SYgrjSrycXUtmgA8Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752139039; c=relaxed/simple;
	bh=khn8GMlrTtxNNR634wsCseHe/a7/+U/2qtnSEpHb+ZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rzzvg7YNRSDY9/lMmTCGKH2jY7bTpaMU3vmxq9RPlr3R+AtX4CMcV+sxoxfcF2YGwjDT+jazWVKYYgdblKQ3Pe/LjqQTSHZIriicGop3cQhfG7nglcNaxJOSfoZk1ja5vvvFrmRMBM9xbsGl/7iLhAiHiTeD4qgabp6KHQwtPB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ni2uPbDR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A9C9L5010419
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:17:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bm688pDoN1t58GLFHGhBI++/OTcmZdbP8x57uiG6loQ=; b=ni2uPbDRJeSqMnI1
	f5s4NXc92iTmeb4IiqlqTefRpdkV3ssbPXnkVqXkAAld3lrVzQD1hX4klx2Ooj8f
	89z5aHK6uVOdc3rE0936FhwbP75pr+yoDnkQdLYtqtjf4Sar4xpk3loikBcq+FMK
	Cjch2UovUfMG/CMATQlqe6GOo0ToMf/kqj++zc3uQ9+bzXtydsNwW5n4FVoD+5Bq
	fMfP7H12VkLkSD+aKEin91RVxLZIxvtZJiQJhrbRpFyboJbPSLnEmtbxNQRf+A5C
	+IESMd4WSO4/mANV5+oUz50rfb1+fMNHA+wdy+B2XuxNBwCqx4L1RpgEaUTPS/Q8
	vnPlQQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9dvbk0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:17:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23824a9bc29so12668755ad.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 02:17:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139035; x=1752743835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bm688pDoN1t58GLFHGhBI++/OTcmZdbP8x57uiG6loQ=;
        b=vigUjMDSMC0LW+DBbmyQQMLnlfnlx4WbezTHpVVdVVvj0LXYgDhW+iZRG8Pyx+e6PR
         P13zFYOcxJxOxITZUYnynUmvBhMLMg/y0Jkk3RTq8/xCqLoLgquEx7ScAMDLyoA8wRW7
         QCVVDoQZ+OCEs/map/qUCTMOJlhsYDwiqUcGGazJ2Si5WbBqnqvTFRV2oUJCvem2NWz3
         LrCtx+6iD7ZoWEVMeus/XrljyNb3nlL1E7qVjpbqaikOPKiyz8h6rI3seoe4tlys7SrT
         ozD6fdPIol7Tzb2cb2bQNN09y2F0y2/pl947qNOz7xYABIJuPpzPXQ/Nkrc5DWZ3EzIp
         OxiA==
X-Forwarded-Encrypted: i=1; AJvYcCV6g0JEHKaxsLW5qvaBAYQLXZ7hp3Xb6a4BiaO0wKrJNoYry3SY15LGUMwx0/mh97aLrVaXoCCOsYrP@vger.kernel.org
X-Gm-Message-State: AOJu0YyJmb5dZ+mR7Nvck6jf0YO378ON4pn4yTHuE106FDuFyJyoD71h
	MfAn3eONYkN4oDkCCNIgJCYnXhLxh1MzvtMa2wqGuqGjagfpyWi94uoXkjjGUH/GaofDtUigiWO
	3+yf+PvWrpkiRGf982/7+a8gO4505PertTJ1ZmE/qd1ntV9Hnjx7xW7/6AjFZNuSt
X-Gm-Gg: ASbGncvGNlwwVQ7DA3zWf3se3XUN4w9edKXu62WVw/5bTRxLQXTyvap0DWBrFr371tA
	2Fvn4uNEDCFYK7dPFsFDsdbSo2tpcGGYVYxDluI33qqBXW3dyclA55c2wbJWGTYgipMQdYEnfif
	3Y+CkkndQZsswfhYTVMeXVf6+byTcLKlD7XmbUSVjK3BV8pjgVxexTkALkQ9Q63Rt6XbsutMB3s
	0IQUf6+Tub3OZWz8n/lArS7wIL0t9YgxgcD5ML+xadtscBDNacQT91hoyn8JpDL0IyCxOanhsEZ
	9Oq/7uC3gNofFecbEe2bk/2QEhwClXmyUgSgCNVnklFu1tlcsPnQgpjg+Ug=
X-Received: by 2002:a17:902:cec2:b0:235:1706:1ff6 with SMTP id d9443c01a7336-23de46edf4bmr28704965ad.0.1752139034588;
        Thu, 10 Jul 2025 02:17:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwquEcV/DEQgNHo5i5rKIMG5wYJOS8HD0ETiQ+J8XjUT4+2RRoWOqCstZDWnrO0s1dBiyXug==
X-Received: by 2002:a17:902:cec2:b0:235:1706:1ff6 with SMTP id d9443c01a7336-23de46edf4bmr28704665ad.0.1752139034147;
        Thu, 10 Jul 2025 02:17:14 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:17:13 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:46 +0530
Subject: [PATCH v10 04/10] dt-bindings: arm: Document reboot mode magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-4-b2d3b882be85@oss.qualcomm.com>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
In-Reply-To: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=2500;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=LJQmaaDtgt8TROVTUTsTmEnpeK2uj+7rigIrzNpy/l4=;
 b=iy9PU4ZJOiTEn2epqZUOkW8+Xr7tjFQnf02iWN5UFpijHHJzDb+DQE9zwiCZcqY66/IiKYTBH
 Qa8lCfgZ15ZBxIImBn1nkijQHRDyoW0jh2GQrhRaXOvI4e1VEJRpOEa
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: pt7meQE_tSB8ePlPL5RtOZbaJl0F5f_b
X-Authority-Analysis: v=2.4 cv=W7k4VQWk c=1 sm=1 tr=0 ts=686f851b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=UInjrUrXc7y1C1sAkbYA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: pt7meQE_tSB8ePlPL5RtOZbaJl0F5f_b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfX55SrIGj7/jXy
 lS3fjlLcO2isAzg/ccudLQKKpnc+Mecwg5RuflMI42QJhL0y9wsOsxrM/IKsKEAID8f4Jvg4iLy
 9AZbJU/13zHkj7ISybzHsTAajEFwf5qEn2srqRG/CI/anVZU86SitSFCYPJjsI4lJwu89FcGCU4
 /oAalFPo554MWP3vQ0/SkEKZlHJyE6gFKqeN/uZuy002NKe0nR9YVWR4Guifug4dV4dunhQrudb
 D8OeugZFyXwLWGT3y+IFHWJbDmiDpQQlUNlFKE5OGBBTICS/Oj5Jl2W5IEfoevYDBwlIRpxkeMp
 HYPhIrYIih+3zTb/mo/Ru4FKAARFNTQ1nMxZPqf0U3xigak3WUuGF3I6ujGyZD9vhRdotmucEBa
 9FMqfriY+zZAoLze2uxgNLxa81CA6mrUakj0+5qGvVzEPVSZ8fPRrzqssut7iyrpjLUNVeJx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100079

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

Add bindings to describe vendor-specific reboot modes. Values here
correspond to valid parameters to vendor-specific reset types in PSCI
SYSTEM_RESET2 call.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 41 +++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 7360a2849b5bd1e4cbadac533c1a7228573288d4..672fc28f69ed7cfed4baf8c2185e0cd7b2024376 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -98,6 +98,25 @@ properties:
       [1] Kernel documentation - ARM idle states bindings
         Documentation/devicetree/bindings/cpu/idle-states.yaml
 
+  reset-types:
+    type: object
+    $ref: /schemas/power/reset/reboot-mode.yaml#
+    unevaluatedProperties: false
+    properties:
+      # "mode-normal" is just SYSTEM_RESET
+      mode-normal: false
+    patternProperties:
+      "^mode-.*$":
+        minItems: 2
+        description: |
+          Describes a vendor-specific reset type. The string after "mode-"
+          maps a reboot mode to the parameters in the PSCI SYSTEM_RESET2 call.
+
+          Parameters are named mode-xxx = <type[, cookie]>, where xxx
+          is the name of the magic reboot mode, type is the lower 31 bits
+          of the reset_type. Both reset_type and cookie must be specified.
+          The 31st bit (vendor-resets) will be implicitly set by the driver.
+
 patternProperties:
   "^power-domain-":
     $ref: /schemas/power/power-domain.yaml#
@@ -137,6 +156,15 @@ allOf:
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
 
@@ -261,4 +289,17 @@ examples:
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
+      reset-types {
+        mode-edl = <0 0>;
+        mode-bootloader = <1 2>;
+      };
+    };
 ...

-- 
2.34.1


