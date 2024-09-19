Return-Path: <devicetree+bounces-103783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EF897C248
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 02:09:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 852F428160E
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 00:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E878F566A;
	Thu, 19 Sep 2024 00:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="obZob/GU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5D64A08
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 00:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726704581; cv=none; b=MgQZ9illlKBi46oFaU4aUMRlKuoARHXOBcWA4Yv4uVHzygtmNL/24f02g98Wsy4Lek6yNUXz60LjK1lgRg1LwKMmqXhNfCxUh+vLt6ow9pnh+dESELzzGEdWAKV9qLuePiLA9OlFh1GHe533GxIV3yyJyH2x1uPLkbOLE9x7xpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726704581; c=relaxed/simple;
	bh=bwyLYrDa8bFEuDqOlNmqgY5kTo/+gQDs/+NfbJ4fOpk=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=D7hqoo9mjnOy7y+Any2G0Vmqj1n0a+sXzXw6le1Y76lyHUGIRMbiXmjS+uT/tMDtBAhKrCu/XnoLbHiJ8Fp/Q/reRpxw/nn0vlbaTRa2FzziTuB8UvA9j4hZfMqPkE6iDT3pB8zG/Em+VaYcZs59QhhkqwRD+TTaVW5zPqHeAN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--davidai.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=obZob/GU; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--davidai.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e0353b731b8so567091276.2
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 17:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1726704579; x=1727309379; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=i3NxGwHKiPartzkPCOrFEH3MzGEQYYqX3F8NtYxKTlM=;
        b=obZob/GUn4yGqxFb+yKwX7+evVXoksmuVCLddIXpcMlSxTgkDav9jkrIWwKrlZF1KS
         Gq8vVxdwJ/auUEXRA3BEKIsJeupoDWXNDeHXziXBNTJj2KMDlGlf/fKoNkTjjAW0a2Op
         Ad65tE00djWGga2wT2xz/5A2X42d0TVT6E6xC0IXGaJvPmzCZ9sua3UHSzbdzICBB22m
         EClBQqXE1thxQ8utI5GPnW7qSvosgcObgHFn+zTqXCWMy7gljrgtlKVxnANaPzut2NDQ
         3AbkJ6MR1Af/M778E/3W5x+lqCHb1teQtj929vxRI5VqcKdguzH1kxCqXdL+Uw2r+mLJ
         vtJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726704579; x=1727309379;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i3NxGwHKiPartzkPCOrFEH3MzGEQYYqX3F8NtYxKTlM=;
        b=VUzjKmUEYouWcWnnPeUCoGNu3MOO0E/aJ6/KUdAjdpD1NZggfhqJ7oA/Ygx0eJJaXC
         Mf9UinSusXJnDe9esXWsLAeM0WcR3Nh4Cg18n2+YIJ7A7XRhGEDphJ6uvtzfr0KS3un4
         Er7SQHRv7jIFb6d9gpW67dDfw00gDRZHCb1lvSKhUO1VDfFdRMtytt5SyY58FxEeQzBi
         RmzuTSEnvm3f+3UrA3BUaDR1wfOidULnSGD92IiyKdByhF3oY7amaRLKFRvrA7X1sOAR
         EYrXMBgLWZK2DfON79fqt9zF6X9GY0gssfmYUIsoQpscfDd6a3GvcRuq1E7VH6LlKuPD
         ce6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUHUrITlpQUsSYUTAIHRb8dr+1jUK1R6nOZm/6h2LRpNSeL/sIT1B7qzhnaJsf3iBTP3ySHbAGnN+C3@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn9K6K79YaN29SUY7dr1EWfIjYj4SEGYquQW3H4eYM/Gipg1DJ
	8e90sgnZYNRMcQSLQp/n4HOkd8aP90ZMk+gfsOvw7//bPxs+UHn5DI6CzKRTI/cuc/9Eq1tvj4Q
	wjyFL8A==
X-Google-Smtp-Source: AGHT+IHl1XmPQy3MUFnAY/RXegJ7drfzK6UvnB8cgxFfQj0i1CCiVinITS0VD+GkKMQKcoH+CWo2Mh+vGxxh
X-Received: from davidai2.mtv.corp.google.com ([2620:15c:211:201:2985:f9c1:f5a3:ad7a])
 (user=davidai job=sendgmr) by 2002:a25:d895:0:b0:e11:44fb:af26 with SMTP id
 3f1490d57ef6-e1d9db88758mr28547276.2.1726704579142; Wed, 18 Sep 2024 17:09:39
 -0700 (PDT)
Date: Wed, 18 Sep 2024 17:08:32 -0700
In-Reply-To: <20240919000837.1004642-1-davidai@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240919000837.1004642-1-davidai@google.com>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
Message-ID: <20240919000837.1004642-2-davidai@google.com>
Subject: [PATCH v7 1/2] dt-bindings: cpufreq: add virtual cpufreq device
From: David Dai <davidai@google.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
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
for guests to read performance information or to request performance
selection. The virtual cpufreq device has an individual controller for
each performance domain. Performance points for a given domain can be
normalized across all domains for ease of allowing for virtual machines
to migrate between hosts.

Co-developed-by: Saravana Kannan <saravanak@google.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
Signed-off-by: David Dai <davidai@google.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../cpufreq/qemu,virtual-cpufreq.yaml         | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/qemu,virtual-cpufreq.yaml

diff --git a/Documentation/devicetree/bindings/cpufreq/qemu,virtual-cpufreq.yaml b/Documentation/devicetree/bindings/cpufreq/qemu,virtual-cpufreq.yaml
new file mode 100644
index 000000000000..018d98bcdc82
--- /dev/null
+++ b/Documentation/devicetree/bindings/cpufreq/qemu,virtual-cpufreq.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/cpufreq/qemu,virtual-cpufreq.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Virtual CPUFreq
+
+maintainers:
+  - David Dai <davidai@google.com>
+  - Saravana Kannan <saravanak@google.com>
+
+description:
+  Virtual CPUFreq is a virtualized driver in guest kernels that sends performance
+  selection of its vCPUs as a hint to the host through MMIO regions. Each vCPU
+  is associated with a performance domain which can be shared with other vCPUs.
+  Each performance domain has its own set of registers for performance controls.
+
+properties:
+  compatible:
+    const: qemu,virtual-cpufreq
+
+  reg:
+    maxItems: 1
+    description:
+      Address and size of region containing performance controls for each of the
+      performance domains. Regions for each performance domain is placed
+      contiguously and contain registers for controlling DVFS(Dynamic Frequency
+      and Voltage) characteristics. The size of the region is proportional to
+      total number of performance domains.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      cpufreq@1040000 {
+        compatible = "qemu,virtual-cpufreq";
+        reg = <0x1040000 0x2000>;
+      };
+    };
-- 
2.46.0.792.g87dc391469-goog


