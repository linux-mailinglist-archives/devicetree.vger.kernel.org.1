Return-Path: <devicetree+bounces-195098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC3B0076C
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:45:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A41BE582DDC
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 15:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8642749D1;
	Thu, 10 Jul 2025 15:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cFfR0/cm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C638927586F
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 15:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752161864; cv=none; b=ZeTVLJmU/yO0QsjzTlkHvE+OCCOefmBc2yX8J7SqYzsgqQWXE0S1AKB9FeqAT7DgR2cDvTUthPREHyR35DGcYAwZGy+1aHcisfDhbjqFL5OKOEr7vs8ORvqQZdMG9RFxCCF5IBfGRsz26nVKBuO6jFnI2NEbwJukSNbSALVW1C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752161864; c=relaxed/simple;
	bh=QwOQObB2pctndAzOHsW+e0d5hzIcqwrg+o1Xv3mv1Ck=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=qIB7SnwTD/BsfWfm8rpPbDhrwj1enWDOlH6kocVxj8qU4h5R+1RXjxFrmxho0GuQgVMnPIPhxDpdBSj29c92t+HS0cfRRVXzqSbxiuY62+0JLYy2ks7PlshhEdYmuwlu9iC8oUOnqEsCaxeJTrOeuDt3umvC53bP04cMZQUqO08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cFfR0/cm; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ab112dea41so704326f8f.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752161861; x=1752766661; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1GCMYIRIYYP0/PAurGhaaMN0CHgGvBkGkwVspybvVpo=;
        b=cFfR0/cmJ5FwwMV4LCTX/c9A3wp/L+ANymfqAaVa8X0oyur3NMbaXYG2hNOlccUbQ3
         nC88DrR6wGIOqZrqONe9VBhS7mdtlKrnnDY1uIOTRPD2GyfJaQdR19DpZD0YZ8gRBDIM
         JXu6HmvoTUrO1CdA2hW113LWh39mZgwGkbYHPHn6GOQzB53DexyJc6oEEzD6O3B6opyw
         AqCiL7N0OcgL09zMfdeU/ailbFvl7o+px+hNCnAnUMxL945CzST2FrxT+BqhBhnRuwra
         1V2hopI13ukDL/b+yPgX7n2HM82BVMHdvDUqry489jf3Zmy3b+AdU8JT+2mmuhIYJEe/
         Lo/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752161861; x=1752766661;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1GCMYIRIYYP0/PAurGhaaMN0CHgGvBkGkwVspybvVpo=;
        b=wvicIrsAf3P9USl+CeBwnLC9OJ60f0qrM7XDz+szfruxiKgUoe1qUwuzVSk8f/hXvH
         UYVo7ExGUcyPku8h4AsAs91yt0WAv+Dabegbhwo5wdvDPYh77NMOticp7STSLu5dfyDS
         DXBvYVKAg04KJ0FMFcbZNYxQz5lrxO1MzsXJHI3xDZvBhRay9uJdRUvvjLuaIrdA4vf9
         jky7bhyj/PF7QV48ybqPKaW5tJ/dko7bmC2yVG2pnr9ZRvY0QuuM7RUL8gOdUCa22XQQ
         sjEOl2ucfMqAVTh0wuI4QwKnQYlrhkSIq3ca7wx/9ijEENbTgvYAGicoKQGx8MWVpUaJ
         iSaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvByrZ6jEVPIN5I0XM8L6jCgXiTc+cPcBWsFWzbh35CPUPBD7Co425J6oYBzSdcH8q72vBvaCZM8aM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/n5KFqmFfkVbzjL94JWSAKHkOGAFfBLj19Le31UIcDZvHTb45
	bnE1dMO2EuI77ToQ9h/qM+DutmASRHYZkqtGJaTKEG7X5oCH+xgyuO2J+RUo7w8hpTQ=
X-Gm-Gg: ASbGncsZY4nz4ljpKI2Fj0sMQTluW/JLKjUVo1dw4vNMYPr7ZglT1q+XkwreGs1qdMA
	rawbpev0bVfdWk+EUt2SjMX9zFpL9hNCTEXuEEw4R/I5A6lz8m7CEzuLJv5WBp6MSbfoZv9pcDh
	3gBzVsi8A3kmu4NgGZBg6DpQG/8h6p20ao9oYBV2NwWuzr6q5X8+1JGFlYdYwoMtsEmRd59zjwf
	UBOKIfXVeEEGqyaL3oQ60UuFrjEzODArEc4qnwq64e66oh5L+cg/Up4Dp77HFVJgyg9MhmvLA/G
	JCaKn7/syUP8FXIbAqM/wjoUv3hAUykCQjWIF6c2flXLzjv5VpJa7aFcdysijaDxDrA=
X-Google-Smtp-Source: AGHT+IGw7DVfZ3GZxj+qHwr1y0PJneaT93zpwe7OGfPSm+0CYQeA+WTJUdUF6Ib1mvex15f2hc3lew==
X-Received: by 2002:a05:6000:400e:b0:3aa:34f4:d437 with SMTP id ffacd0b85a97d-3b5e4529684mr5959353f8f.37.1752161861054;
        Thu, 10 Jul 2025 08:37:41 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454cdb549absm65784495e9.1.2025.07.10.08.37.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 08:37:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 10 Jul 2025 16:37:39 +0100
Message-Id: <DB8HJI3YCZ9X.282HCM2QSGY0D@linaro.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Stephen Boyd" <sboyd@kernel.org>, "Lee
 Jones" <lee@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] ASoC: codecs: add new pm4125 audio codec driver
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org>
 <20250626-pm4125_audio_codec_v1-v1-3-e52933c429a0@linaro.org>
 <rr2qf7hw7lkwqozguz3cv4tg7eewzk4jkxx5bieydukemjko2h@pwtrakslklvn>
In-Reply-To: <rr2qf7hw7lkwqozguz3cv4tg7eewzk4jkxx5bieydukemjko2h@pwtrakslklvn>

On Thu Jun 26, 2025 at 7:19 AM BST, Krzysztof Kozlowski wrote:
> On Thu, Jun 26, 2025 at 12:50:31AM +0100, Alexey Klimov wrote:
>> +
>> +static int pm4125_add_slave_components(struct pm4125_priv *pm4125,
>> +				       struct device *dev,
>> +				       struct component_match **matchptr)
>> +{
>> +	struct device_node *np =3D dev->of_node;
>> +
>> +	pm4125->rxnode =3D of_parse_phandle(np, "qcom,rx-device", 0);
>> +	if (!pm4125->rxnode) {
>> +		dev_err(dev, "Couldn't parse phandle to qcom,rx-device!\n");
>> +		return -ENODEV;
>> +	}
>> +	of_node_get(pm4125->rxnode);
>
> Where  do you clean this up?

Please don't tell me that this is a bug that being copied from driver
to driver.

I changed it to such flow for the next version since it seems that referenc=
e
should be decremented after of_parse_phandle() returns with it incremented:

rxnode =3D of_parse_phandle();
if (!rxnode)
	return dev_err_probe(...);

component_match_add_release(..., rxnode);
of_node_put(rxnode);


>> +	component_match_add_release(dev, matchptr, component_release_of,
>> +				    component_compare_of, pm4125->rxnode);
>> +
>> +	pm4125->txnode =3D of_parse_phandle(np, "qcom,tx-device", 0);
>> +	if (!pm4125->txnode) {
>> +		dev_err(dev, "Couldn't parse phandle to qcom,tx-device\n");
>> +			return -ENODEV;
>
> Messed indent. This should be anyway just one line as always - return
> dev_err_probe.

I changed it for the next version as you suggested. Thanks.

>> +	}
>> +	of_node_get(pm4125->txnode);
>
> And this?
>
>> +	component_match_add_release(dev, matchptr, component_release_of,
>> +				    component_compare_of, pm4125->txnode);
>> +
>> +	return 0;
>> +}
>> +
>> +static int pm4125_probe(struct platform_device *pdev)
>> +{
>> +	struct component_match *match =3D NULL;
>> +	struct device *dev =3D &pdev->dev;
>> +	struct pm4125_priv *pm4125;
>> +	struct wcd_mbhc_config *cfg;
>> +	int ret;
>> +
>> +	pm4125 =3D devm_kzalloc(dev, sizeof(*pm4125), GFP_KERNEL);
>> +	if (!pm4125)
>> +		return -ENOMEM;
>> +
>> +	dev_set_drvdata(dev, pm4125);
>> +
>> +	cfg =3D &pm4125->mbhc_cfg;
>> +	cfg->swap_gnd_mic =3D pm4125_swap_gnd_mic;
>> +
>> +	pm4125->supplies[0].supply =3D "vdd-io";
>> +	pm4125->supplies[1].supply =3D "vdd-cp";
>> +	pm4125->supplies[2].supply =3D "vdd-mic-bias";
>> +	pm4125->supplies[3].supply =3D "vdd-pa-vpos";
>> +
>> +	ret =3D devm_regulator_bulk_get(dev, PM4125_MAX_BULK_SUPPLY, pm4125->s=
upplies);
>> +	if (ret)
>> +		return dev_err_probe(dev, ret, "Failed to get supplies\n");
>> +
>> +	ret =3D regulator_bulk_enable(PM4125_MAX_BULK_SUPPLY, pm4125->supplies=
);
>> +	if (ret) {
>> +		regulator_bulk_free(PM4125_MAX_BULK_SUPPLY, pm4125->supplies);
>
> Double free.

Thanks.

>> +		return dev_err_probe(dev, ret, "Failed to enable supplies\n");
>> +	}
>> +
>> +	pm4125_dt_parse_micbias_info(dev, pm4125);
>> +
>> +	cfg->mbhc_micbias =3D MIC_BIAS_2;
>> +	cfg->anc_micbias =3D MIC_BIAS_2;
>> +	cfg->v_hs_max =3D WCD_MBHC_HS_V_MAX;
>> +	cfg->num_btn =3D PM4125_MBHC_MAX_BUTTONS;
>> +	cfg->micb_mv =3D pm4125->micb2_mv;
>> +	cfg->linein_th =3D 5000;
>> +	cfg->hs_thr =3D 1700;
>> +	cfg->hph_thr =3D 50;

[..]

>> +#if defined(CONFIG_OF)
>> +static const struct of_device_id pm4125_of_match[] =3D {
>> +	{ .compatible =3D "qcom,pm4125-codec" },
>> +	{ }
>> +};
>> +MODULE_DEVICE_TABLE(of, pm4125_of_match);
>> +#endif
>> +
>> +static struct platform_driver pm4125_codec_driver =3D {
>> +	.probe =3D pm4125_probe,
>> +	.remove =3D pm4125_remove,
>> +	.driver =3D {
>> +		.name =3D "pm4125_codec",
>> +		.of_match_table =3D of_match_ptr(pm4125_of_match),
>
> Drop of_match_ptr and #if. We just removed it (or trying to )
> everywhere, so why re-introducing it...

Will remove it. Thanks.

>> +		.suppress_bind_attrs =3D true,
>> +	},
>> +};
>> +
>> +module_platform_driver(pm4125_codec_driver);
>> +MODULE_DESCRIPTION("PM4125 audio codec driver");
>> +MODULE_LICENSE("GPL");
>> diff --git a/sound/soc/codecs/pm4125.h b/sound/soc/codecs/pm4125.h
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..2c5e8218202d92a0adc49341=
3368991a406471b0
>> --- /dev/null
>> +++ b/sound/soc/codecs/pm4125.h

[...]

>> +const u8 pm4125_reg_access_analog[
>
> No, you cannot have data defined in the header. This is neither style of
> C, nor Linux kernel, nor makes any sense. What if this will be included
> by some other unit? This is some terrible downstream style.
>
> Heh... you actually do include it twice, so you would see all the
> duplicated data for no reason at all.

I pulled in the change that fixes this for the next version.
Thank you.

Best regards,
Alexey


