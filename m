Return-Path: <devicetree+bounces-84232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8801C92B789
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 13:24:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0905A1F215CD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 11:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B211586C4;
	Tue,  9 Jul 2024 11:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="lmehysXV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F203B14E2F4
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 11:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720524253; cv=none; b=IbHElo5/PtYaWj/rNDuweY9Y74mEJj1wuT6t8HxfMqo4tCVxUchclG5X6toN2F5zkNsB5MwHEkoh7KDy2dN4SJXFn7Nsh0b/9cqIh0ZQFMXjS1NPMFIFbSvU1uqQ4GXktAioR9Feycw079xnnGbk+KV97hXVZo6H1IjM0cftUcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720524253; c=relaxed/simple;
	bh=1MDJFZmhN4cjLdwbHrVgqeEpMRkRNvMhwuIEZxPSukM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S8y05ZXco6DZcOIs76Lnf3UdVgLpATvnEZKiREIloTQAiB4zxU6w3uMmz6KkkMGdr92gbSPUaIOumsOOgMPWQ87fUO8PIjGq/eUKhlHGHdmLEsIuL66ysRKaa/dIcTl0tbia2V6srxh3Hwrog8EEd2uA0JKKXeh98SNqdhUiUXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=lmehysXV; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ee920b0781so48064871fa.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 04:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720524250; x=1721129050; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FaZ65vMVctoeY1+JoopMmTUB0GH0nO8ULrnOSO2EWao=;
        b=lmehysXV5H2V3wq4JTIzDzYSpcm8YA03p+YirIWEs4QkhTWZrtPlI1YYgU2e2ErcLA
         ftRVyTBWymuC3R64d9Ect9GHmGu5S6kVIoXLcuO+kE1Gy6OVORpDWHyGaPw7fVQsffuJ
         qF6Jb8vDFVMeDlY6P2a8DzH8EpP+SRuIw7kJlxZKVPot1GfjlTWBq3y2G9Y8BO9nzeGk
         OS+Bu9zL7nkUaZ9qGlyaQVGy0jJ2VH+zz/XkiW5Mtvyij41C3Y/eQFvaCrFsdGKhKolh
         MmgUYdTlhEGn9ncx9R38+Nn3DETAfmfu4J2pCRuznqYhmNnb9xntDXCzblcYm8bVstFM
         2TgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720524250; x=1721129050;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FaZ65vMVctoeY1+JoopMmTUB0GH0nO8ULrnOSO2EWao=;
        b=uOM3TnE94eckllPOXqTjMiE0/os4sc2t9z1I5/glt04Msj5STft/OGsHaogHEMlMlT
         DAVaGY1Aii8RUzYAQEtGr+GJfIYexRaWF079RT/INbxc9mkRGu7OwMa4pGj2iyrI3emk
         AbO4D0DJHvsdSJ8khTVPTNN/YWswce+3d7BcBNpAlsrmD/qq9YoVS2Rj34heKj3Dlkuw
         0/HyJ6nsvqXjwSXrcWyhRzhbXR0gmi2uIAgplUk6hOh9L8PVjZtXpqiVH3WPE1n8EJch
         Ld5x7W9xN/f3ajrYnAVdbOG/Pjyrmcuwt+WLUXaunyZGH/iNPf+irhXpUhX0pze13Z5V
         pxEA==
X-Forwarded-Encrypted: i=1; AJvYcCW2bq1zSkHC5Wp2FqvkHHqcuI2b9kTBPDWJ4hNVERxIxxwZv93NygUQdamKALIUSX4DAtfudD3xTGnBNVLX53OY7AWd5DuIPUYBMw==
X-Gm-Message-State: AOJu0Ywzv5rzznxvuv4qavgexkvr4Tju4CYOGTgPaQxfqEQJjiZig2yL
	0kMOjLgTms/9yHXOhHv+bogrcrGxxhaxwV/I8p9NorHHmtCYAfavkPyfdus2gxnqkLaCNLRJkzZ
	Ustl/TWcA5cB5RWAxAwC218DPswuUWDIzoVyTLQ==
X-Google-Smtp-Source: AGHT+IGkGJ9ZbQ1uEPkn0q2nvbsxFja022IJ3dsvF/JlzuYh1rz8b0N6+PqWWMO4jqeQxNHabQImzrsDTEoQcO0OoA4=
X-Received: by 2002:a2e:8784:0:b0:2ec:51fc:2f5a with SMTP id
 38308e7fff4ca-2eeb30ba00dmr14698871fa.4.1720524249967; Tue, 09 Jul 2024
 04:24:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240708-hci_qca_refactor-v2-2-b6e83b3d1ca5@linaro.org> <202407091813.9IlBCkUP-lkp@intel.com>
In-Reply-To: <202407091813.9IlBCkUP-lkp@intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 9 Jul 2024 13:23:58 +0200
Message-ID: <CAMRc=Mf9OVsEfe7AZwJa2v1Srjn=3bM6roXvgfF3ALahREY6XA@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] Bluetooth: hci_qca: schedule a devm action for
 disabling the clock
To: kernel test robot <lkp@intel.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, llvm@lists.linux.dev, 
	oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 9, 2024 at 12:34=E2=80=AFPM kernel test robot <lkp@intel.com> w=
rote:
>
> Hi Bartosz,
>
> kernel test robot noticed the following build warnings:
>
> [auto build test WARNING on 0b58e108042b0ed28a71cd7edf5175999955b233]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Bartosz-Golaszewsk=
i/dt-bindings-bluetooth-qualcomm-describe-the-inputs-from-PMU-for-wcn7850/2=
0240708-175040
> base:   0b58e108042b0ed28a71cd7edf5175999955b233
> patch link:    https://lore.kernel.org/r/20240708-hci_qca_refactor-v2-2-b=
6e83b3d1ca5%40linaro.org
> patch subject: [PATCH v2 2/6] Bluetooth: hci_qca: schedule a devm action =
for disabling the clock
> config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/2024=
0709/202407091813.9IlBCkUP-lkp@intel.com/config)
> compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a=
15a9eac96088ae5e9134248d8236e34b91b1)
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archi=
ve/20240709/202407091813.9IlBCkUP-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202407091813.9IlBCkUP-lkp=
@intel.com/
>
> All warnings (new ones prefixed by >>):
>
>    drivers/bluetooth/hci_qca.c:2495:2: warning: label at end of compound =
statement is a C23 extension [-Wc23-extensions]
>     2495 |         }
>          |         ^
> >> drivers/bluetooth/hci_qca.c:2494:2: warning: unannotated fall-through =
between switch labels [-Wimplicit-fallthrough]
>     2494 |         default:
>          |         ^
>    drivers/bluetooth/hci_qca.c:2494:2: note: insert '__attribute__((fallt=
hrough));' to silence this warning
>     2494 |         default:
>          |         ^
>          |         __attribute__((fallthrough));
>    drivers/bluetooth/hci_qca.c:2494:2: note: insert 'break;' to avoid fal=
l-through
>     2494 |         default:
>          |         ^
>          |         break;
>    2 warnings generated.
>
>
> vim +2494 drivers/bluetooth/hci_qca.c
>
> 05ba533c5c1155 Thierry Escande                2018-03-29  2478
> 05ba533c5c1155 Thierry Escande                2018-03-29  2479  static vo=
id qca_serdev_remove(struct serdev_device *serdev)
> 05ba533c5c1155 Thierry Escande                2018-03-29  2480  {
> 05ba533c5c1155 Thierry Escande                2018-03-29  2481          s=
truct qca_serdev *qcadev =3D serdev_device_get_drvdata(serdev);
> 054ec5e94a46b0 Venkata Lakshmi Narayana Gubba 2020-09-10  2482          s=
truct qca_power *power =3D qcadev->bt_power;
> 05ba533c5c1155 Thierry Escande                2018-03-29  2483
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16  2484          s=
witch (qcadev->btsoc_type) {
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16  2485          c=
ase QCA_WCN3988:
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16  2486          c=
ase QCA_WCN3990:
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16  2487          c=
ase QCA_WCN3991:
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16  2488          c=
ase QCA_WCN3998:
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16  2489          c=
ase QCA_WCN6750:
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16  2490          c=
ase QCA_WCN6855:
> e0c1278ac89b03 Neil Armstrong                 2023-08-16  2491          c=
ase QCA_WCN7850:
> d12f113a15e826 Bartosz Golaszewski            2024-07-08  2492           =
       if (power->vregs_on)
> c2d7827338618a Balakrishna Godavarthi         2018-08-22  2493           =
               qca_power_shutdown(&qcadev->serdev_hu);
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16 @2494          d=
efault:
> 691d54d0f7cb14 Neil Armstrong                 2023-08-16 @2495          }
> fa9ad876b8e0eb Balakrishna Godavarthi         2018-08-03  2496
> fa9ad876b8e0eb Balakrishna Godavarthi         2018-08-03  2497          h=
ci_uart_unregister_device(&qcadev->serdev_hu);
> 05ba533c5c1155 Thierry Escande                2018-03-29  2498  }
> 05ba533c5c1155 Thierry Escande                2018-03-29  2499
>
> --
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki

Ah, cr*p.

Third time's the charm, I guess...

Bart

