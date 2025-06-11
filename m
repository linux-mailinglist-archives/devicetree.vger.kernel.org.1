Return-Path: <devicetree+bounces-184622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26705AD4C4B
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 09:06:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9D953A76D1
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 07:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED0B2288D6;
	Wed, 11 Jun 2025 07:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dFLftccN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921452D543C
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749625595; cv=none; b=XOgI38uAUj8lb1ehVU2wcrl2kLq8Rh9Z24M+dpUXSzqzefBKv4qJvTVLYYuAhyV9o/jSp91UKEnwjn8s334rWXMgHfTHFQXRTfMXrdGJg/3h2dbtenrYe/Paa204XSwaosmq72UTNpmEW22Z7OOsBVN20IahAi9+m5zYfPthrM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749625595; c=relaxed/simple;
	bh=O0LWLY6iLk7Lr3uOYJTWTSY0gujr/jg2BfBLyDxpxFQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tpaYqoPzI0jvTJt1dfcIOjFaTpi6j4xLvxPYYTtl4aTkRN6fyV9GebmD1eeigc9T/zYnlcdQOEjKxOjKmlYaV/G+W1Qo5ODxd9cR4EHe2sFL0KCiSH0nWiBVztV+18W1x/Praw4B+oK4bcys3CsNXu+tkhSePUxAp62A7sFbDjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dFLftccN; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55365c63fa5so5474010e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 00:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749625591; x=1750230391; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GUREcdWtmShI/aKyd4LC2w+kncL/d6qeFx0o1ANjQXs=;
        b=dFLftccNOJ1jBkqKPtcot8iItD4msG5Tg8xV9ExtzxtW2P5qCvw7GHPH0lR9O2Ae8v
         yNseAXQ9QvSXQX1yqnALlNhjAqvslx4Rpq97ZXI44d8dQ3HnOYVIRVGzMMRFfvxi2g0u
         hFDCJJmSsIiUvZo3UEKbEwncg+qqYkowVEOuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749625591; x=1750230391;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GUREcdWtmShI/aKyd4LC2w+kncL/d6qeFx0o1ANjQXs=;
        b=ZP7ENUvFTbOi7Y113x+WWF/6Zfgq/uKh/2H4SmCxrpFzO9YSUrAVuCyWthKYqpgUUv
         SPipeNUpgPf/UJXnzrluWvj8gCxVNYkq+vqTQQVt/U+qIcAI2lhxMP6G1u8xQ6BL8sa0
         dQQJhwIaQ//qgZ5YPnVtfYQHAN7U+UVG3RlkzBm+NthmNKk8iLpzC9/JlcdV5RAoJ2BJ
         hgjSOQYUxvoi0+dZUAx3KzqHoxJXjjTOE6nu9LTDX8TyYFXkoVGzCKd2XDiF7H/rf43e
         XyOy6M9NMsBHBEe4FT+lUtFD4ZMiziqgghfPbWhn+ChnIXnpxbo+xca7jZc5ziIiMu9G
         f/Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVaQGHuGnosJpFbL+7NWiyM/9MxpqCNALfGOXyuA1+dk7LqrRLTc9MWUqDbDMZRgkvxnIiZlYFsWKgU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6Dr8i4dakr9d7LOSQ9r6Kp0T5xV1SOKZl8cv8E0aLNRZyG/Mw
	a7JagnfLMqj1h8NgtM7kLApHJeL1l4t94rm6vWWMbhfvrxE4LRE+i6cNoWOTxAi30tRPNCUrcmD
	eM6s=
X-Gm-Gg: ASbGncuOvG0crEaExN9dYZcIWRT/qGk+N7Pvn4QPaBZhyFgaCAdlYwo826GFJ1W1r4f
	h6N+0tTFj4c7BUBdQtNgbEb5QzLuqLHuF3FnjmyPgMlfHt8be6xtcf3mUfHduklW1KgNNXAcPYH
	kCuStyjOtotnrejO/CLO0P7kbrKVRTC5xu8SkjYPgL5tPnVpJzeBYxf1RRFIPQrdaOL8V1lR8Ap
	JmnmyE0BSmu9rHvCATrlRbugMVtJI+sg2qSH6Q67QvtHs+ceWzh5aWg+n6GiMTPbdKwEY5e3gdz
	946vkonOeYZ/T7CTfQIV+riKYYNErgzp+HQ96DHGD73VVTiO5nYa6CWZ+VsEo1V5Ve78kXGh9Jw
	Yw2yPT4SftQLCu7YSjRrszEij
X-Google-Smtp-Source: AGHT+IEp5YVSjdZ3G9zda7xjPNSipnRoO5325AIZbbrz939iX3OpFkFV1uQteqdLqCvDN4rMPx0JZg==
X-Received: by 2002:a05:6512:3e26:b0:553:390a:e1e3 with SMTP id 2adb3069b0e04-5539d4dec55mr438259e87.44.1749625591440;
        Wed, 11 Jun 2025 00:06:31 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553676d022dsm1837062e87.17.2025.06.11.00.06.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 00:06:31 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-55350d0eedeso6540984e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 00:06:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUwLwYX9llUtNfx1nouEJTLplilybpbLIwMBgq7ElWHuahxjZCGZhTqIRxnsADV/QJu+9ECcWwUABhE@vger.kernel.org
X-Received: by 2002:a05:6512:3f27:b0:553:3674:1df with SMTP id
 2adb3069b0e04-5539d4e5a98mr421501e87.56.1749625590474; Wed, 11 Jun 2025
 00:06:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CANiDSCvB5yytOgvk1QC812x4zOBn5Z4_C5wqUnV+2hSQXKM54g@mail.gmail.com>
 <a2efd2e3-bab8-43ba-a236-aa5052bc35c7@kernel.org>
In-Reply-To: <a2efd2e3-bab8-43ba-a236-aa5052bc35c7@kernel.org>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Wed, 11 Jun 2025 09:06:15 +0200
X-Gmail-Original-Message-ID: <CANiDSCs0xp_PsKmyNpY3zHh9xuvJEgYXysB2wyLEZOL_+4Lokw@mail.gmail.com>
X-Gm-Features: AX0GCFvsypmgzwNAaJWuHJzEiYbQK7oV2mLU_U4qZ2fVbg9_hmcu3PhUZ8iYayA
Message-ID: <CANiDSCs0xp_PsKmyNpY3zHh9xuvJEgYXysB2wyLEZOL_+4Lokw@mail.gmail.com>
Subject: Re: 6.16rc1 dts-bindings check fails
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof

On Wed, 11 Jun 2025 at 08:41, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 10/06/2025 18:11, Ricardo Ribalda wrote:
> > Hi
> >
> > Media-CI is reporting some dts binding errors:
>
> Every builder of linux-next sees this, it's not specific to media.
>
> >
> > /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml:
> > properties:reg-names:items:1: 'deprecated' is not one of ['const',
> > 'description', 'enum', 'not', 'pattern']
> > from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
> > /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/pci/marvell,armada8k-pcie.example.dtb:
> > pcie@f2600000: interrupts: [[0], [32], [4]] is too long
> > from schema $id: http://devicetree.org/schemas/pci/marvell,armada8k-pcie.yaml#
> >
> > When I test your  for-next tree I have the same issue:
> > https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/log/Documentation/devicetree/bindings/crypto?h=for-next
> >
> > They do not affect media drivers so right now I am just ignoring them,
> > but I wanted to know if they are under your radar.
> >
> You need to update your dtschema.

I was using the dtschema from pip.

If I use the version from git, There are other issues as well:

$ python3 -m venv venv
$ . venv/bin/activate
$  pip3 install
git+https://github.com/devicetree-org/dt-schema.git@master yamllint
$ make dt_binding_check

/usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/net/snps,dwmac.yaml:
mac-mode: missing type definition
/usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml:
maintainers:0: 'Not Me.' does not match '@'
        from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml:
        Error in referenced schema matching $id:
http://devicetree.org/schemas/power/reset/syscon-reboot.yaml
        Tried these paths (check schema $id if path is wrong):
        /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindingspower/reset/syscon-reboot.yaml
        /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/site-packages/dtschema/schemas/power/reset/syscon-reboot.yaml

/usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/pinctrl/xlnx,versal-pinctrl.yaml:
allOf: Missing additionalProperties/unevaluatedProperties constraint

/usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-rtc.yaml:
        Error in referenced schema matching $id:
http://devicetree.org/schemas/rtc/rtc.yaml
        Tried these paths (check schema $id if path is wrong):
        /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/rtc/rtc.yaml
        /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/site-packages/dtschema/schemas/rtc/rtc.yaml


Is there a doc besides
https://www.kernel.org/doc/Documentation/devicetree/writing-schema.md
that I can follow to set up media-ci properly?

>
> Best regards,
> Krzysztof



-- 
Ricardo Ribalda

