Return-Path: <devicetree+bounces-48614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2FA872CD0
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 03:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C38711F269B5
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 02:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87AD17E9;
	Wed,  6 Mar 2024 02:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="PJao+SeT"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic321-24.consmr.mail.ne1.yahoo.com (sonic321-24.consmr.mail.ne1.yahoo.com [66.163.185.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13800635
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 02:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=66.163.185.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709692783; cv=none; b=AA3WV3fZbSPwJhQ0ig9Sjgrzicm08jCKMVpR7Bo6uhD7/Hkeu9g9wVY6LKAW4wha90u1n+rua6d2wHGIyJFa84TkaDkv4DOlmK2ruo6fNF7gl+RdUkoQLXeDZIGT/uxRqdFh3hT5qULbwUcFyytZ9r3UiIG4Wpy+0EBAEVHwot4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709692783; c=relaxed/simple;
	bh=Cbh8V5vDmfd4wX5/3KNJSvjcGXLgujIBXarpXug2bf8=;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type:
	 References; b=sa2l+0xBe+D8lF5hzrqb5+3maIe1/glFDFf0abJn+Q4Johi6QWrXdPHlzK5GBNgbHrelVEe0K9gnwyky9mgdrZtuqkYUFz5uDMyHb9CqCDtComNnh3OqQYUreokOoA5XT7P6vXgTEM1Qxa2LTXQxe8FJpTAJzMaFysvQXA2W6ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=PJao+SeT; arc=none smtp.client-ip=66.163.185.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1709692781; bh=Cbh8V5vDmfd4wX5/3KNJSvjcGXLgujIBXarpXug2bf8=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=PJao+SeTlQiurkdB4cyYgEenI9Ttt/y3tlreFWYo7u/KuCq5D6maREGj37xuPM3ZLIK+Cz/CnJLoEUfaV/LWbakp3qfEkdsckDVgQtFB0bup3laNouXIV4c7pmIJ/C2ZdKF1joPG6ar4WRowgu1GeeNLwezPDHWT7m5DXVuwyEY2HUK0g0CEvSAfS+xTBheigvwZi4PTFAesD9FPQz0hwQONaVStiZa5KgyLCkRJBYnROyOvLbG0cR/fs5rr8dhfoBEAGlDs0OHm+FjGbeBmRdUgCuZQw7fNRAg1GkUPt0QDs4Iomh1HO8qA6grBV2UxSVLM/J1Jp2q8cO6RmdH50A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1709692781; bh=9Fi9bpHJrLXk2I361TKKDJz0lITdEGF8fHo6hGVUAgz=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=jKt4zVYw7kksMq/iL4MRXn6kG4Uaj61v7Em1wZG9eBLjo4UF4YQ1t6/dILXSyTnoMcd4Set8Jm/zhO3anju7injIsyMijy8tK6nYmuMAGRv3Q+XzlQOTIcbyt8ReOrtFutU0iV0a+3WROT7kZvY+j0U61srfA5pHs7n6dSAILzPZ+olMM3/CU+cPVsmBx3QToeV5GfVXY38BUFH2Xioin5nfDZr/o4//EJtibdF7JvNsWfjpz7ivaT3rH9j1D2vM7L+0PkmeGFD44ImklE33i9BnLRxqsySkHvgJ03RzkK2gItLK49z1oaWJ898UZbuTwl/zSwsGnuzm1XuVMNKEiw==
X-YMail-OSG: GzjfgUMVM1mwUf3VS_YiYXlpOQsKZr.LvlU8n_7V2cqd5jCIjNnIt2vk8Q4lwTM
 xGXaCPCELlVkmdbJgxElVBeTX4S8mzlya8K0vO04U_ViGNzA0JKHZpEqRK.txYkrZJaP6eCMVV6X
 tvVqR4jMhLKSCNzuAVZhG9wCV25mrjhuj3HKx6J3dtlp5vZYwWpCZZHYSQvhQCzpW8SSyuU2_irb
 FBMP8NXkbUnHpvds7cNfIWaHQ05mxj1a0xNxms3Jt3i4e4b19Aq1Q6eCWbfrEHgJeTwhhy1ZdHRe
 n1aC0XtIQjXFJ5RMyghyjlj69s744zfCaDNimA_m9H7lFdq8TOM4GJb.t8lNyTN82IEAf7NvtyYw
 a5z9a_26LQ24oiyZ7txXVh3eISFA6WOdqYNReDO3o_Lohjd0uPRG4f4Xx6AUJCwuYxyq_fWUy8FG
 sGmhLhUxn._3Baw0kShfsP1dx5aZkljwuxYXeusfU78RUlyNpu6iIPD7PgMQard1FeL4Cjq1XV4O
 ikTTJMIC3sFhfAEBYh_R_juh4hkI0ic3ubUMdNXqMU4dskGFcRC.6.k3g2A.49evp3rvIsKl_XPH
 1duzzVRM73OLvMdBIXhGGuoqLvgsZwAF9wUwStP3NxtljafRAb.OIiJFMPzKRfBe8nQhtUl3x0yX
 puOVCAs7HG0Dz3wfRlAAhjpIF4qK2r1VDzgSQm_0nY2VENAAyVKatuooxVgH9.JEFFVi9Et4yK5V
 LRZkJ1I4gvtl8jlxNvnXMQARC2x4F9eqG2fAWhI_dlZcjhz_T3EENeUoxdYDudXovPhtUdUxrGOR
 kXv5eXq7y8z_GN8FyPoKZd87TZPbtuW8Jh9ptN_OvFO6LDm37MxP62e2DKV8M5eidUhZRl.MmhE1
 QKRM8qgpIVyg0yKBuGJlZUzu74eOkRd9Nn9JQHPTmQaZ8DKvvtM2EPhuNuZGLS57y_XtntQgj_9s
 kmUvgdyIuMeNRVKqc1A9Ey4dw0rnPCf54KgS6bWKPON7tgeTpEsulALT4DUVnLtJ87pwBLa6jjKW
 79wU38CUbjljPzvQG6HpFShN.hozTHfjMeOkXo4IfaTBSvz30QdOIws9VoGsd_Wg6NqtQ2Xi.H4a
 zHZ8w9CyVCAwx7D7CRHidWeSETr2oE4SRk3cDy6y8Gj..BYSaxAJvx2DQoeB3UyQI.ogbtYDlL_h
 eE7tyA4UfoisbKNHsKx1mnvX8n6OLI0fcMdpNLyTH.ZPwJXVgyMbtDw8kEJ5e0P2.SjZ13xa20Rp
 JaB5gGV6dPVGk8_klG5Rg88L0Cf6mL2.3DB_CR0WwOCRbmGHGKjiwdvvOW1q9lYBVFjzZkFFAa5g
 FGKM0Efs.T9fG2WZPPKsunFTiG_4_iDekBADOjT3FUJXSGfLyOOqmaMLUDmy3ucdIzPIoP62hS2a
 1HrxiNrM4laXtf2HvWBB2zKUFaaB2Hogtr2uNI163TaoFanaNHT7VPFUkMce6y3bfstm6VjvWHg7
 cdH1qd8ANK480wLAhRwL7kTGBthu1miyXfk5JfCD6_S3.hZmK80R4nmsamcWB0cXEGwfAcRIEud9
 qqTGi7rNRPKtiqvXRvbf.TFL.kBVH.wet_mvdag638Bo0LYfwIkbkU.eIixeHb5lQqiE0Z9DuF8C
 5ydHakI209HlJhqRWnOalK61_YchzPrkszgQp4Tk0zHFshK7SAaJnI.3kZmPi7H02Jg.yVDvJqU.
 jUUTNeoKUTamG0U0uHOeWUhUgMx98raRoL4Z5JJp8rNtwt2inB8hkuVlYdyNwYNaUvRSqnCcqrj7
 4XFJf8vrbBh2YwUpQHX_myNuFVVa4OwVzNnz1KFRG8_czgh2OnPvNCvD2IH7Xuj6oyzyXb.3SKPy
 MSuppOD2x5EhIVObe5nh1f0SWjaaYyyYJlRGjCvwJjIrX4Wl6ai2JYmSeC6iHKVYctrxUbTF2kNn
 WC0oFH4t.ZbTJWnCzYFdAHP1yz7fUaAZVlH5is.1XSAUAvGKLxQDiqvpmEBp4D5Ih9y4zpGiKeBF
 AVO6.DAkhpg4PDyGdnhzihYaA3IBAI_JhkIeUvXdrp4Y1jV7My881JQOv2UMGD.gRDY9R9q1nIG0
 V4Ezm0nWj3nT8pGCLjca1bWHH68_xSBeUi3GbnwvMpj4VeR1Q6fx7N9LoYB9A6Zn6xxfppdHfmpy
 E5sAyND_XIdlRIzPMURqOB_uE33yTStC.DRvUhPrTgMEQiqeNNeatb_qdWEKf8vYw5jUW0ukDSU0
 Ipp8YyA--
X-Sonic-MF: <tagsense@yahoo.com>
X-Sonic-ID: 7434f3d9-0007-447b-a9ad-fd5cf066aa65
Received: from sonic.gate.mail.ne1.yahoo.com by sonic321.consmr.mail.ne1.yahoo.com with HTTP; Wed, 6 Mar 2024 02:39:41 +0000
Date: Wed, 6 Mar 2024 02:39:39 +0000 (UTC)
From: deva seetharam <tagsense@yahoo.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Message-ID: <948441436.767420.1709692779471@mail.yahoo.com>
Subject: device tree overlay file for an image
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <948441436.767420.1709692779471.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.22129 YMailNorrin

Greetings!!

I am working with an image sensor for which I have to create an overlay fil=
e and a driver. This image sensor is different from conventional cameras is=
 that it is on a separate board with its own power supplies and clock. So I=
 didn't need to any add details about the clock or power supply in the over=
lay file.
The aforementioned board (with the image sensor) is connected to a RPI 4B t=
hrough I2C (on bus 10 at address 0x36) and MIPI. BTW, I had to change the s=
ensor and vendor names before posting because I was asked to do so by the c=
lient.

I have attached the overlay file for your review. I was able to compile it =
(using dtc) and place the dtbo file in /boot/overlays directory.
When RPI boots, it is able to read the file and correctly loads the driver =
I have written. It even correctly runs the probe function.

However, when I run vcgencmd get_camera, it does not detect any cameras. I =
get the following response:
supported=3D1 detected=3D0, libcamera interfaces=3D1

what could be wrong? Please advise how to debug this. Thank you!

Please advise.






/dts-v1/;
/plugin/;


#include <dt-bindings/gpio/gpio.h>


/ {
=C2=A0 =C2=A0 compatible =3D "brcm,bcm2835";


=C2=A0 =C2=A0 fragment@0 {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0target =3D <&i2c0if>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__overlay__ {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sta=
tus =3D "okay";
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
=C2=A0=C2=A0=C2=A0=C2=A0};


=C2=A0=C2=A0=C2=A0=C2=A0clk_frag: fragment@1 {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0target =3D <&cam1_clk>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__overlay__ {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sta=
tus =3D "okay";
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0clo=
ck-frequency =3D <24000000>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
=C2=A0=C2=A0=C2=A0=C2=A0};


=C2=A0 =C2=A0 fragment@2 {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0target =3D <&i2c0mux>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__overlay__ {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sta=
tus =3D "okay";
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
=C2=A0=C2=A0=C2=A0=C2=A0};


=C2=A0 =C2=A0 fragment@3 {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 target-path =3D "/";
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __overlay__ {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clk24mhz: clk24mhz {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D "fix=
ed-clock";
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #clock-cells =3D <0=
>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clock-frequency =3D=
 <24000000>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
=C2=A0 =C2=A0 =C2=A0 =C2=A0 };
=C2=A0 =C2=A0 };


=C2=A0 =C2=A0 i2c_frag: fragment@100 {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 target =3D <&i2c_csi_dsi>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __overlay__ {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #address-cells =3D <1>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #size-cells =3D <0>;


=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ims123: ims123@36 {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D "ven=
dor,ims123";
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 reg =3D <0x36>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clocks =3D <&clk24m=
hz>;


=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clock-names =3D "xc=
lk";
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 status =3D "disable=
d";


=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rotation =3D <180>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 orientation =3D <2>=
;


=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 port {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cam_e=
ndpoint: endpoint {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clock-lanes =3D <0>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 data-lanes =3D <1 2>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clock-noncontinuous;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 link-frequencies =3D /bits/ 64 <60000000>;
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
=C2=A0 =C2=A0 =C2=A0 =C2=A0 };
=C2=A0 =C2=A0 };


=C2=A0=C2=A0=C2=A0=C2=A0csi_frag: fragment@101 {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0target =3D <&csi1>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0csi: __overlay__ {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sta=
tus =3D "okay";
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0brc=
m,media-controller;


=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0por=
t {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0csi_ep: endpoint {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0remote-endpoint =3D <&cam_endp=
oint>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0clock-lanes =3D <0>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0data-lanes =3D <1 2>;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0clock-noncontinuous;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0};
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
=C2=A0=C2=A0=C2=A0=C2=A0};


=C2=A0=C2=A0=C2=A0=C2=A0__overrides__ {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rotation =3D <&ims123>,"rot=
ation:0";
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0orientation =3D <&ims123>,"=
orientation:0";
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0media-controller =3D <&csi>=
,"brcm,media-controller?";
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cam0 =3D <&i2c_frag>, "targ=
et:0=3D",<&i2c_vc>,
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0=
<&csi_frag>, "target:0=3D",<&csi0>,
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0=
<&clk_frag>, "target:0=3D",<&cam0_clk>,
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0=
<&ims123>, "clocks:0=3D",<&cam0_clk>;
=C2=A0=C2=A0=C2=A0=C2=A0};
};


&ims123 {
=C2=A0 =C2=A0 status =3D "okay";
};


&cam_endpoint {
=C2=A0 =C2=A0 remote-endpoint =3D <&csi_ep>;
};


