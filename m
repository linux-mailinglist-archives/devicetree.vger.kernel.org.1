Return-Path: <devicetree+bounces-255764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 792B6D282FF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B9F7308815B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B1731B824;
	Thu, 15 Jan 2026 19:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F7Ri9mLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AFA31A55B
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768505994; cv=none; b=WmtB5JGoUkp2cujJEhgvYJxi5k4aDJlVOM7LIQWwgtmlbQbFw/JST0tLiQP5eyVzP+jgF+3Va34bHEExK3/S/f+0Z3plp3zIAajm2Fbqorv9o+Q1lFg6CzdBF2RX3cTin2W8CwuigGxd3WVWFy6croob+chGZXSiWkQKREuwkos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768505994; c=relaxed/simple;
	bh=Ya60sxVNci+i0HspzaGy9+9pseui+LfDX2t/Z7ExGnE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V8NkaZv30wb8l15kWk/CI7bnHIwkYzTk7/4Hj5w3jk52Va5ubqws7fyBQ4YISsAP1xls5SxmeU755edGTaWrWzYMd7GaHv3mKDW4weGbaDX6Ql8EIhM4UQUXnYfLo75IMdveSg+E6HmdwQC+ES++/bodXB7Ydyqku40RQzobEoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F7Ri9mLg; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7cfd9b4e3f8so305582a34.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768505991; x=1769110791; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+Y9JPHMLgTUXc+ecELZBiMS5bikr+UFRMXA2sNtZ1A=;
        b=F7Ri9mLg+QqVx6USU6GkTjQei7K2QlDNrjD4flxwUEwelQ4aplVLSB60UEsdCft+Mj
         XyFDlc4eJc1nyAM+9nRwFwLgOQ9M7o5w6AWaO035hKy/vVa+FaZbR9Hlf0+6Sh3UM2Ip
         pC4jN2AYjtHfrGC7ZAgglEseihHmQrXN6maeO47QQZwS2/1ZGV+VTaMPwNWU3C1UZSxr
         Cj6YtFpqRocMwwQsgrTp3nElsePHhOpgC8eaGZPq2hhcLHVB77Nn0zf8Y2dcrd2xx5+/
         83M5n5HtdyT3DevEDPifzo6vnaB3oBjVRNWb3Xfz3vMffgCq0SCLSSPJ50U0jWCwbTt+
         vglw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768505991; x=1769110791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u+Y9JPHMLgTUXc+ecELZBiMS5bikr+UFRMXA2sNtZ1A=;
        b=suiNsctqZ8sPlUO4aaO625Oa5gFMasSo7EIOCLmcaRW5HCUt/Q8zQ0INn3DCEPtvtp
         6sb1WbDyS8yYTFt355kYxEYDM0GDiQkBg8PyDU2XqLcyBroTKFCWx9yQEf7wyAGz6Ykg
         mxxiTk/MJk9Z7ir7V48+C0m6Ag6iSOMsreMri4REfQPWtx60aVVO8MvHahutiqgx/m00
         R+zR2O1lShAON3UFqwF5ARa/5hTDY3j3sPTK3b6GHmmw4mp1he7g9QdyhLEDKktrlAyJ
         h3ZdJjIkzceNbsZLy8BdcMgpnevOZvoxTUbt3WXY+vJhstBC/Mi4n8ee8fSH6at20Qt7
         HjOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyuYcv5y0Hy6FG0GqcFfYQnGe5vQfcXaE5WM8cXZ/Yxw+aCzUNMTkXLvjb+doKEMbE0Rxze46SY+Pm@vger.kernel.org
X-Gm-Message-State: AOJu0YzRPJdhzp7y+7IYkroUSuRPDgRKrVZknAcqygEAjwmySEHo3+QJ
	xBJAPil0rh1dlqExg+jC+hBVfoGYzLilOXQsVI++Qrgd1C2L4VfsUYknLlmyJGBuR+O6brzk+RM
	KDXU5H72cV0+oigDquKNLJ1RFlci/ak4=
X-Gm-Gg: AY/fxX5kepYIabujHtHBXYXiTTBONrHu39d165E0usNMGM0WNvMKqdR48DPIxDveZgx
	UWAzg6Lmhh1jXtX/gLD1m1VzuDv9zUwpiv5RB7piR3dNva4DfSRxakOJmCODZrMyuFlxx9uFkXX
	DyInfOCMLNSrqWo09aSIEfcWaxkKj4ewha67LY5zy1ObCEYewxX6SQncUrdijxfk/UMI/Xc+5Lz
	SCZaNJpbPQmJgeJSautKhSUU/EPByNmyLbdIceIRS/sZJz2OAzBMQ1ij5g53HOuX5WQtaDBwg4c
	NoSLO79ViNFoJWj3jFdOCcnU0Q==
X-Received: by 2002:a05:6830:6f87:b0:7cf:d119:9953 with SMTP id
 46e09a7af769-7cfded88a2dmr339380a34.16.1768505986076; Thu, 15 Jan 2026
 11:39:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com> <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
 <6934ae0d-16c5-436f-97f6-c11d304ca51d@rock-chips.com> <CAGJh8eDXT43_PfmUbShL4Hysfkd21R=sCerRNe_AGQANbwvSPA@mail.gmail.com>
 <b49b223e-e728-4ce9-b972-242ed9b5fa4a@rock-chips.com>
In-Reply-To: <b49b223e-e728-4ce9-b972-242ed9b5fa4a@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Thu, 15 Jan 2026 20:39:34 +0100
X-Gm-Features: AZwV_QiTFtSgqSyC27FsHbFXergz67zSshuEZxUAYX8VeT_CedW_QILqNjpuJNs
Message-ID: <CAGJh8eB0i5UYN=05SfNGQc4dMA5_ffktErY8GjX85JWjDna3Dw@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	heiko@sntech.de, ulf.hansson@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Shawn,

On Thu, Jan 15, 2026 at 1:25=E2=80=AFAM Shawn Lin <shawn.lin@rock-chips.com=
> wrote:
> >
> > Based on this, it makes me believe that power to the sd card is complet=
ely cut
> > and when it wakes up and knows how to continue, it still must go throug=
h the
> > retraining phase.
> >
>
> This is another mistake for your NanoPi R76S board. Before sent this
> patch, I already checked the dts and saw sdmmc uses vmmc-supply =3D
> <&vcc_3v3_s3> which is marked as regulator-always-on, but it's *NOT*
> actually per the shcematic[1][2]. So need another fix for your board
> to make it actually gpio-based power controller instaed of function
> IO based, as when powering off the power domain, the power control bit
> will not be able to maintain.
>
> [1]
> https://wiki.friendlyelec.com/wiki/images/6/60/NanoPi_R76S_LP4X_2411_SCH.=
pdf
> [2]
> https://wiki.friendlyelec.com/wiki/images/9/90/NanoPi_R76S_LP5_2411_SCH.p=
df
>
> Except for the patches you have tested, please append the blow patch as
> well to test.

Bingo. These DTS additions fixed the power stability for the SD card.
I have verified that the card now wakes up instantly with no errors and
no retraining delay.

I tested this both with and without your driver patch (the save/restore
phases logic).

This confirms the issue was indeed the power rail being cut during
idle periods. Great find on the schematic!

> --- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
> @@ -192,6 +192,18 @@
>                  regulator-name =3D "vcc_3v3_s0";
>                  vin-supply =3D <&vcc_3v3_s3>;
>          };
> +
> +       vcc3v3_sd: regulator-vcc-3v3-sd {
> +               compatible =3D "regulator-fixed";
> +               enable-active-high;
> +               gpios =3D <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&sdmmc_pwren>;
> +               regulator-name =3D "vcc3v3_sd";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               vin-supply =3D <&vcc_3v3_s0>;
> +       };
>   };
>
>   &combphy0_ps {
> @@ -726,6 +738,12 @@
>                  };
>          };
>
> +       sdmmc {
> +               sdmmc_pwren: sdmmc-pwren {
> +                       rockchip,pins =3D <0 RK_PB6 RK_FUNC_GPIO
> &pcfg_pull_none>;
> +               };
> +       };
> +
>          usb {
>                  usb_otg0_pwren_h: usb-otg0-pwren-h {
>                          rockchip,pins =3D <0 RK_PD1 RK_FUNC_GPIO
> &pcfg_pull_none>;
> @@ -751,11 +769,14 @@
>          bus-width =3D <4>;
>          cap-mmc-highspeed;
>          cap-sd-highspeed;
> +       cd-gpios =3D <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>          disable-wp;
>          no-mmc;
>          no-sdio;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4>;
>          sd-uhs-sdr104;
> -       vmmc-supply =3D <&vcc_3v3_s3>;
> +       vmmc-supply =3D <&vcc3v3_sd>;
>          vqmmc-supply =3D <&vccio_sd_s0>;
>          status =3D "okay";
>
>
>
>
> >> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> >> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> >> @@ -36,6 +36,8 @@ struct dw_mci_rockchip_priv_data {
> >>           int                     default_sample_phase;
> >>           int                     num_phases;
> >>           bool                    internal_phase;
> >> +       int                     sample_phase;
> >> +       int                     drv_phase;
> >>    };
> >>
> >>    /*
> >> @@ -573,9 +575,43 @@ static void dw_mci_rockchip_remove(struct
> >> platform_device *pdev)
> >>           dw_mci_pltfm_remove(pdev);
> >>    }
> >>
> >> +static int dw_mci_rockchip_runtime_suspend(struct device *dev)
> >> +{
> >> +       struct platform_device *pdev =3D to_platform_device(dev);
> >> +       struct dw_mci *host =3D platform_get_drvdata(pdev);
> >> +       struct dw_mci_rockchip_priv_data *priv =3D host->priv;
> >> +
> >> +       if (priv->internal_phase) {
> >> +               priv->sample_phase =3D rockchip_mmc_get_phase(host, tr=
ue);
> >> +               priv->drv_phase =3D rockchip_mmc_get_phase(host, false=
);
> >> +       }
> >> +
> >> +       return dw_mci_runtime_suspend(dev);
> >> +}
> >> +
> >> +static int dw_mci_rockchip_runtime_resume(struct device *dev)
> >> +{
> >> +       struct platform_device *pdev =3D to_platform_device(dev);
> >> +       struct dw_mci *host =3D platform_get_drvdata(pdev);
> >> +       struct dw_mci_rockchip_priv_data *priv =3D host->priv;
> >> +       int ret;
> >> +
> >> +       ret =3D dw_mci_runtime_resume(dev);
> >> +       if (ret)
> >> +               return ret;
> >> +
> >> +       if (priv->internal_phase) {
> >> +               rockchip_mmc_set_phase(host, true, priv->sample_phase)=
;
> >> +               rockchip_mmc_set_phase(host, false, priv->drv_phase);
> >> +               mci_writel(host, MISC_CON, MEM_CLK_AUTOGATE_ENABLE);
> >> +       }
> >> +
> >> +       return ret;
> >> +}
> >> +
> >>    static const struct dev_pm_ops dw_mci_rockchip_dev_pm_ops =3D {
> >>           SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> >> pm_runtime_force_resume)
> >> -       RUNTIME_PM_OPS(dw_mci_runtime_suspend, dw_mci_runtime_resume, =
NULL)
> >> +       RUNTIME_PM_OPS(dw_mci_rockchip_runtime_suspend,
> >> dw_mci_rockchip_runtime_resume, NULL)
> >>    };
> >>
> >>    static struct platform_driver dw_mci_rockchip_pltfm_driver =3D {
> >
>

