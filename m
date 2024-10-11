Return-Path: <devicetree+bounces-110495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CED9F99A8AF
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 18:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 238261F22C18
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4485198E7F;
	Fri, 11 Oct 2024 16:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="crhQ5nkE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5575D1991AE
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 16:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728663305; cv=none; b=F/FByHrKiCmcOgn7cXiaXu5BjvEy4Y2w+M/dx0IImtWK17S2aFRqdSEBDUF0bKwGoMJob4O3iKqNoVI5XzF5dmps39CNM87ccG1RS+HU5J42iNIv4la9RWdPC22jtbLsaU4e1gCSe+Z/QaJuvpRDH8qUVCWE5D1uZQYfKHeNjf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728663305; c=relaxed/simple;
	bh=gn2zJ+ebSzEzA9tLwZLGJpSONvEA/ifmwQ7Oc6MF1/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GZ8AbTbPvB/6vXcw1nspsHheVNU/8H4AkdeD8tZJQ7ghUYa85hFp5iHDkGve/pNrr+0Unk6IPRGwNG95dhALsSANgW+kuOkEjSfvi23XudaKVCNsWtZgRfIemEbtzeuPf7mzzJIzd1WmSuan9xJAHotB8TMuTSs5V3CvVb7qhgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=crhQ5nkE; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-71df468496fso2058347b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 09:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728663303; x=1729268103; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9wXNrkmIi/YQObyo/IyUy/irrJHMOY3CT8kXuXephfo=;
        b=crhQ5nkEGszbGLlyOBSGE4czsdfglUooHPAMey/hp8wJdaM6rv3fJCFZJMnVzxG6LC
         D/dngUIXMfqhJVkiJTmc8BEdlRoN8MYP40CWKFC1PlumL5CZFe/srQxRjIZgs8zDYm+d
         0PCLN8RQ6j9VUiiGtt/oOLGc1gSvbb3o2rTSKQjvJbsqXgnxD4bEsjm1I+6eTNeybVDa
         le+8I2JcxT4RWBkbE4QpRwefl13TrjgXTfVCRMZ9wZPHOIyMI4GEsqfuOUYE3/CfdcNn
         W3YWZZWmJtyR70oov6CkorfFuOykXccjEbF7M3BbgfyqyU2h7KxHOlN90WovgTgeuxBV
         xrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728663303; x=1729268103;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9wXNrkmIi/YQObyo/IyUy/irrJHMOY3CT8kXuXephfo=;
        b=olFF9ahkapOZwPdNFkIcPft3/Ez3yLu9aMJJUvoLMYPqRVnWkEUOcz8bcvQU6azfz4
         rveLb1TozC/VPilW7NP9qFREyCTEQpcipXTDkQOiLz1Q5YE8/kRHMbCWnyKPt0HK5jDj
         tX1cmv7eYeGjPigdiBEsWX34xheciwfyLHU6BIhBu604fgc/Qbb3MrZyxPgBvFhUI5Sl
         nN+WOYmahHgjii5XQ/OKT24oIpRlCdkTPbhLlD9w3o5EjhOZ4x10yUTTG6+5L6TKFWDN
         uLo+esK1hczUKbeuWgJdVP2K0sGUNUFNI8hjMelapuLFCvriNXCKGnKcaq9gIMQnP5RQ
         k/Tg==
X-Forwarded-Encrypted: i=1; AJvYcCXGTIWChMRVKF+jYAq9dveAo10H0tVVYuJTDWVZi7rgkqdUTsu4zXwXpAi4A/pNkvxH6+UA7IcOKX7r@vger.kernel.org
X-Gm-Message-State: AOJu0YyNnsdxzP95+e8xUTdWUPpyMdmHjUTmzYOrtw3hPDLwyefUldbn
	qQja1di4ZeEq+r9adENv+ZYrDWXi4K+UirRhyW9PMmxS3e4v6Pov77Ge9mvMRnc=
X-Google-Smtp-Source: AGHT+IGvkNkvub3vSjul9cHLNp86zogPqdkI+zsKo8/knPvD0t1400lP6okGXqYs+UwbCewenEv0oQ==
X-Received: by 2002:a05:6a00:10c5:b0:71e:4bfb:a1f9 with SMTP id d2e1a72fcca58-71e4bfba31bmr136932b3a.22.1728663303614;
        Fri, 11 Oct 2024 09:15:03 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2a9f5403sm2739854b3a.58.2024.10.11.09.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 09:15:03 -0700 (PDT)
Date: Fri, 11 Oct 2024 09:15:01 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Subject: Re: [PATCH v1 0/3] pinctrl: th1520: Unbreak the driver
Message-ID: <ZwlPBXfCyPxxYGkR@x1>
References: <20241011144826.381104-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011144826.381104-1-emil.renner.berthing@canonical.com>

On Fri, Oct 11, 2024 at 04:48:22PM +0200, Emil Renner Berthing wrote:
> Hi,
> 
> Here are 2 important fixes and a code improvement to the T-Head TH1520
> pinctrl driver that was either introduced or missed when Drew took over
> upstreaming it.
> 
> It is based on Linus' pinctrl/for-next:
> 
>   6dbd1577b7dc ("Merge branch 'devel' into for-next")
> 
> Emil Renner Berthing (3):
>   pinctrl: th1520: Fix pinconf return values
>   pinctrl: th1520: Update pinmux tables
>   pinctrl: th1520: Factor out casts
> 
>  drivers/pinctrl/pinctrl-th1520.c | 52 ++++++++++++++++++++------------
>  1 file changed, 32 insertions(+), 20 deletions(-)
> 
> -- 
> 2.43.0

Emil informed me that the out-of-tree USB driver is broken when trying
to use the pinctrl-th1520 driver that I submitted. This is because I
had changed -ENOTSUPP to -EOPNOTSUPP to silence a checkpatch warning
without realizing the implication. I've just been working on the
dwmac etherenet series [1] on top of mainline and I didn't realize there
was a problem with gpio.

I've just rebuilt and booted okay on lpi4a and beaglev ahead with this
series. For the whole series:

Tested-by: Drew Fustini <dfustini@tenstorrent.com>

[1] https://lore.kernel.org/linux-riscv/20240930-th1520-dwmac-v3-0-ae3e03c225ab@tenstorrent.com/

