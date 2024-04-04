Return-Path: <devicetree+bounces-56327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E06CA8987E1
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:35:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B62E1C21E29
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3534B86245;
	Thu,  4 Apr 2024 12:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="UdPpvlmz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3550243AA4
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233846; cv=none; b=OJUdZbVuK0KDFtT5PGUFph/OSLx0IlxbWePDCRiQusulU0Vg47Yb28wfcD/aogHzOoPL/k2Py/PCyvW1euM2oLHcwdvD5iilqm8JrqiHMJ+eCo10FNQhTi7zOzo2G39moCnJnhX4uEAb5GWqg3VrDnIBUdZlIepzXc2UJfHWV1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233846; c=relaxed/simple;
	bh=f28NbA4ZuZA/fyXjKOiLtArFZfgGGB0391csJcl81uI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gY8wbSXTrjuDmzoyyNIRdjoSb3ssB3IIKPdWRB3Dq6MGKH7/5vibzsmJt8GypbydD4NbDPjiy9IccNIw8yROARuVyPZSrVZgLXkUpLWAnRM34Kz/7AlhCHhqemBjTi943WNHIPM59VTzaAe4i20NJIh+b9eaxqTOOMbMBdpdlys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=UdPpvlmz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-415515178ceso6948465e9.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1712233841; x=1712838641; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3+BMPQleoesnEmuZIKvnJIR9RrNyhXeocOmGMELh+Uw=;
        b=UdPpvlmzbkRG0OBRspo3R6mr9qaIOIjxZ3kgoE+5VEYXEL0mQgi2XxI7E2yA7sSkP9
         2It8Fbwdwvf3cwC6wQ36RsqylPkisJvFNs64yUQahiBxtGZODn0TjkEsicM0HdeqUmys
         PVF4DoUzvrwAAN/I7G3AnJ+vbXnNN1c7y0BIbSJfP+qOgmI5QaHcFW2Za1wHY2YHj9Y3
         okSQgifFnSEurZ441Nh9NBkFymOqlRA8iCOIl8IYMDE8ghZ83NLvo3vyjCO5kypkYfl2
         C3AakstAoqzTWK0ctR00oDwjj1eE7htJoeilH/H5eRXyxXHarWWzHf9fTAsMb4TcGWxm
         UOkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233841; x=1712838641;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3+BMPQleoesnEmuZIKvnJIR9RrNyhXeocOmGMELh+Uw=;
        b=LJ53wNw1WBsvld+hyjES2au2KYrMCDcnT026Jw3EcHv0Gfauy/iD7np8e0dblOSlvy
         Swo+exHZWqyEcWCS57+/p8daga0fVnlnXN7jtmliLliDjInUy78nsJT7Yk3v1TLqtihJ
         rujY7cVUHvOZuxG57FPCUnNU3+yA52RuGef9QAmCN/vw1YkO8zLVLj/L8buX+DZ0wmwH
         NUptOZZmJEvibEkbqd9yUsNRbwUD8Psb8SA19trJIMdaR6wHNCUdlPgmw3eUA31K9eyX
         EzquJqIr/ITXNeAl0P4LA9VsqfvgaZrqyFOsc3y58DUCdkFRfJUAuIIaLh47m4eXZaU3
         46dQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWrgr8BfotRpYnPFaiKVAVx0mwSo9QXAthocpCxScfY9JTdYKjAr61I6OIc72OPSHvC/wsvOah0fx38GO+T5vj4hk8WBiNVHTK0A==
X-Gm-Message-State: AOJu0YytoDEGWK11bHwnmblAllgRe6789u1HtvpwIFimUvChU/yElgxt
	MbV7RzkY/ToWGahttTV8Yh13CiWrUINbbfhpllZR7mcpNHWwsS+n/AC54+1VAPL2MU1yR1zpjm/
	P
X-Google-Smtp-Source: AGHT+IEV9SRf3L1IqaNEnuhHOMN7UgW5DwSVakpA51/xjM2jO4fLk72OjgqTkeR4uvMKVXqT36uwBA==
X-Received: by 2002:a05:600c:3115:b0:416:1d2e:62f1 with SMTP id g21-20020a05600c311500b004161d2e62f1mr1874361wmo.5.1712233841414;
        Thu, 04 Apr 2024 05:30:41 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id bg2-20020a05600c3c8200b004149530aa97sm2617799wmb.10.2024.04.04.05.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 05:30:41 -0700 (PDT)
Message-ID: <e804b257-4dc0-45f1-a5c5-66bda51cf296@freebox.fr>
Date: Thu, 4 Apr 2024 14:30:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8998: set
 qcom,no-msa-ready-indicator for wifi
To: Kalle Valo <kvalo@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k
 <ath10k@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>,
 DT <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
References: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
 <5cdad89c-282a-4df5-a286-b8404bc4dd81@freebox.fr>
 <252618e8-9e80-4774-a96c-caa7f838ef01@linaro.org>
 <502322f1-4f66-4922-bc4e-46bacac23410@linaro.org>
 <0ca1221b-b707-450f-877d-ca07a601624d@freebox.fr>
 <CAA8EJppeREj-0g9oGCzzKx5ywhg1mgmJR1q8yvXKN7N45do1Xg@mail.gmail.com>
 <87ttkh49xi.fsf@kernel.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <87ttkh49xi.fsf@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/04/2024 13:57, Kalle Valo wrote:

> Dmitry Baryshkov wrote:
> 
>> I'd say, we should take a step back and actually verify how this was
>> handled in the vendor kernel.
> 
> One comment related to this: usually vendor driver and firmware branches
> go "hand in hand", meaning that a version of driver supports only one
> specific firmware branch. And there can be a lot of branches. So even if
> one branch might have a check for something specific, there are no
> guarantees what the other N+1 branches do :/

The consequences and ramifications of the above comment are not clear to me.

Does this mean:
"It is pointless to analyze a given version (or even several versions)
of the vendor driver downstream, because there are exist a large number
of variations of the code." ?

And thus, "it is nonsensical to try to "align" the mainline driver to
"the" vendor driver, as there is no single "vendor driver"" ?

Thus, the following patch (or one functionally-equivalent) is not acceptable?

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 38e939f572a9e..fd9ac9717488a 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -1040,6 +1040,8 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
                switch (event->type) {
                case ATH10K_QMI_EVENT_SERVER_ARRIVE:
                        ath10k_qmi_event_server_arrive(qmi);
+                       printk(KERN_NOTICE "NOT WAITING FOR MSA_READY INDICATOR");
+                       ath10k_qmi_event_msa_ready(qmi);
                        break;
                case ATH10K_QMI_EVENT_SERVER_EXIT:
                        ath10k_qmi_event_server_exit(qmi);
@@ -1048,7 +1050,7 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
                        ath10k_qmi_event_fw_ready_ind(qmi);
                        break;
                case ATH10K_QMI_EVENT_MSA_READY_IND:
-                       ath10k_qmi_event_msa_ready(qmi);
+                       printk(KERN_NOTICE "IGNORING ACTUAL MSA_READY INDICATOR");
                        break;
                default:
                        ath10k_warn(ar, "invalid event type: %d", event->type);



Regards


