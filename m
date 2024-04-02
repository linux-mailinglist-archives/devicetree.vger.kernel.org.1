Return-Path: <devicetree+bounces-55602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E9211895C50
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 21:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A126F2828A9
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 19:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C54D15B572;
	Tue,  2 Apr 2024 19:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fnm/fKA0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB24C15B55D
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712085355; cv=none; b=U+nNZg+8B6YVDFVocToaDfbBEjDYHgf/HaKmfuUk6OgAi1Qhb51X3WstvYl18qZ+/7yhQWrBFCqbPGAxCXMKTRR4bR9zubBHmXMW0I9uPKdypD2MkZvDItLUlluiCTfMvYdOXQppLbMoG3IWr4aYCce1XzbjqNnSjkyTXY7I9fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712085355; c=relaxed/simple;
	bh=erM4PWYWMUDv33GGqtPcaVibRwm0VbUgeCYyZHRWsr8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dTirMX0ejbkh+1NJLrpks5KBMSGOTQWiL8IsjVNw7V5Xvgs3oyFdOR8V/q63lXA2O370/xnxQe8FT8JnSGjma3l1EqAvHrYp5oyq/9tNmTa9QKc6DK/g/xQ8he6jFeWRrM1AoOSE26WAmV3iSJ/yU0oClHctqdq47EpdU/Ngyos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fnm/fKA0; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcbef31a9dbso3624007276.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 12:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712085352; x=1712690152; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EX892uaKTvbPiElfAXE8taGWdycpJIJZ2ztX2TZ+lMk=;
        b=fnm/fKA039ki9MhaENaloyJxdqhqHnsglSgWZVDdrwJOU+3xGprw322WWYdiZyOyaW
         I8JJ3u/gZOhIrhV38WenJGFFtTcu8Aopb+Imzj3NWUdoX0nkKtB/YWOI+5VZZNKHA7DS
         W4py0+Fo6yqPPRmoiOU716tDsj6rJ1NWiar/0R9MAlH0BipIiq8Z+MVKwSueastpEgtg
         IMLoiWfBg1TRYR9PAAu/ebLHnVWOvJaxfZj5bsPGzFdzSRHmuuReBGU9VSv4LUNfjIUb
         isDCvfvCjT9lIqQPjPD00nYzZQIYrtBfKpw/+b6A2L5lw6vjtcgT78a7x3YT4mb/9gUK
         FDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712085352; x=1712690152;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EX892uaKTvbPiElfAXE8taGWdycpJIJZ2ztX2TZ+lMk=;
        b=Yg2GM8O9aOj9ta+UAWM64qseJlosKOQ9ywg/k64e84w0ZI2bX0CCUKyy3J/LmmwcbK
         AQ9x8a3zl5WMTrpm9iPcltGVoeMdVY4xcTCyJ7jhf9tgO6bWWVeUzhO4+fEeWjhd6iec
         Cqv3xoBy3hQchhyqK+d36rqHajVDzkTEB7+OZbbB4l3EiTucm5FLOF0Vz1sCOX8Unc3s
         BFRwFq1bdAieIPVCuFw6K73UNeSqtP91ZuoIcR6Unjin+XXxs+Ya4ZEKsHG8rd8SibFQ
         FqYpeL63FLv0nAFl8PpqHjgZflRdQKJoZySc3P0AthtFzu52Kof5FlUy64GD76LjmTTf
         bcVA==
X-Forwarded-Encrypted: i=1; AJvYcCU3PMHmwUhnUpn3Iixsv/hOWIgmf2xD6rvTIZ0QW4b0MehD1VA5s0dwLl26Iq7jK6bUXDNPpLuE+JsvTwP9nhHPnY3OdTTDW2EH/w==
X-Gm-Message-State: AOJu0YwzxVPwkYgpQQbfHl50ShHUV0qd2O8ijq8UIijVcAH55aKAlskD
	+u84pbIxcYy5VXOxYBkRGYvAmye+R2cYGBAuWwJjIfroevLFsKHKSepnpj+NWZP+V0RDUfl0tKU
	N+f0oOvDtC+RZx0f7ayh1/H+QxdwOvzqHu/5HTQ==
X-Google-Smtp-Source: AGHT+IFCBa8eTLuJKWVEroA+txmQwHafWAoS12szYBdMuyOhdR0cHCmy/h/3SRVjBvxY1JSQLgHYg++LQJH+aSSkUCY=
X-Received: by 2002:a25:98c7:0:b0:dcc:7b05:4cbb with SMTP id
 m7-20020a2598c7000000b00dcc7b054cbbmr11583196ybo.31.1712085352700; Tue, 02
 Apr 2024 12:15:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
 <5cdad89c-282a-4df5-a286-b8404bc4dd81@freebox.fr> <252618e8-9e80-4774-a96c-caa7f838ef01@linaro.org>
 <502322f1-4f66-4922-bc4e-46bacac23410@linaro.org> <0ca1221b-b707-450f-877d-ca07a601624d@freebox.fr>
 <CAA8EJppeREj-0g9oGCzzKx5ywhg1mgmJR1q8yvXKN7N45do1Xg@mail.gmail.com> <36890ee7-ab9e-448c-ae30-7a75ac28b496@quicinc.com>
In-Reply-To: <36890ee7-ab9e-448c-ae30-7a75ac28b496@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 22:15:40 +0300
Message-ID: <CAA8EJpo8-T4z3o6E0pid=rY19e05GcB-+ogj26Bi0Za3PmEcGw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8998: set qcom,no-msa-ready-indicator
 for wifi
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
	ath10k <ath10k@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>, 
	DT <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>, 
	Bjorn Andersson <andersson@kernel.org>, Jami Kettunen <jamipkettunen@gmail.com>, 
	Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 21:22, Jeff Johnson <quic_jjohnson@quicinc.com> wrote:
>
> On 4/2/2024 8:55 AM, Dmitry Baryshkov wrote:
> > I'd say, we should take a step back and actually verify how this was
> > handled in the vendor kernel.
>
> (error handling and other non-QMI code removed from the following for readability)
>
> In ath10k we unconditionally call the following in
> ath10k_qmi_event_server_arrive():
>         ret = ath10k_qmi_host_cap_send_sync(qmi);
>         ret = ath10k_qmi_msa_mem_info_send_sync_msg(qmi);
>         ret = ath10k_qmi_setup_msa_permissions(qmi);
>         ret = ath10k_qmi_msa_ready_send_sync_msg(qmi);
>         ret = ath10k_qmi_cap_send_sync_msg(qmi);
>
> In vendor icnss2 there is conditional logic in icnss_driver_event_server_arrive():

Note, wcn3990 is icnss, not icnss2

>         if (priv->device_id == WCN6750_DEVICE_ID ||
>             priv->device_id == WCN6450_DEVICE_ID) {
>                 ret = wlfw_host_cap_send_sync(priv);
>         }
>
>         if (priv->device_id == ADRASTEA_DEVICE_ID) {
>                 ret = wlfw_msa_mem_info_send_sync_msg(priv);
>                 ret = wlfw_msa_ready_send_sync_msg(priv);
>         }

The problem with applying this approach is that here the discriminator
is the WiFi device ID. WCN6750, WCN6450 and this ADRASTEA are
different WiFi/BT chips. However for msm8998 and e.g. sdm845 there is
no easy way to distinguish the WiFi chips. Both platforms use wcn3990
device.

>
>         ret = wlfw_cap_send_sync_msg(priv);
>
> reference:
> https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/platform/-/blob/wlan-platform.lnx.1.0.r1-rel/icnss2/main.c?ref_type=heads#L890
>
> /jeff



-- 
With best wishes
Dmitry

