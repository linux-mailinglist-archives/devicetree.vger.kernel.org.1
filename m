Return-Path: <devicetree+bounces-271249-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL4YGZyPqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271249-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:01:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 072E42075D3
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:01:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66AF330FE031
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0927B3E0C66;
	Wed,  4 Mar 2026 19:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kaMOI3Kn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8633DFC9B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654350; cv=none; b=QBv7WgJNoMa6dPffV9fgv/WOI1qgOt5Ne/K6cfRtPwfQem75HqmsoZ/dgBfJG1M5KvOM8dpkVpWaSOIMpLej1vfjTvCmh9hPCn/IGK5bDgVYq+Uepd1B9KL2rRURq3+3sx7e/6KcvLsEThrQtsmoE8Tnf7wTaJp/mxm0EmG8ATY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654350; c=relaxed/simple;
	bh=5tRJaERsB3MX0Vg1OT71H28pfSmH/MMPXLkF26YbpNw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d8EKinvYyYbweYinSn/tV07NZZJ3sBw1io/5F1sq6f/DVNjdcJTzc4Z12yXi9anU5EqoV83N4yxhELjlcFVD04F9GqVeQuCv8mZPZmL/srQOtVVgWyGw7794Z3Zuk3YLCDQrYb80vD55EKvLu/T40b+j4++la624h5HTpR2cbmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kaMOI3Kn; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-5062fc5d86aso65047011cf.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654348; x=1773259148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9GnFDrdEkwQYpE8O+rmjepmoD5Aaw7ZEA0lHf8+9NWg=;
        b=kaMOI3KnzDjkLxitzhxI44KuAXIasesZ2X5XQz6i1rajTrKhvDFZU9ifi0HB7Yee3i
         7gQ0fo+MARz9HfvO+mMVOxdmHnM5nOrFhCRHMmoj1i6bQKYVOEzQOZZUptyMVuYkEiQ0
         hgFdwsI/e7wJ8Z+sfLULeHVqU/P9gXQjonmyRd5H0xMlVBtgYKf5+v+W0A9C6Gpzw2Y4
         zT4EiS4HPn9kILAUZlfzUe6x75+kiZn92G7aurGEdLqHR2t0ZZxbOPLJJMh1mGLUJe54
         EX/OK/oyACEKQy12Qx5I6tFkM/CX2auYCZXuT20avqAzuo6WgRwme0vsHifPqtWH1f4n
         bDQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654348; x=1773259148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9GnFDrdEkwQYpE8O+rmjepmoD5Aaw7ZEA0lHf8+9NWg=;
        b=ZL6YB49g12Vt2vrTrT6hP5fB5WNbnG+toqS9T069HpUzBQ3vkO8dJ7sm+tSv5OLUYF
         D5xhSMpY0SK92h5O56vd6v8wRWJSCmoS6Kqy3KQF7JeMr0FOIRM+ILdupw9ZRgrJHHyg
         wepsjHnnsc1j8Q7hBAagnkAZOzcDM6Z462hpvvGLkz04Arqqw9FGg/AL6ZHyt57iFvTa
         VkD6rTfGK9dmoZ8UG1aYPi9aTY87j8x8AYcib0ywVyvqrJcqIIO6b8NbP6DPZu8KyqPD
         i5u6SsnL6hHLKjkbfVDL/NwiQFNuKFbrjxisaVtDr6Ja9AadD3jEmc0XfSRYvwRGvAJm
         cQPw==
X-Forwarded-Encrypted: i=1; AJvYcCXzVlb+DBq2rrrCyoH2rMS8VpYRns/4NNNnw609VGDObcvj0cyeiAmltvXPYO0PmrJ1uGBcIXsOcc9N@vger.kernel.org
X-Gm-Message-State: AOJu0Yx05DW6sR8/nrLIbBDitfwXGjmWzr9vHIYDIaAk0kkJOumm3962
	orgaGhw62F5q1ljuqG7pmE7SekNaxQxVtWWzEQhkZOnOhESstJxBnMHs
X-Gm-Gg: ATEYQzw1WWM9/PXXS5UGddl0DkmcoSbSYhDs5RjCT7zkPx9Rp28iJplnZxHy6KGJ6fE
	1KmzajGWSzyAKXZuZut38KS9BANDqSQxr14NlXkc1LWACDhnh7srkSWWyx1RFvL9nysS1IvQa2x
	O5d3lF/mkCKJu682nfIzrqBE59riOUhof/j7goTLa4DvvRexN0pKZcEmzoj4HEPahqQof4Hyxt3
	V/ACBovmqPvogOKiUnuAZy6w+SjnYz+4koK8wTB6CjJNYluX37nfE+nRT3SdxQeqHep0J3LQhMw
	VR2zZmNSppUHwf7m+u68W2jKDugGgeoHo8+1FXv90AT+ck+RC9fs6hE8L5BQ7VgfNZFC2yiI6H8
	TamOrrTdcf9TgRCgwq+CbLrcujtD3tZyWnNNv97Z+j8AfqmPZ1q0EZOhUaLvUYv2oEQE3qO8foz
	BMzRqO1DXFnf8Fv5AmDPBhAtam9A==
X-Received: by 2002:ac8:7dd0:0:b0:506:9b96:6283 with SMTP id d75a77b69052e-508db3d317bmr35698351cf.66.1772654348492;
        Wed, 04 Mar 2026 11:59:08 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899ebb09772sm99714546d6.12.2026.03.04.11.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:59:08 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 07/11] ASoC: qdsp6: q6afe-dai: add internal mi2s support
Date: Wed,  4 Mar 2026 14:58:11 -0500
Message-ID: <20260304195815.52347-8-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304195815.52347-1-mailingradian@gmail.com>
References: <20260304195815.52347-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 072E42075D3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271249-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add the internal MI2S ports found on the SDM660 internal sound card.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 sound/soc/qcom/qdsp6/q6afe-dai.c | 46 ++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/sound/soc/qcom/qdsp6/q6afe-dai.c b/sound/soc/qcom/qdsp6/q6afe-dai.c
index 0f47aadaabe1..dfe964b1a341 100644
--- a/sound/soc/qcom/qdsp6/q6afe-dai.c
+++ b/sound/soc/qcom/qdsp6/q6afe-dai.c
@@ -411,6 +411,7 @@ static int q6afe_dai_prepare(struct snd_pcm_substream *substream,
 		break;
 	case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
 	case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
+	case INT0_MI2S_RX ... INT6_MI2S_TX:
 		rc = q6afe_i2s_port_prepare(dai_data->port[dai->id],
 			       &dai_data->port_config[dai->id].i2s_cfg);
 		if (rc < 0) {
@@ -662,6 +663,21 @@ static const struct snd_soc_dapm_route q6afe_dapm_routes[] = {
 
 	/* USB playback AFE port receives data for playback, hence use the RX port */
 	{"USB Playback", NULL, "USB_RX"},
+
+	{"INT0 MI2S Playback", NULL, "INT0_MI2S_RX"},
+	{"INT0_MI2S_TX", NULL, "INT0 MI2S Capture"},
+	{"INT1 MI2S Playback", NULL, "INT1_MI2S_RX"},
+	{"INT1_MI2S_TX", NULL, "INT1 MI2S Capture"},
+	{"INT2 MI2S Playback", NULL, "INT2_MI2S_RX"},
+	{"INT2_MI2S_TX", NULL, "INT2 MI2S Capture"},
+	{"INT3 MI2S Playback", NULL, "INT3_MI2S_RX"},
+	{"INT3_MI2S_TX", NULL, "INT3 MI2S Capture"},
+	{"INT4 MI2S Playback", NULL, "INT4_MI2S_RX"},
+	{"INT4_MI2S_TX", NULL, "INT4 MI2S Capture"},
+	{"INT5 MI2S Playback", NULL, "INT5_MI2S_RX"},
+	{"INT5_MI2S_TX", NULL, "INT5 MI2S Capture"},
+	{"INT6 MI2S Playback", NULL, "INT6_MI2S_RX"},
+	{"INT6_MI2S_TX", NULL, "INT6 MI2S Capture"},
 };
 
 static int msm_dai_q6_dai_probe(struct snd_soc_dai *dai)
@@ -1006,6 +1022,35 @@ static const struct snd_soc_dapm_widget q6afe_dai_widgets[] = {
 		0, SND_SOC_NOPM, 0, 0),
 
 	SND_SOC_DAPM_AIF_IN("USB_RX", NULL, 0, SND_SOC_NOPM, 0, 0),
+
+	SND_SOC_DAPM_AIF_IN("INT0_MI2S_RX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("INT0_MI2S_TX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("INT1_MI2S_RX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("INT1_MI2S_TX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("INT2_MI2S_RX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("INT2_MI2S_TX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("INT3_MI2S_RX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("INT3_MI2S_TX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("INT4_MI2S_RX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("INT4_MI2S_TX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("INT5_MI2S_RX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("INT5_MI2S_TX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("INT6_MI2S_RX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("INT6_MI2S_TX", "NULL",
+		0, SND_SOC_NOPM, 0, 0),
 };
 
 static const struct snd_soc_component_driver q6afe_dai_component = {
@@ -1039,6 +1084,7 @@ static void of_q6afe_parse_dai_data(struct device *dev,
 		/* MI2S specific properties */
 		case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
 		case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
+		case INT0_MI2S_RX ... INT6_MI2S_TX:
 			priv = &data->priv[id];
 			ret = of_property_read_variable_u32_array(node,
 							"qcom,sd-lines",
-- 
2.53.0


