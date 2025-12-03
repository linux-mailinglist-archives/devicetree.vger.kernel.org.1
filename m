Return-Path: <devicetree+bounces-243952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8F9C9E9F3
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 11:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1F64F349922
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 10:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE892E6CC7;
	Wed,  3 Dec 2025 10:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lu+/qV1K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MLz9MksL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1112D9EE3
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 10:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764756061; cv=none; b=QBR6vaGz9t/mGsmszbVVx6Msfe6HSRw7l8q3dl6FZgMv1pBPyNLV3tLQXrITClZ5n825BzPRX3Oz7qfLtq2waJtGNuIJDd4VZqIzi8vNnlP9tnmRnGPvdYei49zybLhOO/WwaVTGNhogkYUVXgKF41K4dzO+M+g0ISqvySp5Ln4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764756061; c=relaxed/simple;
	bh=cPfa/gPVnjQwhwX1zjDzSsjrR0ofZWs3Z13WOsxGQVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ci3lW+h/XHNfbP/rf3SMa1zY1O1HMn+2WGB/nnkknGiDafC1ZhFswMqd7sQWEb83qWNJm5O0Besk/PXbOUIURYXnxF8upJW7hYjtLa10LybMFqw1TxJyO+EMsvmMQbaib3IOUWi//n0DIzF0hz3a5QXT9wdXselwVV9VPKEScRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lu+/qV1K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MLz9MksL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B34h1CY385386
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 10:00:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9vb6nLHl9jv/CKWdouRDWsbD1SoT2Kye3kJmluOu4bA=; b=Lu+/qV1KWrQ/wH7W
	XuRiY+K6/OAK2LcYQ2nt63+Le4SJxBULFXSwDYMgbC2+DzT86TKci3BeA4wRfw8U
	g/6lrtaTkXR3ma2rGFrsXeCrBSFi+m8bKfLG8ajy7prDcQQYjk3t2apyK4dmZEuO
	wddvrOPgHOrrf09qJtsUeAEvX6YLKPVwn5LTCm74Y2aHEMsyuRpVejXeSG1dlah4
	6yDn9A5xMkVzXXi1sggG8FsEeDt4/fi90VRY+xmQI9nGVRmij0S9HtMuGAlhVECE
	im9EK8gJ6ledKuGlMNe+fiMhlatKYIfF3di3wNWrvWJ6IINU5SVQOf9YSd/FtNj3
	KkKGeg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at5db2j47-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 10:00:56 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-880501dcc67so206618546d6.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 02:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764756056; x=1765360856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vb6nLHl9jv/CKWdouRDWsbD1SoT2Kye3kJmluOu4bA=;
        b=MLz9MksLvXCohLlDsjA9LOtL/i4+DbgQDqKvDK1NsuRo5z/3utK7XrFc6G0L/INGAk
         UsuHwbwPerYijuYTt0GC12m64b2Cw/YpJNjRg1Ir/wL29uYn92Dmbhp3L30tIqF4Y9RK
         Bt7LXylFPEWvYqg9UKgbpOWvOmmhKo7JVN0VDpEMLqPGo8sFVpvsaL2f744sTbN44WuT
         Sc/ImBQMx2u+q75vkQroZafb24tCJhriNHAxAFTW/0x72imbiguhi0Rltwd/uU6BLZ7r
         6tj+BgSbFlANLRdYSzsaeY3hAqA62k1DvCmQQJvPGADH3YrxEetieetkNbr8hUsQE0h9
         ajsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764756056; x=1765360856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9vb6nLHl9jv/CKWdouRDWsbD1SoT2Kye3kJmluOu4bA=;
        b=kt4JLQcbBigj/kyCNXeu4J3ysvIMhae4aXjUF9NEIEPkw3QLQ9bqML5/rNOo9xXIhb
         5YGHpokvFO3VIPXDCCX+GZglSbFQZwcpfoIjOpHlW8BnFYHEjG/kLh1MVbtnzGvjxlU6
         szyh9Ro8odsHTTigjguozDG7BFAOHABGpv/lv1hL6gRIPvRrM2mvKIPvHZheByuUfj8G
         huNObJ2CcP3fCyr2ISS8WIZ2TQJDK7NaXqGWup3BtO3JYt5nbnpboB6zE6A8DihyQd2l
         EmqitrboMieE2d9jersMM33Pw9woURnVhReRhnUf6HjjtbxB2URp3oloYc2DOjQYgF3r
         ilbw==
X-Forwarded-Encrypted: i=1; AJvYcCVPKU7/EBnLRbFvAkHfWyxTgM66QW7Mu4DEx6nLdurInUufx0bUc95qpDu6FbO/mRZDQlDO+SJUsEDi@vger.kernel.org
X-Gm-Message-State: AOJu0YxeqyXpLIvaUZXL0YFCLNCmFclL0i5SqjMYOwOMuTiHYSWXHxYt
	A2OwZZE0N8oCRz8v8ITDuu7d1V3tCwDqLSiTcbUDbT9AaHHkejV2qy8TQDRr+uxnORWVnDv07BX
	E2LwUucWlbe7XPbplxkaiB4GJQvCVEypyrdu328EqLh81vPwY1k+9Hn7E6CydX/xBPh5gmQcSdg
	7NVWkex0nexUAa3aW0wRSWKC/OFXeomYFOg3pBCws=
X-Gm-Gg: ASbGncuFNXffV19AWdnhx9jJdRh1ztYopkKnUMcVWa1kkCDxISfwSOWDQQy+JISbDum
	911gv433vBx/VLV2LQWmod7DlngkzXCFod4VjI3j6QF21SRJfsIMAaiSnXOtSq++3vNuDN8fLrF
	glt4TmRLz14V56hmR9rCBdpbYPaLuGdGXKxHTOE24Qp0KTzY30EMpyq0xmY6Tx7MEHYrPBaA7V8
	1N5tCbgTHc8LkmXqPF4fc+AQ10=
X-Received: by 2002:a05:6214:5687:b0:87b:f369:35d2 with SMTP id 6a1803df08f44-88819589005mr18384356d6.39.1764756056219;
        Wed, 03 Dec 2025 02:00:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzFiJWchbuRF50Ht6AeNZ2DSTLZHKXmvxugZAtNJOcgrvKIBWrysaB495LbANaZu1vZzJoQAqh+PmnDJJON5M=
X-Received: by 2002:a05:6214:5687:b0:87b:f369:35d2 with SMTP id
 6a1803df08f44-88819589005mr18383546d6.39.1764756055633; Wed, 03 Dec 2025
 02:00:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
 <20251114133822.434171-2-loic.poulain@oss.qualcomm.com> <aRtbwK0Afo50Lh0B@kekkonen.localdomain>
In-Reply-To: <aRtbwK0Afo50Lh0B@kekkonen.localdomain>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 11:00:43 +0100
X-Gm-Features: AWmQ_bkHfo8sietxEdBct9crfYv3t0yfWoNgbwZ482uTbUp-BloVJD00f4sEG5k
Message-ID: <CAFEp6-1zoU2cfVU06MoeOtAwMYN+XAxCwc0ebwaQyo78VNBf2Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: i2c: ov9282: Fix reset-gpio logical state
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: suo17npjfhM5CG-JwDFRJQEaKnNBVZDB
X-Proofpoint-GUID: suo17npjfhM5CG-JwDFRJQEaKnNBVZDB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA3OSBTYWx0ZWRfX4iG1nvPZ0ZcH
 Y32RZAXpe99HfEIPotsGbPF3uMpnaLHyddzX6PZv1sEA8qXrvJCWxgjN2p2nNldTdUUDP8eAxPJ
 74Cg+xtm4rtgQ1sParoBK7dgSSNAW1nXzBGhZ82b8Le1V0d2S4Tc+adlzNWVvAxpaQvMfGPFNbP
 Tp+MXLWMk0TIHfKhAPCuPu6BcqZuSJU1KTukFUBKbEdejmrFRXzrEUTG7TXvN1Uh43ZZ3vW8RX3
 QReT8noICmmShbvRer8t/rMcks7bwy0lDUr0u3cxAr4lNPi9g+lnTb2Z0fEkGWTkau92LPmWotw
 5EH3f+yGUnAsHQMX6/yEdzQN5fIs/dr6hwJ2XxMPHjyOFzFoWRgdqpaJfgvHXCSEvpbmL8Af1/w
 ORK7OdTqdGTj53UTEpoKjLH/WMlSpg==
X-Authority-Analysis: v=2.4 cv=VoMuwu2n c=1 sm=1 tr=0 ts=69300a59 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8
 a=sUzC4GSqm1tOj9JvITsA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030079

Hi Laurent,

On Mon, Nov 17, 2025 at 6:30=E2=80=AFPM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Loic,
>
> On Fri, Nov 14, 2025 at 02:38:19PM +0100, Loic Poulain wrote:
> > Ensure reset state is low in the power-on state and high in the
> > power-off state (assert reset). Note that the polarity is abstracted
> > by the GPIO subsystem, so the logic level reflects the intended reset
> > behavior.
>
> That's an interesting approach to fix DTS gone systematically wrong.
>
> I was thinking of the drivers that have this issue, too, but I would have
> introduced a new GPIO under a different name (many sensors use "enable",
> too). Any thoughts?
>
> Cc Laurent.

Do you have any feedback on this change?

>
> >
> > To maintain backward compatibility with DTS files that use an incorrect
> > flag, we implement a mechanism similar to:
> >   commit 738455858a2d ("ASoC: codecs: wsa881x: Use proper shutdown GPIO=
 polarity")
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  drivers/media/i2c/ov9282.c | 26 ++++++++++++++++++++++----
> >  1 file changed, 22 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/media/i2c/ov9282.c b/drivers/media/i2c/ov9282.c
> > index a9f6176e9729..e79b326cdd94 100644
> > --- a/drivers/media/i2c/ov9282.c
> > +++ b/drivers/media/i2c/ov9282.c
> > @@ -160,6 +160,7 @@ struct ov9282_mode {
> >   * @sd: V4L2 sub-device
> >   * @pad: Media pad. Only one pad supported
> >   * @reset_gpio: Sensor reset gpio
> > + * @reset_gpio_val: Logical value to reset the sensor
> >   * @inclk: Sensor input clock
> >   * @supplies: Regulator supplies for the sensor
> >   * @ctrl_handler: V4L2 control handler
> > @@ -180,6 +181,7 @@ struct ov9282 {
> >       struct v4l2_subdev sd;
> >       struct media_pad pad;
> >       struct gpio_desc *reset_gpio;
> > +     unsigned int reset_gpio_val;
> >       struct clk *inclk;
> >       struct regulator_bulk_data supplies[OV9282_NUM_SUPPLIES];
> >       struct v4l2_ctrl_handler ctrl_handler;
> > @@ -1127,13 +1129,29 @@ static int ov9282_parse_hw_config(struct ov9282=
 *ov9282)
> >
> >       /* Request optional reset pin */
> >       ov9282->reset_gpio =3D devm_gpiod_get_optional(ov9282->dev, "rese=
t",
> > -                                                  GPIOD_OUT_LOW);
> > +                                                  GPIOD_OUT_HIGH);
> >       if (IS_ERR(ov9282->reset_gpio)) {
> >               dev_err(ov9282->dev, "failed to get reset gpio %ld",
> >                       PTR_ERR(ov9282->reset_gpio));
> >               return PTR_ERR(ov9282->reset_gpio);
> >       }
> >
> > +     /*
> > +      * Backwards compatibility work-around.
> > +      *
> > +      * The reset GPIO is active-low, but the driver has always used t=
he
> > +      * gpiod API with inverted logic. As a result, the DTS had to
> > +      * incorrectly mark the GPIO as active-high to compensate for thi=
s
> > +      * behavior. Changing the flag in the driver now would break back=
ward
> > +      * compatibility with existing DTS configurations. To address thi=
s,
> > +      * we add a simple value inversion so the driver works with both =
old
> > +      * and new DTS.
> > +      */
> > +     ov9282->reset_gpio_val =3D gpiod_is_active_low(ov9282->reset_gpio=
);
> > +     if (!ov9282->reset_gpio_val)
> > +             dev_warn(ov9282->dev, "Using ACTIVE_HIGH for reset GPIO. =
Your DTB might be outdated\n");
> > +     gpiod_set_value_cansleep(ov9282->reset_gpio, ov9282->reset_gpio_v=
al);
> > +
> >       /* Get sensor input clock */
> >       ov9282->inclk =3D devm_v4l2_sensor_clk_get(ov9282->dev, NULL);
> >       if (IS_ERR(ov9282->inclk))
> > @@ -1237,7 +1255,7 @@ static int ov9282_power_on(struct device *dev)
> >
> >       usleep_range(400, 600);
> >
> > -     gpiod_set_value_cansleep(ov9282->reset_gpio, 1);
> > +     gpiod_set_value_cansleep(ov9282->reset_gpio, !ov9282->reset_gpio_=
val);
> >
> >       ret =3D clk_prepare_enable(ov9282->inclk);
> >       if (ret) {
> > @@ -1260,7 +1278,7 @@ static int ov9282_power_on(struct device *dev)
> >  error_clk:
> >       clk_disable_unprepare(ov9282->inclk);
> >  error_reset:
> > -     gpiod_set_value_cansleep(ov9282->reset_gpio, 0);
> > +     gpiod_set_value_cansleep(ov9282->reset_gpio, ov9282->reset_gpio_v=
al);
> >
> >       regulator_bulk_disable(OV9282_NUM_SUPPLIES, ov9282->supplies);
> >
> > @@ -1278,7 +1296,7 @@ static int ov9282_power_off(struct device *dev)
> >       struct v4l2_subdev *sd =3D dev_get_drvdata(dev);
> >       struct ov9282 *ov9282 =3D to_ov9282(sd);
> >
> > -     gpiod_set_value_cansleep(ov9282->reset_gpio, 0);
> > +     gpiod_set_value_cansleep(ov9282->reset_gpio, ov9282->reset_gpio_v=
al);
> >
> >       clk_disable_unprepare(ov9282->inclk);
> >
>
> --
> Kind regards,
>
> Sakari Ailus

