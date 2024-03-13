Return-Path: <devicetree+bounces-50292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD4787AA17
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 16:09:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 553FD1C216E2
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 15:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACED346BA6;
	Wed, 13 Mar 2024 15:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="jit86TYs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AE244C97
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 15:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710342554; cv=none; b=Xl4Kd8ZD21nVhcmqxvjLJC0xRnzXxplNszfD+dhGE7d5pCW9sLr9vlaMgH3p33V4vpHRRZmaymPOfvfO5m5WjkhT9RBCjRZDvvEhXPtlPhmDS/ZnGcMe2kO3y41ktkNkDYFxnukGC7ADDnfUb3UUmbaF6W2YlyLXFJmA0AZwtIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710342554; c=relaxed/simple;
	bh=6Rytuyrtcn0iC0ffmXLO2Mwzrkh8mP7tbEhbryBEBL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KQe7YX6Ykq81+i1BTneYCBXGeCBv6pICbylZ/wwmGsNka0Hs183s2sS+Ziud14xtQBk7N3QzO/Ppbfcw62plnpr5cdikbG7q3++njMGrEPQjQOfAoCxYL6iPwnwhxQKMLMnnXGxEzPR8Dl0D42Gvn2to+dp8+Db3ypMX0NXKLYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=jit86TYs; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33e99b639e0so2249256f8f.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 08:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1710342549; x=1710947349; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9D/LGalROnb2T4y0ClS9IfcPBAxyS2/alzeYHC18DcE=;
        b=jit86TYssft/nWy1iE4U8hUR3A7VpbrWY4lSg85O65t17B/DfOSi9dpPGr5A7DhlTV
         QSmaPq45xbDhp6Ca7ZPgXMuiWXD3fWFkTPvqr5V8LRihfxEafh8P1xuTVnP/RTwwUxHs
         eK/vAIh3jvCqDt9shrKRxGMJPGMbjvxeZWOixTPvt9qwxaQKgXNoNRkZiTka8930chXn
         e5cbNDosjFsbVW18GUPtS/4vco0Fq4U3d1x3pl4gyD0R7CWBiAgb+9dZqK9YyRKbv/6w
         MAFEfD+ufM0ByZSYZLHVlxDh/+zQ7L4K5xyO0YsG3pmI0jnyQ2tDuXHyJ5ItnHF1qqcq
         OdGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710342549; x=1710947349;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9D/LGalROnb2T4y0ClS9IfcPBAxyS2/alzeYHC18DcE=;
        b=foVnR2S8MbBMHnZO/F6F4GpgjxIZe8wMWotdu4f3QhXpzXCoOJVb+YcwrvpQuRkU0v
         WXv8oWyhpcWHNruKw6QhH2D5pMuxFD5vaHV/jAom3cg7AxInkxGGDc97B+REs3pCvu9M
         DajOcDqX+SJYNWmVH3NOsu3u+LEGkgEYPlUb6T4jR19iQZ65I7lEHxgWh4OWS/bjY1mT
         QRAYjYp0Sxr2ezVQytIbEFetp14sFovd+KUBXMjglMCv9okqCdVRzwBtMuIueNx+Wkdu
         9n3kN5Lh2S2H+nQlRlPIkuZl57pZbNWE5yIrMENKAWuDs6y5FQatSacRkB4H93+KA90n
         sNFg==
X-Forwarded-Encrypted: i=1; AJvYcCU2aHPe7+ItSJjVH+C5vtPN8Ilm8grGMzID5tN6dXugz0UK7t2FEWeYaLuBXlBGVI4no/m3QkLL7TV95lPugIqD8r2M2DELSFd5TA==
X-Gm-Message-State: AOJu0Yw7dVW3Nnp2k6cGfHBA5PO044Czxb7OkLq/Xk6YHBWtd6RsPYZb
	IlyE+xSPlrGHdyG0hG/i9CvOy/T0+JvhgjxaDmwS9zUWMbQwU5TvsHxfLJ4GLSc=
X-Google-Smtp-Source: AGHT+IHmZE4vNY7w2lgfvohHeDqLj+O8i0RjAZ7/srEyzTeHaFJv1iyOnFN9q+La8CK3lM1ablESfg==
X-Received: by 2002:adf:f549:0:b0:33e:8aba:cd0a with SMTP id j9-20020adff549000000b0033e8abacd0amr1887494wrp.9.1710342549473;
        Wed, 13 Mar 2024 08:09:09 -0700 (PDT)
Received: from ?IPV6:2a02:8428:2a4:1a01:8547:dfbf:d48:2a1? ([2a02:8428:2a4:1a01:8547:dfbf:d48:2a1])
        by smtp.gmail.com with ESMTPSA id q27-20020a056000137b00b0033e72e104c5sm11827757wrz.34.2024.03.13.08.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 08:09:09 -0700 (PDT)
Message-ID: <fb0ffdd9-923a-4191-8304-583243ad528b@freebox.fr>
Date: Wed, 13 Mar 2024 16:09:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
To: Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>,
 wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
 <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr> <871q8wk7o3.fsf@kernel.org>
 <3392f356-7b19-483d-b9f8-3bd84068fa52@freebox.fr> <87wmqoilzf.fsf@kernel.org>
 <c58e67e6-6a7f-4963-86b9-580165bf05ba@freebox.fr> <87cyse8j9m.fsf@kernel.org>
 <6d4b1381-c121-4cda-a8c9-9ccac56bd447@freebox.fr> <87plw87nsc.fsf@kernel.org>
 <0816f7bb-3c97-4b90-8e19-191552ea6e26@freebox.fr> <87h6hk7aee.fsf@kernel.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <87h6hk7aee.fsf@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

[ Dropping the DT fellows ]

On 05/03/2024 20:20, Kalle Valo wrote:

> Marc Gonzalez wrote:
> 
>> I need to build a kernel + rootfs + FW to test the proposed solution,
>> then I can spin a formal submission.
> 
> Yeah, please do test this to make sure we are not missing anything :)

I used buildroot ( https://buildroot.org ) to generate a kernel + rootfs
for my board (a variation of qcom/msm8998-mtp.dts)

Not sure if I must use the vendor FW blobs? Or if I can use the blobs
from linux-firmware-20240115.tar.xz (as supported by BR2).


All I see from the ath10k driver (with debugging cranked to the max) is:

[    0.539801] ath10k_snoc 18800000.wifi: Adding to iommu group 0
[    0.541941] ath10k_snoc 18800000.wifi: snoc xo-cal-data return -22
[    0.543633] ath10k_snoc 18800000.wifi: supply vdd-3.3-ch1 not found, using dummy regulator
[    0.544002] ath10k_snoc 18800000.wifi: qmi msa.paddr: 0x0000000094400000 , msa.vaddr: 0x(____ptrval____)
[    0.544271] ath10k_snoc 18800000.wifi: snoc probe


# ip link
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: enp1s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen 1000
    link/ether 34:27:92:82:48:ec brd ff:ff:ff:ff:ff:ff

No wlan device at this point.

I got shell-shock from reading these setup steps:

https://wiki.postmarketos.org/wiki/Qualcomm_Snapdragon_835_(MSM8998)#WLAN
https://github.com/jhugo/linux/blob/5.5rc2_wifi/README


Jeffrey, Bjorn, Konrad,
Has someone written idiot-proof (such as myself) steps to enable
the ath10k core on a msm8998 board?

I'm still not quite sure where linux-firmware.git fits into all this.

Regards


