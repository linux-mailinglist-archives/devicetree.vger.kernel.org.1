Return-Path: <devicetree+bounces-247270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE67CCC678E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:04:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0BC83021FBF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B9C2DAFA8;
	Wed, 17 Dec 2025 08:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RL6fVRTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B920242D98
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765958689; cv=none; b=YGOJQbijfXLCudH6i2wtdXTkMp+22Rb0LFkXYAcwd2nmI1OsIueSwSOeMNpCy/bnh7NltVvyYQlTNI9kTLUwjVrMk/54aCRPZmNlQ8WhwO2DN57K7glpcBKzR+y8wgwPAW/o97ow2mGEEhbXc3An6eq+vF3QjDGK8GeTMVnXiRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765958689; c=relaxed/simple;
	bh=QAHyQaeRRYRmEM2JW8aJJRkYiuED3yT0FoQYPAiGLTk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=juxAHENWKyzTFf8x8obbkadKlvnmeNZNK45e8KIxrJ949JEeWiLVbR4JNll7P1bZLm9Ti9fKgghxhxYKYpjhD/UykcJJwn7+syfStZMQdktTJoMxa3szXOmAEVAjvvvFDY8rVBqam6tXGrRMqySLre4fUyjYUFhOGHdTsubXWTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RL6fVRTl; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a1022dda33so26149605ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 00:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765958688; x=1766563488; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QAHyQaeRRYRmEM2JW8aJJRkYiuED3yT0FoQYPAiGLTk=;
        b=RL6fVRTlniQYHLHiApP/G0nnFj582Ul2WRDna/Ku65Y2HiJtefCH8nXRfae83+QGHJ
         uOwNJuDzreiCQQP8PqvdUfeAsZYxw54V4pZOPoNeMtbuY9ggL85VAs236ZYKc94Sl3U8
         EFI7BrB6o/jamm2F2L+DF9arqJAQdBlAiXxUHSSy1hGG/ymaykkKMWJ3yUoik9Mb9ha+
         QlPI3Bb0OA99lcCFsV6N70sAeC/ka9pfNEF2T0ZeIFQVI9dT5gxdva2byBIebyVCjJBo
         uxIxHuvfrHUeVluqzGvFTVHvhMP7Vj7vVlKe27sPOOvLx02mPR21JcFYQ6COc1HqIgNC
         KrNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765958688; x=1766563488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QAHyQaeRRYRmEM2JW8aJJRkYiuED3yT0FoQYPAiGLTk=;
        b=MdXqAR7iKu8XwxewMGcNFoK2SwpZ83/2e+VjK3O+rERz77I8buKvC3AVbnU+0m5+Bq
         WKVp+pqsJ3mo5vWrVzoSf2NxHflZyTq4sVrbqK0BNOai3aCANFruxpITgVfkSILaMyvf
         PLLjN8cGJK63Lu5NJSfHxHW4Jh45xHx92nUZYCOoQukgg2vKa/1lxjfP5vqKzSLeMhcc
         SEfY2z+kJhwycbU08W14MiE7FPtrvzkI4WUrVpxLfleutn3eoM9R7D4REqZwRaco5SXR
         H8Ks5XTtxYJ1/9rTBhN7PMupbMD/54749ucjJoUOFR3h+E4bfYjrt9oiMdyFYrgKiEeZ
         i1Bw==
X-Forwarded-Encrypted: i=1; AJvYcCVHveL0kqIzFDKxQedxQW09aZ43rtWZaYmSFzuT7Svff/iN1zzwmn3F4/F0NZBI68ZNt0Xy0Zl/Cgmk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0csfZ3I9tZCPmu6C9yaHgy+OugDV3SKVCWLtN87EWm+qYbNZu
	ZMAzconJxSDOHW/VsEbcUMDIHdanSgHEXmJzu+aE3/0xg7BELtESrCH/d2m8gF4C3gTasVFHr/Z
	wGq2ycOyGRhEQqmQ1Tk9yVBjb1OGe6DI=
X-Gm-Gg: AY/fxX4LGbQW8cu4voLNKVc5PsQX4FGn+xRrQgcBvScaYJEtC1HzRtxNKqw9shRueWn
	lxHx9rKFbMJJjtVQv3yW5/hsEdSN8TQQslD2LGAr7tZQHf2VZsDEqqmsRV0y04jh27dlA4a+62K
	5mK2NaoF+ixPAoLaihTh1TxCuSxeIjv5mWasoiQfAJkoDyuZYFSEJKnXjNw3MhOvY10vRrZO6hW
	Z4jeguYQtwvtWBbveAtUeuxPL9qhUrMlX4Di9noZdyrFVcj8MeLzhDeHfd0ODU/Q1dcPnHMEB2/
	bRG3jzV9AcytlgHiDxQ2WlrMZDBO4hnx7Nwnv4RVbB+p6HdrFYGT2xeU8d45ZUtZorozTs7csy8
	K4uCQ2j2Xfg==
X-Google-Smtp-Source: AGHT+IF/Rafya4P9pHjYpat/hvN9Upnikj/jYp5kVk5B+2ai+h8M3blhTlGwS1i4Zy/ud6gAgGTmWeFmpcYsbAk3k5M=
X-Received: by 2002:a05:7022:a86:b0:11b:9386:8273 with SMTP id
 a92af1059eb24-11f34c3056fmr13561896c88.48.1765958687598; Wed, 17 Dec 2025
 00:04:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217-imx952-v1-v1-0-a55a7fe2df0b@nxp.com>
In-Reply-To: <20251217-imx952-v1-v1-0-a55a7fe2df0b@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 17 Dec 2025 10:07:17 +0200
X-Gm-Features: AQt7F2o4eVZ3neNtlty04YadxDzQxMvRIIi3ajaFZXWNtpnoUCJ29nVTAzoi3nE
Message-ID: <CAEnQRZBTkXtiT1attxPpjXUwLz9bMVXP8_-ChBFDY=V9p3NR8A@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: Initial support for i.MX952
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 3:59=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> Initial device tree for i.MX952 and i.MX952-EVK.
> i.MX952 is designed for AI-powered sensor fusion and vision sensing
> applications, it features 4 Corte-A55, 1 Cortex-M33, 1 Cortex-M7 and
> NXP eIQ NPU and advanced graphics, video and advanced security with
> edgelock.
>
> Product info could be found at[1].
>
> Note:
> There is checkpatch error for the pin headers:
> ERROR: Macros with complex values should be enclosed in parentheses
> checkpatch.pl maintainer said "Just ignore the message instead", see[2]
>
> [1]https://www.nxp.com/products/i.MX-952
> [2]https://lore.kernel.org/all/fce65a7761fb0e880beb469e2521598f@perches.c=
om/

I think this information ^ should also be placed in the commit message
of one of the
patches that gets merged in the tree. E.g patch 2/3 or 3/3.

