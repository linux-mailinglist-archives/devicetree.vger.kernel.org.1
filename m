Return-Path: <devicetree+bounces-48521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4928725B5
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 18:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8C24284CCD
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 17:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D32417579;
	Tue,  5 Mar 2024 17:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="2470CFr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757D017581
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709659947; cv=none; b=bCWkKhV6z+Xj7aP4iPXPKZtmh+Gmwm6A6blYwBGCBXfKq7Tpva001g13pwnulnKEziaIBDThX0vdaXYI49iKOBqXOYaShS5LeppMT6AOovrrb7x2nriiZuTQHSteUd/kz32nf2KjDjgRzTDcHEyrGwCJiWl590C66zT2DowkgK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709659947; c=relaxed/simple;
	bh=hC5W6SzlyKm142rCF/Gy9ny1G5NmzizAsB/pB1Y31pM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Klzf4f0rxGL8VNV6rZjo1YnBM1hbLIbq54J5x2T59ZBhegn6vvtUxR5NbOLCKO+CbgsZxDiczqFlxyMJfQ05TbaVir4WHEOEnWlGmUE+pSMA/QTPcSL/LORzDCAe21qJm5lvgfllUMxqCySsfulGRv5QtnPdLaZ1x1ZF9ynawyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=2470CFr6; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-412e4426e32so17091255e9.2
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 09:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1709659942; x=1710264742; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RHGCjxaUPDbJWBPK3hLyM4vR5pB66bSx5oKjgwP2aPM=;
        b=2470CFr6JxK8r7Jh7TD5XziY4hGGCBNT8RAi/8gsR+jtbmXik5etSUGe4+8lm1ybVe
         rDZP42yaa5FmINifWGQuNbtgTRIuL0WmYf+Eg7TFtAjSBWY+DzZLwjLirjfYCBnu8bCR
         L09uD6CtLstxyH87sZpQ/ErsSj+jqQ44iAYqkszI0z2aL7PSwfmGkLo881J6kFDrXNyW
         Jgw75eQoHJPNZEl0Ar6t6tmfCsFxVRjDlNf/0gi+7ZbJpPYKPHlHgJk/6RJltFe2/PNs
         f3/cHn4Aq6PFCZVHIsKcJPOTnXYjXuimOh8Z/kGJ6Dx2TABhetsOQeBNo0uxbGEuoUCq
         VkLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709659942; x=1710264742;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RHGCjxaUPDbJWBPK3hLyM4vR5pB66bSx5oKjgwP2aPM=;
        b=CSdqCQB93dVNvY9HM3NRcFBIbnlBlq5FUwJlf2wUClFh7IQp0M5HgY98r729d9bvS0
         JNvUFCDaFU6Igfnug/jCZ/55WyFum50OhM0nqIlwNPnRqyUaINjnRqNZJ5Ao/Wb9EVG0
         /Wj2hd2q65H/uFa/e69YaDedgjId3ywfzUgpxpSRYDx3myvYqxvjLSthQEdWrSsRyF8B
         NKLDyGH3uBUgphHmZHK2u6Uk7fAENtMjAXYAcLT9Uem7I7xKScNnYu+7aUMBa8AxC/Pc
         tw+aFxIYkFNOLlwnrn2//STzWjFheEa4vMVAqELeQlIbml2/6ysdpBOaBeSMNZQgF4u6
         2jjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtissAvTE4MPLum2ck+j+m/khA7PTQU+F/pN/58YzkGKX+BjLidTqvqFh+cbpq9bL6Xld8DaoOVYKTNj/W5nnXZ/ISi0DzrkwIQg==
X-Gm-Message-State: AOJu0YwG6M6ALoFnb/OT5HmaskgeCP18XkPaDBQ6JMyv0MdYIDiJo8kA
	TiaqSXxIBYE/Wi1cgpsw1Ews7lrH70wcRVbW8wEM+M+52/uVh9FK/TKnXplt30E=
X-Google-Smtp-Source: AGHT+IFUWWu6brcU5Z3h34Cf83caanSuxe11qXyds41BJD+kSKbWTuLmI4UzT/Lk46RQ0AtgdDlaRw==
X-Received: by 2002:a5d:4f07:0:b0:33e:11c3:7ebf with SMTP id c7-20020a5d4f07000000b0033e11c37ebfmr9315331wru.62.1709659941681;
        Tue, 05 Mar 2024 09:32:21 -0800 (PST)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id q16-20020a5d6590000000b0033d56aa4f45sm15484527wru.112.2024.03.05.09.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 09:32:21 -0800 (PST)
Message-ID: <0816f7bb-3c97-4b90-8e19-191552ea6e26@freebox.fr>
Date: Tue, 5 Mar 2024 18:32:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
Content-Language: en-US
To: Kalle Valo <kvalo@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>,
 wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
 <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr> <871q8wk7o3.fsf@kernel.org>
 <3392f356-7b19-483d-b9f8-3bd84068fa52@freebox.fr> <87wmqoilzf.fsf@kernel.org>
 <c58e67e6-6a7f-4963-86b9-580165bf05ba@freebox.fr> <87cyse8j9m.fsf@kernel.org>
 <6d4b1381-c121-4cda-a8c9-9ccac56bd447@freebox.fr> <87plw87nsc.fsf@kernel.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <87plw87nsc.fsf@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/03/2024 15:31, Kalle Valo wrote:

> Thanks, this is exactly what I'm proposing.

With your suggestions, the patch becomes much simpler:

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 0032f8aa892ff..18d0abcf6f693 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -769,6 +769,7 @@ static const char *const ath10k_core_fw_feature_str[] = {
 	[ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL] = "single-chan-info-per-channel",
 	[ATH10K_FW_FEATURE_PEER_FIXED_RATE] = "peer-fixed-rate",
 	[ATH10K_FW_FEATURE_IRAM_RECOVERY] = "iram-recovery",
+	[ATH10K_FW_FEATURE_NO_MSA_READY] = "no-msa-ready",
 };
 
 static unsigned int ath10k_core_get_fw_feature_str(char *buf,
diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index c110d15528bd0..1ac8ea02cc088 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -835,6 +835,9 @@ enum ath10k_fw_features {
 	/* Firmware support IRAM recovery */
 	ATH10K_FW_FEATURE_IRAM_RECOVERY = 22,
 
+	/* Firmware does not send MSA_READY indicator */
+	ATH10K_FW_FEATURE_NO_MSA_READY = 23,
+
 	/* keep last */
 	ATH10K_FW_FEATURE_COUNT,
 };
diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 38e939f572a9e..7e408fd63cdb8 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -1040,6 +1040,8 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
 		switch (event->type) {
 		case ATH10K_QMI_EVENT_SERVER_ARRIVE:
 			ath10k_qmi_event_server_arrive(qmi);
+			if (test_bit(ATH10K_FW_FEATURE_NO_MSA_READY, ar->running_fw->fw_file.fw_features))
+				ath10k_qmi_event_msa_ready(qmi);
 			break;
 		case ATH10K_QMI_EVENT_SERVER_EXIT:
 			ath10k_qmi_event_server_exit(qmi);



I need to build a kernel + rootfs + FW to test the proposed solution,
then I can spin a formal submission.

(I didn't understand why this patch requires Dmitry's series?)

Do I need to submit a symmetric patch to linux-firmware to define bit 23?
And also a patch to add the bit to some firmwares? (All msm8998 FWs?)

Regards


