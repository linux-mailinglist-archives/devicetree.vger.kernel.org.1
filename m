Return-Path: <devicetree+bounces-197323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE755B08D5E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:48:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA67F7AE8E5
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699782D46AD;
	Thu, 17 Jul 2025 12:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CdWLIJxF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9D0291C26
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756491; cv=none; b=nGSLXKFPgPvW7Uqzq0AI8VXbmwWOcaA6wUliBlZmfPWm4hIQS8DQpVRDmn9idXmXAsCqFioC15ZbemqzPyf2snqYC8M9dl+L75VdC2npK9qeephIPgZjTS1wJHDOD5SxagA25okzmzC4aGLq30nk1BhEF0biJn3TgykAKDbEytk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756491; c=relaxed/simple;
	bh=TXtx922bW7Cthax35l5eL6qlXJtqJfd163vx/p8QQUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IfBp1DOhbkW/2GgO4Y3zQsl6Q+X3Oe5CIPwDBhSb2aMfZHiZAl7sJZj6pPYqcl3GhAETdnP7Qgth8GXTfKk8jR80yHo7AMNdaqmjI76rIM6+DO2qEPtDXdSS+6PQ8ohOgGUdJ1GbHKWTB0BdiZevkrPiQSi1OCF2XseDLI0q+N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CdWLIJxF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HC5lvf020761
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dVmI/zpQBLHcmY6/km9+lnVLqKzUs1cGOy2afpNbw1A=; b=CdWLIJxFATwrJk1Z
	sXz+cK0ikSSAhq9RFKcE2ix+DNfu5lE9tiDOHj6FP0o2zWVzgOsrjm7QY7STDf9a
	k7v5p7ePBWaIJsTsn+JUXm2Boa+2ANZ6V/jw24Iw3SbPnQyMjieI+ean0HVyUnTq
	LaU69T9tmxB160H7fslKCnqCIYK6ET93yKHk+fbhmyVy6mSzjPeBkNx1JwsS1jZ4
	mO2skWUz0nyjlimMD8qMn71iXqNefDDDPoVEPklV4jJZfYFFTg7gHvt3wH9bWZbr
	wHVeTd0LXd/RXckF9YiFtyun4hmqMDDhPbZe8aqXDJPJT7dpB9N4AjThaVwiXJyT
	yhmTdA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpjq29-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:09 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31202bbaafaso977044a91.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756488; x=1753361288;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dVmI/zpQBLHcmY6/km9+lnVLqKzUs1cGOy2afpNbw1A=;
        b=rh+Al89XflGAxBP1lEScJpjpM/Ix08kk14JkyUNdIY7sDpypC4elTBPHzxzyyQCJfM
         ePaTDKAM2LB78iY9AyOIVOVoTEQjRug/CycCzXmbHLdMvYtXtzwKluD1vXH1wlGrzgP8
         SKp+D7PgoiieG3TnYyvbwILzjPBJkcRr1E5u7WioSSOaMrrNVThgX8GxLUQVQ2YepfD2
         7ww/W5dpw3LLSmmXG59s2IHIWa5zG31ZthrF0CEeRpZyB5+ndGmUIRn6IezLdLfwkNSs
         5SWWprU1QbENyQEiLtLUE9IIloCNAg7nFEWNIG5HQlPsLtkJCgOg7Tj8xdSzPmJKoHch
         tBAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxLdiXFCOdpeY7da8l8yyMEaP2SmgGtVdVuS9BEJ5kyv3qXrS0i33mI45LNV0Actssrm71AIkHNMMl@vger.kernel.org
X-Gm-Message-State: AOJu0YyGJL/SIiwFB4scQgHYQdDL6F3dFyIJJ8akvKBEc4taP6u+OiUk
	NlZt+nhl32CkRf1p3WsGCAI2ZnY0Xd5xWLtygynEzcm1edGJpPL+NVEZCKbdJMzcbDkopFUzGet
	pmIikbOP+NG7iPsZra9h2TFbeg/UEyF9uktVSRG4n+TK1VvP6t0QbCEanVObDUDNT
X-Gm-Gg: ASbGncsCCTGSBZz4PaRK1QoHcwoCUGIoV6cNPVGco0Ia9mIZkd1ataQ38/TDIzbdNaH
	HwBJ4zUCkX++DCYDqasFzupryibRiPr+LtQuCijYgF+flhb8kh+IKqu7M+V39Mmw76YwOIjwpXZ
	hdZ1in58HUJUhnXAd4KPKP8kzFfwn9E0WCICWIPqOGCDh03PkI52DDCiPgT+d8arADkZZ2DsS9q
	WqeAm5LBzTncCnrR+QyhwMZZx+3t8haurOyiQtn2sAHswW44KznhmIuo3pP9BRteN9iMEEbD1g0
	prah845W/en0Lo1HQ0JA/unhslJS+GKg5pBqZ6gJp13JmWWR5gjaM8GhR7jxHK9UrPy5bm62eYq
	c
X-Received: by 2002:a17:90b:5388:b0:31c:15b4:8e22 with SMTP id 98e67ed59e1d1-31c9f435808mr9114233a91.7.1752756488049;
        Thu, 17 Jul 2025 05:48:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkOlSWzDs1uSxp1jQJYtEnS6kEvwG5U6hkqUjcCEAR0EVPDQRcrI9D1cToYjNe3mFQ7HLYKQ==
X-Received: by 2002:a17:90b:5388:b0:31c:15b4:8e22 with SMTP id 98e67ed59e1d1-31c9f435808mr9114191a91.7.1752756487531;
        Thu, 17 Jul 2025 05:48:07 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31caf828a0esm1505283a91.42.2025.07.17.05.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:48:07 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 18:16:49 +0530
Subject: [PATCH v11 3/8] dt-bindings: arm: Document reboot mode magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-arm-psci-system_reset2-vendor-reboots-v11-3-df3e2b2183c3@oss.qualcomm.com>
References: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
In-Reply-To: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752756455; l=2577;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Pb0JW5FgpXpfFWALyentRdrGNmebMgVj4WCNzS0Y1bY=;
 b=BgwZ30iCRhtExbmDA6TGpA/ZoDLVSuir4HWMJR6quDkTJVIhg8rPL/W6Ku9lD9vGEir88pY36
 8DCIosdvqopAvydgEHilt2iR7zGvvBaGtQw4OuratuzgNcdD01zNQmc
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMiBTYWx0ZWRfX6BV7opDdoZT+
 tHNMaEWPuaESZA26znditSqNEtnnXITXn26YJBxb6tWFdkQI2CYoSEM0yY5mrr/SNaE0cJpdKmq
 hUp4HB5xjvBd9qouATfk104BIAQcYC/j1yxCcgxyIVNq1h2Ge22cNWIuGcwcpPrlTkZNEms4zgq
 6MrJrTZTlwOYLPs3Ey4KQ6stgdxvn0IBYOE5KwyCmnrQzc4Ui7XEpYIVzYscs3my3Z4tJWIS93q
 aSSDYivTfPCixi/o99wIwH8xxjl3qIO3yZA9H2YDUQagleLPPCf+x9kziUWh2lIxG4CHLmfeWKm
 JUYxxUTTCWztIDgJ8f/8GL0126iXvVi7BjMV9BMLlcspwPW9FGm4I7LW3UQzcSZbp0E3yp8gtHK
 sMuj4OQXLVV7GxeTvnWrorU+1pbYLpnKXzZH0PiWFR+QC+7WOOBSnS1hc/0WiwFbavTCdXmP
X-Proofpoint-GUID: 8Y88mMVwFwcUUfwrxaxVhF6c2qMeixbJ
X-Proofpoint-ORIG-GUID: 8Y88mMVwFwcUUfwrxaxVhF6c2qMeixbJ
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=6878f109 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=UInjrUrXc7y1C1sAkbYA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170112

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


