Return-Path: <devicetree+bounces-50480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFEA87BD0C
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 13:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E72E6283F33
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0941358AC5;
	Thu, 14 Mar 2024 12:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q+YziKXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F1758AA7
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 12:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710420744; cv=none; b=uywah/oPFn+Gs3+I5P3B4hjEGVWBRcT0JYg0zCWWhVk0Qvr9dFVDrMsGZaSOsdyJUbKcucURTT3fTGlvVPm78iwTbYhszaYupuL9lTyNoA2MzCnb3fBjmFfRw3BOswezaM2J/ZWRdRGMrEfLbmGhS0BIQZFmkHfweG/Pn4nHYfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710420744; c=relaxed/simple;
	bh=t8XPGkgCCS1SphT8rzH9OgJMH9bG+rko2YF2P6c4yxs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=logvMK5j3FNS8liO2IU3EkEnpLIh7qloakQFCF7ABhYSAWhnzFSPlMaqRualhY55Ub1uPyJVmSK/JGHPvZ7SUxblthpTtLat7AH5HFkMlYaPUtr5KcrY1Zp4SXaCB6SZR3dggPoGI3maOBVvfAvcynkPgb0GNJLlbEhf9b5dsiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q+YziKXH; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dd045349d42so786490276.2
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 05:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710420742; x=1711025542; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OpakeXG7lnYh4AwqEGI18Zf+2/wDYzbFbSRJoPHhJPI=;
        b=Q+YziKXH603ZClsUkVpcdstTwvvRpAgQaZulkiT9arMUtbgxC7iW4y0A2GKyq0mGu1
         9TrpuIK4ZHry15eCBM7KCKKGMtGjN8nn92ImOixEspo/+jRf2rk1ZSFLUOiTCj6G1GFp
         9RIPhtBtVT+g7w+Bi3Ngu9BcrkFJRWwloO1hF6rsL2S9hRatvl4LjwhU+/2zePtd0IjV
         W8AzDLYA5S0/TPwRxXxrffq5lPP2JK9FZsmRnD1zGEhwOM21IABkuSP+duK42XjiIb0G
         P/vkx3mTQeTpTR4ZdS2bkXhJN+9IuZHKF1YXR/8YZHY3gESZCm68cNQP0QGBfhTpli4d
         TDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710420742; x=1711025542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OpakeXG7lnYh4AwqEGI18Zf+2/wDYzbFbSRJoPHhJPI=;
        b=mBn9nkZCcMIz6WOBMEimciC1pCl5W9KKKwVhNyXOv/eht0cfDsj15oRLgaQHrR721H
         ls9qr/wRZ5Jdq+5D5mrl4hWzgR46ky7FlLY2k6jAlGDZLhk/LOEpxxW6aKKHnXBRLSDj
         ZT7BHa0jlXNl1VEvdFRYnwC507mhIK+bN2rQFXJYjBFLh+IVsclp9OEsGNc/hN4LAJRb
         gLd75QVQiK3A0vphpa7fHf7PmmBnMFUXeS0K2fzSy/U10qhiivke+rzBkDFtwwYp9/X6
         sOKed3S0Cb3wEqtkdt7oDtGLA3I0OVfQWHIzUofv33f8znQtu1IxrVxfZYZuBqH7OIAX
         9d/g==
X-Forwarded-Encrypted: i=1; AJvYcCWwRRljM0vM6Rysg+1MwLRi9gXaZYUi9N+dyfdDwsP1Fx8i/bio0IQNyZ/nw6aSIbkMNzFca85vCuoXe/mvrDWo4iEzX6vOUi8Taw==
X-Gm-Message-State: AOJu0Yx3/+SIz2EC6vZDpdQdFDmK8+YEWDY+tzKipxOU69S4R2sjCeWT
	kupM/U8U4vUp3+O3mJJzLsbIjKoAeLbGGfNmI27ros8Ix9MQu3z/mPZfxWtObWUpNbHJt2Y8QqN
	UAw9ecPKBQ2xNly5/NoCW4vN2Ysw6g5cVdsYnvw==
X-Google-Smtp-Source: AGHT+IH+AbXJKIsJ0K+qf80CaawJtfQeiqz1IfY0TFyU81iVTRDOnCMRBXQi+u9EeWwxdv5UGjnYpNKHt4w0xxHRDWA=
X-Received: by 2002:a05:6902:e13:b0:dcc:9e88:b15 with SMTP id
 df19-20020a0569020e1300b00dcc9e880b15mr1697730ybb.41.1710420742226; Thu, 14
 Mar 2024 05:52:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
 <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr> <871q8wk7o3.fsf@kernel.org>
 <3392f356-7b19-483d-b9f8-3bd84068fa52@freebox.fr> <87wmqoilzf.fsf@kernel.org>
 <c58e67e6-6a7f-4963-86b9-580165bf05ba@freebox.fr> <87cyse8j9m.fsf@kernel.org>
 <6d4b1381-c121-4cda-a8c9-9ccac56bd447@freebox.fr> <87plw87nsc.fsf@kernel.org>
 <0816f7bb-3c97-4b90-8e19-191552ea6e26@freebox.fr> <87h6hk7aee.fsf@kernel.org>
 <fb0ffdd9-923a-4191-8304-583243ad528b@freebox.fr> <CAA8EJppHa=qEkKbSVs9hMCBXfhiC9MyAQO+v+6TCWhg==4CpOQ@mail.gmail.com>
 <d23b5fc5-9fc2-4841-8eb9-b22a28f05f69@freebox.fr>
In-Reply-To: <d23b5fc5-9fc2-4841-8eb9-b22a28f05f69@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Mar 2024 14:52:10 +0200
Message-ID: <CAA8EJprgZkZcesT7WNwpYx_Lg3w9xkTxQmq5-bPyhbvECLkQCA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
	Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k <ath10k@lists.infradead.org>, 
	wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jami Kettunen <jamipkettunen@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Mar 2024 at 14:31, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 13/03/2024 16:53, Dmitry Baryshkov wrote:
>
> > On Wed, 13 Mar 2024 at 17:09, Marc Gonzalez wrote:
> >
> >> On 05/03/2024 20:20, Kalle Valo wrote:
> >>
> >>> Marc Gonzalez wrote:
> >>>
> >>>> I need to build a kernel + rootfs + FW to test the proposed solution,
> >>>> then I can spin a formal submission.
> >>>
> >>> Yeah, please do test this to make sure we are not missing anything :)
> >>
> >> I used buildroot ( https://buildroot.org ) to generate a kernel + rootfs
> >> for my board (a variation of qcom/msm8998-mtp.dts)
> >>
> >> Not sure if I must use the vendor FW blobs? Or if I can use the blobs
> >> from linux-firmware-20240115.tar.xz (as supported by BR2).
> >>
> >>
> >> All I see from the ath10k driver (with debugging cranked to the max) is:
> >>
> >> [    0.539801] ath10k_snoc 18800000.wifi: Adding to iommu group 0
> >> [    0.541941] ath10k_snoc 18800000.wifi: snoc xo-cal-data return -22
> >> [    0.543633] ath10k_snoc 18800000.wifi: supply vdd-3.3-ch1 not found, using dummy regulator
> >> [    0.544002] ath10k_snoc 18800000.wifi: qmi msa.paddr: 0x0000000094400000 , msa.vaddr: 0x(____ptrval____)
> >> [    0.544271] ath10k_snoc 18800000.wifi: snoc probe
> >>
> >>
> >> # ip link
> >> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
> >>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> >> 2: enp1s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen 1000
> >>     link/ether 34:27:92:82:48:ec brd ff:ff:ff:ff:ff:ff
> >>
> >> No wlan device at this point.
> >
> > Do you have pd-mapper, rmtfs and tqftpserv running? You also need to
> > have wlanmdsp.mbn in the same directory as modem.mbn for your platform
> > (see how this is handled for sdm845).
> > If these points are implemented and you still don't have the wlan,
> > please check for tqftpserv messages in syslog.
>
> I first tried using buildroot, which doesn't package these tools AFAICT.
> I have now generated a debian rootfs, which does package them.
>
>
> >> I got shell-shock from reading these setup steps:
> >>
> >> https://wiki.postmarketos.org/wiki/Qualcomm_Snapdragon_835_(MSM8998)#WLAN
> >> https://github.com/jhugo/linux/blob/5.5rc2_wifi/README
> >
> > These readmes are mostly correct. You don't need qrtr now, it is
> > provided by the kernel.  pd-mapper (protection-domain-mapper),
> > tqftpserv and rmtfs usually can be installed from your distro.
>
> Can you explain a little bit why all the steps are required
> just to be able to talk to the ath10k IP block?
>
> It's just an MMIO device, right?
>
>                 wifi: wifi@18800000 {
>                         compatible = "qcom,wcn3990-wifi";
>                         reg = <0x18800000 0x800000>;
>                         reg-names = "membase";
>
> Is the IP block behind some kind of switch that must be programmed
> by a remote processor on the SoC?

It has a separate core, with the firmware to load, etc. For some
reason the firmware is loaded in a complex way, via the modem
remoteproc.


-- 
With best wishes
Dmitry

