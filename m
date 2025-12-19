Return-Path: <devicetree+bounces-248080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5D4CCEB26
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C420E302E050
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A332D2DE713;
	Fri, 19 Dec 2025 06:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i73Fm+4M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MQDlffK0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171E92DC77F
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766127568; cv=none; b=T918mS0ZEdJ6fQ1s6eMU2Rv0wXbl613GlIyDaHw/a3CSsaB8AJns3ZV1lCM14GkhXvBpgX7xbQofMCfYjvTWBedzklzuZ1TG6DvLxXmNqsFvwwHds1TIqSyABFez4x5fFbNiYJXdLsrO1eAtdkX8Vr+LMXBATEFyleG+QekhUBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766127568; c=relaxed/simple;
	bh=BKxmPAIfDQMipphXpdmD/EV9MfAn1lh12oL7+7IANCg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EX6gYgw4WqrqtpcGivskbcOzUXGqs6JwgEcayTkIMkO/9NW6m0GFlc1EkZjBE8ZLdfw6A5vksEOQ/OWJf0jvTluwTKKQqRwH6Me23Hz75hWvEFgEb77MZiu48fR+gM0eCwl5iPyFmrl0USHQtMk5/ooPj7XN/ou3xJaMp5tWxsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i73Fm+4M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MQDlffK0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4bxBK3939133
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gg3gwEOyjqD
	Do8XAcNT9mbGI0dzn97wIDkd7TasSApU=; b=i73Fm+4MlspXLrUZRqd2ihCFV6j
	OrRdU+eetmwJo4ZO3fHeplG9u/N9HcETn0nB++YgWTE1yw1kf+6sG3vTKB8xSeoU
	HLBGHshk0xVBV77LluHUKARPxQt0uxwFo4q1Ig7NODhdmMEfdUG30ESBcwImLjq2
	SX9ZuNIj+Dru3dvZ6UaYmwahICGRVCeFbQM3ezdElcsQusoPWqOmOcrfgAUnd4mI
	43LYdogKprndNnNPWs4KVa8KuWms4cOHQWJvgFg7voHemjpsRuvRdHrIuuxa8u5A
	SeVqCFYzK0Iy+WRpaL9IQF+U6aILNxZTEnxhUAkKUZFw0n/f4Dg23QkzEFw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c1m9k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:24 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso1544784a12.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766127563; x=1766732363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gg3gwEOyjqDDo8XAcNT9mbGI0dzn97wIDkd7TasSApU=;
        b=MQDlffK0j3qwdAscJdscsyR7slrhEzueh2lbR9Y57BinAR91moC3P9OPcG8EFK4Prn
         WfFXQ1mWDg5QRsDtQ9Bm4RLopvBe7sSAyrpFEteDOrRVDPdrOSD6wxOtSsVCaipTsUBJ
         VybrNVMZ1pGZ8EMG5kVlS8LXOnhSZQ3RgJhPraoFTrvWCaVNt80hw/wHotKqivP2Er8v
         nbolrtpntOtkjNT4yhBIZQhxGzJwNPlWDhYxsQEfojSi6Hc5CxQH1j7B+uL5Kfl8gl/m
         bNVOzpMaSt6xUSjbCahka3B3DczOeAKdOXDNMhxsIy8xxTV1lYLiOdJKqiJd8u25Qg28
         7a5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766127563; x=1766732363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gg3gwEOyjqDDo8XAcNT9mbGI0dzn97wIDkd7TasSApU=;
        b=glNkhv98H76JUdRb7C7jw9fiTxLr/mUKpGEBqHMud+EafFymLY0iO5xwgC3PfB+VF7
         Stwd7eTLqU1aEHxsRAAJcs4frLPP6IIRhpk8pHz2V9DEZBbapogVSHl6h7D2N/Djyf7w
         zQvuhD/aJMFTYn7Y3IBWUmQyXWVT/OPJIXcMVX7EHaxrUI1R+CSnh9A58XdJq+hkU+1P
         kp7s2U4VzBLxU37VtLtmYxe9EY2JfJjZsJ1bb8VL1NcP3aIaj0EK1O9bibVEnxWFXV2d
         ADiITTMr13t28JogdMDLMCRsx0wAX1BD+5DdJRJZO9HZ2SBhHaR8By7l81qM1nvrXger
         PAAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO3t7YqOecM5jPgzt3mah4MNbJOzhfJHWRKsBnQvAnVr1yaBLvcxEWhipzZsHa0H3OJZCc4r37edEP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5cPivZM5ULBg9ebEp5asyQR7lzNgm0ZhEhxJknda8TZdhKnpm
	Hs89+Np2XPDzWLRXD7esxVwHQLztC+MajhZX8niA6dE7miIyzkZRomcly/xQfET8pv6PIT7Bf/d
	5sWmFs6rGlcsISGzj6iDeCzDjrCmCdIyMG+vDzcn45W5PPXtR4N8nBHkEueBtaZrY
X-Gm-Gg: AY/fxX6P5jADdvUAmqhf0pUX+QIeaNx7MIIFsLSPaq6Bg+S34BizyLnK7lxDkmh9fyO
	+kDUPy4LAGX2cLF23/mGd1KcyN42AmB0r/FKPi6ZoqnplpMaIUIAXw8Ovw3anL0z+qsLzKw4T37
	yyJqxe3yWlABaUJEN5XruNGsyvgLYIaRJeIQXYfv8mDx0vamIJgBkLPVPW0rwnlHM1wXnD20KEW
	U6gHm+Kr25mi0Q7ddOYkUuupNRICS0FSJZ0jR2gXb+tLVYR9s6XN0JjqW6abHJE+lck0t9wKxSW
	se/E6I1LVAC4YTyBL829+lPhRcqCxByXBMBtOStQsU1pu8ooI5NrDHxcytlAEqOFm8GBuaRWUgy
	DuR94LqPyb4x075mDF7MUtW15p7J8Fd9J01vgFjfpoYbSNC+TTqPpOw7YBzOv/fUG
X-Received: by 2002:a05:7301:fa9:b0:2ae:6024:7a49 with SMTP id 5a478bee46e88-2b05ec6b9c4mr1744284eec.30.1766127563284;
        Thu, 18 Dec 2025 22:59:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJYvLZaWSPBDBbbKCP8gOigcENQ7QN2bMNns3ZqbINApzk9Ho2Lh06XOVZ26jmC/iDkr57WQ==
X-Received: by 2002:a05:7301:fa9:b0:2ae:6024:7a49 with SMTP id 5a478bee46e88-2b05ec6b9c4mr1744273eec.30.1766127562681;
        Thu, 18 Dec 2025 22:59:22 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b05fcfc1b7sm3614954eec.0.2025.12.18.22.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 22:59:22 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, suzuki.poulose@arm.com, james.clark@arm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v9 2/7] qcom-tgu: Add TGU driver
Date: Thu, 18 Dec 2025 22:58:57 -0800
Message-Id: <20251219065902.2296896-3-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
References: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: RXje0zIJsH7VX7rgqptlbBz7C071W779
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA1NiBTYWx0ZWRfX7U1XFhhUhFjO
 unTGIhxTWAN/3EnCXPqCWzqPRJY7uAUVZ5Ut7Cry33oD8q2ThDO3iQ6nWN5uFIbpLDvTMCFcBjf
 CbIr/lAPGjf4uwTBTkqRzJcBpMuZTvWOr+aGOHeDa2rCcnsSX1mb4QJV+QWtXLhNLVffeXekD8J
 5Si88RbstD/OqchQ1cf6tSb6NPYl7NgJtZg0q1deN1RQgNWpKrvFmpTszme6L+3Lea6ynapSWVg
 YAIeBZ6dg3jscGoEwsytRwsjjNqVC+aDMQIJj5xu9koQzOX3Z9xxb4yimqHKk/UG1BXazkdWbb+
 ESfeq7oDDZ/AX4qZ91HVYEIu3hso7PmxpPADG8ikd1wE0+OwlJ3LcObHPDq2NkaaQKm0dchFO2a
 Gvd/2v/MAzjCRK6ly/DSYbeZyVjG3VQ+CRRQ6LLxz/rrcYVFfFwWVwRjrCH765+iKw/dfr770HS
 9eDgNYlKvb/+LSGk2mA==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=6944f7cc cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=h99DN6MNysFgGb7_OMAA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: RXje0zIJsH7VX7rgqptlbBz7C071W779
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190056

Add driver to support device TGU (Trigger Generation Unit).
TGU is a Data Engine which can be utilized to sense a plurality of
signals and create a trigger into the CTI or generate interrupts to
processors. Add probe/enable/disable functions for tgu.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |   9 +
 drivers/Makefile                              |   1 +
 drivers/hwtracing/Kconfig                     |   2 +
 drivers/hwtracing/qcom/Kconfig                |  18 ++
 drivers/hwtracing/qcom/Makefile               |   3 +
 drivers/hwtracing/qcom/tgu.c                  | 178 ++++++++++++++++++
 drivers/hwtracing/qcom/tgu.h                  |  51 +++++
 7 files changed, 262 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
 create mode 100644 drivers/hwtracing/qcom/Kconfig
 create mode 100644 drivers/hwtracing/qcom/Makefile
 create mode 100644 drivers/hwtracing/qcom/tgu.c
 create mode 100644 drivers/hwtracing/qcom/tgu.h

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
new file mode 100644
index 000000000000..24dcdf1d70cc
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -0,0 +1,9 @@
+What:		/sys/bus/amba/devices/<tgu-name>/enable_tgu
+Date:		December 2025
+KernelVersion	6.19
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the enable/disable status of TGU
+		Accepts only one of the 2 values -  0 or 1.
+		0 : disable TGU.
+		1 : enable TGU.
diff --git a/drivers/Makefile b/drivers/Makefile
index ccc05f1eae3e..9608a3debb1f 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -177,6 +177,7 @@ obj-$(CONFIG_RAS)		+= ras/
 obj-$(CONFIG_USB4)		+= thunderbolt/
 obj-$(CONFIG_CORESIGHT)		+= hwtracing/coresight/
 obj-y				+= hwtracing/intel_th/
+obj-y				+= hwtracing/qcom/
 obj-$(CONFIG_STM)		+= hwtracing/stm/
 obj-$(CONFIG_HISI_PTT)		+= hwtracing/ptt/
 obj-y				+= android/
diff --git a/drivers/hwtracing/Kconfig b/drivers/hwtracing/Kconfig
index 911ee977103c..8a640218eed8 100644
--- a/drivers/hwtracing/Kconfig
+++ b/drivers/hwtracing/Kconfig
@@ -7,4 +7,6 @@ source "drivers/hwtracing/intel_th/Kconfig"
 
 source "drivers/hwtracing/ptt/Kconfig"
 
+source "drivers/hwtracing/qcom/Kconfig"
+
 endmenu
diff --git a/drivers/hwtracing/qcom/Kconfig b/drivers/hwtracing/qcom/Kconfig
new file mode 100644
index 000000000000..d6f6d4b0f28e
--- /dev/null
+++ b/drivers/hwtracing/qcom/Kconfig
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# QCOM specific hwtracing drivers
+#
+menu "Qualcomm specific hwtracing drivers"
+
+config QCOM_TGU
+	tristate "QCOM Trigger Generation Unit driver"
+	help
+	  This driver provides support for Trigger Generation Unit that is
+	  used to detect patterns or sequences on a given set of signals.
+	  TGU is used to monitor a particular bus within a given region to
+	  detect illegal transaction sequences or slave responses. It is also
+	  used to monitor a data stream to detect protocol violations and to
+	  provide a trigger point for centering data around a specific event
+	  within the trace data buffer.
+
+endmenu
diff --git a/drivers/hwtracing/qcom/Makefile b/drivers/hwtracing/qcom/Makefile
new file mode 100644
index 000000000000..5a0a868c1ea0
--- /dev/null
+++ b/drivers/hwtracing/qcom/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_QCOM_TGU) += tgu.o
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
new file mode 100644
index 000000000000..dbd1acbd2fa5
--- /dev/null
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/amba/bus.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/pm_runtime.h>
+
+#include "tgu.h"
+
+static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
+{
+	TGU_UNLOCK(drvdata->base);
+	/* Enable TGU to program the triggers */
+	writel(1, drvdata->base + TGU_CONTROL);
+	TGU_LOCK(drvdata->base);
+}
+
+static int tgu_enable(struct device *dev)
+{
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
+
+	guard(spinlock)(&drvdata->lock);
+	if (drvdata->enable)
+		return -EBUSY;
+
+	tgu_write_all_hw_regs(drvdata);
+	drvdata->enable = true;
+
+	return 0;
+}
+
+static int tgu_disable(struct device *dev)
+{
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
+
+	guard(spinlock)(&drvdata->lock);
+	if (drvdata->enable) {
+		TGU_UNLOCK(drvdata->base);
+		writel(0, drvdata->base + TGU_CONTROL);
+		TGU_LOCK(drvdata->base);
+
+		drvdata->enable = false;
+	}
+	return 0;
+}
+
+static ssize_t enable_tgu_show(struct device *dev,
+				struct device_attribute *attr, char *buf)
+{
+	bool enabled;
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
+
+	guard(spinlock)(&drvdata->lock);
+	enabled = drvdata->enable;
+
+	return sysfs_emit(buf, "%d\n", enabled);
+}
+
+/* enable_tgu_store - Configure Trace and Gating Unit (TGU) triggers. */
+static ssize_t enable_tgu_store(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf,
+				size_t size)
+{
+	int ret = 0;
+	unsigned long val;
+
+	ret = kstrtoul(buf, 0, &val);
+	if (ret)
+		return ret;
+
+	if (val) {
+		ret = pm_runtime_resume_and_get(dev);
+		if (ret)
+			return ret;
+		ret = tgu_enable(dev);
+		if (ret)
+			pm_runtime_put(dev);
+	} else {
+		ret = tgu_disable(dev);
+		pm_runtime_put(dev);
+	}
+
+	if (ret)
+		return ret;
+	return size;
+}
+static DEVICE_ATTR_RW(enable_tgu);
+
+static struct attribute *tgu_common_attrs[] = {
+	&dev_attr_enable_tgu.attr,
+	NULL,
+};
+
+static const struct attribute_group tgu_common_grp = {
+	.attrs = tgu_common_attrs,
+	NULL,
+};
+
+static const struct attribute_group *tgu_attr_groups[] = {
+	&tgu_common_grp,
+	NULL,
+};
+
+static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
+{
+	struct device *dev = &adev->dev;
+	struct tgu_drvdata *drvdata;
+	int ret;
+
+	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
+	if (!drvdata)
+		return -ENOMEM;
+
+	drvdata->dev = &adev->dev;
+	dev_set_drvdata(dev, drvdata);
+
+	drvdata->base = devm_ioremap_resource(dev, &adev->res);
+	if (IS_ERR(drvdata->base))
+		return PTR_ERR(drvdata->base);
+
+	spin_lock_init(&drvdata->lock);
+
+	ret = sysfs_create_groups(&dev->kobj, tgu_attr_groups);
+	if (ret) {
+		dev_err(dev, "failed to create sysfs groups: %d\n", ret);
+		return ret;
+	}
+
+	drvdata->enable = false;
+
+	pm_runtime_put(&adev->dev);
+	return 0;
+}
+
+static void tgu_remove(struct amba_device *adev)
+{
+	struct device *dev = &adev->dev;
+
+	sysfs_remove_groups(&dev->kobj, tgu_attr_groups);
+
+	tgu_disable(dev);
+	dev_set_drvdata(dev, NULL);
+}
+
+static const struct amba_id tgu_ids[] = {
+	{
+		.id = 0x000f0e00,
+		.mask = 0x000fffff,
+	},
+	{ 0, 0, NULL },
+};
+
+MODULE_DEVICE_TABLE(amba, tgu_ids);
+
+static struct amba_driver tgu_driver = {
+	.drv = {
+		.name = "qcom-tgu",
+		.suppress_bind_attrs = true,
+	},
+	.probe = tgu_probe,
+	.remove = tgu_remove,
+	.id_table = tgu_ids,
+};
+
+module_amba_driver(tgu_driver);
+
+MODULE_AUTHOR("Songwei Chai <songwei.chai@oss.qualcomm.com>");
+MODULE_AUTHOR("Jinlong Mao <jinlong.mao@oss.qualcomm.com>");
+MODULE_DESCRIPTION("Qualcomm Trigger Generation Unit driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
new file mode 100644
index 000000000000..abc732f91dfc
--- /dev/null
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef _QCOM_TGU_H
+#define _QCOM_TGU_H
+
+/* Register addresses */
+#define TGU_CONTROL 0x0000
+#define TGU_LAR		0xfb0
+#define TGU_UNLOCK_OFFSET	0xc5acce55
+
+static inline void TGU_LOCK(void __iomem *addr)
+{
+	do {
+		/* Wait for things to settle */
+		mb();
+		writel_relaxed(0x0, addr + TGU_LAR);
+	} while (0);
+}
+
+static inline void TGU_UNLOCK(void __iomem *addr)
+{
+	do {
+		writel_relaxed(TGU_UNLOCK_OFFSET, addr + TGU_LAR);
+		/* Make sure everyone has seen this */
+		mb();
+	} while (0);
+}
+
+/**
+ * struct tgu_drvdata - Data structure for a TGU (Trigger Generator Unit)
+ * @base: Memory-mapped base address of the TGU device
+ * @dev: Pointer to the associated device structure
+ * @lock: Spinlock for handling concurrent access
+ * @enable: Flag indicating whether the TGU device is enabled
+ *
+ * This structure defines the data associated with a TGU device,
+ * including its base address, device pointers, clock, spinlock for
+ * synchronization, trigger data pointers, maximum limits for various
+ * trigger-related parameters, and enable status.
+ */
+struct tgu_drvdata {
+	void __iomem *base;
+	struct device *dev;
+	spinlock_t lock;
+	bool enable;
+};
+
+#endif
-- 
2.34.1


