Return-Path: <devicetree+bounces-75091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E699056C0
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 17:25:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44C271F22EC2
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 15:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B49517E90D;
	Wed, 12 Jun 2024 15:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b="XWT290kS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883BF17C7C8
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 15:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718205899; cv=none; b=A0DKaXBLGFuw+o9WO0+OvdbRQjtfDgCqspwAXEvMFd2MOcjywXbnSO783vSwbAEzaBdq6Vw806RKo4IFikZj8Qra+XEUEzo3VmeyErC9KHcBFLVweFKTWG4j3mi5MTHaivIJLZ8+fsW52Nkz1XhevK+ea2iMkR9d8Z/AokwlgQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718205899; c=relaxed/simple;
	bh=8pixPtYD7EDO7nYBMOz6fC5qpHZbTKS1XI1/tr5+VE0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=eS/8Yw3jerK2pwXIjyowYbcVS9LfIonHW7acuLZyh57teWVYdCNXYF/onTPUBOtc5ZFvDRFtE+Th+cbXOuZRCll9KzPbIW0yel+NeP3fbflVzxuuFshTh5mZFU4fzADzydVoSLe3GXPsNbLfJvbpTF1DJbXA1njmAt5kn/1Qo10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com; spf=pass smtp.mailfrom=jrtc27.com; dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b=XWT290kS; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jrtc27.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2eabd22d441so111607411fa.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1718205896; x=1718810696; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cfHSD2ohGFo1bJLqaYnJWptznLHGgS8ba5sojTCQFak=;
        b=XWT290kS5WE8l1ZSxF9F0bGicx5ZaPQH79t5W2gH76OEL+2Rd4odfcYy54hjhktQjC
         iVwCo/+yk/YL0JKNYwiSgtW3AG/uCs2ulMqUUAdfFWAPXluQOHN/bUrB1I5DmCL6+plQ
         APQ+mGUXTUKRXc00dE1FCDp0r43MQOHsx9ETDhY7sOrO5aKcpXFvbrVbLIk+yIwQp/bU
         slfxtkQCNz4gsVuR0rQwVm/QEH4VhVuAPPstJLXvBb/XH9iqAOeFG1xw+CJtwe742dWz
         k1s8j0x4ysqbLy1Ai5jc7hW3Ol0HeCFUAe1nmjSrCSu+00fX6V+KlF0Jnf1JEP3Tcr/3
         dQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718205896; x=1718810696;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfHSD2ohGFo1bJLqaYnJWptznLHGgS8ba5sojTCQFak=;
        b=HeI/J2cLZX0iZNpqsFux5wG+yNrdXokbJ3y9mEbISu52DsR7fXvvPjVZL1Fc3H5N7p
         qIbWRvTjdeIpC1kNyrNOFvZnv4cd4m1URr0LfYUcpPTlUPzJSFivjA5LxXD+dd5aI15E
         k6t8olB9z5kb6liHLJiBhTZFjJGjD+sshY6l9QHRutF3cHDkDtY/vz/rhYwq8YTBhPyy
         F7gKFHy37emCeGtGulsdyHRTG6SQWOU8OHym6Ac8xD/lc+4MiIHOdfwPMNUgihx8FQ/B
         tG0l8I2B7I36YHi6oIFpGjO80cvZKr7VamIPjwRlCGG9202itJHPI7HWjH69RxSVEcOI
         tGQA==
X-Forwarded-Encrypted: i=1; AJvYcCWolrIjvwlIjcZ72aC5t6gITl7IVqiM4w6jdTho4L4Yoi9ivE3s8vErYAtzDfUz4gxJfSmYanVqCPzr9+kb7FtejPAb/5olzkqvMw==
X-Gm-Message-State: AOJu0YwIMtZqqjcV7CTlK16k7uiMierB74qzu7id5oObRW6RC1GVihup
	jU5rL54drVUkI6n5xfJpgk/y8cOkdVRM8adPuUT84yN5G5qFYt7pZg/s2qUFZ24=
X-Google-Smtp-Source: AGHT+IH4zw3EWMR8z6Xw4xToTAnfHYkARCSUOo+5ApT7OA4n06T70RJ8V+bqVpKPZ0cStqBJHw7VNA==
X-Received: by 2002:a2e:7d04:0:b0:2eb:d963:d8cc with SMTP id 38308e7fff4ca-2ebfca4766cmr16758761fa.49.1718205895563;
        Wed, 12 Jun 2024 08:24:55 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.201])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422899b0cdbsm16835855e9.0.2024.06.12.08.24.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2024 08:24:55 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [PATCH v1] riscv: dts: starfive: add PCIe dts configuration for
 JH7110
From: Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <20240611015200.40996-1-minda.chen@starfivetech.com>
Date: Wed, 12 Jun 2024 16:24:44 +0100
Cc: Conor Dooley <conor@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Transfer-Encoding: 7bit
Message-Id: <98031697-93AE-43AC-B192-44B12CB43EC5@jrtc27.com>
References: <20240611015200.40996-1-minda.chen@starfivetech.com>
To: Minda Chen <minda.chen@starfivetech.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)

On 11 Jun 2024, at 02:52, Minda Chen <minda.chen@starfivetech.com> wrote:
> 
> Add PCIe dts configuraion for JH7110 SoC platform.
> 
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> ---
> .../boot/dts/starfive/jh7110-common.dtsi      | 64 ++++++++++++++
> arch/riscv/boot/dts/starfive/jh7110.dtsi      | 86 +++++++++++++++++++
> 2 files changed, 150 insertions(+)

Is there a corresponding YAML schema?

Jess


