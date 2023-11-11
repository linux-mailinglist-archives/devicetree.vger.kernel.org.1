Return-Path: <devicetree+bounces-15105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDB67E87FD
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 02:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A3692812F5
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 01:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4323C23;
	Sat, 11 Nov 2023 01:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hkL3rPoW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6A13C15
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:49:55 +0000 (UTC)
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A004449A
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 17:49:53 -0800 (PST)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-5a7c97d5d5aso37279137b3.3
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 17:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699667392; x=1700272192; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=eDlw7BJOYLQR1JOHE6qHm6buxe0pe6v5T1qkeVTyvFM=;
        b=hkL3rPoWuVO5gUpuDYEu231JAx/r4jUemKGdzM4xwqMMk99/cHVj8fcr9dxW3GjgFM
         PZ7Fiv3tKKeA7LUT33Jw4wYpeYblrAd8OPY+QD6JMF1iAtOo33B5JNGvBpTVRxm83SpO
         uEViMvoPqHt4F9nCT/ndHJdiZkp1xWuw/OhZybsJvK6yJrxuE0BlFdkswL2IigpvzIQj
         nmHAugm+g6BU0srgvJuuyuZi6N1zlJxtAhhW/97GI6bDbycmfgY2mKhU45+mEhop1ytJ
         yYap5mf4HO4A2BzZnoZykIdcSAB7B1fOE2EdLknol3TvogyMEHkv81Ao+XyQm5Ph+PpC
         Jydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699667392; x=1700272192;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eDlw7BJOYLQR1JOHE6qHm6buxe0pe6v5T1qkeVTyvFM=;
        b=BJbMFtg6DzrdRYZOtWuVPVFoO8Rp6dv/kl/AkDqJ6Iery4TjQ8KL5+E0RWggOfpE9s
         zeamDu5Us0pU65IrfUg1adKafzUlyW60ZojWGLgdNr32pK89i32MNr/E5aX31GcAqx6i
         sgYGB3qnqi1pZosdNUl9Qg6owGtWvbxDavqxMspAFwc9FJ8MX87hqJRlGfZOv4zAtgsa
         qfPNMVAIG65d7cS7SVzX/HbGksvwV2mO6+vJSLYxXMC/AnFx5YnJ+XKri4se20e+vjw5
         SsfQ/lASmyCclk9tep/gPFAXrESkQu/m61IXCkvl5K2NEHsB1tBGK94T8Qj3koYwnSjL
         NE0w==
X-Gm-Message-State: AOJu0YytF5b0x8jhGf1P6c/i+6vEn78RmL/6sOhrVtxvKBnM42Nf9eC/
	iCYAyEq3tMSGcLwu5LtdIddJvScbJQ8d
X-Google-Smtp-Source: AGHT+IERwBrWzhyK476JE9i6cDqJ7sSklRpxrfNPiR2sMV/S2AQZXjtMIMjKFVKGwgldZdmSUEYbZqNkwknd
X-Received: from davidai2.mtv.corp.google.com ([2620:15c:211:201:77fa:5ee:8100:77])
 (user=davidai job=sendgmr) by 2002:a0d:d747:0:b0:5a7:a929:5b1d with SMTP id
 z68-20020a0dd747000000b005a7a9295b1dmr25429ywd.4.1699667392377; Fri, 10 Nov
 2023 17:49:52 -0800 (PST)
Date: Fri, 10 Nov 2023 17:49:29 -0800
In-Reply-To: <20231111014933.1934562-1-davidai@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20231111014933.1934562-1-davidai@google.com>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
Message-ID: <20231111014933.1934562-2-davidai@google.com>
Subject: [PATCH v4 1/2] dt-bindings: cpufreq: add virtual cpufreq device
From: David Dai <davidai@google.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, David Dai <davidai@google.com>, 
	Saravana Kannan <saravanak@google.com>
Cc: Quentin Perret <qperret@google.com>, Masami Hiramatsu <mhiramat@google.com>, 
	Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Oliver Upton <oliver.upton@linux.dev>, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Pavan Kondeti <quic_pkondeti@quicinc.com>, Gupta Pankaj <pankaj.gupta@amd.com>, 
	Mel Gorman <mgorman@suse.de>, kernel-team@android.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Adding bindings to represent a virtual cpufreq device.

Virtual machines may expose MMIO regions for a virtual cpufreq device
for guests to read frequency information or to request frequency
selection. The virtual cpufreq device has an individual controller for
each frequency domain.

Co-developed-by: Saravana Kannan <saravanak@google.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
Signed-off-by: David Dai <davidai@google.com>
---
 .../cpufreq/qemu,cpufreq-virtual.yaml         | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/qemu,cpufreq-virtual.yaml

diff --git a/Documentation/devicetree/bindings/cpufreq/qemu,cpufreq-virtual.yaml b/Documentation/devicetree/bindings/cpufreq/qemu,cpufreq-virtual.yaml
new file mode 100644
index 000000000000..16606cf1fd1a
--- /dev/null
+++ b/Documentation/devicetree/bindings/cpufreq/qemu,cpufreq-virtual.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/cpufreq/qemu,cpufreq-virtual.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Virtual CPUFreq
+
+maintainers:
+  - David Dai <davidai@google.com>
+  - Saravana Kannan <saravanak@google.com>
+
+description:
+  Virtual CPUFreq is a virtualized driver in guest kernels that sends frequency
+  selection of its vCPUs as a hint to the host through MMIO regions. Each vCPU
+  is associated with a frequency domain which can be shared with other vCPUs.
+  Each frequency domain has its own set of registers for frequency controls.
+
+properties:
+  compatible:
+    const: qemu,virtual-cpufreq
+
+  reg:
+    maxItems: 1
+    description:
+      Address and size of region containing frequency controls for each of the
+      frequency domains. Regions for each frequency domain is placed
+      contiugously and contain registers for controlling DVFS(Dynamic Frequency
+      and Voltage) characteristics. The size of the region is proportional to
+      total number of frequency domains.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    // This example shows a two CPU configuration with a frequency domain
+    // for each CPU.
+    cpus {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      cpu@0 {
+        compatible = "arm,armv8";
+        device_type = "cpu";
+        reg = <0x0>;
+        operating-points-v2 = <&opp_table0>;
+      };
+
+      cpu@1 {
+        compatible = "arm,armv8";
+        device_type = "cpu";
+        reg = <0x0>;
+        operating-points-v2 = <&opp_table1>;
+      };
+    };
+
+    opp_table0: opp-table-0 {
+      compatible = "operating-points-v2";
+      opp-shared;
+
+      opp1098000000 {
+        opp-hz = /bits/ 64 <1098000000>;
+        opp-level = <1>;
+      };
+
+      opp1197000000 {
+        opp-hz = /bits/ 64 <1197000000>;
+        opp-level = <2>;
+      };
+    };
+
+    opp_table1: opp-table-1 {
+      compatible = "operating-points-v2";
+      opp-shared;
+
+      opp1106000000 {
+        opp-hz = /bits/ 64 <1106000000>;
+        opp-level = <1>;
+      };
+
+      opp1277000000 {
+        opp-hz = /bits/ 64 <1277000000>;
+        opp-level = <2>;
+      };
+    };
+
+    soc {
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      cpufreq@1040000 {
+        compatible = "qemu,virtual-cpufreq";
+        reg = <0x1040000 0x10>;
+      };
+    };
-- 
2.42.0.869.gea05f2083d-goog


