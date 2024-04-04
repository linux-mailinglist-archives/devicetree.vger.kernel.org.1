Return-Path: <devicetree+bounces-56337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0618988BE
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 15:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C9DF1C21734
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 13:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB12B127B7E;
	Thu,  4 Apr 2024 13:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="STX2NdSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9DF86AEE
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 13:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712237084; cv=none; b=tTGNKGYFMHuFjQNccp/7zjaUcDSw5a9+N1KCzGswyvOirUHfBaBAGc7cbYJeuHtngvtiT2VLjawRnt8bzkojaRipStGob0RsY0xGKglorUx+n+Idw2lseY6suC9OJSk2LPI3yrKfVDafRSK14Jp+9/jABVjsh26tuaqmqsjoQe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712237084; c=relaxed/simple;
	bh=nBXwkA4A0krstFpyvfjsEVO0w0Xz+CnGhEwhMIz2nxA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Kge4+HHP/y5eiFoONPrk+XO7l1y5ri/PAlimI6gApAkQbAkay6xhUA8JJqCffb8jfAZPyfzUOTFkSZjp0nNctqSV3Mfwyk+mGado4sEMc01x7BNBy1OJKEzyy8MyYLmEr0EuFXtEk1Y6zKWUUlWN4jWuStn/zkTwhz1NCjoI0cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=STX2NdSO; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d23114b19dso11257231fa.3
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 06:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712237080; x=1712841880; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QPezEfD0t1esOw49T38S7/dvcH4ZrRMz2JA7Keo/jF4=;
        b=STX2NdSOVMuHrqgjp5g0ZlGQ3/lhfA1n/DToyUa6dsG1jme+LaJV+O+ZDeiU1YN0ST
         UlqSF+RKNCBNLs/P7taD2sF1Wp/peVWN3MnryMvCCae5gPD5XmBLfDZCAWX8xEUX32iX
         QGQgA+veb2nXHXHAqxi6rA734/xn+TouYaU7uwAo1gF7nOaKboymvviE+YJ4s3GVN1tZ
         q4XHZM+1HHEMF5MriJOKsiBCHqS+HblnZcB23DlFxUajGItk3Rlu398kxgXNTLeFOWr4
         livV6E/0xQZO/lwC2K1dfZUZqY3kYTH3iWknanPYamF76AzNzuovVSyTo/+WPSUFwgzi
         yBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712237080; x=1712841880;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QPezEfD0t1esOw49T38S7/dvcH4ZrRMz2JA7Keo/jF4=;
        b=l0ukeb1zOwTuoLSnF2FMkz71N9klbFj0jPmNbaaCCHV7rxB8YTVN4o1yUVnu7WzyXk
         aO1Z3d+DhlpHRbW586FXS6ko7o582w25skbwSYjDh6TljZlzVqK8cOTO/Xiksn+gpWcQ
         ubK4spx/jg8LNKi32+MuPtmxdEv9dUuPRE+egBCFw6YdyhAMDGoM2oI2jf/Csb5twZsr
         UhlztTxjlDR/8BeCJLv7spFddM371I0xn5XGvjD7m5ed7fYw88rn3Qg/3UxbH451P0H9
         zwBnnWcwKZJh0GqvP2And0IMKlV2LhlhjYTaoUW8BLKqMLz6Y7XQkc8g/EUwEZWaevkt
         uT5w==
X-Forwarded-Encrypted: i=1; AJvYcCUa3a8L/DFQZ/qo6vnmQv5Tb/hiX9YOzlH9lTzqi9bO6RwvkpQj8ilU79U4gv6LW+d1OurFwDoHh/Beyz4uJvtAgV7NzUahplFCMA==
X-Gm-Message-State: AOJu0Yy7eC8L0RIUPD7T7HvMaT1OcQHLgy60o26GeA5oIWI7pgM5ce4K
	XkTWLZugNZOv4BBU0AgDyAYuPIXN5HRjPTA7Pv120mAZn9eLBW7IwcrhtQK2HlA=
X-Google-Smtp-Source: AGHT+IGxgH9A5s0WiNgOB7bXFCAvV00A/PQ0OT0BzurZEBZ4YAccdY+QiP2+2qjmMUfFLq93x9ZqAg==
X-Received: by 2002:a2e:7c0a:0:b0:2d8:274a:db16 with SMTP id x10-20020a2e7c0a000000b002d8274adb16mr2125485ljc.17.1712237079816;
        Thu, 04 Apr 2024 06:24:39 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id v3-20020a5d59c3000000b00341cc9c1871sm20435575wry.0.2024.04.04.06.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 06:24:39 -0700 (PDT)
Message-ID: <61f427ab3793def23d80d94457ff1568cae5ee11.camel@linaro.org>
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Thu, 04 Apr 2024 14:24:37 +0100
In-Reply-To: <20240404122559.898930-9-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-9-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Pete,

Thanks for this!

I haven't reviewed this, but one immediate comment...

On Thu, 2024-04-04 at 13:25 +0100, Peter Griffin wrote:
> [...]
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index d065e343a85d..b9f84c7d5c22 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -22,6 +22,7 @@
> =C2=A0#define CLKS_NR_MISC	(CLK_GOUT_MISC_XIU_D_MISC_ACLK + 1)
> =C2=A0#define CLKS_NR_PERIC0	(CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK + 1)
> =C2=A0#define CLKS_NR_PERIC1	(CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK + 1)
> +#define CLKS_NR_HSI2	(CLK_GOUT_HSI2_XIU_P_HSI2_ACLK + 1)

Can you please keep the #defines alphabetical (hsi before misc).

> =C2=A0
> =C2=A0/* ---- CMU_TOP ---------------------------------------------------=
---------- */
> =C2=A0
> @@ -3409,6 +3410,560 @@ static const struct samsung_cmu_info peric1_cmu_i=
nfo __initconst =3D {
> =C2=A0	.clk_name		=3D "bus",
> =C2=A0};
> =C2=A0
> +/* ---- CMU_HSI2 -------------------------------------------------------=
--- */

and this code block should be earlier in the file

> [..]
=C2=A0
> =C2=A0static int __init gs101_cmu_probe(struct platform_device *pdev)
> @@ -3432,6 +3987,9 @@ static const struct of_device_id gs101_cmu_of_match=
[] =3D {
> =C2=A0	}, {
> =C2=A0		.compatible =3D "google,gs101-cmu-peric1",
> =C2=A0		.data =3D &peric1_cmu_info,
> +	}, {
> +		.compatible =3D "google,gs101-cmu-hsi2",
> +		.data =3D &hsi2_cmu_info,
> =C2=A0	}, {

and this block should move up

> =C2=A0	},
> =C2=A0};
> diff --git a/include/dt-bindings/clock/google,gs101.h b/include/dt-bindin=
gs/clock/google,gs101.h
> index 3dac3577788a..ac239ce6821b 100644
> --- a/include/dt-bindings/clock/google,gs101.h
> +++ b/include/dt-bindings/clock/google,gs101.h
> @@ -518,4 +518,67 @@
> =C2=A0#define CLK_GOUT_PERIC1_CLK_PERIC1_USI9_USI_CLK		45
> =C2=A0#define CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK		46
> =C2=A0
> +/* CMU_HSI2 */

and all these defines, too.



Cheers,
Andre'


