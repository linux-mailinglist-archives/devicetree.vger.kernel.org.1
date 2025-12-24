Return-Path: <devicetree+bounces-249601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DD12ACDD22E
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 00:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C80F4300BD81
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E11F243367;
	Wed, 24 Dec 2025 23:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="BAae39Ft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFF3199920
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 23:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766619285; cv=none; b=HIAq53sljcSyZBkhChFGay2DGq62RAZNyB1QLBAoaE7V2xS1PfB9mJQqjA3UjfXhz4cbtEmzhUfyHZIuVd82GO0y0lYEhhyuGprpncfeQzgAjfpkhnkk/ariTHjI9dAGLdK/yol2+lsij9stkRkDuyPKIijAmo7gnJFA6yboFK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766619285; c=relaxed/simple;
	bh=SEjFQ+0uBAlEWbnwVFWl3blcM5oLTRKAwONldZv4dhw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uNFs4gw9HSM3R5TK6N1wCDXjRJNRmGiBqyxOk6WIoUbi/5cbO2Aau5Qy9X847Lf2YIMqpyo3loQZAUBPlMrEx/fWqxhGJcOK/rPcb4atN3ZfI39oC4gjiRbdQ05R1/JNEABVshn2FG/I4er4gChqqvOs54lR+1GHYHyRiOD1+cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=BAae39Ft; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0833b5aeeso84915665ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766619283; x=1767224083; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0HMFUcxRTaE7pGy8ulnNfmJ/TG2Zqwe3T4eukcCVv70=;
        b=BAae39Ft4Gokz89/ZxIWqkqaIXRj6fVqLfeSuE34iUaM1blGnCIytagfEI+B9/ZZl+
         463PSLXXc+FVUnyyr155emiDURPBNrieQ1EvtI8a82JvLTsKShP/dXd6KVCA07S51xnZ
         9fgRuiHWV5FH3mraFH2QT3IadMdXsVu/XEHMWg+/Os7mhZIHCTJAGZqmiFT1SzhuSLoV
         uiZlStzQF6xC/v/fAs27xoJRS0K/UTbrx4JQjEOCEdI235fKRkKAOT3FVrkWfJ6f5eQW
         rOMqlU9kceFvlJVND1KTwEFH7AvQ7MR1n6xzUdD1ZO/ikey+7hzppIhQ2gE5epB8rCI/
         2SMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766619283; x=1767224083;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0HMFUcxRTaE7pGy8ulnNfmJ/TG2Zqwe3T4eukcCVv70=;
        b=YrgbtOL6VsD6pdY9w16EGkGCwEssx5TpLgBPNIkg/7uJynLhYkqvu2RiV1r2lCQgDb
         2opiECkHZiKt9vFCunwRYtipRyPafzkrxv4tqAUKxLy9EsQz5hY4yez6bI7R5+4qUug+
         NVGCZjIB4dcEKYvrANAiQ+oNH8JkdD1ZfwL18LwNbuatNdCU8j48A9UfNzq8j1owfZYY
         g/rPB42+vzWTOT1EAzd+9I3utXGYlDss2utYXI10ZNf9fEizB2GRDuAheZo0UPYp8o6F
         zD9ctXuQAvy4hDAXUL5sQ4g2gkRetlCPEFB8ciSSMO9MbGTradrD3V5iXsLCduKl7HF0
         CvXw==
X-Forwarded-Encrypted: i=1; AJvYcCVWoy6xusiro4m0EdKRBO9Upo5JgJlEtObPINavIlOg58hVtX6Z9RWRKLrlSXwNaY7c3a7VibfiIRSZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxacx9SKnij9ymX+N7NAZvVfqVDw5ML/3tWSAa67ThnP4pqwwrc
	pJykUrnQlAdL7joIxBnP8QUyB/qes5/BFt8NzOx9LU4Drj64YL8we+mbkEOjvB/3uQeTlW9qeZy
	c/xjkezZSMI2L0sYl89YvWO+rMkVkUSY=
X-Gm-Gg: AY/fxX6tgTZ06xP3+yIW2KGogASKNsSCXZKDP1b/qGMKglcSI0Zg8+DgZmP2yyqcWEb
	xYFV+rvj82S/dmpBbqK3sxZeaRLiFdSTgCk3md9RmKCCwsFcU4b56apjnI/G9Bkm7UWzQhNI4FO
	PtyfOSxqkIMwCXSX7zMVkfZyUlD1WzcMNx5bp3klK4IPCKAHShUqCtrYzhLB+cDjlap1uCcMNoT
	WrdG0kAx0pWnZNJz1flAyQlKsaxueaWxp7xdlg4dvmzjUYjwUhaQdtKDE7txxhku89CLY0ilC8W
	UgQ2nLB4qGzzyLVwpdeZVzaV1c2s
X-Google-Smtp-Source: AGHT+IEscuGb9wt0+CpZenO2NMSf5QW6JYBAQ7BYtVdw0Is0BW+2/6Y3bhJY7rYbgezF7I5nTgkhulSd7o8Hdzkc1us=
X-Received: by 2002:a17:902:da48:b0:2a0:d33d:a8f0 with SMTP id
 d9443c01a7336-2a2f2a4f5acmr153730285ad.50.1766619283133; Wed, 24 Dec 2025
 15:34:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com> <20251223-reset-s6-s7-s7d-v2-4-958f341449f1@amlogic.com>
In-Reply-To: <20251223-reset-s6-s7-s7d-v2-4-958f341449f1@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 25 Dec 2025 00:34:32 +0100
X-Gm-Features: AQt7F2pbVgW1Xzj8p6pWnIHzWV5eNc9gVmLZCBJhyzjhG1GiyEAK3WM9YyEl5sc
Message-ID: <CAFBinCAwcdfaqf-23rj1xOMK9R7skPZKM2LrQLq92VwiMDOy_w@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: amlogic: Add S7D Reset Controller
To: xianwei.zhao@amlogic.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 6:37=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
[...]
> +#define RESET_BRG_A55_PIPE0            166
For S7 (without D suffix) this is called RESET_BRG_A53_PIPE0 - which
one is correct (looking at amlogic-s7.dtsi and amlogic-s7d.dtsi
possibly A55 is correct)?
unrelated side-note while I was checking amlogic-s7.dtsi and
amlogic-s7d.dtsi: why do we have D/I and L2 caches defined for one but
not the other?

[...]
> +#define RESET_BRG_NIC_EMMC             183
> +/*                                     164     */
this needs to state 184

On a related side-note: while reviewing this patch I'm wondering how
S7 differs from S7D.
Is S7 a cut-down version of the S7D SoC (e.g. some - possibly faulty -
IP blocks fused off), is S7D a slightly updated version (like rev 2.0)
of S7, ...?
What I'm missing is a "big picture" (for older SoCs we typically had
some SBC vendor publish a datasheet - for these newer SoCs there's no
public datasheets).

That said, I think the approach chosen for the reset controller (copy
& paste, except 13 reset lines) is fine because there seem to be
actual differences in the reset lines. For other
drivers/implementations this approach would likely get very hard to
review/maintain (e.g. if we end up with a 3000 line driver and there's
only 250 lines difference between the two SoCs).


Best regards,
Martin

