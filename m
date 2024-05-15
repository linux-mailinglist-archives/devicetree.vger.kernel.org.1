Return-Path: <devicetree+bounces-67186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2868C8C6EA1
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 00:27:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4D4D2843F4
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 22:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F5215B14D;
	Wed, 15 May 2024 22:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b="kQTsj3Ej"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABB515B578
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 22:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715811930; cv=none; b=AC7plOgk5+K0Z5iRozVfXl89fj9/VIl8ZCHp/t1ZSm0Zfds0sdRdhcD47y1cW/s5fJl5fR5yKRnpoSUg6lmW0Houtv8/nTBoHokQ8sKuB3LvrVurAcK0VQeDrNP1okGxuXek5rYoUGSEitIMJ5Ec3GCMgdHBUql8gP+mQDVaL84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715811930; c=relaxed/simple;
	bh=BI857sayZDwQNSg5pPJ106rwXLFaEfhCLfpMtQ/x5oA=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ZX8v/tNSBASlTPIorL0stwa74lCSOUvQ9LF/cvEJV9tUJxIVMWVWPWg16Mo++An00L8azcFLjqOEvco+/r9DkButYSV8CSkXVsD/7FoJt1sd3NQcKtfhPRIOtEtQt+bMSkAtRlM7B6Inyifbpa067IMSXrHqoabvbqa//Jfe45U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com; spf=pass smtp.mailfrom=jrtc27.com; dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b=kQTsj3Ej; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jrtc27.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-420180b58c3so27428365e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 15:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1715811927; x=1716416727; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BI857sayZDwQNSg5pPJ106rwXLFaEfhCLfpMtQ/x5oA=;
        b=kQTsj3EjTCl3kq435XZFvBqK524GVyd+rmqRw7H6+Zwga0Mf41bgh74EJv8ZbeFRyB
         donfkAeMOuB/gSTDOOoX1Bdc38n7apmKQqgoBIdn55pwPwVQhfZE2QxT/jIYpl2eMkHm
         zryG2nNWoX9IwjFaFmdEJLsg+AsndqKALdNEFxPYMxDVfwIpTglBJuvKStfeCRLuYWJs
         ov5Jz+FQdpwMg62DyutUDgPaawOfxQlOKzM7nI4yW6PFA4nEYo35XoMwjnENDRZ4hpTM
         py7yZo2rcNQFuR9kpLRiAiy5hxeCJyUub6X4VkZq/lGeSUarcJopRjmJEA3+RDQhozGJ
         LbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715811927; x=1716416727;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BI857sayZDwQNSg5pPJ106rwXLFaEfhCLfpMtQ/x5oA=;
        b=sNXAG+QzhZuX53nYHjbddk6/S9Lz3HDeltcLFskw43a4OptmR8nyw60bIPIzXVHLe4
         WnAiATxFp0OmSOqu75XpupGDTHUx2LldLbwstRLvweMs/ee0xewWhsyvsyyqmB+PJXFC
         hEC6CrVwSn8tjyQ1N3wyMN1LbyQURYmxZIA2uGX7/vYyMBanN6lPzHB7uT71C/YEdeE/
         uG1PLRGEdTUGva9Sgkl4NNvaqZWUuVLJqAaqG6n9gyHJzwKA8/OCRsb54aRCDPDksQ2l
         QDazJ28K8iDQem0ziAGJwVPjzJskiipx/si5XKE1/RTcSoQ4LAaSII0Snf9WDdfctxqB
         SJHA==
X-Forwarded-Encrypted: i=1; AJvYcCUQkoaofMFjRfvp55aZUeEnysLPL9Yon+9sZ8jdnl4jZkZDd2VdJt9Vcymxj1va/cFswRHCCK/3UO6j2so0+ETFv6dlE+KMVZMj+Q==
X-Gm-Message-State: AOJu0YxcmT+WCClCVO+lSK1upRkwtiWMtsvUh+vd2FkEhZWf5vROtG38
	ldNWlfYlwoV4L++tMJJaB+uB7F1fdifCA+YtzeMujfmBqyVqDyM/iKuLxrgro/w=
X-Google-Smtp-Source: AGHT+IENgjSLQxs5gKBtSC3SHE6IkKb3zYvJJgsyZKLJ07yLL95UOkkK/ds1ZAYyov1qy7vJDUKK1A==
X-Received: by 2002:a05:600c:1d1c:b0:420:98d:e101 with SMTP id 5b1f17b1804b1-420098de3c7mr107812905e9.15.1715811927173;
        Wed, 15 May 2024 15:25:27 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42009eda143sm184412385e9.14.2024.05.15.15.25.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2024 15:25:26 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [PATCH 0/2] riscv: Allow vlenb to be probed from DT
From: Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
Date: Wed, 15 May 2024 23:25:16 +0100
Cc: Conor Dooley <conor@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Conor Dooley <conor.dooley@microchip.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <A9EDD470-B8EC-4644-82A0-7444729EF885@jrtc27.com>
References: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
To: Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)

On 15 May 2024, at 22:50, Charlie Jenkins <charlie@rivosinc.com> wrote:
>=20
> The kernel currently requires all harts to have the same value in the
> vlenb csr that is present when a hart supports vector. In order to =
read
> this csr, the kernel needs to boot the hart. Adding vlenb to the DT =
will
> allow the kernel to detect the inconsistency early and not waste time
> trying to boot harts that it doesn't support.

That doesn=E2=80=99t seem sufficient justification to me. If it can be =
read
from the hardware, why should we have to put it in the FDT? The whole
point of the FDT is to communicate the hardware configuration that
isn=E2=80=99t otherwise discoverable.

As for T-HEAD stuff, if they need it they can have a custom property.
Though naively I=E2=80=99d assume there=E2=80=99s a way to avoid it =
still...

Jess


