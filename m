Return-Path: <devicetree+bounces-242003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 149C4C8526E
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:20:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D5FD84E9404
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9A431A814;
	Tue, 25 Nov 2025 13:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nxJ5ydf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F8321FF21
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764076841; cv=none; b=eQpGSFCX3g8K1G3m/qwq6oImL1U+b1Ld03tNxOFoc3q0SsuvnOiglejV26Sl0+NsDDGby3bSpAcBfsxLjacASpuT6u93PB4JGur9DLtBEtTtzPVnYXXbwjMkUQb1KH3+JT4+oxzDHjJ7fdoRL/Zjb0ZSJTaKBgpQgjYUA1mI+Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764076841; c=relaxed/simple;
	bh=aFRgkj8+TshZ/N3ynI03tnObxJnOjZJE8U7i676X7qA=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OVid4NeL9Onmq2ZHRq2S1K8HBYjSq2PRWSEASRotJGY1yuGu5oDGHsF/bXTu2sTcE1InDFOo9nNDwooKtlCRP7kwm31r549p1YQ8VSDgsZokueVlNvMuiOuA6+usZTX5MZrdZWwVE57VWaO20H+O6Hpnk+5s/8ZVdnxpzAxYkkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nxJ5ydf5; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59581e32163so6458367e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 05:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1764076837; x=1764681637; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=aFRgkj8+TshZ/N3ynI03tnObxJnOjZJE8U7i676X7qA=;
        b=nxJ5ydf5C49DcNFNRGusxyfK6OTeLGzmH9vfiaUP2ZuLBXjzvhteZ1ufow3zf9Q1NK
         4I/BsP+D6GC3UY4Sssx/ngY3WqZrnadN9sERRDdqhFdBv8HdjGpMemwg7eq9g6IYA97O
         27P6hNCRFKbzn3nN8Jdf9A/gaLO0ncXKNqRqOFWC1JbAupMz9tsqc7Vw08xtNE4zMeIP
         gVQ4Ajyu/RsTDBVL5CiyqW9oQBpXH/BwDhYPR7pGt0bhsK9olu5qwzF1Iwtub2Zrg9X3
         ZfwuPfQaFrFgFUGAkLG2urEaJdCTfvLzPfxD7GkSE5WCDDb2RAwzBU0yLCW9ESS0Ma7R
         1/Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764076837; x=1764681637;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aFRgkj8+TshZ/N3ynI03tnObxJnOjZJE8U7i676X7qA=;
        b=Qx+1PjPVp20AihA6glGsLBK+RoSc+Kdwd7DLnbE4lWFnXZB4z26maAha+n1jCKtDIH
         guQcnX4rRiqZ6pZ7kILUFoDFUenuP5h7AoJWs64vWK1dWjwcx7J5Zg2yoaXljhpD95HT
         9Y7WoYveF1zGO2hERzJwl7ivMaxxgyZ2tedRIndVzU0633VXDni0N4koJqQRaxE245UC
         qzUdsxEDYdup65jt0lwsgvZklpmlonoO1AzHjUDzMrU2kDLvMCe+VUmk/SRFcPO5Org6
         fM5rARcnEqWSRfltwe00IENP+4nv2Eu+RK+oolCa3ziKUw7G2nbP0As340ApkXMXig0F
         hxiQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8btsYEHxGvIJ0YTrCnbsU1iVYCyQ7O5RmFt5mnsavUPHj0KgpFPhlpLG5sq6ew2DBE5dW2RF0lDrj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb57dJFDqx6g+9H61qdKMpfSFPCSJPRuz4eFuNsfMFwYW8eXvy
	5/YtdcpnMVdASjYEXa3gM7LhVdctTfhxKuuG7e3dqYhu2JF/W9e762OfD5jhGQtLBfjKdamaUv3
	26BwWvVr+sH9fMyEJtKOQ7Bh5iUcqPg+/PCIO43htVxPx6LjTjxqi
X-Gm-Gg: ASbGnctv2R/DtBQpyRNVp8CFCaY6WiT8LIH7VD7TcOal2377ZkjnClOXz1qJt8B3VBW
	GYBhCk/mQRSIvw4tWxV3RRpEFQiO4cOBnaR6acs9Fyv3F2y3l0434wqQF7uaQxaiyyRaLQerUun
	zi6WV57L5tk2l7z6xaUspaa1JwKORTyKwZYN+9ZvVCXeWykqrcJsjrtk3p+ETd5LSsoA1RhnhhW
	tb42hf40BPEQ49rrQsnp64/WMLco5P7lwb+8wqXmAwopthagcZIvS3oGlKLRBu/QYOhF6hbb+Hi
	OVtL6r0qa3yIw7Tj2BYhiac2zfE=
X-Google-Smtp-Source: AGHT+IGdHck69+/UXTdbrnCO3t0qqfckfcVyyh/E5LbN6LZwR4x0zr2gNlwq8szXilSzX4To4fvr4kap32stEFrTPTM=
X-Received: by 2002:a05:6512:159c:b0:595:9152:b932 with SMTP id
 2adb3069b0e04-596b526c87bmr860812e87.47.1764076837373; Tue, 25 Nov 2025
 05:20:37 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 25 Nov 2025 05:20:36 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 25 Nov 2025 05:20:36 -0800
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20251125-pci-m2-v3-4-c528042aea47@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125-pci-m2-v3-0-c528042aea47@oss.qualcomm.com> <20251125-pci-m2-v3-4-c528042aea47@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 05:20:36 -0800
X-Gm-Features: AWmQ_bmikLZ0Y6IVR06BXpyKHGBWZgvGRHNBpTyF3etpWd-vOF7CyArxmGyFcVw
Message-ID: <CAMRc=MeutDAwisNUPB1Nkqq2TEifjho+4E3GZ7x2HtbEh=inog@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] power: sequencing: Add the Power Sequencing driver
 for the PCIe M.2 connectors
To: manivannan.sadhasivam@oss.qualcomm.com
Cc: Manivannan Sadhasivam via B4 Relay <devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org>, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, linux-pm@vger.kernel.org, 
	Bjorn Helgaas <bhelgaas@google.com>, Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 12:12:29 +0100, Manivannan Sadhasivam via B4 Relay
<devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org> said:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>
> This driver is used to control the PCIe M.2 connectors of different
> Mechanical Keys attached to the host machines and supporting different
> interfaces like PCIe/SATA, USB/UART etc...
>
> Currently, this driver supports only the Mechanical Key M connectors with
> PCIe interface. The driver also only supports driving the mandatory 3.3v
> and optional 1.8v power supplies. The optional signals of the Key M
> connectors are not currently supported.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> ---
>

This looks good now. Do you think it makes sense to take it for v6.19 (provided
the bindings get reviewed) or should it wait for the next cycle and go with the
other changes?

Bart

