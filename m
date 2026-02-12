Return-Path: <devicetree+bounces-265077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AB3NH1DNjWn87AAAu9opvQ
	(envelope-from <devicetree+bounces-265077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:53:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C50D512D988
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:53:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60735306704E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC86935A944;
	Thu, 12 Feb 2026 12:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="DUud3H8+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882583570A3
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770900813; cv=pass; b=VceJGgKU6y+Z0g6FeUlpU9kM3SGp4NP7GNmmK1UOXsLlDYKvLxfgKkV4zk9KzP2eZUAI+1fS+sR3j2kL4o4y5Gdu1cHM5ksxUlydoN+0R4vrLeB6fIQ1YqBs+oex9VHfEwkeVKfd0/0tkx/w4AFuRg8bzUehDgdpoYlXuLvT+ac=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770900813; c=relaxed/simple;
	bh=/EAivQ+ZOwOkIc4BLrlfK2r3M81UGYwVaeh81T5Fj8A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YE81AF0qF9R1KIOgosPFwarkXDItlb28odIEogZVgWmGOdnFrZ+ASxzPvUYDoZ6koYtgi05qmAz1EhqlKr3Nvjap0GbJ93dt/rDoa8ajG5YhY502PGR+84ug2IkA94ye99MUv7MBmBAM2Vlv3xp01rUF1zDDfpOWxkxSiFY1ZJM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=DUud3H8+; arc=pass smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59e64657f0cso878915e87.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:53:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770900811; cv=none;
        d=google.com; s=arc-20240605;
        b=ZLWwh9C7KFy/gCHytPmvNzPZ5+nPciX/yTqoPCHdnpHx4dtsKah3Ub4vTba+4XtyLH
         iYmq1FtVhAt8bcBVX9cxoutQJj3A+iGFRjkV6mxHWgN9F0JmIZrzf5+h4f18FULZhiCS
         VwAXKNuGn8zxro8QnpfFyR7nPmwQnInzpDVx9HiOcvQhr+K4zM8um2zxkuKZgVrwOPWv
         J3QDnzUVEme7ZJsG49VgcFPAdW0fK5IIQO+2ADdfh8vTLDXpSXgARZtHFkYp41aAX3CI
         ic7BCfJuL5mTaMC2LstbYSJWhPXErAm6iWsxiZt+UtpjKt6XaXrbixajbP/LsIHWZs0D
         UMIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bf/qENqOCRmmJNr9ag54Z8HX70ovzWa5oYbu2Y1woKc=;
        fh=TgFVQWvkwC2xPe3cXhA9wgTFMPfDmrqi6o3Bmlw8v0A=;
        b=lln/Vc/PWjfRQHdmAPvvfGZHwg0X6twny6kmujXyS78zBbRBVYXE7AQjn/gefv9F4F
         vgrVUQPOtF07jSz/qxU+2rSZp72a7+pEgRhw1ux7FzOm1RZbKIwE2Gykz6QnfgOylqyM
         ccm64MMZNOd9bTIp1vG1V9nR6fbreSvSsihz00Gzc/oYfvVgYU+7uTiEUVN8Y76IXzVM
         uRTQFz9lUxYQkznkq8fawbZ4/4SwDDq4HrzkX7OXJg4iI75TWihpKIIQ9C9X7BI71yc/
         dbRBkyZFVrBYWT/w27iHD5pbhg2EYqjTkim++0KQEnx0AWhO8X3XcVHXKZHSdS2cmKJr
         Qt9w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1770900811; x=1771505611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bf/qENqOCRmmJNr9ag54Z8HX70ovzWa5oYbu2Y1woKc=;
        b=DUud3H8+s3RBN759qZ5T+i16QNhtpsI/xLore8+CLmrRSqZpKSCA9mbmE8y40cAwDv
         NECUqz3iK+ct/0FrPwq84ESNEGQvJJUSiQ+kjU6xENw8ZNWn2yEpIHRVmaXZ50gRjsfF
         q3cZolOgdM8kBtrAqSDOnnFky/Fl6woeTQEQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770900811; x=1771505611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bf/qENqOCRmmJNr9ag54Z8HX70ovzWa5oYbu2Y1woKc=;
        b=XnMlfdYf0NX246jTVftb+Sf88jNUhQsO2+/NPQAmjTs4eU6+8xqFSP8pz5lClpaa4r
         0cp0pkuHgBTlXPkdMrznwlg5BGWY3iflSfhhnQvqj7tTSuM2n0/Z0452cy4RE7Ric5M6
         IDO5Cs9ETBak168Y6NSmsE8xrWdGvCt3RESwd8cBILfK9jPa6Lgmqgg6uk9J/dMiuJQk
         aD+6xTINSa9Wd5LfyCgFJaogrir9n16ic/EBO7UWLzLcbJ4vDGPbm416fYoWPQK5EsoK
         N1poHKB3cL91gAUfL6VQL5puKbTHSwVAWuGYUhLlphgxCXlkFeyFp8MWg0PSp12mpsTQ
         Ll0Q==
X-Forwarded-Encrypted: i=1; AJvYcCW2/aej+YMDw/91a24vKcslc8RH1/xIWlOD0bf/ksSwhMaQ3IlwDnDVk2C1LrIeTAY14kYbnzEn/c2S@vger.kernel.org
X-Gm-Message-State: AOJu0YzJjbHeSTSjxsBb4z/uoEGlKt6dBpPmpqhKStHIJ9dLSaw1Y0BD
	Wkp/8IcJjzD7YSEd7QZgDIdYSGUfl2Mxfq9PivyhPKkAmrm7/eInIj2q4Us0znwOlLESNiFQqgN
	/UAKf8cqI+WdbsznCsBOMR7gBFibLefipoA37WpgP+w==
X-Gm-Gg: AZuq6aJkF59sauNXirlju3gdok9Ns8fxaMHczMI2bwTMf9eXh+4TnXaDRl7zZVxKwD+
	5VP6lD/fiEULOm3b4XzUtHHwopeORp8mmooPBXIpU4r7YIGviFCuD8vRTkbC2MkkydQWi0QORbe
	pLMZjF8vL2QMim4oj30Lp6ZXssL8kqca5X3jwoolQFG//kpOCabr2LaNL+n2yIXzj2jXZ0nNDyn
	FoZMsbCOHNg/Eme4+QO/IamIAnxFvPO7UiUr2EAiUgEw8Vp5BQRcHKFXZrtlB1uXZWsq6Cz2Rz0
	HQo+bQ==
X-Received: by 2002:a05:6512:b84:b0:59e:429:932a with SMTP id
 2adb3069b0e04-59e640136cbmr778546e87.1.1770900810703; Thu, 12 Feb 2026
 04:53:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210103933.27228-1-r.mereu.kernel@arduino.cc> <fb7028cc-f27f-4a4a-8001-f862a55ea528@oss.qualcomm.com>
In-Reply-To: <fb7028cc-f27f-4a4a-8001-f862a55ea528@oss.qualcomm.com>
From: Riccardo Mereu Linux Kernel <r.mereu.kernel@arduino.cc>
Date: Thu, 12 Feb 2026 13:53:18 +0100
X-Gm-Features: AZwV_QgO94a9UGBqDK8F7KWK9SrjC8-T_6teOpOtzziJwCdXcOGv3FVyPyN9mE0
Message-ID: <CAKA1JhbxcDywJr05prZtBj0dQ_f-6TSFa37_P9zxh6-nrM8uKw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: arduino-imola: fix faulty spidev node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, alexey.klimov@linaro.org, 
	srinivas.kandagatla@oss.qualcomm.com, m.facchin@arduino.cc, 
	Riccardo Mereu <r.mereu@arduino.cc>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[arduino.cc,quarantine];
	R_DKIM_ALLOW(-0.20)[arduino.cc:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[r.mereu.kernel@arduino.cc,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-265077-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,mail.gmail.com:mid,qualcomm.com:email,arduino.cc:email,arduino.cc:dkim];
	DKIM_TRACE(0.00)[arduino.cc:+]
X-Rspamd-Queue-Id: C50D512D988
X-Rspamd-Action: no action

Sorry forgot about it.
Thanks

Best wishes.
Riccardo

On Thu, Feb 12, 2026 at 1:00=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/10/26 11:39 AM, Riccardo Mereu wrote:
> > From: Riccardo Mereu <r.mereu@arduino.cc>
> >
> > CS pin added on pinctrl0 property is causing spidev to return -ENODEV
> > since that GPIO is already part of spi5 pinmuxing.
> >
> > Fixes: 3f745bc0f11f ("arm64: dts: qcom: qrb2210: add dts for Arduino un=
oq")
> > Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> > ---
> >  arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts | 7 -------
> >  1 file changed, 7 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/=
arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> > index 197ab6eb1666..d2c3359dd814 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> > @@ -328,18 +328,11 @@ &spi5 {
> >       spidev@0 {
> >               reg =3D <0>;
> >               compatible =3D "arduino,unoq-mcu";
> > -             pinctrl-0 =3D <&spidev_cs>;
> >               pinctrl-names =3D "default";
>
> You should delete this line too
>
> Konrad

