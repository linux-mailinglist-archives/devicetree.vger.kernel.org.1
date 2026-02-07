Return-Path: <devicetree+bounces-263636-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLACLd2Ah2lQYwQAu9opvQ
	(envelope-from <devicetree+bounces-263636-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:13:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBBA106D25
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E3A63012BEE
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 18:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3D92FFDDE;
	Sat,  7 Feb 2026 18:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WAzKmzuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF31A2EAD10
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 18:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770488026; cv=none; b=hHju0Xju3/eFt3vvx7JDEvM8DgocAV4E1Ru/bPzr4PkPx7HwvqUIW6uI+HA2JnyrAHJ3gAeHOw9Ibuq/RsDmW6L2uexFQdF4Xgx/A9TPiVQJIOx9/o+EX+HOOrbp2lYPur9RsYIoZJbXvf0eoLyukpjFhm29NhzXR5VkHhIXzZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770488026; c=relaxed/simple;
	bh=VVehCyZb7ZKZZHn5tlvmr/MsuVCnRwTQpqyQj4UtmHY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=tm1uUf7qcCUvR2EYJegod5+vfV5MDUXWyX282ouKvW3opjU3hJ3Dy+yQG9brIDcTwmt4oI1wJJ1InSzyA7kq4Dpi8uOdtZLcbJKXA1JlCZ+0w703XJMEG9FLDLzCd8+TFPsx84p2/7l3k1Ioy5GbtiGLMrhdJgb3AMAmO1XIBV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WAzKmzuy; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7d1916d1e24so2424631a34.3
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 10:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770488024; x=1771092824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tgp/KQONA+9TwYMY5yMwLxiWV0XsEspUSrew8y64ohg=;
        b=WAzKmzuyYMhPqB5ap6uwtTqxHSbEdEW8WwtEfJiXSG0R6zailiFCKvXc5OhHNsflvd
         mItnM0U9lYzTLCuUBaf7MM+f90BpLDsE/XmNz9SIHkQoW8ITWWcsBs62Q7QW+SV+GnUi
         6tKPU0KGOmYvm4UIGST2ZnHAxDzIcs2J53rBFvFPPsAvs+4PbQky4ePJyoPwlvlC9tUE
         ki6Yg5J3VWZZ6WUB/mijSieASK8lMeV70Kpoo8qLxYzbgaqmoR2s5/r/pWoPaUanrVZK
         xWC2xdKJOAoMbIpJEWTCFPlzVZiq38vN8pG3Ji4ZEUkKQJO7VH2qP3qW1sJVQuNrAWzm
         gG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770488024; x=1771092824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tgp/KQONA+9TwYMY5yMwLxiWV0XsEspUSrew8y64ohg=;
        b=n23MKUOeBZnTwBQtJ6m5tWvbCPhbAhKw5QiEy0WSqpNDXHajFai82jKYsQXzz4YWiv
         s++nTzGSFV6bRR1JrRn99LXiC0vMRdm0yxoWbHn91o3/yaFhDfUQjE6/VquV09+/qAPz
         eFNU+MYfduCidNRpRgyWtdz6OfF7cY5a2Jkk3nk1sXP7pEfwfsiDhoeD98QJZnbVuJn+
         U7T+ZSxsKlRoYIZ3VpU2HL0Ijk3uco89w9fQ+TJB4xy+MW1txB+n4Ginjd3sUZdf5Ytr
         lIPxcTHRqaIScDwRsOiydYIGTTFvRyiILT0ijozT3WR5ponKDX5akvfWDf6If9snP55f
         gqIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTjpfPWkpIhm/gW6I042KthBaxByxRz8D5Z1OiBO1z8es8jwu/mGWW/nj4qdi3dHzpBHK4irW9edwI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0KXZ3vNU/PTpntPle1jVKJEhKNWwwRt6HJsJG4Owp94A9K1qS
	axJMqUOxkj6DsNWStgAtkioGXKWJ/BDu9lAi83muqKW1o9fdDdBL2gyvs1T+kvqjXw8=
X-Gm-Gg: AZuq6aKADiJ6fpqzmyBnTerFohGFrLm2ODf1HGJi91g18c8P1ZKoyxMJezHB3FysqFW
	v2BuMB2SF/YEHsnl6mSs2alSn83/jtTaLfxoOdd1KMIKTomagHPxPHGfcIQOsmi8Po+S1jYwp5q
	2WohYaAjofLq3qKz0yQMWT6Vp0S5TdGg9nKAg7lZmj/bxZsgqqDVq1SZVjtS4JnNcPGsGmcksDI
	a/vi9e0O+tpeICyJp87JnotIAMMPI3TWeBDGezANAj0YA4HHpmHEiiAQsxYh/WXhyzkjPjyCCQ+
	rmYnf17zovTWzMqBRHu3NrKN6B7TwrYsnVGiXrpGjDF8Y5bsNKI6RQ56Tv7QoBN6L3Wo6zw8lyC
	XntFlPsh6SR3p/rbT52bsM+fztNgKQrUgMi4bkpnsQ0IqzimikMGecRQImawEJVPb9TYuRX3csK
	/cFyIYYTcGS10COdKYWKjfE9M2Mmq9hHrTjX0+2w6BdKDt0vxVBbW18P7bKsstincxYfZI
X-Received: by 2002:a05:6830:638c:b0:7d1:4e51:e45 with SMTP id 46e09a7af769-7d464485cdcmr4167077a34.17.1770488024677;
        Sat, 07 Feb 2026 10:13:44 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:74a6:843b:f33:21ae? ([2600:8803:e7e4:500:74a6:843b:f33:21ae])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d464785674sm4115004a34.19.2026.02.07.10.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 10:13:44 -0800 (PST)
Message-ID: <ce4849c0-eb27-4268-8c4f-090a6396513b@baylibre.com>
Date: Sat, 7 Feb 2026 12:13:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] iio: backend: add devm_iio_backend_get_by_index()
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, Mark Brown
 <broonie@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
 <550323d752213f177b7673bdd42e667f1d2228cb.1770393792.git.antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <550323d752213f177b7673bdd42e667f1d2228cb.1770393792.git.antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263636-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.988];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 1EBBA106D25
X-Rspamd-Action: no action

On 2/6/26 10:07 AM, Antoniu Miclaus wrote:
> Add a new function to get an IIO backend by its index in the
> io-backends device tree property. This is useful for multi-channel
> devices that have multiple backends, where looking up by index is
> more straightforward than using named backends.
> 
> The new function directly uses the index to find the backend reference
> in the io-backends property, avoiding the need for io-backend-names.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  drivers/iio/industrialio-backend.c | 51 ++++++++++++++++++++++++++++++
>  include/linux/iio/backend.h        |  2 ++
>  2 files changed, 53 insertions(+)
> 
> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
> index 447b694d6d5f..3b692d48481e 100644
> --- a/drivers/iio/industrialio-backend.c
> +++ b/drivers/iio/industrialio-backend.c
> @@ -1008,6 +1008,57 @@ struct iio_backend *devm_iio_backend_get(struct device *dev, const char *name)
>  }
>  EXPORT_SYMBOL_NS_GPL(devm_iio_backend_get, "IIO_BACKEND");
>  
> +static struct iio_backend *
> +__devm_iio_backend_fwnode_get_by_index(struct device *dev,
> +				       struct fwnode_handle *fwnode,
> +				       unsigned int index)
> +{
> +	struct fwnode_handle *fwnode_back;
> +	struct iio_backend *back;
> +	int ret;
> +
> +	fwnode_back = fwnode_find_reference(fwnode, "io-backends", index);
> +	if (IS_ERR(fwnode_back))
> +		return dev_err_cast_probe(dev, fwnode_back,
> +					  "Cannot get Firmware reference\n");
> +
> +	guard(mutex)(&iio_back_lock);
> +	list_for_each_entry(back, &iio_back_list, entry) {
> +		if (!device_match_fwnode(back->dev, fwnode_back))
> +			continue;
> +
> +		fwnode_handle_put(fwnode_back);
> +		ret = __devm_iio_backend_get(dev, back);
> +		if (ret)
> +			return ERR_PTR(ret);
> +
> +		back->idx = index;
> +
> +		return back;
> +	}
> +
> +	fwnode_handle_put(fwnode_back);
> +	return ERR_PTR(-EPROBE_DEFER);
> +}

This duplicates most of __devm_iio_backend_fwnode_get(), so we could modify
__devm_iio_backend_fwnode_get() to call this function too.

