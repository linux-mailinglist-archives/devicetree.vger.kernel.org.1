Return-Path: <devicetree+bounces-51646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAC987FF09
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 14:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33FB7282AE1
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 13:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C4180616;
	Tue, 19 Mar 2024 13:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="hAPsiTZQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7ABD80607
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 13:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710856026; cv=none; b=MgiY7yIotBIUxzgZ3Vzk+bp2nhPXUklkluFopaLPFOeqWhtUsqAj1EX4+XD3giajShH7o7lZ1IeAn1Y6DTInMJVhYMvGcjwIr1q2uHGmOm4tOGec8LgWs1okVNOGalCpw96o55ZUwSE9To5gQMnvtFarmas6nMSNvpYZCjog0pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710856026; c=relaxed/simple;
	bh=FEiwQI/asXmWDBXom+D3pzYvYu5oomQFPI3U8pnogCY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Y3iz79FO9Z9LSsVY2+4VvnUsCNZ3q7TVcXYZ69ac/4yatItd6N/aQ7MUPhq3zwK7n9+xqhlOEiGjh1KpzASnsyDMz9lWp4JrlxD20O98T8nAVQF2KiIbDHqB0w23/xOFWRFmw76Ax6Y6Kh1HCgfiOZjoCHa2a+hhZ5HDPVjZj+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=hAPsiTZQ; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33fd12a06fdso1721627f8f.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 06:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1710856022; x=1711460822; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lwR815DYME77h4o7urLuS7peELXtGeH8pgEWYCx5jok=;
        b=hAPsiTZQwXkN7uoNCWdj4UrmGX5ztPA7SOYGDPylPAzbCBi+n+rVuTGrSHj5ZUR+dc
         e8qZPgd/YBXM8dg7LMVQzDIZbQUpN952W2qPhnD8K/NXFqaiNZmjlU01Qrj1tH/hrOyk
         ssh3ZQFBvC1ze3v0r73qvt76vbXhqOttpST0OoP4JQnJ6rpf/i5WG8C2UbDEtsZ4KW/m
         Ke+uBcNc2Bt4UbRqof6mKOyZjvA9JyCTVzN7wjOVhFp5Zpj5K0qaSJOSmcxbs1fomv4T
         8pWtjMVT3FQmDMRI7rgEOGwsoBgHPDREuELosVX4Upl9n54YhXISn/UkUalu6WEcqAhF
         FoEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710856022; x=1711460822;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lwR815DYME77h4o7urLuS7peELXtGeH8pgEWYCx5jok=;
        b=selh4chlVtK5tab552uo9h8h7KIic8alxTZ/vfkvNk60A5F7c7uNDTfFHkW1aJnMan
         G9RBA7xJu804lUg3P0QbAUCuo3WBJc4FXbNcTBpTsW1HQXnXjLj8gBdnIlVz6W9kUCJE
         aXPp38eK5qGNcqnnOTeMSjn0TJLtNIcnkqr+72Neh78W+vZFTGR4aLQvnWTFPGA/Joxu
         b3E+3I0Y7/J8MWJ5IhEVFI07kLFMv2rEB6J0YfxX1bfp1VVItQNEUBxUW7SdPZfxr8OV
         IGHX6cu1bndZ6PlaY8jFkWWzOX/WP9MFvJEgmNRS9leKopwhJwHtwr1I5Jjvp4gTuyZY
         Av2Q==
X-Forwarded-Encrypted: i=1; AJvYcCV1fBngEITnVF2i6vT/juFqg9GkWu/9FMPAp/NhrQifd88vW+KSww54Att5qDLPSKUc4WWjKadHSkThMPnnf2heKIQv4vdl+K+GnA==
X-Gm-Message-State: AOJu0Yz7AM5YmVxtCylp2m967rywBlvCkDDmCObBrFoctDtfSlktCcQo
	9kkBjxQhxebwAqi9DTMQA+HBbeMRmb08q0FkqyKv/AMNsu/0BWCS4rWWGOS7LMw=
X-Google-Smtp-Source: AGHT+IH5tZbVzPk+iAAJs7mty1sSC4oAZJsAYS9f43ya3U/pZlXDgOVvkRBrz6cvKF1yPa9PO+hiEg==
X-Received: by 2002:a5d:4577:0:b0:33e:8c7e:608f with SMTP id a23-20020a5d4577000000b0033e8c7e608fmr9272226wrc.12.1710856022158;
        Tue, 19 Mar 2024 06:47:02 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id u17-20020a5d4351000000b0034180f6d3cfsm2974760wrr.73.2024.03.19.06.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 06:47:01 -0700 (PDT)
Message-ID: <880e016a-d4d2-4bc9-8c75-bbe4848515ad@freebox.fr>
Date: Tue, 19 Mar 2024 14:47:01 +0100
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
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: wireless <linux-wireless@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 DT <devicetree@vger.kernel.org>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jami Kettunen <jamipkettunen@gmail.com>
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
 <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr> <871q8wk7o3.fsf@kernel.org>
 <3392f356-7b19-483d-b9f8-3bd84068fa52@freebox.fr> <87wmqoilzf.fsf@kernel.org>
 <c58e67e6-6a7f-4963-86b9-580165bf05ba@freebox.fr> <87cyse8j9m.fsf@kernel.org>
 <6d4b1381-c121-4cda-a8c9-9ccac56bd447@freebox.fr> <87plw87nsc.fsf@kernel.org>
 <0816f7bb-3c97-4b90-8e19-191552ea6e26@freebox.fr> <87h6hk7aee.fsf@kernel.org>
 <fb0ffdd9-923a-4191-8304-583243ad528b@freebox.fr>
 <CAA8EJppHa=qEkKbSVs9hMCBXfhiC9MyAQO+v+6TCWhg==4CpOQ@mail.gmail.com>
 <f26dfcc6-5fd3-486d-b0f2-80168eb213c7@freebox.fr>
In-Reply-To: <f26dfcc6-5fd3-486d-b0f2-80168eb213c7@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/03/2024 17:56, Marc Gonzalez wrote:

> Hmm, I don't see protection-domain-mapper running...
> 
> Feb 27 17:44:01 venus pd-mapper[308]: no pd maps available
> Feb 27 17:44:01 venus pd-mapper[328]: no pd maps available
> Feb 27 17:44:02 venus pd-mapper[345]: no pd maps available
> Feb 27 17:44:02 venus pd-mapper[347]: no pd maps available

Doh! I had the firmware blobs properly embedded in the kernel,
but the user-space tools needed them in the root filesystem.

With that latest change, the kernel issue disappears,
and most of the user-space tools seem happy:

  systemd-journald[199]: Journal started
  systemd-journald[199]: Runtime Journal (/run/log/journal/0f2e92c39e6f4f3fa6585b56f928c8ed) is 8.0M, max 73.3M, 65.3M free.
  systemd-random-seed[206]: Kernel entropy pool is not initialized yet, waiting until it is.
  systemd-journald[199]: Time spent on flushing to /var/log/journal/0f2e92c39e6f4f3fa6585b56f928c8ed is 12.074ms for 3 entries.
  systemd-journald[199]: System Journal (/var/log/journal/0f2e92c39e6f4f3fa6585b56f928c8ed) is 8.0M, max 4.0G, 3.9G free.
  systemd-udevd[227]: Using default interface naming scheme 'v255'.
  cron[285]: (CRON) INFO (pidfile fd = 3)
  cron[285]: (CRON) INFO (Running @reboot jobs)
  qrtr-ns[288]: ERROR qrtr-ns: nameserver already running, going dormant: Address already in use
  rmtfs[291]: [RMTFS storage] request for unknown partition '/boot/modem_fsg_oem_1', rejecting
  rmtfs[291]: [RMTFS storage] request for unknown partition '/boot/modem_fsg_oem_2', rejecting


Corresponding kernel log:

[    0.321715] ath10k_snoc 18800000.wifi: Adding to iommu group 0
[    0.323787] ath10k_snoc 18800000.wifi: snoc xo-cal-data return -22
[    0.325443] ath10k_snoc 18800000.wifi: supply vdd-3.3-ch1 not found, using dummy regulator
[    0.325767] ath10k_snoc 18800000.wifi: qmi msa.paddr: 0x0000000094400000 , msa.vaddr: 0x(____ptrval____)
[    0.325999] ath10k_snoc 18800000.wifi: snoc probe
...
[    8.430099] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    8.443287] Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    8.446323] Loaded X.509 cert 'wens: 61c038651aabdcf94bd0ac7ff06c7248db18c600'
[    8.451411] clk: Not disabling unused clocks
[    8.454159] cfg80211: loaded regulatory.db is malformed or signature is missing/invalid
[    8.468829] ALSA device list[    8.506030] VFS: Mounted root (nfs filesystem) on device 0:21.
[    8.511551] Freeing unused kernel memory: 5632K
[    9.122863] systemd[1]: System time before build time, advancing clock.
[   12.009922] systemd-journald[204]: Collecting audit messages is disabled.
[   12.193174] systemd-journald[204]: Received client request to flush runtime journal.
[   12.803236] random: crng init done
[   13.580077] atl1c 0000:01:00.0 enp1s0: renamed from eth0 (while UP)
[   15.255763] remoteproc remoteproc0: powering up 4080000.remoteproc
[   15.263925] remoteproc remoteproc0: Booting fw image mba.mbn, size 234152
[   15.277228] ath10k_snoc 18800000.wifi: received modem starting event
[   15.370471] qcom-q6v5-mss 4080000.remoteproc: MBA booted without debug policy, loading mpss
[   16.020964] ath10k_snoc 18800000.wifi: received modem running event
[   16.029559] remoteproc remoteproc0: remote processor 4080000.remoteproc is now up
[   18.649633] ath10k_snoc 18800000.wifi: wifi fw qmi service found
[   18.649870] ath10k_snoc 18800000.wifi: qmi wifi fw qmi service connected
[   18.658200] ath10k_snoc 18800000.wifi: qmi indication register request completed
[   18.666483] ath10k_snoc 18800000.wifi: qmi host capability request completed
[   18.674486] ath10k_snoc 18800000.wifi: qmi msa mem region 0 addr 0x0x0000000094400000 size 0x4000 flag 0x00000001
[   18.676164] ath10k_snoc 18800000.wifi: qmi msa mem region 1 addr 0x0x0000000094404000 size 0xfc000 flag 0x00000000
[   18.686350] ath10k_snoc 18800000.wifi: qmi msa mem info request completed
[   18.738546] ath10k_snoc 18800000.wifi: qmi msa mem ready request completed
[   18.791705] ath10k_snoc 18800000.wifi: qmi chip_id 0x30214 chip_family 0x4001 board_id 0xff soc_id 0x40010002
[   18.792014] ath10k_snoc 18800000.wifi: qmi fw_version 0x100204b2 fw_build_timestamp 2019-09-04 03:01 fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.1.0-01202-QCAHLSWMTPLZ-1.221523.2


Yet, I still don't have a wlan network interface.

# ip link
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: enp1s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP mode DEFAULT group default qlen 1000
    link/ether 34:27:92:82:48:ec brd ff:ff:ff:ff:ff:ff


I'm kinda stumped at this point... :(

Regards



