Return-Path: <devicetree+bounces-38255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D87DA847FAF
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 03:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B0C4284D5E
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 02:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A9E5BAE6;
	Sat,  3 Feb 2024 02:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="MS4hlyNP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3EC48CC8;
	Sat,  3 Feb 2024 02:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706927904; cv=none; b=tPVDQ5Y/XfwN+UFqWDR9EPhGUM6ACC5p/F4IksOQKVfnZDXkCU0J/Buo97keRuwftjiW0l420Ahvdjt4xQI4hOAkFc+UsPuytvJsGIlAXHZBE337woeZ9AP/bbPjuNG8O9tgJKfA6GQ7dkuKcnql+YtwPvHC8dU75eaSkySxuow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706927904; c=relaxed/simple;
	bh=5j0LD4cU0Gyh4u94KaYfLWqCDiM58ryYVYdm0d3ckJ0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=drEDBHI+L4Qoq4yF6wL2wMsS8qHtH3Dr7HZi6aN9QszffM4fhD1fZ8Sgc4ymj1BrtDZd09TcyF1iaoC4y/X+YO15PGURoBMwavI58Y0XSPVxkvqAMcIMK/PdhYc0LN7l3kGbCiPZxZlBnJt4MiqsOAm2TTgTU5n9wCFM5y/apXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=MS4hlyNP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4132Q51D004181;
	Sat, 3 Feb 2024 02:38:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-type; s=qcppdkim1; bh=7VZfx/Bay9jjE9Iv4MJz
	JiR4uxKr/xQofmWH8gbXo0Y=; b=MS4hlyNPK3M+7a4w+eUQ4Uf0h/FmwZAWKjzc
	sQB262Wm/T/KwKzXYZeAXr2hVs1w2m+4zSiPZqNs3D8Ns2gnxYgBiyEwPeM4EXfD
	BUGNPhJ3guW+KrwgGVdMprbXCmo+q4xZmYzkmFZI2Hzt2fte+pHBL5kp5zHTF1A5
	S6JKqm6KbzHicrrW5HATTjSry805CI4m3bCSRKkynaHj/zWAY10ZLG2gLWzFsLoC
	9F8A7oFwU0EGfOiy4EMHIGYAWMlrY6q//GgeqSg37BmU6x5Rceh74BiQ6nupvwKK
	OR5nfZeLmINSF3gX+h8b1NkIGEb3FYTk7zEPS+QTvdZAad6uuA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3w0pwjjuj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 03 Feb 2024 02:38:05 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4132bUB0004284
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 3 Feb 2024 02:37:30 GMT
Received: from hu-wcheng-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 2 Feb 2024 18:37:29 -0800
From: Wesley Cheng <quic_wcheng@quicinc.com>
To: <srinivas.kandagatla@linaro.org>, <mathias.nyman@intel.com>,
        <perex@perex.cz>, <conor+dt@kernel.org>, <corbet@lwn.net>,
        <lgirdwood@gmail.com>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <Thinh.Nguyen@synopsys.com>, <broonie@kernel.org>,
        <bgoswami@quicinc.com>, <tiwai@suse.com>, <robh+dt@kernel.org>,
        <konrad.dybcio@linaro.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-sound@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <alsa-devel@alsa-project.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Subject: [PATCH v13 41/53] ASoC: Introduce SND kcontrols to select sound card and PCM device
Date: Fri, 2 Feb 2024 18:36:33 -0800
Message-ID: <20240203023645.31105-42-quic_wcheng@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240203023645.31105-1-quic_wcheng@quicinc.com>
References: <20240203023645.31105-1-quic_wcheng@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9HxCtAv8oQakOhJsPFDxs9FhU7a2yUtv
X-Proofpoint-ORIG-GUID: 9HxCtAv8oQakOhJsPFDxs9FhU7a2yUtv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-02_16,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402030015

Add SND kcontrol to SOC USB, which will allow for userpsace to determine
which USB card number and PCM device to offload.  This allows for userspace
to potentially tag an alternate path for a specific USB SND card and PCM
device.  Previously, control was absent, and the offload path would be
enabled on the last USB SND device which was connected.  This logic will
continue to be applicable if no mixer input is received for specific device
selection.

An example to configure the offload device using tinymix:
tinymix -D 0 set 'SNDUSB OFFLD device select' 1 0

The above command will configure the offload path to utilize card#1 and PCM
stream#0.

Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
---
 include/sound/soc-usb.h |  7 ++++-
 sound/soc/soc-usb.c     | 65 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 71 insertions(+), 1 deletion(-)

diff --git a/include/sound/soc-usb.h b/include/sound/soc-usb.h
index d9fc83180c56..20d7b32bba07 100644
--- a/include/sound/soc-usb.h
+++ b/include/sound/soc-usb.h
@@ -26,14 +26,19 @@ struct snd_soc_usb_device {
  * @dev - USB backend device reference
  * @component - reference to ASoC component
  * @connection_status_cb - callback to notify connection events
+ * @put_offload_dev - callback to select USB sound card/PCM device
+ * @get_offload_dev - callback to fetch selected USB sound card/PCM device
  * @priv_data - driver data
  **/
 struct snd_soc_usb {
 	struct list_head list;
-	struct device *dev;
 	struct snd_soc_component *component;
 	int (*connection_status_cb)(struct snd_soc_usb *usb,
 			struct snd_soc_usb_device *sdev, bool connected);
+	int (*put_offload_dev)(struct snd_kcontrol *kcontrol,
+			      struct snd_ctl_elem_value *ucontrol);
+	int (*get_offload_dev)(struct snd_kcontrol *kcontrol,
+			      struct snd_ctl_elem_value *ucontrol);
 	void *priv_data;
 };
 
diff --git a/sound/soc/soc-usb.c b/sound/soc/soc-usb.c
index cad8e1d798e4..c568c67e3e4a 100644
--- a/sound/soc/soc-usb.c
+++ b/sound/soc/soc-usb.c
@@ -15,6 +15,9 @@ static struct device_node *snd_soc_find_phandle(struct device *dev)
 {
 	struct device_node *node;
 
+	if (!dev)
+		return ERR_PTR(-ENODEV);
+
 	node = of_parse_phandle(dev->of_node, "usb-soc-be", 0);
 	if (!node)
 		return ERR_PTR(-ENODEV);
@@ -38,6 +41,64 @@ static struct snd_soc_usb *snd_soc_find_usb_ctx(struct device_node *node)
 	return NULL;
 }
 
+/* SOC USB sound kcontrols */
+static int soc_usb_put_offload_dev(struct snd_kcontrol *kcontrol,
+			      struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
+	struct snd_soc_usb *ctx = snd_soc_usb_find_priv_data(component->dev);
+	int ret = 0;
+
+	mutex_lock(&ctx_mutex);
+	if (ctx && ctx->put_offload_dev)
+		ret = ctx->put_offload_dev(kcontrol, ucontrol);
+	mutex_unlock(&ctx_mutex);
+
+	return ret;
+}
+
+static int soc_usb_get_offload_dev(struct snd_kcontrol *kcontrol,
+				   struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
+	struct snd_soc_usb *ctx = snd_soc_usb_find_priv_data(component->dev);
+	int ret = 0;
+
+	mutex_lock(&ctx_mutex);
+	if (ctx && ctx->get_offload_dev)
+		ret = ctx->get_offload_dev(kcontrol, ucontrol);
+	mutex_unlock(&ctx_mutex);
+
+	return ret;
+
+}
+
+static int soc_usb_offload_dev_info(struct snd_kcontrol *kcontrol,
+			      struct snd_ctl_elem_info *uinfo)
+{
+	uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
+	uinfo->count = 2;
+	uinfo->value.integer.min = -1;
+	uinfo->value.integer.max = SNDRV_CARDS;
+
+	return 0;
+}
+
+static const struct snd_kcontrol_new soc_usb_dev_ctrl = {
+	.iface = SNDRV_CTL_ELEM_IFACE_CARD,
+	.access = SNDRV_CTL_ELEM_ACCESS_READWRITE,
+	.name = "SNDUSB OFFLD device select",
+	.info = soc_usb_offload_dev_info,
+	.get = soc_usb_get_offload_dev,
+	.put = soc_usb_put_offload_dev,
+};
+
+static int snd_soc_usb_control_init(struct snd_soc_component *component)
+{
+	return snd_ctl_add(component->card->snd_card,
+				snd_ctl_new1(&soc_usb_dev_ctrl, component));
+}
+
 /**
  * snd_soc_usb_get_components_tag() - Retrieve SOC USB component tag
  * @playback: direction of audio stream
@@ -157,7 +218,11 @@ EXPORT_SYMBOL_GPL(snd_soc_usb_free_port);
  */
 int snd_soc_usb_add_port(struct snd_soc_usb *usb)
 {
+	int ret;
 
+	ret = snd_soc_usb_control_init(usb->component);
+	if (ret < 0)
+		return ret;
 
 	mutex_lock(&ctx_mutex);
 	list_add_tail(&usb->list, &usb_ctx_list);

