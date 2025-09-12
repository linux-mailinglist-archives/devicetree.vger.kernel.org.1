Return-Path: <devicetree+bounces-216251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21469B5427F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5C3DA06721
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 06:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE7928BAA6;
	Fri, 12 Sep 2025 06:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a9BuF4HD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13672877F4
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757657223; cv=none; b=SyfVz1ghXSGCeINLxpFNridfi4B3GYNLuPDwpggtIVGW8MG78clCWyKiEApW3P/bZkFVrIbc0LT32yDmof155uSgsrDbYDbsZtnVQicIwmQ9Bho2XTaj+F59rB8MoLZzWatvRqgRq/MMq0L0HmiO3bEJDRw671HRgfiZNe4/NbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757657223; c=relaxed/simple;
	bh=xhNUv4r15tNXSlEeRfAfsJoZ1YS+9y9Hm87zeZ8pVCg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fDbl2QIpD8RUvPABuVfj1TGzgqiabRDlVtmFSw39zt+UGdMmT/U2Qo4WszA3qkmPB4iKXFmVkNWxc3f3LX5XgtMLb4GIaS1CdWWrFnYs6RE7Iz+YMpccDMT6IeI54qhm2d5WVx6nKMWG9XuwPeagDBJaB1c4Jugy1X1ycnswKoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a9BuF4HD; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b07c38680b3so68850066b.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 23:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757657220; x=1758262020; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TOVssAlVzuybD/LJbI3Y9xOJ1MXiBDYcVtpUt3l7gBI=;
        b=a9BuF4HDwTEpkoIjFNsvhzg0TwrGqAFD7uHRDwY1Jb/G8o6eKu+v8SWrTTvNwFgW7b
         R9evenz/cn1H/O2xwjavr/4swv6ah+na6Ki58Wjf2/Txd2JcBdx3skqcMkRG9NwaQgNU
         4zSQnLvpcxzZpaGHjZ7NJD7ctjLn8p1HbI5kZKCJq5vPdU89onyP9gpXhoOOEwGLVJlg
         F9rTDIjtKzRgJ6P4R5W4wShJWvRu3WWhX/dCmNMxr3JjakT3VnkdcwMmzo0sbpgYx93C
         DK14xReJ1n8OXXQCErJD5piN2HWbwcAoXyp/df+eM6EkpKHUv5hRzb/kf86fvYTweImX
         LGlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757657220; x=1758262020;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TOVssAlVzuybD/LJbI3Y9xOJ1MXiBDYcVtpUt3l7gBI=;
        b=Y/cookjXpfC9cAgXPrgt0LJmSAndRiZSZYp8YIX5YIA1lgUjRUxnKoDMTd1UEc5B4n
         m3fMdIBtY7yq38Z8b7iVOpovyh7ojZTeI6icWJlghNzlXOmJwWWFaT4TpLoaSe1+kp7V
         I8tQM6yFIIW99XGE9nH7EbDtMUTtRBxsAD3zIAW0gxVP4988NqzrWs6stWZd0guv3wKe
         1RJ1HlhWC5M9vDoQdTrjdzVQQEpUpkW6oj3Pw37x+FeWQcinM4v2RvB1UR/3IuozC8M7
         BHPFSzF3bmUMd2He+5J+QTuV6+42ywmqAA3Tmle5YVuN1EduLn3kIaYDu3DVR/4GPZlP
         Uxcw==
X-Forwarded-Encrypted: i=1; AJvYcCWpx5FCXYavuIcdzu0Mu8oU5gDi/93LtMUgd2bhyvJXgebrQOqVtS5rl2sqUvviYyDGqDujAkz+4xMd@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqnx+3vAlMjPqbFxfsQp1N3IcC4cYbeMrpvp4Bsu1vSZmp9Grj
	FFovqB2TzK3V1EEj5UUHUv7FBGHYMCPubINnzXmI8Fpc/nbOFizG+V9xqRmse5r5ej03cxO4rxx
	Ajj1s5omj9I0poAqDUJCZyxhZm9J8O/TuNNUzi0D6NA==
X-Gm-Gg: ASbGnctMpLhQC1xL3omw5KTBE5XmNM8r/Cl3oQbUOXoep7bUPSP+bORJT//jJiHG5mr
	6KyEJ4NqrSeE4pUzM8lnJmIl5K37N9ENVRQXJXplj9rixIbNWdqrw6SL6M7G6rqE0mX0ywtjP16
	y2w14MlcqbMz6WRSuXbZSvxupCtgEsn3Al8wRiPhDedCPIomQu3dexZkCMtbF1LoGadm6ix1B0J
	EK4+WTUxIrjlfoWvg==
X-Google-Smtp-Source: AGHT+IGbUmIoLVqRxKuVQ8ZiqtWYSSth8aq/nfPm70faiRBEOfXVPN4NALZRbJpq4jayZtv4bcHIGewkEuMmT769r/8=
X-Received: by 2002:a17:907:3f07:b0:b04:7ad5:b567 with SMTP id
 a640c23a62f3a-b07c35be704mr164366766b.16.1757657219928; Thu, 11 Sep 2025
 23:06:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1757318368.git.zhoubinbin@loongson.cn> <8575ff2d46b701950b1b0da3d3c181db331f79db.1757318368.git.zhoubinbin@loongson.cn>
 <20250910-knowing-labradoodle-of-protection-d37884@kuoka>
In-Reply-To: <20250910-knowing-labradoodle-of-protection-d37884@kuoka>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 12 Sep 2025 14:06:47 +0800
X-Gm-Features: AS18NWCgzeCmKpxIiPEQ4y-Le_Edm7fm5KZRjhTlMd28XiZokJFtKz-8hZ5wN2U
Message-ID: <CAMpQs4+9DwkELn3xyi+PqOGNabGC2vvYiujjTa0Q1wH6mSacRg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: serial: Add Loongson UART controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Haowei Zheng <zhenghaowei@loongson.cn>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof:

Thanks for your reply.

On Wed, Sep 10, 2025 at 4:28=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Sep 09, 2025 at 08:11:18PM +0800, Binbin Zhou wrote:
> > Add Loongson UART controller binding with DT schema format using
> > json-schema.
>
> Why? Your DTS claims this is 8250 / ns16550a.
>
> This is just incomplete commit msg. You must explain the bigger picture
> here, not repeat what the patch does. We see what the patch does from
> the patch.

According to the chip manual[1], the Loongson UART controller's
registers and functions are compatible with the NS16550A.

Would adding Loongson UART compatible to the 8250.yaml file be a
better choice, as shown below:

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml
b/Documentation/devicetree/bindings/serial/8250.yaml
index e46bee8d25bf..abd41e996e68 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -99,6 +99,8 @@ properties:
               - nxp,lpc1850-uart
               - opencores,uart16550-rtlsvn105
               - ti,da830-uart
+              - loongson,ls2k0500-uart
+              - loongson,ls2k1500-uart
           - const: ns16550a
       - items:
           - enum:
@@ -143,6 +145,18 @@ properties:
               - nvidia,tegra194-uart
               - nvidia,tegra234-uart
           - const: nvidia,tegra20-uart
+      - items:
+          - enum:
+              - loongson,ls2k1000-uart
+          - const: loongson,ls2k0500-uart
+          - const: ns16550a
+      - items:
+          - enum:
+              - loongson,ls3a5000-uart
+              - loongson,ls3a6000-uart
+              - loongson,ls2k2000-uart
+          - const: loongson,ls2k1500-uart
+          - const: ns16550a

   reg:
     maxItems: 1

[1]: https://loongson.github.io/LoongArch-Documentation/Loongson-3A5000-use=
rmanual-EN.pdf
>
> Best regards,
> Krzysztof
>

--
Thanks.
Binbin

