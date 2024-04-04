Return-Path: <devicetree+bounces-56335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D1D89889B
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 15:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C494D1C21226
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 13:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310AF1272A0;
	Thu,  4 Apr 2024 13:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QCwQTXUs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6491B82869
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 13:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712236455; cv=none; b=OdHJkW8DZmZnuNsc2g3CICzdGCS/V/HFB+2n2ieC0JlwzaOSCiA2KLJt6RvH399r6jd+w2wN2G+ML59fmI+fhaZ3u6mQhs2dCbUf9IfYmI+bubJVoMiXK3+0bLqj3FV/MyaLVoaV8i03sSOUccqjplIJEDbApvVdXYJaKDwG5K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712236455; c=relaxed/simple;
	bh=TvVo9cCYyR632GL7Cc0fqR3Kh9+qrXT134eJYEYfMZI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pc9IeTk2zxUfps/7moCWXdwFTxZGk3lzjt+MgeVjk6zLOoU03PXYWJL786niHq7knShQx31t6UvgQ9H+9w9i7K5+ccYTmzaKoKBo96heKVrg5LKjszyDy3yVU+0CcZN873H6TP/lkkb2ttvSMLJNID81ryFmOTDRwSbHVDMZ+58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QCwQTXUs; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6152be7c58bso10527427b3.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 06:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712236452; x=1712841252; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tknSODYMU/l/2VPgjwwryjgmML6llAA/U7CzR6kpVHI=;
        b=QCwQTXUsjxHVDw6kc1QhrXrHBl7OZSxalSAqJgIWQorp1SSNS7tcpYj8+KxuymXMAG
         3l5SZy8RPm9EfT6De3dAeiFjf3rZXtzdqlhG1xVjxEluN+zqn0hh1qLBbr8wzi4wDyUE
         v/juRr40Bpln/wr5QopjwTep8aCQmeqrckSgU31vPKcIS3MK1S5G8RxITI2xM8FGhd85
         MYoB+MALAEt1iXahOqSnrsDvMZlx/JSll/y0l6OuqQ9A2OYg6xOZ6B7DgurpVWEk44FU
         kwSoXsUJrs4RFC/HAE7AcKksifNIZldTWhXu3qeH66VBSQ6nK96C7jiwsc8ATq3wvUYl
         iaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712236452; x=1712841252;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tknSODYMU/l/2VPgjwwryjgmML6llAA/U7CzR6kpVHI=;
        b=EQaM/CK6MxJdwrU9tVaK4kCqPGv89YWmxECCEoFbrUORKgeS1cJgdxMZiN29OcA+9f
         sKEQNw/btAJBGpQTcSlnBOiKh8PtlQorJQTmKfpAiRLN9fnSMq/gYOSBNvPXAmGOQuo8
         NYCmTHYNcO030oeVJMkJ8y2gWHx3pA3rVf33dgmUdQs3alTGKk+zMa3FQu84A62NOb8r
         oYvxjXCLq4C3soDaRz0gbGgpOjnvP/ctyO4meieQWroMIpN3VL3gnHI9LdzsNgmBo0pl
         zXLRb6/J9MOxKUWaXEa0Q2NvP65/UyMNmnk0EJS/+uaRNPm0ECBdU3RPUxfs644WhD5T
         j58g==
X-Forwarded-Encrypted: i=1; AJvYcCUjFh6wvM1lCr9skZkmzkgpv5DA9wyytLpYH9SyWGLxhzrrw0aWe53hYLyreFnhP/ghnIjVVN6tJRwZRwOFgFC5rluMlK/YxqSpGg==
X-Gm-Message-State: AOJu0Yw0IdcQOngvxathRH+5/WPUTNRvo1yOZ0BMU6PTZgfAwpnJRLW+
	lghx/u5AG1ISQTHErpWCgrTscL8rEjraXvd35ns+2Hdy1mnX+h0xpfcQj/cAcMbH4nYbp0/ZkJQ
	cUSiShgIbHtYlZCHqILJtySvxAcyVHTHcl4NfNg==
X-Google-Smtp-Source: AGHT+IHryU3PLO20GBRCCgKMJ6XaprTWbXPQPdQ4lA3pQDeAvfm7RbBhJGsftpZ1ACzQsnluXERsu8pQW/NEsN9JBts=
X-Received: by 2002:a25:2e4b:0:b0:dc6:8534:bb06 with SMTP id
 b11-20020a252e4b000000b00dc68534bb06mr2340069ybn.17.1712236452434; Thu, 04
 Apr 2024 06:14:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
 <5cdad89c-282a-4df5-a286-b8404bc4dd81@freebox.fr> <252618e8-9e80-4774-a96c-caa7f838ef01@linaro.org>
 <502322f1-4f66-4922-bc4e-46bacac23410@linaro.org> <0ca1221b-b707-450f-877d-ca07a601624d@freebox.fr>
 <CAA8EJppeREj-0g9oGCzzKx5ywhg1mgmJR1q8yvXKN7N45do1Xg@mail.gmail.com>
 <87ttkh49xi.fsf@kernel.org> <e804b257-4dc0-45f1-a5c5-66bda51cf296@freebox.fr>
In-Reply-To: <e804b257-4dc0-45f1-a5c5-66bda51cf296@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 4 Apr 2024 16:14:01 +0300
Message-ID: <CAA8EJprBe_th5n_J4BRxUhAO1k89cZOGyTfCBzGQazN5fe9Nuw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8998: set qcom,no-msa-ready-indicator
 for wifi
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Kalle Valo <kvalo@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jeff Johnson <quic_jjohnson@quicinc.com>, 
	ath10k <ath10k@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>, 
	DT <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>, 
	Bjorn Andersson <andersson@kernel.org>, Jami Kettunen <jamipkettunen@gmail.com>, 
	Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Apr 2024 at 15:30, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 04/04/2024 13:57, Kalle Valo wrote:
>
> > Dmitry Baryshkov wrote:
> >
> >> I'd say, we should take a step back and actually verify how this was
> >> handled in the vendor kernel.
> >
> > One comment related to this: usually vendor driver and firmware branches
> > go "hand in hand", meaning that a version of driver supports only one
> > specific firmware branch. And there can be a lot of branches. So even if
> > one branch might have a check for something specific, there are no
> > guarantees what the other N+1 branches do :/
>
> The consequences and ramifications of the above comment are not clear to me.
>
> Does this mean:
> "It is pointless to analyze a given version (or even several versions)
> of the vendor driver downstream, because there are exist a large number
> of variations of the code." ?
>
> And thus, "it is nonsensical to try to "align" the mainline driver to
> "the" vendor driver, as there is no single "vendor driver"" ?
>
> Thus, the following patch (or one functionally-equivalent) is not acceptable?

For reference, I tested this patch on sdm845 (db845c), qcm2290 aka
qrb2210 (rb1), sm6115 aka qrb4210 (rb2) and sm8150 platforms.
I was not able to fully test it on sda660, modem crashes without this
patch (there is no MSA_READY indication) and with the patch applied
the device hangs, most likely because of the IOMMU or clocking issue.

>
> diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
> index 38e939f572a9e..fd9ac9717488a 100644
> --- a/drivers/net/wireless/ath/ath10k/qmi.c
> +++ b/drivers/net/wireless/ath/ath10k/qmi.c
> @@ -1040,6 +1040,8 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
>                 switch (event->type) {
>                 case ATH10K_QMI_EVENT_SERVER_ARRIVE:
>                         ath10k_qmi_event_server_arrive(qmi);
> +                       printk(KERN_NOTICE "NOT WAITING FOR MSA_READY INDICATOR");
> +                       ath10k_qmi_event_msa_ready(qmi);
>                         break;
>                 case ATH10K_QMI_EVENT_SERVER_EXIT:
>                         ath10k_qmi_event_server_exit(qmi);
> @@ -1048,7 +1050,7 @@ static void ath10k_qmi_driver_event_work(struct work_struct *work)
>                         ath10k_qmi_event_fw_ready_ind(qmi);
>                         break;
>                 case ATH10K_QMI_EVENT_MSA_READY_IND:
> -                       ath10k_qmi_event_msa_ready(qmi);
> +                       printk(KERN_NOTICE "IGNORING ACTUAL MSA_READY INDICATOR");
>                         break;
>                 default:
>                         ath10k_warn(ar, "invalid event type: %d", event->type);
>
>
>
> Regards
>


-- 
With best wishes
Dmitry

