Return-Path: <devicetree+bounces-187833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 540D6AE16B5
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:51:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF6B116C63B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1C82777E9;
	Fri, 20 Jun 2025 08:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="eElRhdTF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB72254AE6
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750409476; cv=none; b=K306ik0NYZxr3YLvcEFIgV5Tt78Y0Bu2+gQrx1Six9pZAi8d9ZJU6K74AWNSq+y2kSgA9NCkhL0K7xb6mxV9KwnztHtT+KuVD3e+uBBfRopqSkmNziqbXw03Qn73BqCrKmwh3GCSsjsi6oAkpc539EsUtWeO+km/+TECMcwg+jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750409476; c=relaxed/simple;
	bh=41+NV6wm7M4BUwGUu5BfX6Y/1mglDykUJq2/D+L+bV0=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=muOWgVMoTKDeMCEZWp13sIigNzhzluCQy+fofFu0Hbw9jQ7FarJxOp2HLOOycF4S5wbmtQoRM+n6yYKD2baeQP1dc6htpX7pg6Jq/WIODnZ5VcdcApdf2mhg3jwj9bi6zbJDSCg7ORseWuW+3GIgye95DOnV4ncJC6m9LRbKl1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=eElRhdTF; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-6071ac9dc3eso2676697a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750409472; x=1751014272; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tQs46cNDxNcEM2859ny72mW8pcAVQ7BIEu+RAnGt+Uk=;
        b=eElRhdTFqyfet3zX6SJ1DemBoJg/QYIVepXir4utb5zKu3ZxnIQpSDe8Wb4f2IeYlv
         c6YoNmHPjPVqMTBfMpoup5C3PIFs+jAuldaiJy5wWPS/o9WohoWF5sUO/2aRQPS4lgky
         JxhAlYByweTDsfqvJ8OGmK+gNOvF48TvrdZVnH58kMiaVh4njA3jXSfF2AunQzjQ5jKq
         COLm+FZQSG4PMPsfsxeCNYl6mbsKwLSBCVrU5ms9jJKSiFYiMm1fBJbYLNhBA8yZeGXJ
         wIiMp7w4tAcggmF3uxO1ArOmUCHu8FHJSIyhKJnYGXi1XZ6cbfh9mWnlJlxunJ/kqXr8
         3KSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750409472; x=1751014272;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tQs46cNDxNcEM2859ny72mW8pcAVQ7BIEu+RAnGt+Uk=;
        b=ehElRX1uLOIrMul4XbhEPcmSbr4EzxzWdCyJadhSMbQ64pJD72W3bHk0YKywL7oaJQ
         hwSZlf5VWdThR0lNEOOWkMJoeVM1WHa+RLhACrvpgaP6iH2GmatdZSey9MCnYvSacB/D
         m53SYGwbrCmqKfby5DDSWko/QTgLZkCseifWjoA1xLMTvj+lmZ3TcAE7xRTtnNKPFO6D
         6+WJ4uKQ9hftr0oY1wN+4BUEmDuf5VM40Uind/lcXnP6jr3kI1HFlhrbnxxy9VudHBsG
         BsWGjm4dLkNjJ4n24jkqlqgg5n2QoH43yRsINIgS25kOeegPV6OEL9z3GUQqTcej20Dt
         0mvA==
X-Forwarded-Encrypted: i=1; AJvYcCXCXjRj5Fp1CJJiGgcvuKapG+5Dewfk92g5///bYklm0yOairKS3HHJD7mvyIMGBsmJqdt0o6pdH4lm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4X3GwX10tEqYcjPqOMjfZ5ztSQdcioLSXSavwOvsUU4XcVGcJ
	15wyCLRTTc+A+kwYG0QhVIUIimYMeOI2acZZ9CgfQJ3TOBts96vMFRCUC5WAyPCuRo46vAlaa3O
	bR/PH
X-Gm-Gg: ASbGncvFQIbWxGH0o181DMaG1gKIbSNWg6585UTtNWjxNj/sqoV/R31UpKjiHkut1+0
	ZgxlRgsLH6M0Ub2t0it2kqxQ9hbpSFpeGht+HFpXVLrB5cYbD9iKSJAeOxRi4waDoZdfozYR4b0
	iceWgS7O52nJOEgjei0OQ3q2W02mCEcLyFgYy0bXqTeIk0qT+Dkx0AwtN652HMaHfGsy4qgY6BT
	cZ2XToWCIrKQ1qI1f98kVeiS37MZNT6bSVuGcuoUl68AvtViqNvfJUpKz1JsRTHF3IZck8FagI1
	DwYXIcNiAmBicDitFAtYHTDyIIHwagJEEqp+3cTJ5GJvqzmdr0rLSzOeqWvEwgvi4NNCWyQlFgL
	NsiXEaSoCR05EUErXBO8b+jJw0RFkegk=
X-Google-Smtp-Source: AGHT+IEmFiflCY72gns8BJi7+wHzY3UkumCt6vc+CYitRi/cG7BsMF02qzVY1w31/s9Tg+2mrG6kaA==
X-Received: by 2002:a17:907:f1c2:b0:ae0:635c:a400 with SMTP id a640c23a62f3a-ae0635cad5cmr13076866b.51.1750409471648;
        Fri, 20 Jun 2025 01:51:11 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541bc9a0sm128495266b.146.2025.06.20.01.51.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 01:51:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Jun 2025 10:51:10 +0200
Message-Id: <DAR8DDUQ8HM7.3IKL9TCT7SJM3@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Casey Connolly" <casey.connolly@linaro.org>, "Sebastian Reichel"
 <sre@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Kees Cook" <kees@kernel.org>, "Gustavo A. R.
 Silva" <gustavoars@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Sebastian
 Reichel" <sebastian.reichel@collabora.com>,
 <linux-hardening@vger.kernel.org>
Subject: Re: [PATCH 04/11] power: supply: pmi8998_charger: rename to
 qcom_smbx
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-4-ac5dec51b6e1@linaro.org>
In-Reply-To: <20250619-smb2-smb5-support-v1-4-ac5dec51b6e1@linaro.org>

On Thu Jun 19, 2025 at 4:55 PM CEST, Casey Connolly wrote:
> Prepare to add smb5 support by making variables and the file name more
> generic. Also take the opportunity to remove the "_charger" suffix since
> smb2 always refers to a charger.
>
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  drivers/power/supply/Makefile                      |   2 +-
>  .../supply/{qcom_pmi8998_charger.c =3D> qcom_smbx.c} | 148 ++++++++++---=
--------
>  2 files changed, 75 insertions(+), 75 deletions(-)
>
> diff --git a/drivers/power/supply/Makefile b/drivers/power/supply/Makefil=
e
> index 4f5f8e3507f80da02812f0d08c2d81ddff0a272f..f943c9150b326d41ff241f826=
10f70298635eb08 100644
> --- a/drivers/power/supply/Makefile
> +++ b/drivers/power/supply/Makefile
> @@ -119,6 +119,6 @@ obj-$(CONFIG_RN5T618_POWER)	+=3D rn5t618_power.o
>  obj-$(CONFIG_BATTERY_ACER_A500)	+=3D acer_a500_battery.o
>  obj-$(CONFIG_BATTERY_SURFACE)	+=3D surface_battery.o
>  obj-$(CONFIG_CHARGER_SURFACE)	+=3D surface_charger.o
>  obj-$(CONFIG_BATTERY_UG3105)	+=3D ug3105_battery.o
> -obj-$(CONFIG_CHARGER_QCOM_SMB2)	+=3D qcom_pmi8998_charger.o
> +obj-$(CONFIG_CHARGER_QCOM_SMB2)	+=3D qcom_smbx.o

While you may want to keep the CONFIG_ name the same, the description
should be updated, at least in the SMB5 commit.

  =E2=94=82 Say Y here to enable the Qualcomm PMIC Charger driver. This
  =E2=94=82 adds support for the SMB2 switch mode battery charger found
  =E2=94=82 in PMI8998 and related PMICs.

Regards
Luca

