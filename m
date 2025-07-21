Return-Path: <devicetree+bounces-198398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7EDB0CA7D
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 20:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DC17546854
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 18:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3ED2E2651;
	Mon, 21 Jul 2025 18:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nz9IARnS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EB32E2EEB
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 18:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753122574; cv=none; b=NSISjYRXn8SGK4vgdgLYLCCbIkF1iIlMMR9+lm/Tq1cVroF2a77zQPhOkW0Ti9290TgJf5slv9p5gZTP/h+pqxB/ZKZZly9+tq96V+696046gosZl+IaxtQBecdxGqVNq0ko+mCwsbzOGeY/Vqb/sbLNeVliaelzfFy2nyK9smw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753122574; c=relaxed/simple;
	bh=TXtx922bW7Cthax35l5eL6qlXJtqJfd163vx/p8QQUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ltX5NhEg7pDLnStKkrQ8qRafHVe/u33vkjrdykrlEK4eJVHRqSVuvDtlTL9Ub0qSq+jEWmnEAgWn9pDPNt18bJv3kiDXH2UUhDFPfjSg175vEJnQ3XsgUOByp6Rd6NvF2JThPSH21N1se0S620hhSODsDi/LbmaypCJp1n/18+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nz9IARnS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LGSg0b000995
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 18:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dVmI/zpQBLHcmY6/km9+lnVLqKzUs1cGOy2afpNbw1A=; b=Nz9IARnSnjy4o3WP
	enj39xfEdma5CFqTgjQsX0Ks4/lU1+Q4PTwNMxFoSdJ49AGzdBlDtcF6behBXAmQ
	FQylQDMi5F9khivZUgHTAr1iXBK1zklqqQ3iZXT/pbPF+iDGXB/9suzemK02r8lM
	f6X0yX4RgsHnxJWQEFZvoSCdVTIBcmvs/gv68JR5lXeusf/A2m09mdfIx+N6Fup/
	UvYm8f8WyqmFvjFB3bNT3a/Rwjz/LJV4Fv4qn/VoAdW+/LM4nlJdmtt9Puvb34/s
	743xUP7hPlv1EuhRzG3eUu9iCxO9ziY8IaPwgE//2YQw42ASynzefq91YxNC3c1I
	AGbdJA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044deqxp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 18:29:31 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-235f77f86f6so44298295ad.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753122571; x=1753727371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dVmI/zpQBLHcmY6/km9+lnVLqKzUs1cGOy2afpNbw1A=;
        b=qWKnKTkWSTvCZlioWQM55z+5Ru2h4yYOhuGVVr8sDKSzuTEOaLU6DIr/Io7K++RMdN
         aU1FhMwlDcgJLFB1GkezzXh05IiwqcYK/AtW84F+zRMCNYNhINFwfUDkOvWmyGCeNmvP
         sowf4I8MRa4JfODwBWvp5MWJeFhXT4Toh9jpD5NSq7Y82FMQiv0jladWOerjTSpZmr5g
         l61JpWYkVsjYm+pgg5gEQ0lf3TEpOGUkvDhD9qTGMNM4Ndgb0TtsHoKejgAyL/qIIQeJ
         uuaLza32tpEBtHVbJ5kuVN66jMnRphdluzSU+V0fuRx9xE0ScTHll2Tvv2Vvg4SqGu1W
         fcgg==
X-Forwarded-Encrypted: i=1; AJvYcCVX2+XuGwFBXaA/UJuQgMkfF0XD7pY2h968Wt+K9R/JNVQBGsfFOyQ8jFDRCBfbcqpPCWkWHOWIXxiP@vger.kernel.org
X-Gm-Message-State: AOJu0YxKSy2WLV9QG+n8JICAnvEa6mNXwRFW5xfLAPcQcSPkqOjd3Xfn
	Ojjkz/AKUWDewoaUJVE+mzJDOy5UKMaLlfFES0Q9nDPSW99hZNaL0jW/zi2lN9ZE9bSc82kGOhx
	BDyPnZ63tr+/dfaEJQr57n542oJB/TYy7rZA2v24mC/h+nvh0PEYyeH4N3SUddOl9
X-Gm-Gg: ASbGncsbzHhD9T10DPcOtXbqrUtPUMz6B9yBiIzZn5bPIO2NV3z4l/kZgN6U5cyAJ/t
	8inksfqCIUY6u+FxWEV+TDuO7I46oc2sbGU8Do/i8yMckC9vIZfq7OSpeCwPcxQ8SDRWOx2aLR8
	bKIFTNw0OaChiVAtGEY70HIF+JQ/WCaxvrpEaaX0JounyrXTeNLSHTvCjbRQcXvKNQ4zSmwduLr
	zvxOIglPKkH+wFvb21Ez+oUcHavje0+tdnvgd8yPBiG6BMnjfGaZhW4fRsRYWbFe3of/79wAfsk
	6cSA+TmaQG7E0YrkCOIooOX11UbrINJiBUJA0zGoU38Er22cUWdEMJ1OEAR8l6aHz+WX0hqBrI+
	2
X-Received: by 2002:a17:902:f60a:b0:234:aa98:7d41 with SMTP id d9443c01a7336-23e257608famr282083595ad.42.1753122570641;
        Mon, 21 Jul 2025 11:29:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2v+24oc4EGuXA/VCAKEi0tkhjcXI5flOV7/cv88JcfHdhd0j3Bztjw4+c1dSccqUc0h5COA==
X-Received: by 2002:a17:902:f60a:b0:234:aa98:7d41 with SMTP id d9443c01a7336-23e257608famr282082955ad.42.1753122570168;
        Mon, 21 Jul 2025 11:29:30 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6ef4b8sm61414545ad.194.2025.07.21.11.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 11:29:29 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 23:58:50 +0530
Subject: [PATCH v12 3/8] dt-bindings: arm: Document reboot mode magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250721-arm-psci-system_reset2-vendor-reboots-v12-3-87bac3ec422e@oss.qualcomm.com>
References: <20250721-arm-psci-system_reset2-vendor-reboots-v12-0-87bac3ec422e@oss.qualcomm.com>
In-Reply-To: <20250721-arm-psci-system_reset2-vendor-reboots-v12-0-87bac3ec422e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753122539; l=2577;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Pb0JW5FgpXpfFWALyentRdrGNmebMgVj4WCNzS0Y1bY=;
 b=pptw5r8GqVdGNeKRHeianN38LF9fFIuF8QV2U/PQ7Mx8OoSZB0w/WPhNdsfuuQZ8vBD1NQoVo
 Czo/OiAwv1EBWHrKCYsHwu6lR2k236wFsub+A8iOZv7TumxiO4APofJ
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=687e870b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=UInjrUrXc7y1C1sAkbYA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: wbEik65ZrgLvZPj3lRmcH8RFM6k3Nu19
X-Proofpoint-ORIG-GUID: wbEik65ZrgLvZPj3lRmcH8RFM6k3Nu19
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDE2NCBTYWx0ZWRfX0mvL82ianfK6
 P4haPOhzK8OaIslcZA/vzBlCJlGnq8bkq+tcpJEbO1isfOPXI3N132JOWC4dpPxTMV8gep+75d4
 koE8oVJ9ltfXKF7aRg3+Zpu5L42kuEzSZXdf74H9krJnOdo6DsYMy6//YH58VsVz0nc3pG6fn/F
 NVbenB5GUf4FoFINKYyVlH0TlniKp7JP6K0W03Wj7Xce/iq6sppKtPC8/YJ5C0ED2YanGI7bL8n
 ePx0Nf3HOjp7om2oPaXd8B78tCXf0oCrl/OM2sGmUoJ40ZUIK73bm/ItKFYEIKmF4mDmhPssPjG
 QZcTRLA85wOAZXkabLpcwuiPUwpe0u5+BhreiXjfTT+nAqxePjVSAUUvRckq0jRp3LfGa2AUBrK
 nNcqlMMauHORSnQXI9qXXmVMKKEnn4ZxayqzlcamGP6r5k37F1Php6mF31CR7KKPYqYCiTkO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_05,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210164

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


