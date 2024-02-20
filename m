Return-Path: <devicetree+bounces-44013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 970F985C214
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 18:11:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C1E4281E6B
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C77768FF;
	Tue, 20 Feb 2024 17:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kzvUBsnj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA99768F9
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 17:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708449105; cv=none; b=P2Xhw5/KqFC7ZJ/I4+Lsy9aPz0r9q8giXT1H35PaDkfi7Ll1gv1CCWiPi46O+d+5dEeyor9xxpogHcGUjHBgxK8dzOCIz5OmgIDwqQuOF0l/b7PUKnV0uBvUNAxQLSGouw3N1gq6euHyAE6nUtU+nOBtaCqEdAwEssJeoQ+gh1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708449105; c=relaxed/simple;
	bh=EJs09zYJJbSZ8cWFMENMnQp1ilbZKfVmQ4Hagg2pxBA=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=r/0NCLpLdmtaaI4nfH3gxD6bTkUw7TbvQ8uREbn6XvXyMnwHYs9Tm6dXip0CVap8yy8PCO/mIrgUUxMhoj71i5sWWdFHF4zx/Lhgs58HUZABxpF5h9h9u5MFCo2U0Pgu1S/1j5vX6FX/GN/YPeCe8kNpJscUHe2rlhRamJ+K4II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kzvUBsnj; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d23114b19dso32659081fa.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 09:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708449101; x=1709053901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EBsPYOj4o/oYmqjND5mUcKc/lhfqBms3nMBFQ3ab9hc=;
        b=kzvUBsnjLvj0xgcMxEFlC9DB/GEqmKd/EiM/XxvyedDuaJcd6xc5ivmyNwnSS55UuZ
         23xdNf6LvnMSVk5nCNEu/uo0J5n3DHvletyM0qCUHhpJ6C1ekC/nBlW8SoMk0zRCOaJu
         /AR66DoItp/nmBzoy3FxqIhkJmqdnU6fwK8HXTeIf9Y1EGnXCZx2fQ4AaVnzwfjeMp27
         IKJ5dQQ5Zntynf3qKFC362y3346vzZTK3GazEe2zKozxfMW5f5JzaOQE19OWzcCM8xZ0
         zs5keuthLnH7zMNeHtc0Mzi4RBThoZZ6KsIVTrePFIpek40/oOwCycVR0UTdXVq0GjK4
         CckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708449101; x=1709053901;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EBsPYOj4o/oYmqjND5mUcKc/lhfqBms3nMBFQ3ab9hc=;
        b=ktxrJseYMPkffJPGtG26Q95dBYXD58cGckVC2fbRpUqCHpIwNBCYhmqCfy4Z614otz
         fjkPQmmlekgS4z6hbG64rVQ+o7eeuzBnJLUisM0ltuaHolohGSZeJD55v9UIxQl+jyaY
         V/4JI0BltjCdMFZZ2VPcplJLptPBB5m3fDoVMQRaOQCew3iYsxvpdMAbBHVClq1KR1DP
         vQrB39fBRVWjSnUtwCbGfc41L9sI7rwV5z4T0eNNAHruhIvAZEjq3eEg9/3O6iV0Cqgc
         Ox33BtC6SW/dgEWMfzU1VRhG+Z9t3F4ktIBoQXgVwnHK7jCixrNBNseQ+pFWNMxhXTEK
         wwTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYGlaqyuj/7jzh3U4JHN741qfoZa7bh22ML7+okbhRSmser/4/B92seU6XweJ7mjBzHiOGqlAaX1W0v672dIsiBIxcbPOWzek6vw==
X-Gm-Message-State: AOJu0Yyv5fgYOzxHLpptLXlulRDvDGe84ASjqBT+jOzJnZFXZnVrdhOO
	V1M9PO2lxlIrtfqAE7YXr6i25+sfkmh0CaeHxHQ4S43hA5g7kkcHSQZN/jbZH/EGWtHawOfvXDq
	pTfI=
X-Google-Smtp-Source: AGHT+IE/S89tnO2LtN3j67GoQbINgLpjDYN7UkNP8HnGtOyZ+toxAR93pnkI/lei8Z5htDwisVq8kQ==
X-Received: by 2002:a2e:3e1a:0:b0:2d2:39a5:d190 with SMTP id l26-20020a2e3e1a000000b002d239a5d190mr5615387lja.1.1708449101050;
        Tue, 20 Feb 2024 09:11:41 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:2f02:c7d6:1af5:7c37])
        by smtp.gmail.com with ESMTPSA id h5-20020a05600016c500b0033d60cba289sm4828605wrf.68.2024.02.20.09.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 09:11:40 -0800 (PST)
References: <20231222111658.832167-1-jbrunet@baylibre.com>
 <20231222111658.832167-5-jbrunet@baylibre.com>
 <pqnl66xnct5lqua36iasqws4kowhqtn6vkq7fml76pomcnatj4@q66n3siflgoc>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Thierry Reding
 <thierry.reding@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-pwm@vger.kernel.org, JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v4 4/6] pwm: meson: use device data to carry information
 around
Date: Tue, 20 Feb 2024 18:10:59 +0100
In-reply-to: <pqnl66xnct5lqua36iasqws4kowhqtn6vkq7fml76pomcnatj4@q66n3siflgoc>
Message-ID: <1jcysrdpro.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On Mon 05 Feb 2024 at 18:12, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutr=
onix.de> wrote:

> [[PGP Signed Part:Undecided]]
> On Fri, Dec 22, 2023 at 12:16:52PM +0100, Jerome Brunet wrote:
>> Use struct device data to carry the information data around, instead
>> of embedded the pwm structure in it and using container_of()
>>=20
>> Doing so works just as well and makes it a little easier to add setup
>> callback depending on the DT compatible.
>>=20
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>  drivers/pwm/pwm-meson.c | 39 +++++++++++++++++++++++----------------
>>  1 file changed, 23 insertions(+), 16 deletions(-)
>>=20
>> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
>> index ef50c337f444..15c44185d784 100644
>> --- a/drivers/pwm/pwm-meson.c
>> +++ b/drivers/pwm/pwm-meson.c
>> @@ -101,7 +101,6 @@ struct meson_pwm_data {
>>  };
>>=20=20
>>  struct meson_pwm {
>> -	struct pwm_chip chip;
>>  	const struct meson_pwm_data *data;
>>  	struct meson_pwm_channel channels[MESON_NUM_PWMS];
>>  	void __iomem *base;
>> @@ -114,7 +113,7 @@ struct meson_pwm {
>>=20=20
>>  static inline struct meson_pwm *to_meson_pwm(struct pwm_chip *chip)
>>  {
>> -	return container_of(chip, struct meson_pwm, chip);
>> +	return dev_get_drvdata(chip->dev);
>>  }
>>=20=20
>>  static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *=
pwm)
>> @@ -146,6 +145,7 @@ static int meson_pwm_calc(struct meson_pwm *meson, s=
truct pwm_device *pwm,
>>  			  const struct pwm_state *state)
>>  {
>>  	struct meson_pwm_channel *channel =3D &meson->channels[pwm->hwpwm];
>> +	struct device *dev =3D pwm->chip->dev;
>>  	unsigned int cnt, duty_cnt;
>>  	unsigned long fin_freq;
>>  	u64 duty, period, freq;
>> @@ -168,19 +168,19 @@ static int meson_pwm_calc(struct meson_pwm *meson,=
 struct pwm_device *pwm,
>>=20=20
>>  	fin_freq =3D clk_round_rate(channel->clk, freq);
>>  	if (fin_freq =3D=3D 0) {
>> -		dev_err(meson->chip.dev, "invalid source clock frequency\n");
>> +		dev_err(dev, "invalid source clock frequency\n");
>>  		return -EINVAL;
>>  	}
>>=20=20
>> -	dev_dbg(meson->chip.dev, "fin_freq: %lu Hz\n", fin_freq);
>> +	dev_dbg(dev, "fin_freq: %lu Hz\n", fin_freq);
>>=20=20
>>  	cnt =3D div_u64(fin_freq * period, NSEC_PER_SEC);
>>  	if (cnt > 0xffff) {
>> -		dev_err(meson->chip.dev, "unable to get period cnt\n");
>> +		dev_err(dev, "unable to get period cnt\n");
>>  		return -EINVAL;
>>  	}
>>=20=20
>> -	dev_dbg(meson->chip.dev, "period=3D%llu cnt=3D%u\n", period, cnt);
>> +	dev_dbg(dev, "period=3D%llu cnt=3D%u\n", period, cnt);
>>=20=20
>>  	if (duty =3D=3D period) {
>>  		channel->hi =3D cnt;
>> @@ -191,7 +191,7 @@ static int meson_pwm_calc(struct meson_pwm *meson, s=
truct pwm_device *pwm,
>>  	} else {
>>  		duty_cnt =3D div_u64(fin_freq * duty, NSEC_PER_SEC);
>>=20=20
>> -		dev_dbg(meson->chip.dev, "duty=3D%llu duty_cnt=3D%u\n", duty, duty_cn=
t);
>> +		dev_dbg(dev, "duty=3D%llu duty_cnt=3D%u\n", duty, duty_cnt);
>>=20=20
>>  		channel->hi =3D duty_cnt;
>>  		channel->lo =3D cnt - duty_cnt;
>> @@ -214,7 +214,7 @@ static void meson_pwm_enable(struct meson_pwm *meson=
, struct pwm_device *pwm)
>>=20=20
>>  	err =3D clk_set_rate(channel->clk, channel->rate);
>>  	if (err)
>> -		dev_err(meson->chip.dev, "setting clock rate failed\n");
>> +		dev_err(pwm->chip->dev, "setting clock rate failed\n");
>>=20=20
>>  	spin_lock_irqsave(&meson->lock, flags);
>>=20=20
>> @@ -425,10 +425,10 @@ static const struct of_device_id meson_pwm_matches=
[] =3D {
>>  };
>>  MODULE_DEVICE_TABLE(of, meson_pwm_matches);
>>=20=20
>> -static int meson_pwm_init_channels(struct meson_pwm *meson)
>> +static int meson_pwm_init_channels(struct device *dev)
>>  {
>>  	struct clk_parent_data mux_parent_data[MESON_NUM_MUX_PARENTS] =3D {};
>> -	struct device *dev =3D meson->chip.dev;
>> +	struct meson_pwm *meson =3D dev_get_drvdata(dev);
>>  	unsigned int i;
>>  	char name[255];
>>  	int err;
>> @@ -438,7 +438,7 @@ static int meson_pwm_init_channels(struct meson_pwm =
*meson)
>>  		mux_parent_data[i].name =3D meson->data->parent_names[i];
>>  	}
>>=20=20
>> -	for (i =3D 0; i < meson->chip.npwm; i++) {
>> +	for (i =3D 0; i < MESON_NUM_PWMS; i++) {
>>  		struct meson_pwm_channel *channel =3D &meson->channels[i];
>>  		struct clk_parent_data div_parent =3D {}, gate_parent =3D {};
>>  		struct clk_init_data init =3D {};
>> @@ -519,28 +519,35 @@ static int meson_pwm_init_channels(struct meson_pw=
m *meson)
>>  static int meson_pwm_probe(struct platform_device *pdev)
>>  {
>>  	struct meson_pwm *meson;
>> +	struct pwm_chip *chip;
>>  	int err;
>>=20=20
>> +	chip =3D devm_kzalloc(&pdev->dev, sizeof(*chip), GFP_KERNEL);
>> +	if (!chip)
>> +		return -ENOMEM;
>> +
>>  	meson =3D devm_kzalloc(&pdev->dev, sizeof(*meson), GFP_KERNEL);
>>  	if (!meson)
>>  		return -ENOMEM;
>>=20=20
>> +	platform_set_drvdata(pdev, meson);
>> +
>>  	meson->base =3D devm_platform_ioremap_resource(pdev, 0);
>>  	if (IS_ERR(meson->base))
>>  		return PTR_ERR(meson->base);
>>=20=20
>>  	spin_lock_init(&meson->lock);
>> -	meson->chip.dev =3D &pdev->dev;
>> -	meson->chip.ops =3D &meson_pwm_ops;
>> -	meson->chip.npwm =3D MESON_NUM_PWMS;
>> +	chip->dev =3D &pdev->dev;
>> +	chip->ops =3D &meson_pwm_ops;
>> +	chip->npwm =3D MESON_NUM_PWMS;
>>=20=20
>>  	meson->data =3D of_device_get_match_data(&pdev->dev);
>>=20=20
>> -	err =3D meson_pwm_init_channels(meson);
>> +	err =3D meson_pwm_init_channels(&pdev->dev);
>>  	if (err < 0)
>>  		return err;
>>=20=20
>> -	err =3D devm_pwmchip_add(&pdev->dev, &meson->chip);
>> +	err =3D devm_pwmchip_add(&pdev->dev, chip);
>>  	if (err < 0)
>>  		return dev_err_probe(&pdev->dev, err,
>>  				     "failed to register PWM chip\n");
>
> Parts of this change overlap with plans I have for this driver. I

It does overlap indeed. I'll drop this one while rebasing

> reworked the series a bit now, also affecting the meson driver, the
> previous submission is available at
> https://lore.kernel.org/linux-pwm/bf6f7c6253041f60ee8f35b5c9c9e8d595332fb=
0.1706182805.git.u.kleine-koenig@pengutronix.de
>
> I don't see the nice benefit of this patch yet, but I assume this will
> become clearer when I check the next patch.
>
> Best regards
> Uwe


--=20
Jerome

