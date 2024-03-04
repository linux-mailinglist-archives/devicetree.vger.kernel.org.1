Return-Path: <devicetree+bounces-48156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A36528706E4
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 17:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B82F1F214BE
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 16:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0849D8828;
	Mon,  4 Mar 2024 16:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="NgVQlMgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83ACA47A6C
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 16:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709569302; cv=none; b=tTyUjOML3HzTiX/NZfB++9BciSFXgD15iHB4f1j+KlpBRTUm3W5vxHWyZs/LbZ/WhnsKgs4wqJKp/86yJ1CvRZi9KOEXxF9lSA/s15YQ7/zf5n22IiQeFIlFe35R3r2u2fpjt+31h81MoHB9rq12dgpCSwm9bxqwKrEtpRS7bi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709569302; c=relaxed/simple;
	bh=4xTBM2H/u8UluDDjHyyVTU6zuFLKL29UdTc9YUE4eAo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rMSbpnxWP/rpEhtX+Tu89FigIzek0JxGBY3zug9CBhEeD8JKhR8CAYl+62iqHj0U22i2G0iEseqGiLXwpHHtOQaw7jCVtnfim8SRdTsuMePAra14Q5jwcFQL99HgV+tKXLkqbliqX3VbX0mj4/qapMEN5jInzYRNPo5+b8p1WSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=NgVQlMgg; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33dcad9e3a2so2444377f8f.3
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 08:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1709569299; x=1710174099; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2NauviWk607nxbEN2DlOAU5kjIWJKRTn3ayaQZc8Isw=;
        b=NgVQlMgge4QCpUwVlDmIxRcygs/OVn2MjAQqsCzTNYhDpRKe8DO9xodhUUJdjU6uJ4
         28G7n7/ihslT3+vyEN0rBz1wLPRNtBq7xVa3nblODgrUaQwSv2BTeoZod9N3T9mp2+OG
         R5jRY0grd/4RlVcoCtc1qVSIO1eDBit6lwub+hvboMgt8bkOkaGi20QzKLTiuLS2YmIE
         a/QDgVWXNjzqtW9NPrpFhiEnnrg5aavxQrpz2gGR9zYMJ9vEe/ZPi4NgfMKobQyvIM2m
         J1beEG6N/6vEvqj+GoxDYD2Yz6lB5t5AnoV52ymmgE1sIxsak9pNfY6uFqXzxYAzm1TA
         /Wsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709569299; x=1710174099;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2NauviWk607nxbEN2DlOAU5kjIWJKRTn3ayaQZc8Isw=;
        b=vQc9nrHOORJDGTBfNLdo+asLk0K+Di9/R6NM/uOP2B0z5fEyuZLvEzGx51xDR9olN9
         Uk6WDrZ4gMIQUtaBfimm314GTR3h4HgAvYDQa3BnIfgChx/yRue7jPv51O5fxpmRMNbg
         w29L4Hz0Va4C6SoAv8YBcSL87nBwYRJ9f5qLIUFGu8HY1hoAowBF4sTDPLXt3X5QHp/x
         BQQCC/Gnntq7W6gDQ3Yv603BtT3L9yvZQpIoW7QjSVMFhosoouHAhVVJd9mQ4WLKYDvE
         fU0iifu4V5ElwZ0TEU5iMFx/q8rrcQ7UPAr4huLKKTPacRL9W0YeNWl9VsdQAL0KwlJN
         jYgA==
X-Forwarded-Encrypted: i=1; AJvYcCX3HLHrX/PHn+P8lt5ySM8yFUlGbmcU2Gt+SvGzcHbGcSWVE3l2zlOk9e9BInBfRVcyWUXRNUhI7biAvT6WcAPDaLPfCShDse4PCQ==
X-Gm-Message-State: AOJu0YwgSNadbuBFnOf/+B0EC/oqwvQcZD0yBwZGYB9tLSv88+XqkGdz
	QPTcQu1BW4qgsdcLjoK/UIq9WaStftCtSsUO6jt2Sizu+mWwwf8OwmqgTkPT8/w=
X-Google-Smtp-Source: AGHT+IFeuAkLZo+7SpvCw19rJhG+qBzOg0lkgNPbLPmlzxdr5EnioyfQyd2ksDtt5/vGI8oC1ahhPQ==
X-Received: by 2002:a5d:42cb:0:b0:33d:d84f:1ef0 with SMTP id t11-20020a5d42cb000000b0033dd84f1ef0mr6098847wrr.12.1709569298835;
        Mon, 04 Mar 2024 08:21:38 -0800 (PST)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id az23-20020adfe197000000b0033e4403c6a9sm1552302wrb.22.2024.03.04.08.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 08:21:38 -0800 (PST)
Message-ID: <68a49964-7c05-4575-a4f3-35848c08fefc@freebox.fr>
Date: Mon, 4 Mar 2024 17:21:37 +0100
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
To: Conor Dooley <conor@kernel.org>, Kalle Valo <kvalo@kernel.org>
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
 <20240229-ageless-primal-7a0544420949@spud>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240229-ageless-primal-7a0544420949@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/02/2024 19:40, Conor Dooley wrote:

> On Wed, Feb 28, 2024 at 06:37:08PM +0200, Kalle Valo wrote:
>
>> Marc Gonzalez wrote:
>> 
>>> As mentioned in my other reply, there are several msm8998-based
>>> devices affected by this issue. Is it not appropriate to consider
>>> a kernel-based work-around?
>>
>> Sorry, not following you here. But I'll try to answer anyway:
>>
>> I have understood that Device Tree is supposed to describe hardware, not
>> software. This is why having this property in DT does not look right
>> place for this. For example, if the ath10k firmware is fixed then DT
>> would have to be changed even though nothing changed in hardware. But of
>> course DT maintainers have the final say.
> 
> I dunno, if the firmware affects the functionality of the hardware in a
> way that cannot be detected from the operating system at runtime how
> else is it supposed to deal with that?
> The devicetree is supposed to describe hardware, yes, but at a certain
> point the line between firmware and hardware is invisible :)
> Not describing software is mostly about not using it to determine
> software policy in the operating system.

Recording here what was discussed a few days ago on IRC:

If all msm8998 boards are affected, then it /might/ make sense
to work around the issue for ALL msm8998 boards:

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 0776e79b25f3a..9da06da518fb6 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -1076,6 +1076,9 @@ int ath10k_qmi_init(struct ath10k *ar, u32 msa_size)
 	qmi->ar = ar;
 	ar_snoc->qmi = qmi;
 
+	if (of_device_is_compatible(of_root, "qcom,msm8998")
+		qmi->no_point_in_waiting_for_msa_ready_indicator = true;
+
 	if (of_property_read_bool(dev->of_node, "qcom,msa-fixed-perm"))
 		qmi->msa_fixed_perm = true;
 

Thus, anyone porting an msm8998 board to mainline would automatically
get the work-around, without having to hunt down the feature bit,
and tweak the FW files.


-- 
Regards


