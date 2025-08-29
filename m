Return-Path: <devicetree+bounces-210622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E11B3C33C
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 21:41:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A92D13A8F75
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 19:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46DB6242D8C;
	Fri, 29 Aug 2025 19:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3YB22hFK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080AE241CB6
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 19:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756496209; cv=none; b=kFTZQr0lzYjh/oG8LGAP5o64HFNMEDl4ZU/GMb8GkkPvEVfNIuyMgLQ8mI49z4Irh4WY4VTeu7QG2/VluiAcnIivyolLWpD2IRoBzMJ/nxeNihAkwIPqs1Yp6JrX0lVpipwfihOnGMcDdcdFns1hDBIE+D4DgIQM+hATzrqmRRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756496209; c=relaxed/simple;
	bh=j9/zs3DzwPfXvdpJMbMm17iNjJOHTALKsWVQf588f/o=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=kfR5vapbodbKyaUhGBNdBY2a3/xXEy2ytU6Tnmug/sqBlvgr80L7B3XZOcAQRX3thMJtuYXvWPQHZzwQSTFUsLk1Jgo8YiAwmUADHJbh3VkdLCVzMtlHz3jn+pVC3qCqYkFk+i700WfgL2G57URJiRtsL3xoZCbXAj8cuGKHeVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3YB22hFK; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-745514a7b1fso698162a34.2
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 12:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756496205; x=1757101005; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l5wFPgG8+kGlbWw0vVHwkPA8651tLivp0zt7xRaHtk8=;
        b=3YB22hFK6t/tWAsBKlKwIe+y4BqHv9b7EEKyPgQ10U2aXjcFWuSL3I1yW8D6Hw0AW+
         krM3S853kjMEqZVJpOki2Tu9gQIpM04wBzvzlulmLmOnE9i6Hw4B9R9YGU+z1NJGh0Hm
         tMXrn6++BztBP+yPkmhwaF6NMQvNBu+iiQn12IDQEQYSdxNRq7kClOOp95Clvh63pxn/
         O92G+SPrSuVMmgAe0BXGuECloqoeD61rEAf8+uhMDateSrvnCFYeCmSRLqN/Rv5e+fjp
         5WHTABzYyAjls8twh+teG7hVJxDaTVZesukl78/MVQHpehJw6gA1HbA2IpjYkk+v8lhc
         Py8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756496205; x=1757101005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l5wFPgG8+kGlbWw0vVHwkPA8651tLivp0zt7xRaHtk8=;
        b=eIMXBoXbGvwYKvfebPb8di9Nq+x5lmJxS0vBbICJOXozmIUZgRDoarzAbWa686COet
         uMNqosDrynVSoie2q3OmNs3dt4Vx5UUu/AxN7UjRyMddAzv4W52/RoojrqE/qsO2Y6rl
         pLXNgktwqi65pmp7sSH5SE8elghY3tNzfsrNK/xD67SbY2MEWRL/hUeMJFlHqXg8QLqM
         VjqNQPzdCKtVnVaVTeSyVfHoccPMlhRaSnoeo1t70VZaljJ1jKBtKFu2L0LtKcDlAaWx
         jguwkwoAkEdFboxOdq8A8p39aTdUg5RpsDD0RJGx/C/x/j7VGdy4T04xZm6vvWxKBOCi
         w2pw==
X-Forwarded-Encrypted: i=1; AJvYcCUgTk0v8P07IGspPW5deSplIbXP0XGibGahmSMWo7XDy3bpbENsj6n10aQZnikqgKJtwAgDbbZsRhLe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3yvjBaSuJYEQZ3Gh1MqQLJeO4RY3gCsAbgaaugCahwzUPJ4xb
	XtylsWQ+TaY/vyt+NQE20CbNJwkHaueDc1ZGmU8vqF1d4yhBLIDpWSgxM1j6pHepf8E=
X-Gm-Gg: ASbGncsZH5NYhAP4ORdmH6o+7sP5cnB7LdsRq+DFGynPtAo/ky78JqtSUItFx+/zdaD
	4Tg5HW4Su5YVxYA6ZaEWuEzmP9XtssfcEREtf2bif/9lKJNszFrKj2fepftqMKXkRY1BqSK0k5j
	271c95VlpAMWHD7goub+W0cYndWZMIj0ERFyIRnV/L8WQ4OKnCASRI2boJAqylJy02NCw6GootO
	BM6gkxYHipK5t5FDDp2/HJy8Mc4dN7f0P7Afk/1g+EQ9zvSV51wNU7rUE5ut8svqnOWU9LIzOr+
	CFXr2u9wv8S754kxQUwVHN8l8HjbHnvv7syjW3m3wmq5QjS+uVdsrdzlE/I/DGAJ3WEGv7IVJ9B
	nQokJw3YedduFy0EwDYxmnaj+qyTF6a8n0RMRTrfBVGxN4CX4/U9loEPUEfvXVaJ2VfTbhsyLIl
	pYNSqAx0Ylow==
X-Google-Smtp-Source: AGHT+IGbpxjEich0l11Kif6Yw3AW0cxQTiekdjGQDOk7KPD7cDY7n0i8k2PCtI5oXon+AaezHGCtMg==
X-Received: by 2002:a05:6808:2187:b0:437:d7b0:878c with SMTP id 5614622812f47-437d7b08d5dmr5070233b6e.20.1756496204928;
        Fri, 29 Aug 2025 12:36:44 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:8d0a:2553:5881:1318? ([2600:8803:e7e4:1d00:8d0a:2553:5881:1318])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-315afe69465sm1589729fac.28.2025.08.29.12.36.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 12:36:44 -0700 (PDT)
Message-ID: <c4336dfa-e185-429c-8e96-99a3ea99322f@baylibre.com>
Date: Fri, 29 Aug 2025 14:36:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/6] iio: add IIO_ALTCURRENT channel type
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250829115227.47712-1-antoniu.miclaus@analog.com>
 <20250829115227.47712-2-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250829115227.47712-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 6:41 AM, Antoniu Miclaus wrote:
> Add support for IIO_ALTCURRENT channel type to distinguish AC current
> measurements from DC current measurements. This follows the same pattern
> as IIO_VOLTAGE and IIO_ALTVOLTAGE.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


