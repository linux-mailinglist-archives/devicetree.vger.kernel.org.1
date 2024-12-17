Return-Path: <devicetree+bounces-131847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA5F9F4C2C
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EFDD1671AB
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 13:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A17E91F75A6;
	Tue, 17 Dec 2024 13:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="yL+E8R+A"
X-Original-To: devicetree@vger.kernel.org
Received: from mr85p00im-ztdg06011201.me.com (mr85p00im-ztdg06011201.me.com [17.58.23.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DF71F759F
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 13:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.23.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734440891; cv=none; b=QPXzAwy2UpM8ZsNNknFVJJWZRfBU+1qUpaiDrKrytZjcodGiqpYwJ2AxaVWCL62ORFgRbjt1XLaKWL+1SlkSP2yyk+gchvPZCmSTgbEAv9K2QpSf8DOiPf5O4pFjmyRS5UrjgGuri2duyzzqGIb+HbaK4yc9hzfUD7xUAar33j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734440891; c=relaxed/simple;
	bh=VZavQ++21q2uPUZ1FUNPyQJnRNl6BcSboy0lOQqrykI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cYTHFg2tfHrZcyhz3GsvXNzqMbnEHg9lypSq5KWeBA/j0xviXdxQR97gtbZqKOUIuPV6RtIyR3RhQp2N3zqVPC90eH5goUjA+RkyYyy4f5ra7i5suLnAfXs6gDgDshZKOvXFu9W02RIxwRwRWMR/WDdC+vfZGCfSRowSLp5hZso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=yL+E8R+A; arc=none smtp.client-ip=17.58.23.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1734440889;
	bh=xQkfDGL0XIq7y1IU6Bhqw+rN458Q+Hz+5g2SVbEqwoU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=yL+E8R+A/oJ/fSmUCF+22x7yo61F5LN7YNkPGBJ23O0kz2dwoQiUuSwwVmGjlpKvc
	 +yY5BMTMs/6KOnInDzUbGdHo5rb/YeKBSQGbhsfPW8iCc9JUorAIWi/4hcYPjsNrFy
	 EGYA5VMXSizyHicoQ0PbQ/+5Zu+i6nIZMLWay/OxZXm1bBVlVJOmxu41FV8eLS0hqe
	 HaFIxks4x4xmHi6RmxbuyywGDLR0nMLbe/Gxfe1nMbxJUFLy/tOGUkyNGR6vanZ5Ha
	 9z60T0Ap/cTYwO/8w/rAnS7DG62DbdQEfo7TS3vFxL5dITb8SHoMMv04FkadV3aKvI
	 hnRaMe/C5f7Gg==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06011201.me.com (Postfix) with ESMTPSA id 7C271960252;
	Tue, 17 Dec 2024 13:08:06 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Tue, 17 Dec 2024 21:07:30 +0800
Subject: [PATCH v3 6/7] of: Fix potential wrong MODALIAS uevent value
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241217-of_core_fix-v3-6-3bc49a2e8bda@quicinc.com>
References: <20241217-of_core_fix-v3-0-3bc49a2e8bda@quicinc.com>
In-Reply-To: <20241217-of_core_fix-v3-0-3bc49a2e8bda@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Grant Likely <grant.likely@secretlab.ca>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: ehRZmWmdSfAKaTCii1oPUctISHaj8Mgj
X-Proofpoint-ORIG-GUID: ehRZmWmdSfAKaTCii1oPUctISHaj8Mgj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-17_07,2024-12-17_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 mlxlogscore=944 phishscore=0 bulkscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412170105
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

API of_device_uevent_modalias() makes uevent "MODALIAS=ITS_VALUE" in two
steps, namely, produces "MODALIAS=" with add_uevent_var() fistly, then
remainning "ITS_VALUE" with of_modalias() finally, and that may result
in various wrong uevents as explained below:

"MODALIAS=\0"                  // @env->buf is full after the 1st step.
"MODALIAS=ITS_\0"              // @env->buf is not enough during 2nd step.
"MODALIAS=ITS_VAR=VAR_VALUE\0" // another uevent "VAR=VAR_VALUE" comes.

The API depends on uevent internal design, so is not good practice as well.

Fix by:
1) Respin the callee of_modalias() with new prototype which is friendly
   with its callers.
2) Invoke add_uevent_var() to make the whole MODALIAS uevent.
3) Adapt new of_modalias() for its other callers.

BTW, there are no external callers of of_modalias() now.

Closes: https://lore.kernel.org/all/CAL_JsqL+CRmCQMzcF4-A-PRBrCsfK8nduJtOO=RrsDtCUUR7og@mail.gmail.com
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/device.c |  39 +++++++-------------
 drivers/of/module.c | 103 +++++++++++++++++++++++++++++++---------------------
 include/linux/of.h  |   7 ++--
 3 files changed, 79 insertions(+), 70 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index f24c19e7aba8e01656f503ae328a4e08aab5a5f3..6355707c200da9ced354132528adbcce24121247 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -195,19 +195,18 @@ EXPORT_SYMBOL(of_device_get_match_data);
 ssize_t of_device_modalias(struct device *dev, char *str, ssize_t len)
 {
 	ssize_t sl;
+	char *ptr __free(kfree) = NULL;
 
 	if (!dev || !dev->of_node || dev->of_node_reused)
 		return -ENODEV;
 
-	sl = of_modalias(dev->of_node, str, len - 2);
-	if (sl < 0)
-		return sl;
-	if (sl > len - 2)
+	ptr = of_modalias(dev->of_node, &sl);
+	if (IS_ERR(ptr))
+		return PTR_ERR(no_free_ptr(ptr));
+	if (sl + 2 > len)
 		return -ENOMEM;
 
-	str[sl++] = '\n';
-	str[sl] = 0;
-	return sl;
+	return snprintf(str, len, "%s\n", ptr);
 }
 EXPORT_SYMBOL_GPL(of_device_modalias);
 
@@ -256,30 +255,20 @@ EXPORT_SYMBOL_GPL(of_device_uevent);
 
 int of_device_uevent_modalias(const struct device *dev, struct kobj_uevent_env *env)
 {
-	int sl;
-	int pos;
+	int ret;
+	char *ptr;
 
 	if ((!dev) || (!dev->of_node) || dev->of_node_reused)
 		return -ENODEV;
 
-	/* Devicetree modalias is tricky, we add it in 2 steps */
-	if (add_uevent_var(env, "MODALIAS="))
-		return -ENOMEM;
+	ptr = of_modalias(dev->of_node, NULL);
+	if (IS_ERR(ptr))
+		return PTR_ERR(ptr);
 
-	/*
-	 * @env->buflen is pointing to the char after '\0' now
-	 * override the '\0' to save MODALIAS value.
-	 */
-	pos = env->buflen - 1;
-	sl = of_modalias(dev->of_node, &env->buf[pos],
-			 sizeof(env->buf) - pos);
-	if (sl < 0)
-		return sl;
-	if (sl >= (sizeof(env->buf) - pos))
-		return -ENOMEM;
-	env->buflen = pos + sl + 1;
+	ret = add_uevent_var(env, "MODALIAS=%s", ptr);
 
-	return 0;
+	kfree(ptr);
+	return ret;
 }
 EXPORT_SYMBOL_GPL(of_device_uevent_modalias);
 
diff --git a/drivers/of/module.c b/drivers/of/module.c
index 1e735fc130ad3ea9046f08bfab2cc9a07914e633..03a2b1b381e5b353b6699dac183c03186afb0486 100644
--- a/drivers/of/module.c
+++ b/drivers/of/module.c
@@ -8,71 +8,92 @@
 #include <linux/slab.h>
 #include <linux/string.h>
 
-ssize_t of_modalias(const struct device_node *np, char *str, ssize_t len)
+/*
+ * of_modalias - get MODALIAS string value for a OF device node
+ * @np: the OF device node
+ * @lenp: MODALIAS string length returned if set, exclude '\0'
+ *
+ * This function gets MODALIAS value for a device node.
+ *
+ * Returns MODALIAS string on success, or ERR_PTR() on error.
+ *
+ * Note: please kfree successful return value afer using it.
+ */
+char *of_modalias(const struct device_node *np, ssize_t *lenp)
 {
 	const char *compat;
 	char *c;
 	struct property *p;
 	ssize_t csize;
 	ssize_t tsize;
+	char *str = NULL;
+	ssize_t len = 0;
+	ssize_t pos = 0;
+	int counting = 1;
+
+	if (lenp)
+		*lenp = 0;
 
 	/*
-	 * Prevent a kernel oops in vsnprintf() -- it only allows passing a
-	 * NULL ptr when the length is also 0. Also filter out the negative
-	 * lengths...
+	 * Two cycles controlled by @counting, the fist cycle counts
+	 * chars, the second saves chars.
 	 */
-	if ((len > 0 && !str) || len < 0)
-		return -EINVAL;
+	do {
+		/* Name & Type */
+		/* %p eats all alphanum characters, so %c must be used here */
+		csize = snprintf(str + pos, len - pos, "of:N%pOFn%c%s", np, 'T',
+				 of_node_get_device_type(np));
+		if (counting)
+			tsize = csize;
+		else
+			pos += csize;
 
-	/* Name & Type */
-	/* %p eats all alphanum characters, so %c must be used here */
-	csize = snprintf(str, len, "of:N%pOFn%c%s", np, 'T',
-			 of_node_get_device_type(np));
-	tsize = csize;
-	if (csize >= len)
-		csize = len > 0 ? len - 1 : 0;
-	len -= csize;
-	str += csize;
+		of_property_for_each_string(np, "compatible", p, compat) {
+			csize = snprintf(str + pos, len - pos, "C%s", compat);
+			if (counting) {
+				tsize += csize;
+				continue;
+			}
 
-	of_property_for_each_string(np, "compatible", p, compat) {
-		csize = snprintf(str, len, "C%s", compat);
-		tsize += csize;
-		if (csize >= len)
-			continue;
-		for (c = str; c; ) {
-			c = strchr(c, ' ');
-			if (c)
-				*c++ = '_';
+			for (c = str + pos; c; ) {
+				c = strchr(c, ' ');
+				if (c)
+					*c++ = '_';
+			}
+			pos += csize;
 		}
-		len -= csize;
-		str += csize;
-	}
 
-	return tsize;
+		if (counting) {
+			/* Include '\0' of MODALIAS string. */
+			len = tsize + 1;
+			/* MODALIAS value is too long */
+			if (unlikely(len > 2048))
+				return ERR_PTR(-EINVAL);
+
+			str = kmalloc(len, GFP_KERNEL);
+			if (!str)
+				return ERR_PTR(-ENOMEM);
+		}
+
+	}	while (counting--);
+
+	if (lenp)
+		*lenp = tsize;
+	return str;
 }
 
 int of_request_module(const struct device_node *np)
 {
 	char *str;
-	ssize_t size;
 	int ret;
 
 	if (!np)
 		return -ENODEV;
 
-	size = of_modalias(np, NULL, 0);
-	if (size < 0)
-		return size;
-
-	/* Reserve an additional byte for the trailing '\0' */
-	size++;
-
-	str = kmalloc(size, GFP_KERNEL);
-	if (!str)
-		return -ENOMEM;
+	str = of_modalias(np, NULL);
+	if (IS_ERR(str))
+		return PTR_ERR(str);
 
-	of_modalias(np, str, size);
-	str[size - 1] = '\0';
 	ret = request_module(str);
 	kfree(str);
 
diff --git a/include/linux/of.h b/include/linux/of.h
index fe5d7b74c23b9701743f5debc3d030b765bc914f..f36bab2caa8ccffbd43593d8b6720946e19503e0 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -382,7 +382,7 @@ extern int of_count_phandle_with_args(const struct device_node *np,
 	const char *list_name, const char *cells_name);
 
 /* module functions */
-extern ssize_t of_modalias(const struct device_node *np, char *str, ssize_t len);
+char *of_modalias(const struct device_node *np, ssize_t *lenp);
 extern int of_request_module(const struct device_node *np);
 
 /* phandle iterator functions */
@@ -761,10 +761,9 @@ static inline int of_count_phandle_with_args(const struct device_node *np,
 	return -ENOSYS;
 }
 
-static inline ssize_t of_modalias(const struct device_node *np, char *str,
-				  ssize_t len)
+static inline char *of_modalias(const struct device_node *np, ssize_t *lenp)
 {
-	return -ENODEV;
+	return ERR_PTR(-ENODEV);
 }
 
 static inline int of_request_module(const struct device_node *np)

-- 
2.34.1


