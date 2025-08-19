Return-Path: <devicetree+bounces-206440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB17B2C51D
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:19:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C62986882A2
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEF833A038;
	Tue, 19 Aug 2025 13:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ql2lFUFC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDC033CE99
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609275; cv=none; b=KBRAlIwHyWsCVofjfrxAgVqJovNM+uFBgJ771jB7duW0xQk3haC/awAEeV5xl1BCVvuoXhQE3lbr3Y4js+LD7OXFBRNOQKUozfa6FGEyKYJvGDU2lmnwaY/WFVt3JPiMqeecvYRDVBf0pY0S9hnEc3BbReqxGYBxncjlwYuJOgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609275; c=relaxed/simple;
	bh=5EKUsNMeL4sVaotgLb4xczdh+DrSAKVb0Z7W/ijGj9A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g3NTkeNgnYfoRfDp6/LUsY3BtYtvScB8RZRWl7V5xpYMzeDV9QKoRJstm/ZqFFqtnDKuceygxRdU+Wc5fDSeYh7RJIksBQzbP4K/mxvhOBcEXjUT9cORowa3bUvDZYMorJdNjPa3TDGYeZURKfiLVpUnQWGXwKk4hUDxvyRYRRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ql2lFUFC; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55ce5253a57so5483379e87.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609272; x=1756214072; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vpgl7WyLFrS0C/ZYYfn6MwQ/pZnCOwnJWShlT5q+tJ8=;
        b=Ql2lFUFCRELAhg4gqNXOod/h4IvAVuFCq0ihEqjCatYdqLOKoYwJQlbnanwLTDt1ZE
         tizc5bLD5eFuFrAyaCp1/Ek9mASRPF9X9uag2fxJBTi8o0huzOKNjDK7IMUPJ3mm/yVM
         4JYbDvfSOAnMFsn05BNjq4evIsFrRV7TN8be6uLtFrgW2Ybhhnw/Q0UDq37iSaCvTQLB
         TA5pDdue/TskRDKEIA6Yq++miugiAXLTBHIVeuHRUe9M/nI31AZEFFb4DRmb7zla8zzG
         sjIMv6vuOb6OOKaEKkTcb7VPwWG5rBI+kHkKmvjOFqkIE5vFUFZdMx0WRDD7ox23EwoE
         uM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609272; x=1756214072;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vpgl7WyLFrS0C/ZYYfn6MwQ/pZnCOwnJWShlT5q+tJ8=;
        b=qyssOTo8VQRt5uojOR088UY98f5PdiZy0QFa1EfVqO6NtDMVK1vVvUaxcHco5faxU2
         /nmiFmGYXwHu1kdQ2jvE2HzSMuZNWtZ4U97FCD2VgQuKHxpF32/pBIo9BnB8I9uzB7Sh
         oO8aM05VkYKgYb6vGCGUzxSGTt3N/RRr4IQ8LPWKjoXT/y9sD3cLo7R0pI0bS1ST0h2p
         8DeorqKbGQNJ2nl1AMuG+7bYT5hoO4YI7iCRIq3f5Rvq5wQuD2qqrvdsJB8Lac3Ey7dg
         T/09DxIHxe1cHvjmAMK6x74EoP33xd2vzrY4yQxiaS0LvvjDS8EfiXXV/dhBj1KY60fJ
         49yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNmQNrmSLakuujJ9T0kSPwbwvEcg2icgBEtv5bfKchHngjTaCz2oAoAiFLa3aMOBb7ryU+cHYQj5Ye@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4cygZZJyIj5sC0T5pnbR16doMrJSDtwT9eGeqGB3vlgX8GgOe
	a49Qumzk4ZaCnZ3FTwWG6+mGpAssRHZBiDQhix6jgH3ArjEJJPzOSqcyYtLRUZXgw5B8kpFy0tD
	X66HBCnI+yu2XaC7/fdChNcKDEpN3dPf5pj6APpQgcA==
X-Gm-Gg: ASbGncufSq9BTr+JNE+mvQ9C4y5NrGDsmrMKo6KWFlm0kHoxSzgoGAibwfSdP/NdpBr
	00JOzVycaECpDPsWFHrDj188DHXMzvTOltuvEYq70LYwzIhugGatB+7yATw4Two5YpinciKAk3O
	79HxFLUqny59pvVyezsq8YZPY6tD9Gwu2jFNZArvezJXrg1XVn8dlPAz3TIbOtT1ZSRLiGPqyvH
	yziRcUtyfcR
X-Google-Smtp-Source: AGHT+IGCM1KzCADYv+7d911GPZZod1EPaNXRqTGrmgy/nj7uWJIDPQDYu8S6SC2inkRC3koGoFDH6NusO/qUGRi2QCs=
X-Received: by 2002:a05:6512:3b89:b0:55b:7bbd:672d with SMTP id
 2adb3069b0e04-55e0086f09emr1019476e87.51.1755609271646; Tue, 19 Aug 2025
 06:14:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org> <175529260025.3212383.1843651240268969923.robh@kernel.org>
In-Reply-To: <175529260025.3212383.1843651240268969923.robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Aug 2025 15:14:20 +0200
X-Gm-Features: Ac12FXzzR-dQTCGYXpk2upb89TzIiA9ngfM-ksyz3QF34dZzwFe2pZdcL3v_yBw
Message-ID: <CACRpkdbB=uyNhvr1VMuartWif0PuQ3uH2AOEGgvdReESO8EMzw@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: dts: ixp4xx: Add device trees for MI424WR
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 11:19=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> New warnings running 'make CHECK_DTBS=3Dy for arch/arm/boot/dts/intel/' f=
or 20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org:
>
> arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-ac.dtb: gpio@1=
,0 (brcm,bcm6345-gpio): 'bank-width', 'intel,ixp4xx-eb-write-enable', 'pci-=
reset-hog', 'pstn-relay-hog-1', 'pstn-relay-hog-2' do not match any of the =
regexes: '^pinctrl-[0-9]+$'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-mmio.yam=
l#

This is an error since forever: the node is on an external bus and the
external bus while
defined in:
Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion=
-bus-controller.yaml

Adds properties to any child, which can be any MMIO device.

I don't know what is the proper way to solve this.

A separate include .yaml for the children and then pull that into
every possible device on that bus?

> arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-ac.dtb: /soc/u=
sb@c800b000: failed to match any schema with compatible: ['intel,ixp4xx-udc=
']

OK I should write that yaml file.

Yours,
Linus Walleij

