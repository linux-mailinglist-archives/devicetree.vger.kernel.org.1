Return-Path: <devicetree+bounces-236885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B39B5C49101
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B8F73A837F
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6933321BD;
	Mon, 10 Nov 2025 19:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e3ScSHHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C69431BCAE
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802809; cv=none; b=ZAtUozzOhzjddDEVpcUJ92XJeJKvklL/HouilUm6PmU06ZPSghCC8/5PPhEiQiTQpLg+VYqVocr6gna1fywt/lK7OyIIRn1U+bixL4S3VpNgDysGs0oig/2I2Wd5HxmJzRpxlG8iXqc0INfyGmhsRTP7GtNKHguexf86xJEnd80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802809; c=relaxed/simple;
	bh=g9bEAE/YGJuTa8tU+8eyGnc74pewsjnI08OQO2NlOwM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZdzWlZKPqD1Kyj3V8Lr3gGpw8p6TbPej32i/34BAmeSpDwQMWmcn2aR6FA33wkrAiS0zoO4nhXUIrueJz8KReXl+utAuOwiu3uJc1v5IyjKK7i1YgmE+eNZdzCBiySfwk3IrmdRqktnUYPfuL640J7wTjDZ2YVYIwpXH//G+Xxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e3ScSHHj; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5942a631c2dso3033989e87.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762802806; x=1763407606; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QGP8QREMcd/AaPsprMdpu0BolksBxlVcRR5B0xb1iVQ=;
        b=e3ScSHHjL7mWpgKQgVhSixR+EXqOwb50+oatf4tuFs8/13Msp09y/jjl95IN4tuyHl
         PLrY9Y1ywINDX5ttul4aZ6pk1/9I2wJK0uRG10IT65VLhHsKmw3JLX1J9t/DlVY5lXat
         MEkDSVXGw+KiTXpa6UJXncvrxDrq4WhF+xI2QVGQLrE/h4DmuVAoFwnXFFEaIxKkWg65
         oK748ppPGQsVXS73O7wy2bEOX7CdD14wpCu5G1nxoGHTb3FtA54hpXrosESTd902T7ad
         7DyYjwtm6AH6ob/OfgytUlKQyML/eyQsPGIFxeWG/uNsKqFbiglaM2No27A6ZH+nbMKh
         TUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802806; x=1763407606;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QGP8QREMcd/AaPsprMdpu0BolksBxlVcRR5B0xb1iVQ=;
        b=Ej7ic5jI/oG37vH2oSShjMeuDoI8fTSjF198PNoxeWJSN8umhfP6XT7K43O7ZXNcTw
         pdQKI2cV8QjOv3DULan8c/j+PQVX5KuToxEE7Ar40yW8ImNkMX2BytMd2FJuGasWw0Fh
         uL9J+l5olNU5TkwpEQV1qi/diicDoMFt7Ql4ItIVDrcG4El/Asv5r/MdO0R70QAfSZIg
         S/INhR2aS6/DVuu56cc0lmbY7XUDItMvxRBScHWCZx7xnxR6k7QWEYiIWrQ6fpFKQz8b
         SLLwPXy/J0eCfO0ytpGhntgWydzRKmsC6X34CCEIdVKVGAmI7YjYy1FuGRH/khjVvV/E
         YYrA==
X-Forwarded-Encrypted: i=1; AJvYcCXXheAmJDse/mKksJH8EToEK2hYWKAwonHivU10khhYJk8xzKeq9WMYjc0mpWpMsF/Vn1xC1JC5nYgO@vger.kernel.org
X-Gm-Message-State: AOJu0YzSZx0nCDupGkG7nAIQCyo27d/HhgTFtRhwdL/SWOnHp+Qpteco
	0xDl3RZlSlLKAJ+M7VTMCl99Nm9182fazgL9fSY30ovpWS2WK4P+rI0z+21Indtk+Q6tk/UES18
	K6O0vviCl/flGK4K8bYexWN1l36MCaK0=
X-Gm-Gg: ASbGncvMk3/MvgYhIH1gQ54AfDMPrEtkYWQkngBc4cp8ct9d/odrJQJLxmSH7MRevig
	CIEtKkL2OLdBeg93xG4tIp1tjYBRpUe1dSNBuVo9Uml7fBWuxMwrIuyy/BEvEhlNmoupw8Zco3V
	L7fjwm2adZM13a/hTBtmgqOG1OHvl76wl4LgkQNx3qIgutcxCJ8zNf0HUK7OhXWIHpMY798sVq6
	rzTKO1bP8B7fwWJ40Aa2l/3J7Sx9inUNSk064BMqoI+Wc92dkAJT6KfFJ7P+g7JTLtdCcVCHk9/
	eOYyWAUVTKI/zyzZ
X-Google-Smtp-Source: AGHT+IE2w++hbFBecmu0ldyA3GzUU/nItyyDdlyoL3af2e2XPwUQ48QHaBgbQkhDEsXF284tkIFknJ3Bm82utQZyrag=
X-Received: by 2002:a05:6512:3d9f:b0:592:f3ef:19ad with SMTP id
 2adb3069b0e04-5945f1c0a0cmr2748942e87.34.1762802806159; Mon, 10 Nov 2025
 11:26:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251109214515.121742-1-rpimentel.silva@gmail.com>
 <20251109214515.121742-2-rpimentel.silva@gmail.com> <aRF0++cUigbETuPs@lsvm11u0000395.swis.ap-northeast-2.aws.nxp.com>
In-Reply-To: <aRF0++cUigbETuPs@lsvm11u0000395.swis.ap-northeast-2.aws.nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 10 Nov 2025 16:26:34 -0300
X-Gm-Features: AWmQ_bmb7MnvX9j071Ug1e9S416TAObVP1qyQuyove0FFDmd8l7EUQKS7aibrU8
Message-ID: <CAOMZO5AdcR_fT_RV5-NWu7j51_TA_=Mzzi-Y3Y=HpH+pu=mrvQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: add support for NXP i.MX8MP FRDM board
To: Joseph Guo <qijian.guo@nxp.com>
Cc: Rogerio Pimentel <rpimentel.silva@gmail.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, alexander.stein@ew.tq-group.com, 
	dario.binacchi@amarulasolutions.com, marex@denx.de, 
	Markus.Niebel@tq-group.com, y.moog@phytec.de, joao.goncalves@toradex.com, 
	frieder.schrempf@kontron.de, josua@solid-run.com, 
	francesco.dolcini@toradex.com, primoz.fiser@norik.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xiaofeng Wei <xiaofeng.wei@nxp.com>, 
	Justin Jiang <justin.jiang@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joseph,

On Mon, Nov 10, 2025 at 2:15=E2=80=AFAM Joseph Guo <qijian.guo@nxp.com> wro=
te:

> > +/ {
> > +     model =3D "NXP i.MX8MPlus FRDM board";
> > +     compatible =3D "fsl,imx8mp-frdm", "fsl,imx8mp";
>         model =3D "NXP FRDM-IMX8MPLUS";
>         compatible =3D "fsl,frdm-imx8mp", "fsl,imx8mp";

Why do you suggest changing the compatible string?

"fsl,imx8mp-frdm", "fsl,imx8mp"; is correct.

