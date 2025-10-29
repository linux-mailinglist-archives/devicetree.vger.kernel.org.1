Return-Path: <devicetree+bounces-232673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22829C1A0D8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BCB585602C4
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2FDC3346BC;
	Wed, 29 Oct 2025 11:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aNUjs9Wi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E4Ol3EYg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9663314B3
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737415; cv=none; b=HUyq+LcZJyioDsZaTYmmGs09duZEaH4SwC2EwWpRoHlu0zX02nuSl/RjMUiRZuHy6umIb9MBO1+dpaJGDlOnAT7oWDTk2X/FSqZWRcDqkCy7RkEl9V30YM4UgTvVti4BSeo2Ij60l5AJYWHjc+PY19A4/IDWAUvTYyTtUlPlM/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737415; c=relaxed/simple;
	bh=8zvZqpFeuXSiqe4t+MpIJYoVCiPCsJm1Ov8cxUJVKCk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aVhC2soYj6ng0aolV7H04lvXdLm0jxIUWcXgyL1N7OrEZ+zfQhdceXdYmgrxzGIX+6BDbS131kaNV6ean4atSzdzJMH5JoLwGKLDkTGVFJz/qmHKsjHskXdv3MpqtKUFxlTU4khmwV8pRBl2Nx/S0eXVGHhIY1op1aJAlqcnsEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aNUjs9Wi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E4Ol3EYg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uouE3757463
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N5SuIv3JLHlPvqOUKHgEWsX4PG4GINisx08kaTXoUAg=; b=aNUjs9WiPzPJbyID
	o5El/x/qjHFJZumDaOCr1WdSAX9BNRoLz0IUuDThNxzIO0CpQuKsL93IHl2S5aaF
	z/ZE/pD4bIDCoQoqAKJ7TOx4cXeb7FypdGKNI5/Mzdp2PArZgx5HJDLUSxwLqLZT
	scza5/NzsINlKasQLMXPjLGph/vrZ1ORukkiEqTTSgwDeAIYqjZCMgfBlfsJj313
	tYiy1ZsJ1APgYeeyTH6VNKoaiJkdDkQ56zHOaUk9FhBM5py/19eHPx31UXL4mCX6
	emrVXJWSHHcz36Gmr7Dl8AZDEbKXAA6jBCDOSV5HenhNc5tGXPxPb1HLjzeJB8mc
	63khLA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a349y2bhv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:13 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-294a938fa37so86733935ad.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761737412; x=1762342212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N5SuIv3JLHlPvqOUKHgEWsX4PG4GINisx08kaTXoUAg=;
        b=E4Ol3EYg03P5/j5x6364/JsGtHzU84lfpic4l3hgBavTTi1T76iZHhMBNf6DQ6jIxr
         SGxLa8dypLaO5P0eM7uHTjKlUb48lzCOAklYn6Xr07qfSu+AK1dPXEdCJAOtWl4K+74I
         vgqmBXNLUhojAb5+hOPPITJOcIvj1fZ92izcT/AXt9CPoHQpYmhk/QFWL8ZZjgw4s/4s
         bKnwSzkFhiU+Kd5xbc6ME23hCrzO9wKmwCkX0s+jk+maLh2rF+md0SOPTSfFaK1umEud
         eYz23lQeAzf/VP9zp9dveKYsXoEKlmm5SNSBioEgcSCfPFYNtseqSLuk8xiVRIPwblpg
         oB9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761737412; x=1762342212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N5SuIv3JLHlPvqOUKHgEWsX4PG4GINisx08kaTXoUAg=;
        b=bndQ9+f+k4yRhueqJcsDZ5Zh6dl3NkNTslrI6RL/wSc6W6gFvLMbJRPXYvWnpIMY1R
         vEVybg01cJHcXzFoZult5OeavqSFII1a9q5Ab7Wyu8bME3MmH7gWECc5GiM9Knc5H8l7
         0LJCv/u9375+KdQEuOytA3JH62yYZ+CH6yhz0GP8/sW6WhwDXi/Atm3z4AeZKUtlAKwr
         4VYbzKqb1tzZFkSEXhvnmMdGApJpB0+n8Gs4QAs/VyXUb3d6MXbBAdeUAji21nBC0wHl
         sNmizqBcrmlQF1U4r+LVkTgQwvXqopY9eLAyK63U386m0wDWWsckQ/zt6ZvKdoayld0m
         ky0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVCeh9UQ2xOZ+NbNocH6nXPO7i5NP1OTPNy7w6okMHL7DsX/jMd9C3jRKsnqOwOQoBU7lLyWRCJI3lD@vger.kernel.org
X-Gm-Message-State: AOJu0YxzrPnWvC9OZfJhS0qJmPLiwBEJAq80tMGV0X4a9tOmyKJMvgvN
	vmIeDX6rPONlIOA5XK94Iv0iw4VFrLp1maXuuMY77cEt7r4bspzSaZ7H3q9HjgG7yBhE6h6nLAo
	kiu1piONS8HTuHa90oBFv1XZSxPCOMNWO4JJkXkATqT1r1foHPJ2Cs/IP7+9l/JT6
X-Gm-Gg: ASbGnctZdsRK4BC8qHVnRcXUQcJWEDyhfTfaD/HYnnqkKILXMgFR9xU1o0brmV0VIJL
	zDvYTucjt8xyJVT7PLNlTA5bWwmn1Rr0pkkPDn0QCSAPuOVDg2i2JLRXt0iln8wVXdGoICBlkoN
	9S3dkPH9o6jh1hmqM49UgS5/8VTyulVuNZv2SEL5rMpOKklLDJteFISrHbOFiwPRSU9LQC+DNQi
	+FfOvTW6tJD/j3aZsiI/i2SqKs31cVfgC6tS4kaXrGfvG6k4xBIE79WmhWIm58R+PtgT52RE2Zu
	96g9dnhdXHbKdVzB7mAb+dc+5nzqsvZoVwRegXqKxWH85DsKfUZRnVIZtthBe7bfpCmf52W8Eyd
	DFp2ouLe1NGUvvW6Hu/f1aFdlHJCdUGPWpw==
X-Received: by 2002:a17:902:c40c:b0:294:e095:3d42 with SMTP id d9443c01a7336-294e0953f09mr29700785ad.18.1761737412221;
        Wed, 29 Oct 2025 04:30:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKen6ywCbIWN5KljQYyzqeB5TtouLUxaHfS6JF/boLobTCHja0f2s4KTk4RalY/HOi1jpb3Q==
X-Received: by 2002:a17:902:c40c:b0:294:e095:3d42 with SMTP id d9443c01a7336-294e0953f09mr29700195ad.18.1761737411609;
        Wed, 29 Oct 2025 04:30:11 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d429c6sm152154935ad.85.2025.10.29.04.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:30:11 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 16:59:54 +0530
Subject: [PATCH v7 1/8] dt-bindings: PCI: Add binding for Toshiba TC9563
 PCIe switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-qps615_v4_1-v7-1-68426de5844a@oss.qualcomm.com>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
In-Reply-To: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761737398; l=5849;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=8zvZqpFeuXSiqe4t+MpIJYoVCiPCsJm1Ov8cxUJVKCk=;
 b=AdOy0S3mZ/lZS6F+7uotar2aiTwAJgcCpLULu+p8hRxJ2GoC59XC6AshqTdWID39wa9X7F+yI
 SwyzihmiykADjAAaHp87ipSRmmDPYA9MGaLk/hG6c8rgLeeu4IkCPnu
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=D8RK6/Rj c=1 sm=1 tr=0 ts=6901fac5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=dWfasREweX4F4dHnDHIA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: eEJA-XbG2K5Ydcns0250puBFnInm8lAJ
X-Proofpoint-ORIG-GUID: eEJA-XbG2K5Ydcns0250puBFnInm8lAJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA4NSBTYWx0ZWRfXz3Gcy9NZr0Me
 6ZHewaU/TTfR7dxlKXWxYe6ycl5HLx4wV44YjiI2O70veytx+QBcQTQmksbO0LI28HxMVENJ4iE
 ApJ2pVHl6YIZHCLjODnbr/4y3pvLB9wg7Tf2QCd/fOT3meczdxtZ4drW1J7QG+jwsaxCiVFxd6H
 CCbQteaIw9RpEyKRUy4ZzAIHnGc5atMWgNQsBHbGu/GLkDXRLdJ1kSEIRmQtg32vaD2n8luQyHD
 mbotJf5BEMylp6rWoSlRUmdt+QsJ+MmbPE61RItIKw5M/6kraq/QzPOEejn9MqherYLQIrrzoGu
 eMvHQo6DD3AJmNTk/eTCPI18jHmHxkl2j0xc0nxMIi1YPP8pMnSyo+XKw/sxb+T5S54BLU/dTsP
 iNybD4Qzw32lK6IKtb3sYMEmC2a5zg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290085

Add a device tree binding for the Toshiba TC9563 PCIe switch, which
provides an Ethernet MAC integrated to the 3rd downstream port and
two downstream PCIe ports.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/pci/toshiba,tc9563.yaml    | 178 +++++++++++++++++++++
 1 file changed, 178 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml b/Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..82c902b67852d6c4b0305764a2231fe04e83458d
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml
@@ -0,0 +1,178 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/toshiba,tc9563.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Toshiba TC9563 PCIe switch
+
+maintainers:
+  - Krishna chaitanya chundru <quic_krichai@quicinc.com>
+
+description: |
+  Toshiba TC9563 PCIe switch has one upstream and three downstream ports.
+  The 3rd downstream port has integrated endpoint device of Ethernet MAC.
+  Other two downstream ports are supposed to connect to external device.
+
+  The TC9563 PCIe switch can be configured through I2C interface before
+  PCIe link is established to change FTS, ASPM related entry delays,
+  tx amplitude etc for better power efficiency and functionality.
+
+properties:
+  compatible:
+    enum:
+      - pci1179,0623
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description:
+      GPIO controlling the RESX# pin.
+
+  vdd18-supply: true
+
+  vdd09-supply: true
+
+  vddc-supply: true
+
+  vddio1-supply: true
+
+  vddio2-supply: true
+
+  vddio18-supply: true
+
+  i2c-parent:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      A phandle to the parent I2C node and the slave address of the device
+      used to do configure tc9563 to change FTS, tx amplitude etc.
+    items:
+      - description: Phandle to the I2C controller node
+      - description: I2C slave address
+
+patternProperties:
+  "^pcie@[1-3],0$":
+    description:
+      child nodes describing the internal downstream ports
+      the tc9563 switch.
+    type: object
+    allOf:
+      - $ref: "#/$defs/tc9563-node"
+      - $ref: /schemas/pci/pci-pci-bridge.yaml#
+    unevaluatedProperties: false
+
+$defs:
+  tc9563-node:
+    type: object
+
+    properties:
+      toshiba,tx-amplitude-microvolt:
+        description:
+          Change Tx Margin setting for low power consumption.
+
+      toshiba,no-dfe-support:
+        type: boolean
+        description:
+          Disable DFE (Decision Feedback Equalizer), which mitigates
+          intersymbol interference and some reflections caused by impedance mismatches.
+
+required:
+  - reset-gpios
+  - vdd18-supply
+  - vdd09-supply
+  - vddc-supply
+  - vddio1-supply
+  - vddio2-supply
+  - vddio18-supply
+  - i2c-parent
+
+allOf:
+  - $ref: "#/$defs/tc9563-node"
+  - $ref: /schemas/pci/pci-bus-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    pcie {
+        #address-cells = <3>;
+        #size-cells = <2>;
+
+        pcie@0 {
+            device_type = "pci";
+            reg = <0x0 0x0 0x0 0x0 0x0>;
+
+            #address-cells = <3>;
+            #size-cells = <2>;
+            ranges;
+            bus-range = <0x01 0xff>;
+
+            pcie@0,0 {
+                compatible = "pci1179,0623";
+
+                reg = <0x10000 0x0 0x0 0x0 0x0>;
+                device_type = "pci";
+                #address-cells = <3>;
+                #size-cells = <2>;
+                ranges;
+                bus-range = <0x02 0xff>;
+
+                i2c-parent = <&qup_i2c 0x77>;
+
+                vdd18-supply = <&vdd>;
+                vdd09-supply = <&vdd>;
+                vddc-supply = <&vdd>;
+                vddio1-supply = <&vdd>;
+                vddio2-supply = <&vdd>;
+                vddio18-supply = <&vdd>;
+
+                reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+
+                pcie@1,0 {
+                    compatible = "pciclass,0604";
+                    reg = <0x20800 0x0 0x0 0x0 0x0>;
+                    #address-cells = <3>;
+                    #size-cells = <2>;
+                    device_type = "pci";
+                    ranges;
+                    bus-range = <0x03 0xff>;
+
+                    toshiba,no-dfe-support;
+                };
+
+                pcie@2,0 {
+                    compatible = "pciclass,0604";
+                    reg = <0x21000 0x0 0x0 0x0 0x0>;
+                    #address-cells = <3>;
+                    #size-cells = <2>;
+                    device_type = "pci";
+                    ranges;
+                    bus-range = <0x04 0xff>;
+                };
+
+                pcie@3,0 {
+                    compatible = "pciclass,0604";
+                    reg = <0x21800 0x0 0x0 0x0 0x0>;
+                    #address-cells = <3>;
+                    #size-cells = <2>;
+                    device_type = "pci";
+                    ranges;
+                    bus-range = <0x05 0xff>;
+
+                    toshiba,tx-amplitude-microvolt = <10>;
+
+                    ethernet@0,0 {
+                        reg = <0x50000 0x0 0x0 0x0 0x0>;
+                    };
+
+                    ethernet@0,1 {
+                        reg = <0x50100 0x0 0x0 0x0 0x0>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


