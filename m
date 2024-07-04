Return-Path: <devicetree+bounces-83203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A264B927968
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 17:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23E3D1F23D5B
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 15:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8391B11FC;
	Thu,  4 Jul 2024 15:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="H9TH+SE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6008E1AED53
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 15:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720105319; cv=none; b=eXG4u4YnxEQwonTZkNFoxjTMZbdYCkWlg92YnuBZDJ3j2USVGTN2zkLTuZcb0El3215h0gkdu9sAnLrPobSUYjZ9S8Qw+tjp4HKPBLFZdf8H4gk42YLEHEnMda6QAurY4hHApFqLMDp2GNIjepjD4Drf3KiZj/3KpWOtH/Z78+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720105319; c=relaxed/simple;
	bh=5XHC/DiPTdbZKgQU4c//xJ3ZzNIOnLdZwKuG4Jg17m0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=VvQUjbI9eLuntQ2vwAOZyPMpPVadVYn0gUkDJlX7DLdkjgsqvi1HJZUfsgDwfJ/XdWSNcCtKU3u8R/qV/SJv3iP79swKUNDvWhQqtd+a0wPSsDuK/jPfTEjJf7KzvoWFzRtd0LtpNy/SIGl2RVELZnYo5lZ042T9Vg94hoq1lr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=H9TH+SE/; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eaae2a6dc1so9979341fa.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 08:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1720105315; x=1720710115; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BULRBOFvK05apBX+ctPL2pcEaLu2COoB/KetU0ktBgg=;
        b=H9TH+SE/I/sEXYbCjayqnTqxBZTlGn/d+BaNshAFcjDHITKNFamnPgc9uPKpTYA7fk
         S1yi2FpGMGgU4F9CE5ODb9uZUqs6nK/c2El4rhTB0pQY13NcFiymAD61i8DaqhmX+s30
         foeTh1EvX3+5KyQM51ElsHaWn8xUEfRTd5LQK86DDLYw/Ji1YQVjJDbY0X0UhmaRDP2w
         dBwptpoYl5ar5N42fYCw3hBsKTOdbQfOTFa3TNh5X1T/DlTke3ILG3rFCZaVBZLt0jyN
         QRTUc+odvW32V1/ZekD8/SMLQvps1fm5kBqmPf47NGfx/Ot7X9y5GOlKFW9fyAUCZasy
         SB/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720105315; x=1720710115;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BULRBOFvK05apBX+ctPL2pcEaLu2COoB/KetU0ktBgg=;
        b=Wkcklfx4z0ZFCAZs2MXeQ6mIiUkmbpN8BS2gHVultYCOJstRMHuJqAE5wuu4s8ZvwU
         zz7wQd+nFcNZDzsMQpGNJLHR/ia3Vm/yVAAYs9GyR7s4FUA2lKgMfW+vVv88Bqj61nFK
         hhpIHUieRXVnGNwtWdd/FiwZv02d89YNAsEMPZypz4l324o+QyzCloSkxwLgpm4pCUzD
         0VQ6CULj3rsB22+pM64LSCYWCJfGa/9V3BvmYYDoSIZLdr9CG3NNoCirdswSqfZryMtO
         GhDLcK2uL4bcfAx6KiDuyUvviaGVUhzpAMm33VxhUhRfBs4VWyDf8dZSCN2RQfckonyM
         6R1w==
X-Forwarded-Encrypted: i=1; AJvYcCVwAeeZTxOJE+gthTsx89JShnlN+M7OxkP4v4atipOoaMXMpMxIshPEq1Qs1uv2S0zYSFJhaGIDQbbMV6mIkjoGnWCTrqEOe+ts8Q==
X-Gm-Message-State: AOJu0YzVHQF6WZfbZ1ynLoZAE/h3Zdy/D7MK1NaZwVcGgPaNN3YJT+Ig
	URreqggfdhNdW8vcRJkAGKGFHrcALTXBG2IWzZk8hfeWgAXTBS63W6QzOYqzzbw=
X-Google-Smtp-Source: AGHT+IF8IG7O3sWGDwGtIn0Is+tyKiyak/t/OHdy0e8YTVFUu5mblg8vYgPAWflBIysihMT7fKvHzw==
X-Received: by 2002:a2e:9515:0:b0:2ec:5843:2fb8 with SMTP id 38308e7fff4ca-2ee8ee0e795mr14918511fa.42.1720105315487;
        Thu, 04 Jul 2024 08:01:55 -0700 (PDT)
Received: from localhost (2a02-a210-20ba-5a00-9ceb-707b-2d57-26f7.cable.dynamic.v6.ziggo.nl. [2a02:a210:20ba:5a00:9ceb:707b:2d57:26f7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77c2af0352sm25441466b.198.2024.07.04.08.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 08:01:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 04 Jul 2024 17:01:54 +0200
Message-Id: <D2GUG0KGQNHX.3AITI7PGV3KW3@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, "Suresh Vankadara"
 <quic_svankada@quicinc.com>, "Trishansh Bhardwaj"
 <quic_tbhardwa@quicinc.com>, "Hariram Purushothaman"
 <quic_hariramp@quicinc.com>
Subject: Re: [PATCH 0/6] media: qcom: camss: Add sc7280 support
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Vikram Sharma" <quic_vikramsa@quicinc.com>, "Robert Foss"
 <rfoss@kernel.org>, "Todor Tomov" <todor.too@gmail.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Kapatrala
 Syed" <akapatra@quicinc.com>, "Hariram Purushothaman"
 <hariramp@quicinc.com>, <cros-qcom-dts-watchers@chromium.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Loic Poulain" <loic.poulain@linaro.org>, "Andi
 Shyti" <andi.shyti@kernel.org>
X-Mailer: aerc 0.17.0-0-g6ea74eb30457
References: <20240629-camss_first_post_linux_next-v1-0-bc798edabc3a@quicinc.com>
In-Reply-To: <20240629-camss_first_post_linux_next-v1-0-bc798edabc3a@quicinc.com>

On Fri Jun 28, 2024 at 8:32 PM CEST, Vikram Sharma wrote:
> SC7280 is a Qualcomm SoC. This series adds support to
> bring up the CSIPHY, CSID, VFE/RDI interfaces in SC7280.
>
> SC7280 provides
>
> - 3 x VFE, 3 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE
> - 3 x CSID
> - 2 x CSID Lite
> - 5 x CSI PHY
>
> This series is rebased based on=EF=BC=9A
> https://lore.kernel.org/linux-arm-msm/20240522154659.510-1-quic_grosikop@=
quicinc.com/
>
> The changes are verified on SC7280 qcs6490-rb3gen2 board, the base dts fo=
r qcs6490-rb3gen2
> is:
> https://lore.kernel.org/all/20231103184655.23555-1-quic_kbajaj@quicinc.co=
m/

Hi Vikram,

Thanks for sending this patch!

I just tried this on QCM6490 Fairphone 5 smartphone but unfortunately
during probe something is not quite right.

[   99.531855] qcom-camss acaf000.camss: Adding to iommu group 11
[   99.533180] ------------[ cut here ]------------
[   99.533187] qcom-camss acaf000.camss: Error: CSID depends on VFE/IFE dev=
ice ops!
[   99.533219] WARNING: CPU: 2 PID: 6902 at drivers/media/platform/qcom/cam=
ss/camss-csid.c:1024 msm_csid_subdev_init+0x41c/0x460 [qcom_camss]
[   99.533248] Modules linked in: qcom_camss(+) videobuf2_dma_sg videobuf2_=
memops videobuf2_v4l2 videobuf2_common
[   99.533266] CPU: 2 PID: 6902 Comm: modprobe Not tainted 6.10.0-rc5-00087=
-g1dd25cd60c69 #138
[   99.533272] Hardware name: Fairphone 5 (DT)
[   99.533276] pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=
=3D--)
[   99.533281] pc : msm_csid_subdev_init+0x41c/0x460 [qcom_camss]
[   99.533301] lr : msm_csid_subdev_init+0x41c/0x460 [qcom_camss]
[   99.533321] sp : ffff80008575b760
[   99.533324] x29: ffff80008575b760 x28: ffffae85fd7685d8 x27: ffff8000857=
5bca8
[   99.533334] x26: 0000000000002c28 x25: 0000000000000000 x24: ffff307e4c4=
8a080
[   99.533343] x23: ffff307e46876080 x22: 0000000000000000 x21: ffff307e40b=
dac10
[   99.533352] x20: ffff307e46876080 x19: 0000000000000000 x18: fffffffffff=
ed520
[   99.533361] x17: 2065636976656420 x16: 4546492f45465620 x15: 6e6f2073646=
e6570
[   99.533369] x14: ffffae865b46dad0 x13: 2173706f20656369 x12: 76656420454=
6492f
[   99.533377] x11: ffffae865b46dad0 x10: 00000000000002d3 x9 : ffffae865b4=
c5ad0
[   99.533386] x8 : 0000000000017fe8 x7 : 00000000fffff000 x6 : ffffae865b4=
c5ad0
[   99.533394] x5 : ffff307fb6f83848 x4 : 0000000000000000 x3 : ffff81f95bd=
4d000
[   99.533402] x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff307e4df=
e9000
[   99.533412] Call trace:
[   99.533415]  msm_csid_subdev_init+0x41c/0x460 [qcom_camss]
[   99.533435]  camss_probe+0x310/0x998 [qcom_camss]
[   99.533454]  platform_probe+0x68/0xe0
[   99.533465]  really_probe+0xbc/0x2c0
[   99.533471]  __driver_probe_device+0x78/0x120
[   99.533479]  driver_probe_device+0x3c/0x160
[   99.533485]  __driver_attach+0x90/0x1a0
[   99.533490]  bus_for_each_dev+0x7c/0xf0
[   99.533497]  driver_attach+0x24/0x30
[   99.533503]  bus_add_driver+0xe4/0x208
[   99.533509]  driver_register+0x68/0x124
[   99.533514]  __platform_driver_register+0x28/0x40
[   99.533521]  qcom_camss_driver_init+0x20/0x1000 [qcom_camss]
[   99.533540]  do_one_initcall+0x60/0x1d4
[   99.533547]  do_init_module+0x5c/0x21c
[   99.533555]  load_module+0x18b0/0x1e40
[   99.533562]  init_module_from_file+0x88/0xcc
[   99.533568]  __arm64_sys_finit_module+0x174/0x340
[   99.533575]  invoke_syscall+0x48/0x10c
[   99.533582]  el0_svc_common.constprop.0+0x40/0xe0
[   99.533588]  do_el0_svc+0x1c/0x34
[   99.533594]  el0_svc+0x34/0xe0
[   99.533602]  el0t_64_sync_handler+0x120/0x12c
[   99.533608]  el0t_64_sync+0x190/0x194
[   99.533613] ---[ end trace 0000000000000000 ]---
[   99.533619] qcom-camss acaf000.camss: Failed to init csid0 sub-device: -=
22
[   99.533828] qcom-camss acaf000.camss: probe with driver qcom-camss faile=
d with error -22

My tree is based on 6.10-rc5 plus v4 of:
https://lore.kernel.org/linux-arm-msm/20240522154659.510-1-quic_grosikop@qu=
icinc.com/
plus your v1 series.

And then some extra patches for my device but nothing touching camss
driver.

Am I missing something?

Regards
Luca

>
> Suresh Vankadara (2):
> media: qcom: camss: support for camss driver on sc7280
> arm64: dts: qcom: sc7280: Add support for camss
>
> Trishansh Bhardwaj (2):
> media: qcom: camss: support for camss driver on sc7280
> arm64: dts: qcom: sc7280: Add support for camss
>
> Vikram Sharma (1):
> media: dt-bindings: media: camss: Add qcom,sc7280-camss binding
>
> Hariram Purshotam (3):
> i2c: Enable IMX577 camera sensor for qcm6490
> arm64: dts: qcom: qcs6490-rb3gen2: Enable IMX577 camera sensor
> arm64: dts: qcom: sc7280: Add IMX577 camera sensor
>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
> Suresh Vankadara (1):
>       media: qcom: camss: support for camss driver for sc7280
>
> Vikram Sharma (5):
>       media: dt-bindings: media: camss: Add qcom,sc7280-camss binding
>       arm64: dts: qcom: sc7280: Add support for camss
>       arm64: dts: qcom: sc7280: Add IMX577 camera sensor
>       arm64: dts: qcom: qcs6490-rb3gen2: Enable IMX577 camera sensor
>       i2c: Enable IMX577 camera sensor for qcm6490
>
>  .../bindings/media/qcom,sc7280-camss.yaml          | 477 +++++++++++++++=
++++++
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |  67 +++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi               | 215 ++++++++++
>  drivers/i2c/busses/i2c-qcom-cci.c                  |   1 +
>  drivers/media/platform/qcom/camss/camss-csid.c     |  16 +-
>  .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     |   2 +
>  drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
>  drivers/media/platform/qcom/camss/camss.c          | 340 +++++++++++++++
>  drivers/media/platform/qcom/camss/camss.h          |   2 +
>  9 files changed, 1119 insertions(+), 3 deletions(-)
> ---
> base-commit: 18eeb2d92baca167809cd5d48eb60e0a5c036d51
> change-id: 20240627-camss_first_post_linux_next-f4163c90093c
>
> Best regards,


