Return-Path: <devicetree+bounces-186292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D25ADAF13
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:50:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E02CA188A700
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C0C2E6D24;
	Mon, 16 Jun 2025 11:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="oo/LIOIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA662DA755
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750074644; cv=none; b=b+SjtbStEULGrLw9uFueBaRYXc6U4OicBuZ81jy0U6S+oCwtbX2XNr3kOdrnXg4QwwBVi7o8OL1PdO/BfYfof9KtcZ4k8j4pE7RumBVs1OxU5avTaGMlMCxjKCjyF6kvSCDa+y/wg7mcL5/wpFYds/C5clV3XrW+TTpZA6Mx0ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750074644; c=relaxed/simple;
	bh=2TXIdS0DrtcJ/aN3kEEgXsku4ahxNSy7vjY6kQ9nPJg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=RQsts6l2yqIJJzEJnu7lTpSdNHDUalwKsdXp5Jn7QU5CGff+q6nK5mQEbGzSnXGzQd7HJVib0ferzAKESBwBr9mWlCgbylSilbHIekhZjEparBoFsvQgacycfLrSj5L1iTSMck82t1iqfs26iGhWh/b9Rbfw8cH2kbbOpTqpur0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=oo/LIOIc; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ade326e366dso799781066b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750074641; x=1750679441; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xuSf6RLaP8+rHWDi/+Q9MWXI6iUycqZnVn3e8MQYPzQ=;
        b=oo/LIOIc2AQwaEDw6APuTipI/APVrhhgtlAsZ3ROG3hWKiqdKtvrC7/4wnuu6ST/gl
         4RUBfH7JWJ9IJDei/bjaou8yfr9IFsoIH/7C2BVWQOLFk8tfhay/OPF5NCpHn7HBN9i1
         obNRXcs04fi/1yLNYVMBcFqPcS/Y4RvLI/Df/4pcaqpjlgru9XizUAr94iitKLxW5IDL
         9oeXy/3A2yQq/oXUoPzPirRXVQb93Uq17BHJo0VHpvRWtxY8Txy3VToxSyQPp22tIKiQ
         IuZiDfQk7W5nKh0WOkH+oq+f7bFjXjvxfO2EJwtjtb18xV9ccIR5/cNr1vdpYyHjnYdh
         BmnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074641; x=1750679441;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xuSf6RLaP8+rHWDi/+Q9MWXI6iUycqZnVn3e8MQYPzQ=;
        b=CFbaDpkmqLV/SuyRRBFwo3PBqqYiFsG+PRTf5mi5QQfElxcqtasFe/fAKjMrzn4omF
         ZwPVaIM1n6TSDYAS8wF+DMpI3uR6PZh6C/8pJKLiKG9MDqdCrOkXZGK9pKxljnCp8QQU
         CSnonHqYm4PrzfuQdki0X7yWEL5KvKgz9ZHe5Oh/Ye55+H6RCfcRY0l3uk379ggsjGnw
         W2KgPO/vN2BlZqradgvcqOFApA3Qq3sNezO/tq35kg1ZNanz6djWbPhufXXh0lVqqE+s
         jP/hge2WMCLAqMYCh7MmdE3FcKHD1084M8Rq92m2/5XqgmRJq5GYEBA9wOEmWwRluqhk
         tYFw==
X-Forwarded-Encrypted: i=1; AJvYcCUijm18660p9l7ybwn1DPrnSdPS6OU3V0uiiXQXrX1hcARbjxXvT4QGeCGlKog/j6PAsCcmVNOGLmIu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4Il/66chesHQcm2gjnfK+qlzqK9F5iwCPz1/o7t5nd85nhhZz
	wC00v4zk3/n7SOJa4DW6ptz3g4yhowDWzIi6Xv4lLrHBAZwDO/6SUVi+8JTaEMWLRoI=
X-Gm-Gg: ASbGnct+Q6llS+PgCBnsh+bSrC03GO59HFAK+ZgXjiIUTHaXtjObX5ygICwfjf5iavY
	mQUuHy942whCT9orAGyJID2Tfcy4a1B+SQnPf/o/7dSKxnGFY8S3dOQ/0ZJrLVrDvdieJVXIqgE
	mPmkJDFov5d/Pe0dIkwlI3BrAPShOkc4iCrevM20AvEti7FzIrMAUnreo5n8oxjKkMpQauiwEVC
	kWME5LnXq/AtzdTx0PVzDmkcFFWbS1IF4XE9BEqAbDcr8/huOWruAWyAv7++gatRffX30F6WyiT
	pVnGqQfBugtMF4P9x7HBnmzo/H3GvSLMiRFzQquEw+qoSWQPNQv1Y4qc7tiYrUrnd2lWQujIcQE
	bsZTzbGWz80cx7ZuQQ9xAD8RLGBGmSNM=
X-Google-Smtp-Source: AGHT+IEw/IbSDxrPrp5P71189l+YICG0EEl5mwsAYurOHLofD+R6bizDKSfCRwi4sa9axsT85oX+fQ==
X-Received: by 2002:a17:907:6d0d:b0:adb:2bb2:ee2 with SMTP id a640c23a62f3a-adfad451438mr946727766b.41.1750074640652;
        Mon, 16 Jun 2025 04:50:40 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88ff5d3sm657753466b.101.2025.06.16.04.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:50:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Jun 2025 13:50:39 +0200
Message-Id: <DANXOMLSCTUE.149W1NJZ0U8M0@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
 <qmcoh5lysln46mg7tbmeelmnzc7s6o7bssir3a7r3n3x5lnboq@cizzodjel4ut>
In-Reply-To: <qmcoh5lysln46mg7tbmeelmnzc7s6o7bssir3a7r3n3x5lnboq@cizzodjel4ut>

On Mon Jun 16, 2025 at 1:40 PM CEST, Dmitry Baryshkov wrote:
> On Mon, Jun 16, 2025 at 11:45:12AM +0200, Luca Weiss wrote:
>> Zeroing out registers does not happen in the downstream kernel, and will
>> "tune" the repeater in surely unexpected ways since most registers don't
>> have a reset value of 0x0.
>>=20
>> Stop doing that and instead just set the registers that are in the init
>> sequence (though long term I don't think there's actually PMIC-specific
>> init sequences, there's board specific tuning, but that's a story for
>> another day).
>>=20
>> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out u=
ntouched tuning regs")
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 63 +++++++++++++------=
-------
>>  1 file changed, 32 insertions(+), 31 deletions(-)
>>=20
>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/ph=
y/qualcomm/phy-qcom-eusb2-repeater.c
>> index 6bd1b3c75c779d2db2744703262e132cc439f76e..a246c897fedb2edfd376ac5f=
dc0423607f8c562b 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> @@ -61,8 +61,13 @@ enum eusb2_reg_layout {
>>  	LAYOUT_SIZE,
>>  };
>> =20
>> +struct eusb2_repeater_init_tbl_reg {
>> +	u8 reg;
>> +	u8 value;
>> +};
>> +
>>  struct eusb2_repeater_cfg {
>> -	const u32 *init_tbl;
>> +	const struct eusb2_repeater_init_tbl_reg *init_tbl;
>>  	int init_tbl_num;
>>  	const char * const *vreg_list;
>>  	int num_vregs;
>> @@ -82,16 +87,16 @@ static const char * const pm8550b_vreg_l[] =3D {
>>  	"vdd18", "vdd3",
>>  };
>> =20
>> -static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] =3D {
>> -	[TUNE_IUSB2] =3D 0x8,
>> -	[TUNE_SQUELCH_U] =3D 0x3,
>> -	[TUNE_USB2_PREEM] =3D 0x5,
>> +static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] =3D =
{
>> +	{ TUNE_IUSB2, 0x8 },
>> +	{ TUNE_SQUELCH_U, 0x3 },
>> +	{ TUNE_USB2_PREEM, 0x5 },
>>  };
>> =20
>> -static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] =3D {
>> -	[TUNE_IUSB2] =3D 0x5,
>> -	[TUNE_SQUELCH_U] =3D 0x3,
>> -	[TUNE_USB2_PREEM] =3D 0x2,
>> +static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] =3D =
{
>> +	{ TUNE_IUSB2, 0x5 },
>> +	{ TUNE_SQUELCH_U, 0x3 },
>> +	{ TUNE_USB2_PREEM, 0x2 },
>>  };
>> =20
>>  static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg =3D {
>> @@ -129,17 +134,10 @@ static int eusb2_repeater_init(struct phy *phy)
>>  	struct eusb2_repeater *rptr =3D phy_get_drvdata(phy);
>>  	struct device_node *np =3D rptr->dev->of_node;
>>  	struct regmap *regmap =3D rptr->regmap;
>> -	const u32 *init_tbl =3D rptr->cfg->init_tbl;
>> -	u8 tune_usb2_preem =3D init_tbl[TUNE_USB2_PREEM];
>> -	u8 tune_hsdisc =3D init_tbl[TUNE_HSDISC];
>> -	u8 tune_iusb2 =3D init_tbl[TUNE_IUSB2];
>>  	u32 base =3D rptr->base;
>> -	u32 val;
>> +	u32 poll_val;
>>  	int ret;
>> -
>> -	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
>> -	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
>> -	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
>> +	u8 val;
>> =20
>>  	ret =3D regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>>  	if (ret)
>> @@ -147,21 +145,24 @@ static int eusb2_repeater_init(struct phy *phy)
>> =20
>>  	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
>> =20
>> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE=
_EUSB_HS_COMP_CUR]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQ=
U]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_S=
LEW]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE=
_USB2_HS_COMP_CUR]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQ=
U]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_S=
LEW]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELC=
H_U]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FS=
DIF]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_U=
SB2_CROSSOVER]);
>> +	/* Write registers from init table */
>> +	for (int i =3D 0; i < rptr->cfg->init_tbl_num; i++)
>> +		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
>
> Init tables have TUNE_foo values in the .reg field instead of
> EUSB2_TUNE_foo, which means that writes go to a random location.

Right, stupid mistake. Thanks for spotting!

I will fix the init tables to use EUSB2_TUNE_*, and probably drop this
"enum eusb2_reg_layout" completely.

Regards
Luca

>
>> +			     rptr->cfg->init_tbl[i].value);
>> =20
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
>> -	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
>> -	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
>> +	/* Override registers from devicetree values */
>> +	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
>> +		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
>> =20
>> -	ret =3D regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val=
, val & RPTR_OK, 10, 5);
>> +	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
>> +		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
>> +
>> +	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
>> +		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
>> +
>> +	/* Wait for status OK */
>> +	ret =3D regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, pol=
l_val,
>> +				       poll_val & RPTR_OK, 10, 5);
>>  	if (ret)
>>  		dev_err(rptr->dev, "initialization timed-out\n");
>> =20
>>=20
>> --=20
>> 2.49.0
>>=20


