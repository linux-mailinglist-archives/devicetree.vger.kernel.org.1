Return-Path: <devicetree+bounces-249963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 050D0CE5330
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 18:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91F2730329D8
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 17:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD2821E08D;
	Sun, 28 Dec 2025 17:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OxIe5rbp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gxs8epHa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99981223708
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766941296; cv=none; b=LxwIjxI2W/QLaKmy08E7Xxcc/vVffzwxkt5iGio0rLX+Fv6o20yJDjLBTvdCXJnBoB3rrtlI7dZrZ8CIKuxpdDN9xf7lJEjvyzSNmruEZoDp2sx/SSbhY2/mONdLKI8bvUACJS5elrUvy1jTATS+L5fcHH5ShuppATL2LpiakSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766941296; c=relaxed/simple;
	bh=Z3Uvt1g22UCAzzm9Ye5G+m0KkYhJ6zD99kCW5R0yLXs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C6Q0uw8q1Kc6NRrcJAPaRjRz0UyyyXQg3N5U/f009NZQtPmPsNGN9rJCaP/4aogq0OH8lIVqokwugUscqciSmGdmRoG7QQzjeIKHAAi6+NGypqJyHZjgZiMYfwFg0AX4bcVxRG0aKSLJq1iKqwmR7eT8Qf89OVSsmPn8pnVWvZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OxIe5rbp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gxs8epHa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSFcqGF2938515
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:01:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EgkVy6DtzgeepUjDzeDturVG3Tl9T2Q5JP6w6jnsXWk=; b=OxIe5rbp2AI8i7+J
	sleeImxYtFB3KisFURIXpg9dmVXd4NIXyRYm0tQJ5b48Hn0bowHUTIKrkZYveCir
	nYoggDNWbkg+78ugS03nRjCLWajSISquA4pA4JAkfiDbh/ZFzjb+R2dmvoSZSUIN
	NMyJjDm/ROaw61QVK06iQ0c/OYldcJesoP4oVJzWxobvYBNslwT8IDlCkBnPp9zG
	uOJMW5vppnC+tCKeXGfJo0HfilqH0H2CId8joKYbv+cN5TUGrNDXXdscYSke6qwP
	Bu7g96MuPfLHbDEqcoMmePWlhBKQpvV1YdSF8ONIwdfEv006lzMfJngDBHmiMSqZ
	PItqRQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba55e2nvh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:01:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f1450189eso78393365ad.1
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 09:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766941293; x=1767546093; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EgkVy6DtzgeepUjDzeDturVG3Tl9T2Q5JP6w6jnsXWk=;
        b=Gxs8epHaMsW7sA6LWTWkf5vMzLGOSP8eZhkMi2UVHWqE7rP2MJ0DkCxbfvzmqrd1Gh
         kS7lEqOYYcrgzewLQi8YnH4TOqS/MvfR/+7KEdjCMWjKLmDnPUHuDDEA3BESzWjOanfm
         VmUuQ3B2JXrgOo9txupqnv+27AbXyf+csMXOMVlSdZigKFEVSaC6wXh0z8yxfp1Ph+CN
         bPV4iXKcSAsYv5ZgIVxL3NhF3qn2a66PZLjzgvIvieul3aOEz9Ibq3JRP8Nv1aUD2o2C
         RcRdg66n9R92PnjcpTJrCg5ZUD3d5mYjzoh/EDj3jdW6ezS+tKmxFr/85cdH2CnNDWPp
         52MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766941293; x=1767546093;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EgkVy6DtzgeepUjDzeDturVG3Tl9T2Q5JP6w6jnsXWk=;
        b=ixX6Uop7dQ9VvJgQMJnHYSQDNImohJ9KccHLLKTYGrBYi1wlBYliP4ndM/kl9bRZn4
         EveV43nPZq+cJxJOeCOfp05L9n7bZJ2hm/hKvonkBVnjYBC8LLKV0V7fPiEFvgBBkltj
         z01XREUekRTNtLRz0EKNyIUHAgDRdVGpX+QdILP4MStnyOByUZ+W288edQV0BL3vDOiN
         vsXJVDx2aD6Ur2yK/cKl2RvvNYMo7ler0Y8zYQ7yftLS9MUMr8e+jvyzklJaKRFYxay3
         B9W7UPY03ldATlLTZ7u7jueEQd0bOsXZwIUvkmsO+a/mdpcOP6LIpsBmv6UlTC7tbQc7
         rsyg==
X-Forwarded-Encrypted: i=1; AJvYcCW1IASHdcc2Kv7hnKWNy3RynIhedt7k8n30cGfcjnZsSu0xckYeGaWlhuljRsjOT4CP5qrN5yE9g/zC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlqxbh66xIAJX9ILWAgNyHbED8CCvSeU9iemm1vckFSPC56e4h
	dX14NIET24Jumcv+urAjPFKO+WwFkkCH/w6ehczGfXdZi7Ivj8MavtKq9TnyJLMp+HJMrHPHHaV
	LW9kwM6edtYHvRMmkQHO87h0doKf2blk9m90cJbnEoyPaOsco3JvJrc3yy/aT6jLS
X-Gm-Gg: AY/fxX7oH4C/OVHCsQ8O6LiAT0MyeNYBDQJXVDpT80wS655q5F+yRW/JwaDi/yJDY4j
	okPs/c+VwD5iNTKVmfhIyJlucW4BxWlN/ClFGmCQ7p+m+O/XEiK4JUsozQVhlMQXAAB6IEzG/t+
	ZIA/usj74hWE6OEAMp/9vtyWtXqQShiKAlU6/euuxJkV8AXcbUts/5tzq3o61J2vMdW9tYEFau3
	PKVGhWpIetiSn7fN3PgGNIzUWWqr6PeH85GdluWsu2HTwI7KPuQXsh7x9Ii8m3v6Dp1vir0FdBa
	SMOYVcdsiebsQWYgFnhXyTFfCBPMAazIqWgLFxThWSXw2RKujW38r3U2c+tTLbtQFcA18c6mHbx
	wjIldoIGPPRrCT+6Jb3Ls9tIenOVmAFZTj8g=
X-Received: by 2002:a17:902:f641:b0:2a0:acdb:ce0c with SMTP id d9443c01a7336-2a2f0d5e6b6mr328165655ad.29.1766941291496;
        Sun, 28 Dec 2025 09:01:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkVDTis+MO+jJ2XVc11RH1dUAvWYZWPtIZDBfV3hoUR9sZUoKcqO5XGZRumnuBx6nmZp35pg==
X-Received: by 2002:a17:902:f641:b0:2a0:acdb:ce0c with SMTP id d9443c01a7336-2a2f0d5e6b6mr328165215ad.29.1766941290854;
        Sun, 28 Dec 2025 09:01:30 -0800 (PST)
Received: from work.lan ([2409:4091:a0f4:6806:90aa:5191:e297:e185])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7ae354easm27053925b3a.16.2025.12.28.09.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 09:01:30 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Sun, 28 Dec 2025 22:31:02 +0530
Subject: [PATCH v4 2/5] dt-bindings: connector: Add PCIe M.2 Mechanical Key
 M connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251228-pci-m2-v4-2-5684868b0d5f@oss.qualcomm.com>
References: <20251228-pci-m2-v4-0-5684868b0d5f@oss.qualcomm.com>
In-Reply-To: <20251228-pci-m2-v4-0-5684868b0d5f@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-ide@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5734;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=Z3Uvt1g22UCAzzm9Ye5G+m0KkYhJ6zD99kCW5R0yLXs=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpUWJZBBU6idHrl067Trml1v/iED+hvBV/J/neZ
 FwbwrikFlKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaVFiWQAKCRBVnxHm/pHO
 9bDyCACj9sp74ccPzpkJ1IG4951rGuWl8afBwQGBEi4fAyDDMKJv57y9xb2r3E4ZhIys7s22zjT
 DvdKi6U+IHgpnE5DOWQCjEuWm79P/Gfx+/juIaTkCbC8JXmzFMbfdyiNKgYhHoIKUpXSvA++3kq
 J6qKuqASYnaMz7hlXKUsU5KHPL/Z9bHUIVX+Z/mQju/dAXsblt96Nd55mfsKgc4LfvxzsqkOTJj
 AuA5VUMfteeSv2DHO2PHP/kjK09m7sy3dBcwyNwk2GLqg8RW57J9vFsGq3X+YN3vyKNnVwWJewe
 9j0czX0BdzpmH8hDO3DmYgLPw3qgUsRxjEi6kJBbhIFB+CMe
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDE1NiBTYWx0ZWRfX/NVRDxC8lPns
 Eh6EqOwQzvPgWP8HU340irjc/oyCEYBBXijf1DIKdcWG0TG7skHCRSvRryfpKnemXZkXQDLBI4U
 iMXc50Xl26OM6PjiA/j8o3trV0uIw8sCkvEwT6swQrGIHaiOngZKiTLhKasH+0f4W+eN3EvtbB3
 6u09vG+p5qs1zb8/l+e9E2zgltJ1Py/XkYP3ij63N+nHQBe+7U/l+Ea17EJBHp335MsxqPyYhoY
 gVEbnoToMADkB1tGcI8xAE5Dyh1WmWViQkypthaF0tFjoyrmXEFFlBbWeAsVUxnazR33HMfmZ85
 xYYDb3PQdDqDraitZN+2kLrNk7HgVRDnVyZgms1E0VMWyfva67PdpfOnAhA4IlE1eiG4QDt4h7y
 ylAA7aqcAhoVdyXeD7yUC6tljyjHAvLmW9KmnYOd+YIGkydSwQP2UuT3pPVd8jD9r6WISY0h+zP
 9jsHBVqUold4yV4T3qw==
X-Authority-Analysis: v=2.4 cv=UMDQ3Sfy c=1 sm=1 tr=0 ts=6951626d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=wQxqEM7SeJhtJFFEbD4A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: RnNFsvpcEZnEzp-3kvUuY7kLaVQtlu0j
X-Proofpoint-GUID: RnNFsvpcEZnEzp-3kvUuY7kLaVQtlu0j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_06,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512280156

Add the devicetree binding for PCIe M.2 Mechanical Key M connector defined
in the PCI Express M.2 Specification, r4.0, sec 5.3. This connector
provides interfaces like PCIe and SATA to attach the Solid State Drives
(SSDs) to the host machine along with additional interfaces like USB, and
SMBus for debugging and supplementary features. At any point of time, the
connector can only support either PCIe or SATA as the primary host
interface.

The connector provides a primary power supply of 3.3v, along with an
optional 1.8v VIO supply for the Adapter I/O buffer circuitry operating at
1.8v sideband signaling.

The connector also supplies optional signals in the form of GPIOs for fine
grained power management.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 .../bindings/connector/pcie-m2-m-connector.yaml    | 133 +++++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/pcie-m2-m-connector.yaml b/Documentation/devicetree/bindings/connector/pcie-m2-m-connector.yaml
new file mode 100644
index 000000000000..e912ee6f6a59
--- /dev/null
+++ b/Documentation/devicetree/bindings/connector/pcie-m2-m-connector.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/connector/pcie-m2-m-connector.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: PCIe M.2 Mechanical Key M Connector
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
+
+description:
+  A PCIe M.2 M connector node represents a physical PCIe M.2 Mechanical Key M
+  connector. The Mechanical Key M connectors are used to connect SSDs to the
+  host system over PCIe/SATA interfaces. These connectors also offer optional
+  interfaces like USB, SMBus.
+
+properties:
+  compatible:
+    const: pcie-m2-m-connector
+
+  vpcie3v3-supply:
+    description: A phandle to the regulator for 3.3v supply.
+
+  vpcie1v8-supply:
+    description: A phandle to the regulator for VIO 1.8v supply.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description: OF graph bindings modeling the interfaces exposed on the
+      connector. Since a single connector can have multiple interfaces, every
+      interface has an assigned OF graph port number as described below.
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Host interfaces of the connector
+
+        properties:
+          endpoint@0:
+            $ref: /schemas/graph.yaml#/properties/endpoint
+            description: PCIe interface
+
+          endpoint@1:
+            $ref: /schemas/graph.yaml#/properties/endpoint
+            description: SATA interface
+
+        anyOf:
+          - required:
+              - endpoint@0
+          - required:
+              - endpoint@1
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: USB 2.0 interface
+
+      i2c-parent:
+        $ref: /schemas/types.yaml#/definitions/phandle
+        description: SMBus interface
+
+    required:
+      - port@0
+
+  clocks:
+    description: 32.768 KHz Suspend Clock (SUSCLK) input from the host system to
+      the M.2 card. Refer, PCI Express M.2 Specification r4.0, sec 3.1.12.1 for
+      more details.
+    maxItems: 1
+
+  pedet-gpios:
+    description: GPIO input to PEDET signal. This signal is used by the host
+      systems to determine the communication protocol that the M.2 card uses;
+      SATA signaling (low) or PCIe signaling (high). Refer, PCI Express M.2
+      Specification r4.0, sec 3.3.4.2 for more details.
+    maxItems: 1
+
+  viocfg-gpios:
+    description: GPIO output to IO voltage configuration (VIO_CFG) signal. This
+      signal is used by the M.2 card to indicate to the host system that the
+      card supports an independent IO voltage domain for the sideband signals.
+      Refer, PCI Express M.2 Specification r4.0, sec 3.1.15.1 for more details.
+    maxItems: 1
+
+  pwrdis-gpios:
+    description: GPIO input to Power Disable (PWRDIS) signal. This signal is
+      used by the host system to disable power on the M.2 card. Refer, PCI
+      Express M.2 Specification r4.0, sec 3.3.5.2 for more details.
+    maxItems: 1
+
+  pln-gpios:
+    description: GPIO output to Power Loss Notification (PLN#) signal. This
+      signal is use to notify the M.2 card by the host system that the power
+      loss event is expected to occur. Refer, PCI Express M.2 Specification
+      r4.0, sec 3.2.17.1 for more details.
+    maxItems: 1
+
+  plas3-gpios:
+    description: GPIO output to Power Loss Acknowledge (PLA_S3#) signal. This
+      signal is used by the M.2 card to notify the host system, the status of
+      the M.2 card's preparation for power loss.
+    maxItems: 1
+
+required:
+  - compatible
+  - vpcie3v3-supply
+
+additionalProperties: false
+
+examples:
+  # PCI M.2 Key M connector for SSDs with PCIe interface
+  - |
+    connector {
+        compatible = "pcie-m2-m-connector";
+        vpcie3v3-supply = <&vreg_nvme>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                reg = <0>;
+
+                endpoint@0 {
+                    reg = <0>;
+                    remote-endpoint = <&pcie6_port0_ep>;
+                };
+            };
+        };
+    };

-- 
2.48.1


