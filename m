Return-Path: <devicetree+bounces-246915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BA2CC16F0
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45449305C80A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7222B345CD9;
	Tue, 16 Dec 2025 07:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="TTwFDMAj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6209634575D
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765871151; cv=none; b=VkR9DBVXZFXEV98W/weCTqQq9ezY0Y4u6zgc63JvB8Y9C+eEOLF5fjEwphuE0sN65U+1+1mLd/vmrUC2wJRHgtt2CmoURFbNxzPtmuVCmUelWs7CCAwRX+ShO6C5L30aD+wpbf9YKn4vDbiDHOdsgX1LARvYb7r8jSAfpMpItFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765871151; c=relaxed/simple;
	bh=0wM/+t7NPZc4sOSINvMIMrh1yqpAswP1U6lFCz6OYUo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gy72ihzVeKCh5vSKQHhM2XsH+wI6TQsw0C0rLOPdi5RY+pcVR6pidYqb7TNrlZL9702ahmxCWYt0bMBcFWXoMHEgPoC6LI4EtftivXUSAlFjDU/gu/fXSRFR/0UUTzDdRNSffb6HXzxzLXbkrJqdu4Hh4eNupdh4ksZBngn8W74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=TTwFDMAj; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-598efcf3a89so4166465e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 23:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1765871146; x=1766475946; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuchZlIEQ7Qt7YGyOaVFznn0WLi6WtlEz4In/HuK9iI=;
        b=TTwFDMAji9SwZLyvnmmfqVoQHqDB0fBltg2Tg1op/QxnoZ8X0OYuzrucr6RbQNWQk/
         qBCVkW/5BlNmQ6oXUsSmASOgZVqEgUx7hMOvTka3fBtH96Yg3jP89EWdN1m/j8lFhmPc
         EjFDaEdqKntcjiqCIqjofnzJdxXqgrzWL3bDXmpO7odtVLMdI/X2y4i7+5BVLcP1IjLr
         tTVfenuNpJ/d0eGIy4dMPei+8tzL42xjUmBUvkuoQX7RT8qAyyJkA1q+hVxvYM6JiIxW
         s0RkWfPTaHXmrNjUCuJOZ5NTZM2HUndvFxgs+5pk0RqeQglgLM7qM0mwxM3gLzTBzK3J
         GJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765871146; x=1766475946;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XuchZlIEQ7Qt7YGyOaVFznn0WLi6WtlEz4In/HuK9iI=;
        b=MBWUQPAn+OBeYFb0PD7/Y1/UKDpV0cfVFDSyqm6fSfV+5KqUr3HFG0HeW9sPHB+Dey
         Ulavv4IfXe8NFX8UqirLglluUa0nIsN53Y7ViAXQb3u3tQRHwOpcipKwbcfjDAWw3IWi
         LVR8QSSKKxaVLyR0lm3m5uVvVfHFrD8wy+PVaNeS8rCZV0y8cRjrfnkBsLEQ8tzXUh1f
         4jbDZPASk09E7sBd2DSvHYEv5qSkbQQUvGSRY5/Si3917zZjUcktZ9UXaYBDNSVI/0kf
         xudrhF23bqoJHNXM3OuiFpniDFQ6K4N6vARAVuW0ZCrAUkeaGiJyKwzbIvtBWy98uvAe
         TApg==
X-Forwarded-Encrypted: i=1; AJvYcCU1jZTs0yq+x9PLj3fu+jZzNXrb2bL6lo+rpH0oftc5dJHVyq806f2iXbTK017quc342bMn1ObL/8Rg@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2tmhrU9lanL72t6ayUeqIuSZvGF9AkGFOuK3sYWveKYOAbKzR
	kqoPrXCU02Zht+hOfcr+nP4ssXqR5Ao8FHdZBdD4+OuonV3VGaq7LbfFMi4nsrQjMxTF0I/WVLR
	C4yAShgbTbh3gtBksdkqWMqkeRIq2LPfTPBLPjizO6g==
X-Gm-Gg: AY/fxX4fe5OZKW9+pFOKY0PAhJi6g3oA/Kg/g5jImaYd+FqfTVl2drWP8edp6DOiPzU
	1RlVhn+Fe9u36vWa+HEgu/8+u+BEIZpR3ss+OIRYCX2sg9S//hZWf69BINGwydXYjf7ui71mdRT
	/n7/joNKd36gpW+scoLpyTe5SEp45AhPVbAbmeac+aIcWbgo5cvcur2lWZM6NYV9CRpKWBnER0P
	EDXI3Fv0Xbo2EPI4G1p3g9IcbvCPZJtmgORiqGpQuMifTWdEjx086D0tIjY7xtkVZa1Jffh/ky1
	6Gkeon8Jpd66J6HgT96NJhsyfkc=
X-Google-Smtp-Source: AGHT+IF6H17aiFvGb702VOwPXc+hTy3DZbwfqo2zqfUfC8dg1nySLzl36MTuvZdb+gklt+x9r3XGBM4gTLYTKigz89s=
X-Received: by 2002:a05:6512:230d:b0:595:7cb8:3eae with SMTP id
 2adb3069b0e04-598faa4ad30mr4540373e87.20.1765871146066; Mon, 15 Dec 2025
 23:45:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215154809.70041-1-bartosz.golaszewski@oss.qualcomm.com> <20251215192854.GA3162398-robh@kernel.org>
In-Reply-To: <20251215192854.GA3162398-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 16 Dec 2025 08:45:34 +0100
X-Gm-Features: AQt7F2qzk_nuxqZv8lW3fDEY3i1t3cjkSbXFP_iDhB4uTt9X6xoyQRm748gKf0U
Message-ID: <CAMRc=Mcc90MGUOty98iCOXD94U=T79bq3u9R2oGTD_fZED=NVg@mail.gmail.com>
Subject: Re: [PATCH] of: replace strcmp_suffix() with strends()
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 15, 2025 at 8:44=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Mon, Dec 15, 2025 at 04:48:09PM +0100, Bartosz Golaszewski wrote:
> > string.h now provides strends() which fulfills the same role as the
> > locally implemented strcmp_suffix(). Use it in of/property.c.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.co=
m>
> > ---
> > @@ -1416,7 +1405,7 @@ DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
> >  static struct device_node *parse_gpios(struct device_node *np,
> >                                      const char *prop_name, int index)
> >  {
> > -     if (!strcmp_suffix(prop_name, ",nr-gpios"))
> > +     if (!strends(prop_name, ",nr-gpios"))
>
> Don't you need to negate these?
>

I'm not following, am I not negating this?

Bart

