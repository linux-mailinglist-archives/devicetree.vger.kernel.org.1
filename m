Return-Path: <devicetree+bounces-37086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B77843A5C
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F3C4B28434
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 09:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB477BB07;
	Wed, 31 Jan 2024 09:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a6Wgzbq5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248787BAED
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 09:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706691779; cv=none; b=ErB9V8v3vy3lyriuIvRNAMGXEBOJAw2ZnfQmU0eHYJVCxZTXQwC/EFchi0hX+TLUY4A4R9d/7mEUjEfNJzsKH1JvMb3+qFyBRNTdSQQ8ltwILzf3fRDwKODMzrwCAg9/2/3MK969jUOH+lBTnvb29NPVdTf5hpOgRTiZYUdt9uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706691779; c=relaxed/simple;
	bh=lSdWN/jxDJULY0LEtZC+P/VtTmAioLS2PNUhVVLVcQo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GfgAGJTxqlF3W8mhn20tr4G2T9sjObkZdOq8RX4yl2T97qbkKefW6J2cikri1/AmouTq12m5OTrZ/ZhNhUL3FtiUiJhGp4eM+HAdM7ak6Ce8ioIpnGiEMweVqpEHZTPNLIOFTyzmh2/gwCuMDpi7nhBp9faRi0hSIpn4HrAg4Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a6Wgzbq5; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-60410da20a2so1608557b3.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 01:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706691777; x=1707296577; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSdWN/jxDJULY0LEtZC+P/VtTmAioLS2PNUhVVLVcQo=;
        b=a6Wgzbq5sWW+EJ2jNQFbMCBGeuViHEzrSPTgEoSxeK3R1EqBCm1ZrfqN0/gWCs4BbA
         x3VbS3xKUdHzroc9M3NGi9WIiK3LhXk3rqp7egATVLktv6fDwLdN7Gi4OVoKSXYKVQC3
         apMoj92yumGs0CV8w/8F11Rrnjbw+42N5ueB9c+yzUXAfVMotqPuXIIGzTjCPorA0Vb4
         Yqu7Okq83aFKKTTOyxMEvvKRG4VuujUcoyV+HVj+OZMMSleGJFv9CvrsIhqlxWZ90U4m
         Momj3Eh9cMgXemGpgGKMTeqXXUGJE7apuLsYVAUTMWliHo8hjG9t8GxXNg1Ryzc23FB0
         uvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706691777; x=1707296577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lSdWN/jxDJULY0LEtZC+P/VtTmAioLS2PNUhVVLVcQo=;
        b=vmAb5NnFIMaijIbCt99lAFvkkzU8Uq6b1QpvJBOlZQ4vFpMZl646AGH5sE2lmbb9cf
         +Il8ICuKEK+eSsZRRUGrbxl876V2zEZ6iTcjP9MOM3tsUDJwnVcAs9O4erK3v8K9huER
         HJDv3UoFGIcWPOxAgJ3ACJtemOUOCdVkcAE1IdlCCWbMINhVi9ry+cj6NHjmKKvpi/Zr
         loZKdf2A2jtjh17WEF16/rc/rvIYkCCPG52U1M/dpNoYu5ss8T+QBFJVat+BIWeEV2o9
         2U3dlssF+owcZEZ6lPJYb+Rv6b8yvfczdsdT44+LiqgzFV7vmKpfH3ZWxvDLLTlChpVD
         YcXA==
X-Gm-Message-State: AOJu0YwUBGFlRbzFR16F1YAZB+VY3Gy9N6EfPZI4H1He/avG61/PeLdh
	hc4SsVMHFAj0NqIWa0tGLNpj69eUAx/T590Bn4MOjeTCImqdYHswQFlPSovzhicdoZNq1MFJu/K
	DC9KwMuuLgPGkpVPA4T1Ooq3lL+DFMO6zGuV3UQ==
X-Google-Smtp-Source: AGHT+IFNu/LhtEPrhOQpwPa0p4PCYkt17hfYf8YDj2gJCGqqf6iDBVUw+ZW9a5aTdlUH3m0t+5dEaWq2PfHLVNOG8U4=
X-Received: by 2002:a81:6c97:0:b0:5ff:956d:8b7f with SMTP id
 h145-20020a816c97000000b005ff956d8b7fmr836491ywc.10.1706691777138; Wed, 31
 Jan 2024 01:02:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <c1307a4dd5e30290acacc786cb2170deb9eaa539.1706087258.git.michal.simek@amd.com>
In-Reply-To: <c1307a4dd5e30290acacc786cb2170deb9eaa539.1706087258.git.michal.simek@amd.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 31 Jan 2024 10:02:46 +0100
Message-ID: <CACRpkdZgPhtgrvYV_aXTVA77VYnzL69_q_P7_iP_2rHRFEm0SA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctr: pinctrl-zynq: Fix compatible string
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com, 
	git@xilinx.com, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Potthuri <sai.krishna.potthuri@amd.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	"open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 24, 2024 at 10:08=E2=80=AFAM Michal Simek <michal.simek@amd.com=
> wrote:

> Compatible string doesn't really match with compatible string listed in t=
he
> driver itself. While binding was converted from txt to yaml
> xlnx,zynq-pinctrl was listed as compatible string but example was using
> xlnx,pinctrl-zynq and also this string is used in all DTSes.
> xlnx,zynq-pinctrl is used only in dt binding and not present in any DT
> which is stable for quite a long time that's why use old compatible strin=
g
> and update binding document instead of starting to use unused compatible
> string.
>
> Fixes: 153df45acda0 ("dt-bindings: pinctrl: pinctrl-zynq: Convert to yaml=
")
> Signed-off-by: Michal Simek <michal.simek@amd.com>

Patch applied!

Yours,
Linus Walleij

