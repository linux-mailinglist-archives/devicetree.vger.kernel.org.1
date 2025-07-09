Return-Path: <devicetree+bounces-194573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9977AFE839
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:49:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 240F4562EEB
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E102D8372;
	Wed,  9 Jul 2025 11:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="N6Qx6lO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868BF2D662C
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752061732; cv=none; b=gbOdEbhyZG7XDhnNbfPpLec2UK2lWlTVdoMK155JeMyHc/vwKYSw8dixgw+lKuxgcrUImJjykzu6ucxq6qj16Cul+9ADj3RaMhcsQIhLsrkP2VJ41Sv6UFDnh+uk/R4/P/exs3Ww06cBCECGFxH925r/cu7eRjTr/6Mwrr8uUWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752061732; c=relaxed/simple;
	bh=LuFaLCJ0xTPoiWwHiRW6DMu6C4be3/3wdgnHwU5aw20=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Z/J3WnkG+zx+WRoxg8sQ75B4ax0i82OZJ1v75mwLc1lBKUJg/ajFWjU5RcJxTMTVCrlfFsPtrz5AqrEgOuynGgvLkwTEg8eAPnUcoHfdob9U5tUnajBFZuonSFuhdT2j8vf6Ss755k1qBToFRcjMSwb5BcVTc/74zOwKvgwDiTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=N6Qx6lO2; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae36e88a5daso1058179666b.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752061729; x=1752666529; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7251uwJfwlSq32A9Vp2rgzafVtiNna6bej3YLziW0U=;
        b=N6Qx6lO2URXqxTheYpr0pbnhSDFAlFwTG/3+A0UDlh+TWi08qhFU7NLS4kHfJ5RkLc
         fqRyFyyn0x4JezJj6FOUIThCMs/mSSa7+IVNYFO/dejS4h+iFB2f2euXiN/jJpJ77mDJ
         n79c+jZGUU/mH7KnKAt/sJ/XW/eY6e616pUK+Y4m1F1gtljFQ5wsFy8r/JSUe8uaWx9l
         apeqCUr1j11/vrv543D2c5eUWITRibL2488RJCAlN7r23isPhIPVIYdUL1nT4sDtmqAE
         sne5ox5AjQzs9q3iDVt6MwYHfzlloI9WirB08iqZ5SMWr7qTg+hFeNWd3YcppJ8vH7Jn
         FhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752061729; x=1752666529;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R7251uwJfwlSq32A9Vp2rgzafVtiNna6bej3YLziW0U=;
        b=rLEcBl/+JWN8ewpBYp1+jweB2pzct8Trh0uU97+G0lINZZakNTHIHqPW++rtY8M7YT
         yZhEnfyIymZ2eI1aWYPxv2aG3MkZpmyz2OsAAfja7H8G55UkdnIjPsqdVD+PfvZwYqIk
         qEcrk3zrEcon8GeMgLuKORqba+J+MZcafati8qFSGqbQLjfNlJZJuBqYSrNUtmCZHbqF
         5bi0PeXk/BXCdLETaMA/EQEult9HkU1xJHVGTi67CoqGKM/wWH32/sx19xIb601TJSSS
         QTE8QHUtAnrlzfpJAp3ZVeRoKA5KJaImKf/1n3rFtvby8PZeAssiJ6fueS6ocy6Vbl6q
         A/ow==
X-Forwarded-Encrypted: i=1; AJvYcCW/cdG/msyEa/pwbOB1ggPq0xFrZSaUOaI5hlpZf9x4KiCI+Skvcw60b3Vh8yOAs0zViYcEycYzDdkq@vger.kernel.org
X-Gm-Message-State: AOJu0YzBunu4jXidfM4rkFQ3YBB2Awccd+XApL/FPzaOctCPj8Ogij5+
	Ku8ktRgeHbxe2pfbs/iOb7kjYtQ5+W87OG/xGDL2UrQ/JZC9ds7nKb0P3f7YWT83+Oc=
X-Gm-Gg: ASbGncs+qfECk+L895metoHcKWr/kOx7QY4YAjjmAImNDmk6Zwf1FdeZkCH50CFNSV5
	EUkjQjPnoGMZPKwmsSQ9sFeZSW12wR1hAqA+hRr1JxQ/PDFJHOu/yJbWr5Yba8h4xlckYMJv+N1
	KTNoIwVu47k1LQvkMnYGCSz8JwTilXfiGgvVWoi0TftSs+q131SJKhCr/HDJKGDJCzLYMDWTzHO
	T303TnX5VQnNvb7n3x9WidZblecQNIIwcTv9VDAjXG8YNOeNBO8WofC9ZNf46BFzkYc0yIn7sHz
	Vks9ErB3JTQDxZgeJzicNJ/421UsGyFWx96h+6MuUL7+ATGASKWiWm1HW2KXIWM0UDJOwHFIDCv
	PvrmQttuWyUEO+CxOwAdSmZHdazEgRLI=
X-Google-Smtp-Source: AGHT+IFHTk7KUMsYqkCmoCKYDOQn2JjjlDGYad8nB1UbcgqlsPnK+ZRxIkDwhxTp1MQMCfkMx5xzIg==
X-Received: by 2002:a17:907:f816:b0:ae0:a88e:6f20 with SMTP id a640c23a62f3a-ae6cf5b81dcmr253307366b.15.1752061728625;
        Wed, 09 Jul 2025 04:48:48 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6ac5feasm1091150266b.107.2025.07.09.04.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 04:48:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 09 Jul 2025 13:48:48 +0200
Message-Id: <DB7I1Q9TD02L.2A18QMRU7VXHD@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Taniya Das"
 <quic_tdas@quicinc.com>, "Ajit Pandey" <quic_ajipan@quicinc.com>, "Imran
 Shaik" <quic_imrashai@quicinc.com>
Subject: Re: [PATCH v2 01/11] clk: qcom: common: Add support to register rcg
 dfs in qcom_cc_really_probe
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Jagadeesh Kona" <quic_jkona@quicinc.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Michael Turquette" <mturquette@baylibre.com>,
 "Stephen Boyd" <sboyd@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
 <20250704-sm7635-clocks-v2-1-9e47a7c0d47f@fairphone.com>
 <64e27035-d124-470a-bc5b-66d254b6ff4f@quicinc.com>
In-Reply-To: <64e27035-d124-470a-bc5b-66d254b6ff4f@quicinc.com>

Hi Jagadeesh,

On Tue Jul 8, 2025 at 7:34 AM CEST, Jagadeesh Kona wrote:
>
>
> On 7/4/2025 12:46 PM, Luca Weiss wrote:
>> Add support to register the rcg dfs in qcom_cc_really_probe(). This
>> allows users to move the call from the probe function to static
>> properties.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  drivers/clk/qcom/common.c | 8 ++++++++
>>  drivers/clk/qcom/common.h | 2 ++
>>  2 files changed, 10 insertions(+)
>>=20
>> diff --git a/drivers/clk/qcom/common.c b/drivers/clk/qcom/common.c
>> index b3838d885db25f183979576e5c685c07dc6a7049..d53f290c6121f31d06cf244f=
72603b694966e216 100644
>> --- a/drivers/clk/qcom/common.c
>> +++ b/drivers/clk/qcom/common.c
>> @@ -390,6 +390,14 @@ int qcom_cc_really_probe(struct device *dev,
>>  			goto put_rpm;
>>  	}
>> =20
>> +	if (desc->dfs_rcgs && desc->num_dfs_rcgs) {
>> +		ret =3D qcom_cc_register_rcg_dfs(regmap,
>> +					       desc->dfs_rcgs,
>> +					       desc->num_dfs_rcgs);
>> +		if (ret)
>> +			goto put_rpm;
>> +	}
>> +
>>  	cc->rclks =3D rclks;
>>  	cc->num_rclks =3D num_clks;
>> =20
>> diff --git a/drivers/clk/qcom/common.h b/drivers/clk/qcom/common.h
>> index 0f4b2d40c65cf94de694226f63ca30f4181d0ce5..dbe7ebe5b8710fb03c1671ac=
9022e608a6aad35f 100644
>> --- a/drivers/clk/qcom/common.h
>> +++ b/drivers/clk/qcom/common.h
>> @@ -43,6 +43,8 @@ struct qcom_cc_desc {
>>  	size_t num_gdscs;
>>  	struct clk_hw **clk_hws;
>>  	size_t num_clk_hws;
>> +	const struct clk_rcg_dfs_data *dfs_rcgs;
>> +	size_t num_dfs_rcgs;
>
> Since all other probe configurations are added in qcom_cc_driver_data str=
uct, it is better to
> add rcg dfs data also to qcom_cc_driver_data struct instead of qcom_cc_de=
sc.

Dmitry suggested to use struct qcom_cc_desc:
https://lore.kernel.org/linux-arm-msm/w4eujq72uqflqpsqshc7zhu6lkc7owufep2g2=
rjacvzgj44vmf@auonp4ugbgow/

I personally don't have a preference.

Regards
Luca

>
> Thanks,
> Jagadeesh
>
>>  	const struct qcom_icc_hws_data *icc_hws;
>>  	size_t num_icc_hws;
>>  	unsigned int icc_first_node_id;
>>=20


