Return-Path: <devicetree+bounces-63631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A348B5AF2
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 16:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B0E51F20E7A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43C2D7C08D;
	Mon, 29 Apr 2024 14:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="OvLFr4EU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764F478676
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 14:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714399705; cv=none; b=gMX02opmais+mZExvtK2ljf9DhHr/hnf+BRcgKWMhCrFIrUdyGy1lyAHDtUGMy6S3ggC3Ns/xuUg0fCA2coUDKtqgtiw8+mBOg1+z+8r8qn2Tc2OniZ/s+CBhwZUi1ErTtIw23ADpkz6dB3odEZ/Es5jaHesMAyn4EGLDCuIohA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714399705; c=relaxed/simple;
	bh=K3H3oU3CMwUoPM9Gm8tJdK0RIHTbJw44PRW6pLlAOTw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=YgPRu3PlUwfys07WWqdEUVteEG5W7alZvhLwBLdvZflZvqBo1lEJ7mdw56pJQZHtHkOd7Vj3iOOk8MfzrU6uTcoS9vjhUXqA/fCbXl0+a6BUDdxgtl/38wVGI5BxM9ztXumU45oDF/ZiZXo39fRoAQntxvHZmZk+5WHK4WzmlOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=OvLFr4EU; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-347c197a464so3373740f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 07:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1714399702; x=1715004502; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=slJpYmgS90L/h5w1hii7W5uz2RIsMI5ZLFBw+Kaucdg=;
        b=OvLFr4EUtleHY247ykcqxLVpRcpJVzjhYQeqsuOITwTctqcUXdn0qFI5waamN/qyQ1
         P404Fzz+rn2KXCAcpRVL0BrV2zsQZO7q+bN+COiJJRx0t4aJBY/2PMqI3XuwCS2vxpWs
         0mKi1wNwwB+PExKAa+qSwlSRYwXloSGioo6JUIHP9kIaaOeiGRoag5dJrQUyrPyEP8D+
         fWpL90FfVo1rmon1QYBkulR2kMqpZ09/4/Ont9cgN9xI9HNwbpZY5H2j/xObyI4k8N4g
         mhmu3hKmwrELtgjpe7F66wn9++lHwBEx5Tq5lQrC6yaADbUMs6jOWXKAG1UkNOYgjs78
         8QQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714399702; x=1715004502;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=slJpYmgS90L/h5w1hii7W5uz2RIsMI5ZLFBw+Kaucdg=;
        b=QLn21IDkM8ugY8kkTubq0gD8R4IYGloINNSrIrb8ArL/TdGBN5p5vtu9PFVh1FnH/a
         AjPNoQ9HOs2Fy9YrvnkwELycfiJQdEKLiRqOHRlTN/nNgc9o5dzUfCXn0aUxc3ORvdox
         5HRJ2h7UwjNBQKrJnpH67qgbJFBjs7Klth0krwS3cBQJ/Y+YC278qa24xhG9wr8GPcjq
         nEztDOpuRwglJ3lom4obz4LNzp6y15Tqbk77N2YhtVmYB/wuc224YR6FHk+JRRDZbOsz
         miCoZrBnSkLZGd1c9a6lC8iFYeD8ZBUbqtNOhkBl1Q5+4Pb9cVjcrl1lNZf/o7VwVQj4
         KsOw==
X-Forwarded-Encrypted: i=1; AJvYcCXaXIVtk00GaKk/kJhxZGUb4GXcOQONzE98EXBZd+dmcizEMrA02kv6CbxcGmd5lJmqRHgv6XjAM4ZC6Vs8OEeJRt/oWYVQBho4ww==
X-Gm-Message-State: AOJu0Yw9wWphuIwk4NI0u91MebKYBh/H+8X5R/K0N1pQFwFqGHi1ONP1
	b7uZ+CgjZNSSeYa9Q7/aq9e1GcGIgm3rPAjF9SqiFDgjRn0Ve2+1ayHeE9sgX8E=
X-Google-Smtp-Source: AGHT+IE0U6L3fujZHlk20H5CVqIRzvRH48z34sBirtpJ3xZOuT9o+7jDn4hp8aLzGpTqiK2yS6z6Yg==
X-Received: by 2002:a5d:43cf:0:b0:34c:ea34:7191 with SMTP id v15-20020a5d43cf000000b0034cea347191mr2786066wrr.21.1714399701848;
        Mon, 29 Apr 2024 07:08:21 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id h1-20020a5d6881000000b0034615862c64sm29585477wru.110.2024.04.29.07.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 07:08:21 -0700 (PDT)
Message-ID: <23540303-5816-45d5-a1af-5f09d645a73b@freebox.fr>
Date: Mon, 29 Apr 2024 16:06:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v3 2/3] wifi: ath10k: do not always wait for MSA_READY
 indicator
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>
Cc: wireless <linux-wireless@vger.kernel.org>, DT
 <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Alexey Minnekhanov <alexeymin@postmarketos.org>
References: <ebbda69c-63c1-4003-bf97-c3adf3ccb9e3@freebox.fr>
Content-Language: en-US
In-Reply-To: <ebbda69c-63c1-4003-bf97-c3adf3ccb9e3@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The ath10k driver waits for an "MSA_READY" indicator
to complete initialization. If the indicator is not
received, then the device remains unusable.

Several msm8998-based devices are affected by this issue.
Oddly, it seems safe to NOT wait for the indicator, and
proceed immediately when QMI_EVENT_SERVER_ARRIVE.

fw_version 0x100204b2
fw_build_timestamp 2019-09-04 03:01
fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.1.0-01202-QCAHLSWMTPLZ-1.221523.2

Jeff Johnson wrote:

  The feedback I received was "it might be ok to change all ath10k qmi
  to skip waiting for msa_ready", and it was pointed out that ath11k
  (and ath12k) do not wait for it.

  However with so many deployed devices, "might be ok" isn't a strong
  argument for changing the default behavior.

Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 11 +++++++++++
 drivers/net/wireless/ath/ath10k/qmi.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 38e939f572a9e..f1f33af0170a0 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -1040,6 +1040,10 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
 		switch (event->type) {
 		case ATH10K_QMI_EVENT_SERVER_ARRIVE:
 			ath10k_qmi_event_server_arrive(qmi);
+			if (qmi->no_msa_ready_indicator) {
+				ath10k_info(ar, "qmi not waiting for msa_ready indicator");
+				ath10k_qmi_event_msa_ready(qmi);
+			}
 			break;
 		case ATH10K_QMI_EVENT_SERVER_EXIT:
 			ath10k_qmi_event_server_exit(qmi);
@@ -1048,6 +1052,10 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
 			ath10k_qmi_event_fw_ready_ind(qmi);
 			break;
 		case ATH10K_QMI_EVENT_MSA_READY_IND:
+			if (qmi->no_msa_ready_indicator) {
+				ath10k_warn(ar, "qmi unexpected msa_ready indicator");
+				break;
+			}
 			ath10k_qmi_event_msa_ready(qmi);
 			break;
 		default:
@@ -1077,6 +1085,9 @@ int ath10k_qmi_init(struct ath10k *ar, u32 msa_size)
 	if (of_property_read_bool(dev->of_node, "qcom,msa-fixed-perm"))
 		qmi->msa_fixed_perm = true;
 
+	if (of_property_read_bool(dev->of_node, "qcom,no-msa-ready-indicator"))
+		qmi->no_msa_ready_indicator = true;
+
 	ret = qmi_handle_init(&qmi->qmi_hdl,
 			      WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN,
 			      &ath10k_qmi_ops, qmi_msg_handler);
diff --git a/drivers/net/wireless/ath/ath10k/qmi.h b/drivers/net/wireless/ath/ath10k/qmi.h
index 89464239fe96a..0816eb4e4a18a 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.h
+++ b/drivers/net/wireless/ath/ath10k/qmi.h
@@ -107,6 +107,7 @@ struct ath10k_qmi {
 	char fw_build_timestamp[MAX_TIMESTAMP_LEN + 1];
 	struct ath10k_qmi_cal_data cal_data[MAX_NUM_CAL_V01];
 	bool msa_fixed_perm;
+	bool no_msa_ready_indicator;
 	enum ath10k_qmi_state state;
 };
 
-- 
2.34.1


