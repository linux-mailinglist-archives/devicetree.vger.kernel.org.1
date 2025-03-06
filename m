Return-Path: <devicetree+bounces-154929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7424BA54F2F
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 16:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26695177383
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 15:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EE5A21480E;
	Thu,  6 Mar 2025 15:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G/5PkE30"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C9C2139DF
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 15:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741275038; cv=none; b=OLDjGC36nim5PSr3FLFdmZN+ImMDIZm55G7vVkNu1OymX7pGuU2OudQEyu+V0Jofqzm77ecvdWf989bATpaun+e0bMcbftMrM6heeJROPIR1hrXqBKG/snTL5yRtWpv2wLGVunUJKC1jv5z2pf+VApMIhBaViTyiPRGla7e80NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741275038; c=relaxed/simple;
	bh=pyLJpR7peyTXQEIa1NqkvFFGoT0NVWTptWjHyPuIU5Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GH18DQOQikuIFzXrjJA6GT9hWqfFJH68JgDmE6+VaXC/KdFF838uakkhrIsZmjcEs7d/Qb6tfwjkn+1BOuffvKxU1kGxKCa3wXW1YeKLSAXPdH9kpSN0QSkKDR0s/FOujcU3xPth6Ek5dW3GKB2fh/bmiavlgmRVbOpGzxdKH3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G/5PkE30; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-6003c670805so347521eaf.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 07:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741275034; x=1741879834; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sNQBMMRurtTMZcGexPMcCrxPkfGTs27WGkh0+nCXqaQ=;
        b=G/5PkE30c7cWkGushzgN7wSveOWz0SndRjYy1kbwB6rwHClaohFZ1xxVCQteXp1/KY
         BUapkBUk823ubTBZycMMSO2etpNGpHH9ZzeU80BwjLfEfWjtfSaW+SNqDnMOhqiGgUjX
         bhvS/A7cJvoaIPhElOInzr6LPN9FImMDmX1Gp9wfrDKqD+etHyd27LKQaH2hTcZpvCjr
         +rZ5n/t/cNnEtz4uV3lOrh4n1c6s4n+HKNIxJY9PYouMCN4Rj0a0CSTl6X/5fqVYPwvE
         1WS9Xhh12I4hTmIpGuMJVzDeWSdnP/ez/DxX48t/6ickqnwsHw03jjVZlhY0h5do679m
         WoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741275034; x=1741879834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sNQBMMRurtTMZcGexPMcCrxPkfGTs27WGkh0+nCXqaQ=;
        b=JlwMKa9Nn7ZlrnLDvPAeidXD8pnIoBdYgs0YP7EDOhU3kkylndWhzBC2Ckem/A2YUm
         Qf4ZIdB/OiO6bTi9Bc8S9f86Uuaj2VKSK5Zr8qtvezBtOn/hx/SjmwhWPhdl+LaAg9NF
         QaYALV2oQqr3KlHzs2Expg3qQyra7kxvaRHrRnXvdathkTP+fkhIiFipsqj2C0ofVUoX
         sVh593o1oi3QxHd6ecra2cqjizV6FPTT2QTENDB6LfUfKjXWyZyasXxmR4tSPbY6hbnt
         A6CMp+DlPAa7AO6JSoPTQUS8/xw7dIHDG3fDH+Bwh6XYZrzo6BNxrK08LoZk58pOohEv
         PruQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPrJ7wXrh6lJL3AHhe7LY3T+nA/MuIoB4F2eszSYHy/B/M6RZhYEXeReMxJQ6k/dWwXFu3RxvXgyzn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg7WzY8C7OHQ0sAcB9aAuPh0yUQdSN2Q9nX7WjEXlI+XkcK+h8
	keqoyX5AjyMDpLeBhGESJp1HfN5eW0lEPPbWgM1cf+gK0BMX26qdY+bKvr7/GlGab8djvqqZa5H
	nZLOI9qn2Lr7IqEyCxu/Vs39jBdb0lA2E9Fg0Yw==
X-Gm-Gg: ASbGncuHA4bllilmlRBmBFhvlF2gydq4t8mwOlWOGfW3h6kfMK8Jm8lLwdVzYC5K1T8
	V/QTUSBzUswuVzd8iffwQYenS/Letk+Z6zVMrSIQtvmgaeuQ7yetu2+ak9Oa+rZqiAWNU/ZYvim
	YXELAUdh7zKtlklnhIjwco+3PTpLh3331Zz+5bLRR+XVZYXUJNbMro6Yu5
X-Google-Smtp-Source: AGHT+IH4W0yRe4u7K6oiBA8ZPHCttgqzGQ+tvEf5grhz1HVFab5HIeIG6RBvk1m41VxlWCFwvUQmmPKg1pQBl0yspIA=
X-Received: by 2002:a05:6820:2709:b0:5fe:95b5:78c with SMTP id
 006d021491bc7-6003eb2a7b5mr2022562eaf.1.1741275034380; Thu, 06 Mar 2025
 07:30:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227105718.1692639-1-catalin.popescu@leica-geosystems.com> <20250227105718.1692639-2-catalin.popescu@leica-geosystems.com>
In-Reply-To: <20250227105718.1692639-2-catalin.popescu@leica-geosystems.com>
From: Loic Poulain <loic.poulain@linaro.org>
Date: Thu, 6 Mar 2025 16:29:58 +0100
X-Gm-Features: AQ5f1Jq2gqYinafusJfYgm1phirMzxRY-qnbeOTyjPqUfqREkO3jtYUld7G10d4
Message-ID: <CAMZdPi-4rvKfPJ2zQJ8mMOkuJ7SSXk3OePKrFYapFmdw9KZs7g@mail.gmail.com>
Subject: Re: [PATCH next v2 2/2] bluetooth: btnxpuart: implement powerup sequence
To: Catalin Popescu <catalin.popescu@leica-geosystems.com>
Cc: neeraj.sanjaykale@nxp.com, marcel@holtmann.org, luiz.dentz@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, linux-bluetooth@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	m.felsch@pengutronix.de, amitkumar.karwar@nxp.com, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, 27 Feb 2025 at 11:57, Catalin Popescu
<catalin.popescu@leica-geosystems.com> wrote:
>
> NXP bluetooth chip shares power supply and reset gpio with a WLAN
> chip. Add support for power supply and reset and enforce powerup
> sequence:
> - apply power supply
> - deassert reset/powerdown
>
> Signed-off-by: Catalin Popescu <catalin.popescu@leica-geosystems.com>
> Reviewed-by: Neeraj Sanjay Kale <neeraj.sanjaykale@nxp.com>
> ---
> v2:
> - rebase on linux-next tag next-20250227
> - add reviewed-by
[...]
> @@ -1522,6 +1525,7 @@ static int nxp_serdev_probe(struct serdev_device *serdev)
>  {
>         struct hci_dev *hdev;
>         struct btnxpuart_dev *nxpdev;
> +       int err;
>
>         nxpdev = devm_kzalloc(&serdev->dev, sizeof(*nxpdev), GFP_KERNEL);
>         if (!nxpdev)
> @@ -1549,6 +1553,16 @@ static int nxp_serdev_probe(struct serdev_device *serdev)
>
>         crc8_populate_msb(crc8_table, POLYNOMIAL8);
>
> +       nxpdev->pdn = devm_reset_control_get_optional_shared(&serdev->dev, NULL);

Maybe devm_reset_control_get_optional_shared_deasserted could be
useful here instead?




> +       if (IS_ERR(nxpdev->pdn))
> +               return PTR_ERR(nxpdev->pdn);
> +
> +       err = devm_regulator_get_enable(&serdev->dev, "vcc");
> +       if (err) {
> +               dev_err(&serdev->dev, "Failed to enable vcc regulator\n");
> +               return err;
> +       }
> +
>         /* Initialize and register HCI device */
>         hdev = hci_alloc_dev();
>         if (!hdev) {
> @@ -1556,6 +1570,8 @@ static int nxp_serdev_probe(struct serdev_device *serdev)
>                 return -ENOMEM;
>         }
>
> +       reset_control_deassert(nxpdev->pdn);
> +
>         nxpdev->hdev = hdev;
>
>         hdev->bus = HCI_UART;
> @@ -1583,6 +1599,7 @@ static int nxp_serdev_probe(struct serdev_device *serdev)
>         return 0;
>
>  probe_fail:
> +       reset_control_assert(nxpdev->pdn);
>         hci_free_dev(hdev);
>         return -ENODEV;
>  }
> @@ -1609,6 +1626,7 @@ static void nxp_serdev_remove(struct serdev_device *serdev)
>         }
>         ps_cleanup(nxpdev);
>         hci_unregister_dev(hdev);
> +       reset_control_assert(nxpdev->pdn);
>         hci_free_dev(hdev);
>  }
>
> --
> 2.43.0
>

