Return-Path: <devicetree+bounces-54319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC40890752
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 18:39:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1D801F25D14
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 17:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5A6D12FF88;
	Thu, 28 Mar 2024 17:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="Vw5WMXx0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D157F470
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 17:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711647582; cv=none; b=PKxN9QYx1dVsDUbNuJ7E8+ed16OsTFVu5wLVW6F09gai8xqtHN7CdvyT20C1lCes/5EMZBuH39eETpIFM0JshptMVyypdh7HRmPLdjku/I/1s5yNmDf48s1WfPPdHmZvvimDosz7rkhFd4QnXz17B/bmB4FyFA45CAX4xUP98VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711647582; c=relaxed/simple;
	bh=49DbNazJb+51HgY87AZJqtIUYIPq9q2er45xmqJbnUs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=PMs//ocGAodfffU50+aCOlTL9gHrCKKkcBxDI2MtrkEC8BcLVM47DqrR5zknc0Q0OGc66Q1rK2DSQxYn6X7pFjwKUYEwgEllf4IQeP+IJNFycmTj62ZFDZYcZbWZn2uu54YkxcCL7sSs0WekX7WJQvN553ancglwZs4lzQ5FcxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=Vw5WMXx0; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d6dda3adb9so12724171fa.1
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 10:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1711647579; x=1712252379; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SfZaLSH9sfGg1t8HLxW0Yvj6/ynr0oCl38jYR5QeVdw=;
        b=Vw5WMXx0HwaFvfiTGvTbQqs0YMmpiTpPAie7+/UtgOyX3JLDYqX0aDCiQmHiKibX1m
         0T/KM7kTu0ZuNkr3URc8htunOoWX1cU7mkKs2brWS95jyeO9FmcDj/SYiU4GMgqArfSq
         q5f4gLHgdyfDa+XXf62Hb+pCIDLFQifFvSSdIz0WffYYHZxBmhhOxVUPn+EHnRshvTyC
         Azn8mNujH8sreDxZw/XhPncMPpCQkgTXpwf5fS7ht2neC2uzKx7u3dFSSSUdOAIANE/W
         CxBuued54aAiF5p867SMfObS+ER3wFhzCWr2qzN0RQUz56tzxMifvBiRD0i1CnRpo2gh
         v3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711647579; x=1712252379;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SfZaLSH9sfGg1t8HLxW0Yvj6/ynr0oCl38jYR5QeVdw=;
        b=p/BPSL65wEsdxTfEjeOOq3UlX18Xi5hLL/k9sf7wmYd7eL2jUdcNJphaE+rQIyqM5v
         7kKeauEpIoGYaGr+DrZ9H7AvN0a8jvDx+S4YaMKbqk0VxSBsD/IhbUBkS32d9X4MiY1D
         KEM+ufBuTQzh8yu9BKhFajrz4cWz/7+zwy34xtNRE7DUTWxVzAduDb3L+ggkkZuoR/Bb
         TO6ChNP7qSdqwr8ffiMBUoPUVXcrPd9fe6YTqkRXTuUTKiOUi8UQtAJZcZoUe8c5nXCU
         WSKsZvAn0qxB35Jo8AzjHu97JppjXU1hPCQZm7OQ/y2Bgy40se1cGwDDv+Oihk0Zir2z
         6ZrA==
X-Forwarded-Encrypted: i=1; AJvYcCV2OBkXpixPx9KqQT7ntMyzORqkJb0StkoN0dZfAW0/hy0ZK6t37QVYbprJiEP9HOXA/T4TH0tD42tdTC9FO7kbR2xYjCDh4REY/Q==
X-Gm-Message-State: AOJu0Yx8fwBaEVqZWR0ohltTZiZvrd0VTNZV3vpMzc5hmhm/PF6y3Kyu
	wyTDJjBhn9q3biLUDTvMd+onlqjjPnBURv/yuFC9bsn7ShRBZe3h4rbrLR2alVI=
X-Google-Smtp-Source: AGHT+IHJtfFGSxBmjD4dNUNq1FwHZ5u75l7O+jY6a7/Z/DevlcIO9iRfXrTDZupUiLsfoB+TOXi3tw==
X-Received: by 2002:a19:2d4c:0:b0:513:ed0f:36c9 with SMTP id t12-20020a192d4c000000b00513ed0f36c9mr84250lft.45.1711647578797;
        Thu, 28 Mar 2024 10:39:38 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id o10-20020a05600c510a00b004148a5e3188sm6066643wms.25.2024.03.28.10.39.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 10:39:38 -0700 (PDT)
Message-ID: <45448d42-bc48-4b9e-adca-59a47e0674f5@freebox.fr>
Date: Thu, 28 Mar 2024 18:38:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 2/3] wifi: ath10k: fake missing MSA_READY indicator
Content-Language: en-US
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
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
References: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
In-Reply-To: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
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
 drivers/net/wireless/ath/ath10k/qmi.c | 7 +++++++
 drivers/net/wireless/ath/ath10k/qmi.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 38e939f572a9e..50e28fa37e430 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -1040,6 +1040,10 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
 		switch (event->type) {
 		case ATH10K_QMI_EVENT_SERVER_ARRIVE:
 			ath10k_qmi_event_server_arrive(qmi);
+			if (qmi->fake_msa_ready_indicator) {
+				ath10k_dbg(ar, ATH10K_DBG_QMI, "qmi HACK fake msa_ready indicator");
+				ath10k_qmi_event_msa_ready(qmi);
+			}
 			break;
 		case ATH10K_QMI_EVENT_SERVER_EXIT:
 			ath10k_qmi_event_server_exit(qmi);
@@ -1077,6 +1081,9 @@ int ath10k_qmi_init(struct ath10k *ar, u32 msa_size)
 	if (of_property_read_bool(dev->of_node, "qcom,msa-fixed-perm"))
 		qmi->msa_fixed_perm = true;
 
+	if (of_property_read_bool(dev->of_node, "qcom,no-msa-ready-indicator"))
+		qmi->fake_msa_ready_indicator = true;
+
 	ret = qmi_handle_init(&qmi->qmi_hdl,
 			      WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN,
 			      &ath10k_qmi_ops, qmi_msg_handler);
diff --git a/drivers/net/wireless/ath/ath10k/qmi.h b/drivers/net/wireless/ath/ath10k/qmi.h
index 89464239fe96a..c68526aad8946 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.h
+++ b/drivers/net/wireless/ath/ath10k/qmi.h
@@ -107,6 +107,7 @@ struct ath10k_qmi {
 	char fw_build_timestamp[MAX_TIMESTAMP_LEN + 1];
 	struct ath10k_qmi_cal_data cal_data[MAX_NUM_CAL_V01];
 	bool msa_fixed_perm;
+	bool fake_msa_ready_indicator;
 	enum ath10k_qmi_state state;
 };
 
-- 
2.34.1


