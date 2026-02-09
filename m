Return-Path: <devicetree+bounces-264051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ht4F3/+iWluFQAAu9opvQ
	(envelope-from <devicetree+bounces-264051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:34:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3989111F0C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:34:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25444301F31B
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8784537F733;
	Mon,  9 Feb 2026 15:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="n7IhtTW3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B778237F11D
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 15:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770650904; cv=none; b=a3eHbN5HUYbkCv1OikZAKvY9BOXWHUHCppxGw2b33J/KAPt3IQGFrmmt2dSiOfDyQ688StWC1BbkA4tpaATJcvzfe75m230WODuqUCabyEApTPIt19LvMX0DcQoxSlT7Gln9a+q4uMqsAA4XRXxzn5nVxCQUoAcNs/5O2EtHZwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770650904; c=relaxed/simple;
	bh=DTkjd0tNFRfFZrVjzA71TMao0DYCnAq9XUrVmaOJWbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=bGPjjOaffbQNo04hQg3FYsxOB/OZXVuYhAMDflo8Zk5okbncMZNt4DBzt8/UWsAqMNaiVHyUsU1RBPnM2VI7ekjrmqajBHfvCAvBMFyHHlNbQBc/829eezeJuFQk2PHyWonzUQnbYqRdW9vgS7NWsDsoSaFvpFpTF66FB7wOvY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=n7IhtTW3; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-45c838069e5so3148106b6e.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770650902; x=1771255702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9KZTHcq5eFjr9M/3mrNSgDFRjuluDN92D/wtKMFTk4A=;
        b=n7IhtTW3STJNle7++iMfAeuQvnynGeL+/R7BZBFHavWmez6as9nYPTkQqxk3ACnkPo
         ccUBvAKe57b4axD876mXMorFGSBF84VrwIZhaUenYvOsQZxNekL/P853sJs+FaLJkVmU
         q+YFVxK+Iyz/wIjp23w+6rPENtHk0765gImweDHLggXBeY63009AJEgiICdvRntqGohq
         bdShYlnO2xVLvVSb0HEcMDf5Q58xJwBnFWWVJVhyeS03miv6nCUVprwAAfUgzebyr9ja
         7J/HCpKDNP6bSfrBddNhfzze3x/eXyNpaSPx2gQ+0fydPCZyryR9fylNliNN1EZGZxnQ
         GAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770650902; x=1771255702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9KZTHcq5eFjr9M/3mrNSgDFRjuluDN92D/wtKMFTk4A=;
        b=H0ZTDgYOEYujuWF+OCHmMTcAW3AxioP+K21ugawJwGWwt5JKTxRVLzNlQeBxMNW4Cz
         LKb3QHAS6cqdhFaLxkQD3CSXuY6fhqdKWThX0z2p+LGwz0SE5r23Xgiy76wZt+HGnTkV
         hXeZTKtwWGtwpYBH5DC+mrULx73OdKUVO/E5YqmYRlPB7tE3SvLnI2BpjzqLRSC4vg3n
         fKOwFBqPFFjgxbNVbeicC9c2fnBnRElXmIn0ZgvTvr/e/GbV39z6UPfrLvlLoldS0cGs
         cP+7b5/yJ85PZ68DI74bhg7SLR1vSecCQK3B96Z3E5fw0EZOnsVctnoG+Zl6q3gY1UZf
         CxPg==
X-Forwarded-Encrypted: i=1; AJvYcCVs2DUy45IUbjTzLzSpuTparnPdZjx92J+bd965dwRbLcfljQtgnC0k1oYbhiyC/tCHZodrarmrLFqw@vger.kernel.org
X-Gm-Message-State: AOJu0YzVYq2fxvzl4DQXCHZdsYYrOh40jtENOLdUIu4526k9O7NzqjFP
	Ni8WC9Ybq4NY68eaYYmhbErCCHqxQieDJsb3bGgHmik83O9lok1aBendqSBrT4YJfag=
X-Gm-Gg: AZuq6aI4XOx+KLpVXQDrTpQzH+QIcL/B3DZQ9JmlRHc/0atejFfLgy2pfnNNty+XIv4
	E4+Q2B1J1qst2j1HQzpgkPCf9d5pwGdU8X83/3tGUynzg6HHiOckx9I4gXjXskxYjEo+Vxg6o5O
	XmMxFw/WZn324suPAvKj3E8z8kXe50H0Xmwv1s1k6JMduQBaU7K0aaE+X6YjIjU91qePibhBzUp
	q64uSfCIupapNy5cuhb3MIPzzDwnt1VirCXIYUJeNdgvEHoeOq4sXa04cGGururUsmO3sS6pw9u
	DSJ54oOT1u5gyeaWvEWitvdGelCvnwLYH9En6x0RYvA4k2DvCTaujDC9V319R7qDU5XPcDi/q71
	76/2ZzN5qJ6/nk4aZQbKxl78Zi3pI4h7gZ8J/mKvjr4sgvZfkzXyCqJp5bvLjTBv/JOc1XvaNS4
	aesPDdHHA8kzwekoL1Lw52MpHCC+dXpQUXG52WiDiK8OtUzNE6iRucKrbHD9Mf
X-Received: by 2002:a05:6808:c198:b0:45e:aba8:124e with SMTP id 5614622812f47-462fcf53c0bmr5694687b6e.23.1770650902598;
        Mon, 09 Feb 2026 07:28:22 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cee0:eb0c:b683:ad1d? ([2600:8803:e7e4:500:cee0:eb0c:b683:ad1d])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-462feb0d786sm6700789b6e.11.2026.02.09.07.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 07:28:22 -0800 (PST)
Message-ID: <becd9db1-818f-4aa8-8362-91a711861839@baylibre.com>
Date: Mon, 9 Feb 2026 09:28:21 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] iio: backend: add devm_iio_backend_get_by_index()
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
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
 <c731b6fba72286707821ea6e7722835ba45f089c.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <c731b6fba72286707821ea6e7722835ba45f089c.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,metafoo.de,kernel.org,foss.st.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264051-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,analog.com:email]
X-Rspamd-Queue-Id: B3989111F0C
X-Rspamd-Action: no action

On 2/8/26 3:24 AM, Nuno Sá wrote:
> On Fri, 2026-02-06 at 18:07 +0200, Antoniu Miclaus wrote:
>> Add a new function to get an IIO backend by its index in the
>> io-backends device tree property. This is useful for multi-channel
>> devices that have multiple backends, where looking up by index is
>> more straightforward than using named backends.
>>
>> The new function directly uses the index to find the backend reference
>> in the io-backends property, avoiding the need for io-backend-names.
>>
>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
>> ---
>>  drivers/iio/industrialio-backend.c | 51 ++++++++++++++++++++++++++++++
>>  include/linux/iio/backend.h        |  2 ++
>>  2 files changed, 53 insertions(+)
>>
>> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-
>> backend.c
>> index 447b694d6d5f..3b692d48481e 100644
>> --- a/drivers/iio/industrialio-backend.c
>> +++ b/drivers/iio/industrialio-backend.c
>> @@ -1008,6 +1008,57 @@ struct iio_backend *devm_iio_backend_get(struct device *dev,
>> const char *name)
>>  }
>>  EXPORT_SYMBOL_NS_GPL(devm_iio_backend_get, "IIO_BACKEND");
>>  
>> +static struct iio_backend *
>> +__devm_iio_backend_fwnode_get_by_index(struct device *dev,
>> +				       struct fwnode_handle *fwnode,
>> +				       unsigned int index)
>> +{
>> +	struct fwnode_handle *fwnode_back;
>> +	struct iio_backend *back;
>> +	int ret;
>> +
>> +	fwnode_back = fwnode_find_reference(fwnode, "io-backends", index);
>> +	if (IS_ERR(fwnode_back))
>> +		return dev_err_cast_probe(dev, fwnode_back,
>> +					  "Cannot get Firmware reference\n");
>> +
>> +	guard(mutex)(&iio_back_lock);
>> +	list_for_each_entry(back, &iio_back_list, entry) {
>> +		if (!device_match_fwnode(back->dev, fwnode_back))
>> +			continue;
>> +
>> +		fwnode_handle_put(fwnode_back);
>> +		ret = __devm_iio_backend_get(dev, back);
>> +		if (ret)
>> +			return ERR_PTR(ret);
>> +
>> +		back->idx = index;
>> +
>> +		return back;
>> +	}
>> +
>> +	fwnode_handle_put(fwnode_back);
>> +	return ERR_PTR(-EPROBE_DEFER);
>> +}
> 
> I believe we don't necessarily need this. Why can't we use io-backend-names? I get
> that in here we just want something matching the number of channels we have so giving
> names is probably does not add much added value. But still, I would prefer t have
> more simplicity in the API and it should be fairly easy for the frontend to use the
> names argument.
> 
> _ Nuno Sá
> 

IMHO, using names in this case would just be annoying because we would have to
sprintf the string to add the index to the string. And also have to spend time
coming up with more complex DT bindings. Using the index seems much simpler.

If you really feel strongly about it though, maybe we could make a
devm_iio_backend_fwnode_get_fmt() function instead that handles the
sprintf() part so that we only have to write that once?



