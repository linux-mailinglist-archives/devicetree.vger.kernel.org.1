Return-Path: <devicetree+bounces-256789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 75100D3A559
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6A2ED300B8BE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD0230C625;
	Mon, 19 Jan 2026 10:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WtUGhrbO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WOxTtoIK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBE830BB8E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819242; cv=none; b=Xk4tkoa/shksbulfgI6wr7xJwWUHd6gDEwGzhyQJJRvpAWd8PQnB174qGtB6z8fW2UJ0SLqF965PIiHgjhh5oqQzc2MisW4OLLCiW2YhRy6xY7WN8cMJwUZ3pacbMyZkUreJo1vueirNGQRlQnl2TQP4L2cE8ZWaN99w1sZAtm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819242; c=relaxed/simple;
	bh=/FOsnl+0vWD/ZzcTEo1dF12opBcr7kB+UcsUPg1w+Ds=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ITxMgBl9pojHWVTZsYQmcT9Kv4dP6M0jVWY9RKqbOu+MinBW42zJPgtOWDcfHAot0ZsloCGQB+itV7xStyOOa+VcJPqQ5Js21zeL99MTMkS7nfb7FPYZ/JXDeBII20wpAZKmy5tFi7EczJ8XPWSFORqHKrJOOhTbPzBvMzPGEVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WtUGhrbO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WOxTtoIK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J90x8Q903051
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	igmXtZijQdt1UfbUzxesg6BqpEFZh/onZIxk1K1+ZUE=; b=WtUGhrbOL3zGykR7
	r4/OlW1KGfz7xdKxgvWS0dDCsADMy3NZ4qVmPEK203fYSKO2zNCRKw8EPzt7nYeS
	dJ9LiPOykZNzsHxDxTQvjOID6ItOjmYDzUmOsFXCTr0Wizd5cUF053qxsDzgOOhy
	v9ARBQIMTjYM3nCBcpMLOBRuea8/XIv8QBNl8MQE3IRfuNIfdAXq9+BhKhSuj4eW
	G8n1YO6C4fzqUxXVqE3iz3mXV7IyMoRa0IE4y7vh06iQi1k/y/jY3d4oNxzavNAS
	ZoY83WfgRrLyaveYxpbT5cWLW3WpiBLh2QW6GUTURjN1cfkRhVz/mL1OaVgXYRwG
	SbB0PA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsb4ysgtd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a0ec2496so819061885a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768819237; x=1769424037; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=igmXtZijQdt1UfbUzxesg6BqpEFZh/onZIxk1K1+ZUE=;
        b=WOxTtoIKNjkwHauNvCIS9QhPgB1MJLJGqtnPfuDt4uVrHzcc4JLvBJbzBvCMfQb1k+
         ra7Z+OF3L11WLEX7MDFGYD7kApegINcVgAHqZuOlsJuFcOUjl3ZbLFO3UnekPl3O3Ngz
         fcngCVu/JR1oST4Zae/JLCpfv7u4uFgS56j4yN20Zn9VUPo5Ka0dlOWk2nwE4balck1l
         6u4IswpRTJ1T8lhDEa+7KKzOd+/7DmZ3gv07mOfLiOW53bUQvkkNb+827MC/cmB50QlH
         csYRsxF9qO6bybVbrwko5awf+zL623pDwPW3GVGJhVLhsR1zbGhUAeYTp3ShFe97XLBB
         G5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819237; x=1769424037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=igmXtZijQdt1UfbUzxesg6BqpEFZh/onZIxk1K1+ZUE=;
        b=iJe/I++GsKyha7oahHUicHPqR7IFoPShJFnW1u7L+2uZSPmXsrmaCSeHpbHehMvC6K
         TlkbXz3vAUBugRw3wMrIz3nUOLrEDvMC33Qyw4/vco3rtC3VUIBYhEk4QU/ahP7WdBfN
         EE3XjCgEuzCpTy2F2K11poshYOMsVlV4DDgKYoa/USrN9J2HD8nox5r8WHMmCRt1aOK2
         6bZsiCD1dGU/HMK7jYLKXU1Gjy/Cx7wnD1hApgB8TjqgBm/WBnoo5W/3BT8YwsdzcO5J
         wVYVqLqRA3G+5VL4/qpjTdXfTTGk9i/UZDqLoiLERON7YlnqP5zqE+UMl3pjP2urEBEb
         CdVA==
X-Gm-Message-State: AOJu0Ywjm9VNNp+kaby9S+lPme+eKMZx6huAM+OSLPImWxS+ilQ6QnLw
	97sg6RfzkLN9VBn2ekIqQnr2/UfHvPrnAl5stM7G8FnvGSqMwm/h0QbMs1cHDFJxYYX2Hrug6Ip
	hlA+ZqMDs2qxQUkYC0YCRW1w0xsml1MIElSLoCHZCTMKUmBQMafOOeLfIjz0MVQ3l
X-Gm-Gg: AY/fxX5RU2aPtCtUGvFUd9gNxDkc2gOy5ZHu8Y/oySozQ+Kz+pDVpMUWeKKf0sBH/z6
	1buh+rxX09Jg9R4HEyHDfFTPGvB/ZtTWjS0wYv875DtsJNOL4X5guT6eJYTJ4jL8vHAH0z96T7b
	PTGHVraDiuCFWUe4DJqNmRlBFPXhjqXxipDi90HwLrFufHvhOz+wN4Fy3V1gjnEdAkr1KFa8JiQ
	gULTpxWGrzVbky+lIUeVjmTJUiyPDaXqI57gMgUQtVhzOok00eUvDFJDAhLxrU1X66hDOJ+OWNK
	4fGsEFYw9ISgKUSoSpmXdQKUr1obJqNwzTfz8oHRepu3Knsf7nd8/DsLSLZE6xjJoi8/1t/UzNa
	GRCsnyhc1W8mkNSAC/oyteU4BNdteTrAwqiMdUL+K
X-Received: by 2002:a05:620a:4801:b0:89e:67a9:fced with SMTP id af79cd13be357-8c6a6789e6bmr1409465685a.66.1768819236982;
        Mon, 19 Jan 2026 02:40:36 -0800 (PST)
X-Received: by 2002:a05:620a:4801:b0:89e:67a9:fced with SMTP id af79cd13be357-8c6a6789e6bmr1409460985a.66.1768819236489;
        Mon, 19 Jan 2026 02:40:36 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:4f55:d102:7129:1a8f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c9cbcsm185185245e9.12.2026.01.19.02.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 02:40:36 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 11:40:14 +0100
Subject: [PATCH 3/8] base: soc: export soc_device_get_machine()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-soc-of-root-v1-3-32a0fa9a78b4@oss.qualcomm.com>
References: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
In-Reply-To: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2587;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=/FOsnl+0vWD/ZzcTEo1dF12opBcr7kB+UcsUPg1w+Ds=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpbgoX3WZw5M4WHNvKkR821Z3quwcNTpVLMjbj6
 AN1sWnvF1mJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaW4KFwAKCRAFnS7L/zaE
 w0OsEAC7wjDs/oNX7OLNZrfQxWpth2eroBxR5f5YvRbchfyUdsKPsp/pGUq1bCzrx+aFpHxx5e+
 YGBS1c3ttUgKMaQd5jrKLaE3yeb32HPfOWs3abNpDkknl5BpNJGa5KmxarRXVPTwRznB/rW1WrQ
 ylY1lIYr2FWxe42W2R+vB612/3VwwbZ+mcYQDInqP60F34urScgzOClDXHdJuzfgW81Jo1l06Vo
 1JKeggoB1rOCAGSFsN8atiRIjo5Qqf3eX2CX0LMfn1esbyQEN35bfgJ8Pw0p0Aj3cNOE7RNxcFz
 nAKxdjSj5/8La7xLviBdOlLcE1F9hYO4UWEnlZEx8rhro+XbipEp4CixHHhjqjFb4LrwAto580s
 08lMsBqp/Djpu8FJlgvEJMsp4nf+D0Y+hKVJX12HiNC1J2+M2g/iOkl1Vrh9jRRMRPjIT+uPkE3
 jc8G2pdztcvlBzcvL2bLF6K5MpyT2ZJ5bSC/X8rJbiF2mpIU/ZV5KR9+wbgvvm2VfaE7t6CpoIr
 7qCTPf/VgJu/wCb8zjVU0J3rzNTH/JQjQI6eFfRc787kBMnyualHqCR8x7X9CTphC11xWFYCiJr
 3VrW6gEQx8bJYO8wLIvZrxKukEuCrle8mFyVNMRTGOzCRvHbKqQvajpz45u+G9rkctUxcAg72NC
 wK187rGA7W2Ay7w==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=SNhPlevH c=1 sm=1 tr=0 ts=696e0a25 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=VU1FamAdWuTKyoDMntYA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4NiBTYWx0ZWRfX8Qm1u9Gq24JD
 YVR1323SNRwzEWngOF5KdN15hyvAGDGu548fkJJed2OF8LkQEhNs9UK+x/kSFqXJobkowCZoxDx
 J21cj07lOf4BX3YdlzIWnGLQ8CNqWnBwhS4aBeu4Do7wuUTgm34SUYm4QJ22R6VBnyS2rTzbRVM
 lTbfHDYqYyQqiSM2PTFEyGkSUF/ZVTmE3vq1xglZAp4EAvA4MMzh82Sq1BGyL6/65LpEKkK90Mr
 LDtgQwp4gcbilDHDmq84wCXfzaqZFyzHjM/rKhJc3eWjECUBlr7RF2nvW/+KEE/Sf79+jDCF/by
 obfdXufbvD63LraEA6OfN2RxXCUv2OhPqBicx/ZYZ58b83IQKRLH5K+9CRZ3QXIwyfzkNHYqxuf
 SvOwl8zHj7kmkDDz5MaL+RD5yGraKuZDKaMgYAtD2i97jWvQMtuXoGETwfBlFbzGGqZi7l/aM4y
 euMhKafKLSzVhsAOOpg==
X-Proofpoint-ORIG-GUID: YA0KDmWyBJ3m25DgOnLlXqQlnIDZL7Rh
X-Proofpoint-GUID: YA0KDmWyBJ3m25DgOnLlXqQlnIDZL7Rh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 bulkscore=0 spamscore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190086

Some SoC drivers reimplement the functionality of
soc_device_get_machine(). Make this function accessible through the
sys_soc.h header. Rework it slightly to return a negative error number
on failure to read the machine string (SoC core can keep on ignoring
it). While at it: make it use the __free() helper from cleanup.h.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/base/soc.c      | 16 +++++++++-------
 include/linux/sys_soc.h | 10 ++++++++++
 2 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/base/soc.c b/drivers/base/soc.c
index 6f42632d2b0fcc8a729484e6ad270f9bcabe4a0b..bec8771d40f0590d4d7c3985c08fedfd4043a394 100644
--- a/drivers/base/soc.c
+++ b/drivers/base/soc.c
@@ -5,6 +5,7 @@
  * Author: Lee Jones <lee.jones@linaro.org> for ST-Ericsson.
  */
 
+#include <linux/cleanup.h>
 #include <linux/err.h>
 #include <linux/glob.h>
 #include <linux/idr.h>
@@ -111,17 +112,18 @@ static void soc_release(struct device *dev)
 	kfree(soc_dev);
 }
 
-static void soc_device_get_machine(struct soc_device_attribute *soc_dev_attr)
+int soc_device_get_machine(struct soc_device_attribute *soc_dev_attr)
 {
-	struct device_node *np;
-
 	if (soc_dev_attr->machine)
-		return;
+		return -EBUSY;
+
+	struct device_node *np __free(device_node) = of_find_node_by_path("/");
+	if (!np)
+		return -ENOENT;
 
-	np = of_find_node_by_path("/");
-	of_property_read_string(np, "model", &soc_dev_attr->machine);
-	of_node_put(np);
+	return of_property_read_string(np, "model", &soc_dev_attr->machine);
 }
+EXPORT_SYMBOL_GPL(soc_device_get_machine);
 
 static struct soc_device_attribute *early_soc_dev_attr;
 
diff --git a/include/linux/sys_soc.h b/include/linux/sys_soc.h
index d9b3cf0f410c8cfb509a4c1a4d6c83fde6fe33c6..2d2dbc18462a39ddee95e38826a769fab089026f 100644
--- a/include/linux/sys_soc.h
+++ b/include/linux/sys_soc.h
@@ -37,6 +37,16 @@ void soc_device_unregister(struct soc_device *soc_dev);
  */
 struct device *soc_device_to_device(struct soc_device *soc);
 
+/**
+ * soc_device_get_machine - retrieve the machine model and store it in
+ *                          the soc_device_attribute structure
+ * @soc_dev_attr: SoC attribute structure to store the model in
+ *
+ * Returns:
+ * 0 on success, negative error number on failure.
+ */
+int soc_device_get_machine(struct soc_device_attribute *soc_dev_attr);
+
 #ifdef CONFIG_SOC_BUS
 const struct soc_device_attribute *soc_device_match(
 	const struct soc_device_attribute *matches);

-- 
2.47.3


