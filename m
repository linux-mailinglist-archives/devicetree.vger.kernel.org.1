Return-Path: <devicetree+bounces-25976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C05D8152E3
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 23:01:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D562B24334
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 22:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F6037D615;
	Fri, 15 Dec 2023 21:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="mzi9aYAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605ED83B18;
	Fri, 15 Dec 2023 21:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BFLhEe1027871;
	Fri, 15 Dec 2023 21:50:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-type; s=qcppdkim1; bh=q0GglkH9BL8jSD9jhaM5
	z3Dn/n42ehxtc0NGsMRWhxo=; b=mzi9aYAG5qD58hSnr1ZVLs3A/3jPOzHLlhZ0
	C05qgNE8/VuQZu/HjbpI3knBD15KiPnoM453IMvd/UDNJ9equoKaez4q8aTTIAip
	nCsnhbLJvV1vYzfL8S/LNg0aalri0vKa9k+i9sf+s0sRWdE5JREhMHC+U9bZ+xqA
	OAtQIRobRNylyhZsdJBMhpjDWxVCEHcW0nHpH3vDpP93PPC7NmfIGQKMMWvL8l9X
	+dR5xF5kVn744sQ5KmEj/RMwLKlS3/rEbDptwYUWkY7i98/lz59J/3KfFetA1YCG
	sL2O4uQQcDquvvlwcZronAAZOvZfpLX7i9bACpXgAPtkvAPIoQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3v0hqcj7bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Dec 2023 21:50:17 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BFLoHUj008375
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Dec 2023 21:50:17 GMT
Received: from hu-wcheng-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 15 Dec 2023 13:50:16 -0800
From: Wesley Cheng <quic_wcheng@quicinc.com>
To: <srinivas.kandagatla@linaro.org>, <mathias.nyman@intel.com>,
        <perex@perex.cz>, <conor+dt@kernel.org>, <corbet@lwn.net>,
        <gregkh@linuxfoundation.org>, <lgirdwood@gmail.com>,
        <andersson@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <konrad.dybcio@linaro.org>, <Thinh.Nguyen@synopsys.com>,
        <broonie@kernel.org>, <bgoswami@quicinc.com>, <tiwai@suse.com>,
        <robh+dt@kernel.org>, <agross@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-sound@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <alsa-devel@alsa-project.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Subject: [PATCH v10 36/41] ALSA: usb-audio: mixer: Add USB offloading mixer control
Date: Fri, 15 Dec 2023 13:49:50 -0800
Message-ID: <20231215214955.12110-37-quic_wcheng@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231215214955.12110-1-quic_wcheng@quicinc.com>
References: <20231215214955.12110-1-quic_wcheng@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 5sllbosxZp1nfvEBdRKH7bgJ4xXZhrzJ
X-Proofpoint-GUID: 5sllbosxZp1nfvEBdRKH7bgJ4xXZhrzJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1015 suspectscore=0
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312150152

In order to allow userspace/applications know about USB offloading status,
expose a sound kcontrol that fetches information about which sound card
index is associated with the ASoC platform card supporting offloading.  In
the USB audio offloading framework, the ASoC BE DAI link is the entity
responsible for registering to the SOC USB layer.  SOC USB will expose more
details about the current offloading status, which includes the USB sound
card and USB PCM device indexes currently being used.

Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
---
 sound/usb/Kconfig             |  4 ++
 sound/usb/Makefile            |  1 +
 sound/usb/mixer.c             |  5 +++
 sound/usb/mixer_usb_offload.c | 82 +++++++++++++++++++++++++++++++++++
 sound/usb/mixer_usb_offload.h | 14 ++++++
 5 files changed, 106 insertions(+)
 create mode 100644 sound/usb/mixer_usb_offload.c
 create mode 100644 sound/usb/mixer_usb_offload.h

diff --git a/sound/usb/Kconfig b/sound/usb/Kconfig
index 4c842fbe6365..3e7be258d0e3 100644
--- a/sound/usb/Kconfig
+++ b/sound/usb/Kconfig
@@ -176,10 +176,14 @@ config SND_BCD2000
 	  To compile this driver as a module, choose M here: the module
 	  will be called snd-bcd2000.
 
+config SND_USB_OFFLOAD_MIXER
+	bool
+
 config SND_USB_AUDIO_QMI
 	tristate "Qualcomm Audio Offload driver"
 	depends on QCOM_QMI_HELPERS && SND_USB_AUDIO && USB_XHCI_SIDEBAND
 	select SND_PCM
+	select SND_USB_OFFLOAD_MIXER
 	help
 	  Say Y here to enable the Qualcomm USB audio offloading feature.
 
diff --git a/sound/usb/Makefile b/sound/usb/Makefile
index 246788268ddd..8c54660a11b0 100644
--- a/sound/usb/Makefile
+++ b/sound/usb/Makefile
@@ -22,6 +22,7 @@ snd-usb-audio-objs := 	card.o \
 			stream.o \
 			validate.o
 
+snd-usb-audio-$(CONFIG_SND_USB_OFFLOAD_MIXER) += mixer_usb_offload.o
 snd-usb-audio-$(CONFIG_SND_USB_AUDIO_MIDI_V2) += midi2.o
 snd-usb-audio-$(CONFIG_SND_USB_AUDIO_USE_MEDIA_CONTROLLER) += media.o
 
diff --git a/sound/usb/mixer.c b/sound/usb/mixer.c
index 409fc1164694..09229e623469 100644
--- a/sound/usb/mixer.c
+++ b/sound/usb/mixer.c
@@ -48,6 +48,7 @@
 #include "mixer.h"
 #include "helper.h"
 #include "mixer_quirks.h"
+#include "mixer_usb_offload.h"
 #include "power.h"
 
 #define MAX_ID_ELEMS	256
@@ -3609,6 +3610,10 @@ int snd_usb_create_mixer(struct snd_usb_audio *chip, int ctrlif)
 	if (err < 0)
 		goto _error;
 
+	err = snd_usb_offload_init_mixer(mixer);
+	if (err < 0)
+		goto _error;
+
 	err = snd_device_new(chip->card, SNDRV_DEV_CODEC, mixer, &dev_ops);
 	if (err < 0)
 		goto _error;
diff --git a/sound/usb/mixer_usb_offload.c b/sound/usb/mixer_usb_offload.c
new file mode 100644
index 000000000000..a6e99982b97c
--- /dev/null
+++ b/sound/usb/mixer_usb_offload.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/usb.h>
+
+#include <sound/core.h>
+#include <sound/control.h>
+#include <sound/soc-usb.h>
+
+#include "card.h"
+#include "mixer.h"
+#include "usbaudio.h"
+
+static int
+snd_usb_offload_create_mixer(struct usb_mixer_interface *mixer,
+		       const struct snd_kcontrol_new *new_kctl)
+{
+	struct snd_kcontrol *kctl;
+	struct usb_mixer_elem_info *elem;
+
+	elem = kzalloc(sizeof(struct usb_mixer_elem_info), GFP_KERNEL);
+	if (!elem)
+		return -ENOMEM;
+
+	elem->head.mixer = mixer;
+	elem->val_type = USB_MIXER_S32;
+	elem->control = 0;
+	elem->head.id = 0;
+	elem->channels = 1;
+
+	kctl = snd_ctl_new1(new_kctl, elem);
+	if (!kctl) {
+		kfree(elem);
+		return -ENOMEM;
+	}
+	kctl->private_free = snd_usb_mixer_elem_free;
+
+	return snd_usb_mixer_add_control(&elem->head, kctl);
+}
+
+static int
+snd_usb_offload_available_get(struct snd_kcontrol *kcontrol,
+		      struct snd_ctl_elem_value *ucontrol)
+{
+	struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
+	struct usb_mixer_interface *mixer = list->mixer;
+	struct snd_usb_audio *chip = mixer->chip;
+	struct usb_device *udev = chip->dev;
+	int ret;
+
+	ret = snd_soc_usb_device_offload_available(udev->bus->sysdev);
+	ucontrol->value.integer.value[0] = ret < 0 ? -1 : ret;
+
+	return ret < 0 ? ret : 0;
+}
+
+static int snd_usb_offload_available_info(struct snd_kcontrol *kcontrol,
+			      struct snd_ctl_elem_info *uinfo)
+{
+	uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
+	uinfo->count = 1;
+	uinfo->value.integer.min = -1;
+	uinfo->value.integer.max = SNDRV_CARDS;
+
+	return 0;
+}
+
+static const struct snd_kcontrol_new snd_usb_offload_available_ctl = {
+	.iface = SNDRV_CTL_ELEM_IFACE_CARD,
+	.name = "SNDUSB OFFLD playback available",
+	.info = snd_usb_offload_available_info,
+	.get = snd_usb_offload_available_get,
+};
+
+int snd_usb_offload_init_mixer(struct usb_mixer_interface *mixer)
+{
+	return snd_usb_offload_create_mixer(mixer, &snd_usb_offload_available_ctl);
+}
+EXPORT_SYMBOL_GPL(snd_usb_offload_init_mixer);
+
diff --git a/sound/usb/mixer_usb_offload.h b/sound/usb/mixer_usb_offload.h
new file mode 100644
index 000000000000..5289d54575a4
--- /dev/null
+++ b/sound/usb/mixer_usb_offload.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __USB_OFFLOAD_MIXER_H
+#define __USB_OFFLOAD_MIXER_H
+
+#if IS_ENABLED(CONFIG_SND_USB_OFFLOAD_MIXER)
+int snd_usb_offload_init_mixer(struct usb_mixer_interface *mixer);
+#else
+static int snd_usb_offload_init_mixer(struct usb_mixer_interface *mixer)
+{
+	return 0;
+}
+#endif
+#endif /* __USB_OFFLOAD_MIXER_H */

