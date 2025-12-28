Return-Path: <devicetree+bounces-249918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83946CE495C
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 06:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 720AC300F581
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 05:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DEBF25A2DD;
	Sun, 28 Dec 2025 05:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JbfKqeV1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7260258CD0
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 05:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766900911; cv=none; b=mfY1yKgTYvESMnjbulKJI+53eXyA3dqDWJ8M2avY8jQ0Qau1o6GKJxmG8xk2AtXMkf+6GIVskg8W9cCw/PFtASEPSCBpvCyNRaO4IFEtUogK5TXu5XCoAwxU9mx3D5cygaN64D7mzWlbYorQ2gY4gw19uLm/Q6BwdiRJb4KGmC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766900911; c=relaxed/simple;
	bh=1pJCobo7skl3IqJjut1/aoDj5JGv6MK8u9FvD8pNb2M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xv3y8S+zKS/iC8FLYwR+JkUK+XRX2YyvClE7hq7WD/pVlDpEx7hj9R7pOwHkvyQFrsR9ZclzHhxzUxMU61iDoKlFoaAnbbA+AW0copBAkFOTs/5drCX7uh13cttncv3JVr+rqw5CqI9p5pT1c5I7Ei22cWM5bobmV7LxPlog6ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JbfKqeV1; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59584301f0cso8687216e87.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 21:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766900908; x=1767505708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gpbqpIsug6MH33BRSdVEMnAsF4zSM1dpRpn6fI+y1V8=;
        b=JbfKqeV1R/D9PDEPPrpO1wYpIfzCnjYN8WzGCDsrD7n0KnJV0u3PDx7jcRD+sYwnIA
         eVLB3CpQB849HOmn+7qyvDAGHdjogV/RbhTM5RC3nhmHCZ0TyW6xK3JNdZNaqYQmvrUg
         cdF2N3n6AHfVPNdJ1ryI3wA2QGNWbPVUL4Yf3rtoYhAqO0T+o3WymyughkijcxLCR87V
         +fnF79OAU7EfREe3nNHWZEso4Y17g0IgnlTErD8PjLZJPzIMAvaP5vrtBPD9WVBks/2a
         8UcdzNEASY5xEWPA2yfKwUq+h/WI08DI0xTyf9s2SAxgEpPfJCz/aEfymR47u8T5Gj3+
         bs5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766900908; x=1767505708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gpbqpIsug6MH33BRSdVEMnAsF4zSM1dpRpn6fI+y1V8=;
        b=oBthkIgvpsLfh/nHn/dOb0vGR1wKwz3aojr2Mep8U0CtBRYVE/XwVw5SIkC1rsR5iK
         TpfXAbt2r3xKdxK/JTA8Nr31Jp8sYon48+CqSkJq7SxOE07LJl4ggCOA7RRz3OIuVuSW
         /7FM6KH7O68KjX3C5lv1S93/02CvZ/bYpMch7/gFSQpVGv/QRgGox1T5U3EgLkrDMmyY
         9DYyZVj10IGtC/zDtzWmJvbSpzS5GeC+YG1uhKYXgLYJxBD+YMSiT/Oqa6Y9Ih7KYj/P
         DujkRfp7nonF0Oo84OpAE+vfxdeQzN07OTpUJ47NHxE/OJWBvpvLq/bSbeYggbcRV/Bn
         TD9Q==
X-Forwarded-Encrypted: i=1; AJvYcCU57Nc1SeO8A+yaPWJXov6DiOSjCSzinFB8HdzpzBsihjSB3lQrJW0W0aZmzIViztkWNF3g22eu45mA@vger.kernel.org
X-Gm-Message-State: AOJu0YxPB+xTfZP80faJC6j5MMvABVR4tdFzWkUhmzqHHeiF94qBJN+y
	3npxFtCGAwee88Vh+rS6+miTF3P7fwTmgegZdttkxT9y84ebVNBVyXVy
X-Gm-Gg: AY/fxX6w70we+43/xgpCyOUJRjGAEX83G4ifVLzJOekNmxiPHuvxBa+m81aALpbVKbM
	U/QJRp7Y987/GDOJx1x0U5WFDQWB8yWTfNLCw64Ha3fZGmWl7kxNa9PnQn6BmMFxH/QpeO+lReW
	EmKlkbpo/oMIpKnQkqUn6tsvRD/KZDeL0Gkix4UFQRQ98zu+izmx1/6vf88hDnZlStCVpriUFnP
	Q50XUI0RImjBAggDZSNmdH4G0ubwySt/3aG9ig9zWRGT8SUdTD+hnzOeHUm6imoF3pC+Tkkcnik
	nDWz24C8Q4GF96t5aF8XLdmU+FJs6GB6zYKxNp/JwBykODgQQuWn4rTwS3C8lPspOxZPkjinWxJ
	GuMjgjVyv5rlIEhptmPoYVoA8XeEGfY1JgDrHqxwcx6yE345DqlMqdOGOqRLnx85rMm/RgwHlQt
	gDv3lJFAT2ll4d2VHIDmk=
X-Google-Smtp-Source: AGHT+IHbwDkZ0ZrkYZSKb3xcvqlBhmZdaEoQdezjtjNsk1jz3+5apfKEePyLYdpuFJXN8OT07eFG0Q==
X-Received: by 2002:a05:6512:3b9f:b0:595:7cb9:8e51 with SMTP id 2adb3069b0e04-59a17d1fa1dmr9400930e87.12.1766900907593;
        Sat, 27 Dec 2025 21:48:27 -0800 (PST)
Received: from localhost ([194.190.17.114])
        by smtp.gmail.com with UTF8SMTPSA id 2adb3069b0e04-59a185d5ee4sm8077427e87.17.2025.12.27.21.48.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Dec 2025 21:48:27 -0800 (PST)
From: Askar Safin <safinaskar@gmail.com>
To: nfraprado@collabora.com
Cc: Tim.Bird@sony.com,
	bhelgaas@google.com,
	dan.carpenter@linaro.org,
	davidgow@google.com,
	devicetree@vger.kernel.org,
	dianders@chromium.org,
	gregkh@linuxfoundation.org,
	groeck@chromium.org,
	kernel@collabora.com,
	kernelci@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org,
	robh+dt@kernel.org,
	saravanak@google.com,
	shuah@kernel.org
Subject: Re: [PATCH v4 3/3] kselftest: devices: Add sample board file for XPS 13 9300
Date: Sun, 28 Dec 2025 08:47:42 +0300
Message-ID: <20251228054804.2515185-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20240122-discoverable-devs-ksft-v4-3-d602e1df4aa2@collabora.com>
References: <20240122-discoverable-devs-ksft-v4-3-d602e1df4aa2@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

"Nícolas F. R. A. Prado" <nfraprado@collabora.com>:
> Add a sample board file describing the file's format and with the list
> of devices expected to be probed on the XPS 13 9300 machine as an
> example x86 platform.

And now "Dell Inc.,XPS 13 9300.yaml" became the only file in the repository,
which has space in its name:

$ find . -name '* *'
./tools/testing/selftests/devices/probe/boards/Dell Inc.,XPS 13 9300.yaml

I kindly ask you to rename file. New name should not contain space or comma
in it.

The file name in its current form breaks tools. For example, it breaks
"xargs".

For example, the following will work in "fs" directory:

stable/fs$ find . | xargs chmod -w

But it will not work in root of source tree because of this
"Dell Inc.,XPS 13 9300.yaml" file:

stable$ find . | xargs chmod -w
chmod: cannot access './tools/testing/selftests/devices/probe/boards/Dell': No such file or directory
chmod: cannot access 'Inc.,XPS': No such file or directory
chmod: cannot access '13': No such file or directory
chmod: cannot access '9300.yaml': No such file or directory

-- 
Askar Safin

