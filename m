Return-Path: <devicetree+bounces-95070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F451957F83
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 09:25:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E05B2B24FC2
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 07:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D70B18005B;
	Tue, 20 Aug 2024 07:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NcdUsqbl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54D516D33D
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 07:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724138709; cv=none; b=Lfkkk7Pqpk2mn0Dq9amC23wJeAGT08AMHfjyp/rtE6QPJU4p/EAWYMrSpf06HYRL/c587lLJ8/kugrKFSav2Hkq980HC6WcnatpjW+1QSEeUJGKdIF5VKXEL2d/MpQ0fBLfyflW4AEwwLLMITnWuinEby7wLvoq1OWJj6QzTS1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724138709; c=relaxed/simple;
	bh=dgqu4JYBQj2QnVeSbZK0OLE8UCJZ7xEm/wPtjtV1EH4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JnXXjEWd3MzMyYusy8HjaE52GQatNR1tgzI146UJ2OKx6QrGl7N0qE3hpZLAmUCPXU5hCPKg1/qiGCUhi1iubyLhUjM/uHPCai8l9OSOP92DmNLPoBdz0eWebLRb3aUXKEyYK0NMJexcCqArH4OZd0/PaxgHe+fVZg+UDGr5tzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NcdUsqbl; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f3b8eb3df5so51978031fa.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 00:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724138704; x=1724743504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KY+Pn7UxCWwux6Nl2NUqCDNWg2E6CQrceaqKs6911ps=;
        b=NcdUsqblH5apsH4vsbX0zy/PenbHRfhF2aQRPp5SXI4EVc6Ju1N/eCcybzg4R+vQxz
         HRpP7t7spq/b5O8wWy/BU9R3Iim2y7LdF1dCd19tJZqFw03Qhxhk6zIoeQv9MSJSIJFt
         7RzMHLWF28hHUxdscfRx/jAi3CxvdLjB4mF1s8Txmw6wtyNxyud57WHtralQ+/lDE/r/
         FevvXmXGHgh+pqTdEl4SB+gYUOmktDy0KwWWz3evMkyyw+JLRbdNSJRHVkbbeOzFhuUs
         JyrMKbQkcb3QN5+WnXXMxjUBplg8C44ge+/YYLWmeNMGjyi5FdGxABeZrx8yOBUhFtGU
         09dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724138704; x=1724743504;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KY+Pn7UxCWwux6Nl2NUqCDNWg2E6CQrceaqKs6911ps=;
        b=jGLjlFuouSZzurUkSGtFpj5Fio59h16QcO38dN9rVi3o3Bwd6hovjIIpe20Hp9ytXJ
         qsrx333jF2MV+DzlhtnN+aYDYdED8Uam2TdDP4VMABd/tQ5dxfFYdeYX24Di35Gq7vdF
         sVEpUjGgVcghjYxtRUCvUCWKWHQMDqJg3iQAVuK3r7zdcYUABA+V/tsgG+0poeSw4Fn5
         CpwBIT6IkN116vhdyCFK5gx7/9EYcAu86cPlOqoWjpKrGs7S3vDdXPvz09tHR9fMlilZ
         a1UlM46ZMw238oYggyxzHFaxUMViVlX8ABd33tLkzgrDFFVMsGSJqLKk3DVA5ZXuB2A1
         rwQw==
X-Forwarded-Encrypted: i=1; AJvYcCVfPgNaz1SID7HTqQ/n9gSwVVbpgBOLcChyGVQX25yBXdjhZ2VvrCtEHYC4KaaTwq3El5hiC8dfJhXUjIcAxnYJwL7EKtfevdLw1A==
X-Gm-Message-State: AOJu0YyaYaXv6Wgbp7fBI5z7+ok76DeXZc6QAX90dcjSKrGhVGziaWxM
	EMtoFN6UIg21AFWJAQ4OsufU/1Ej2QJgyh2UhBk8aNit/MsJFc29myFMwZjm4jE=
X-Google-Smtp-Source: AGHT+IGTPNA2s+cNW2f69+8kmFELCsr7npIzZBbuC3yWFsocerzVeG9BMezpjpbwoOvRtOjCVaH9Zw==
X-Received: by 2002:a05:651c:b06:b0:2f3:f1a7:9813 with SMTP id 38308e7fff4ca-2f3f1a79bf2mr1817831fa.43.1724138704232;
        Tue, 20 Aug 2024 00:25:04 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bf0b0cc99fsm684362a12.49.2024.08.20.00.25.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 00:25:03 -0700 (PDT)
Message-ID: <c9a466cc-97b5-465e-8420-ce69f307b362@tuxon.dev>
Date: Tue, 20 Aug 2024 10:25:01 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/11] i2c: riic: Add suspend/resume support
Content-Language: en-US
To: Andi Shyti <andi.shyti@kernel.org>
Cc: chris.brandt@renesas.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 p.zabel@pengutronix.de, wsa+renesas@sang-engineering.com,
 linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
 <20240819102348.1592171-6-claudiu.beznea.uj@bp.renesas.com>
 <ajj4fwoob5wq5guktq2b54h55fn5qlcakiybq6pk3xagiops7d@abpwevzemidy>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <ajj4fwoob5wq5guktq2b54h55fn5qlcakiybq6pk3xagiops7d@abpwevzemidy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Andi,

On 19.08.2024 22:37, Andi Shyti wrote:
> Hi Claudiu,
> 
> On Mon, Aug 19, 2024 at 01:23:42PM GMT, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Add suspend/resume support for the RIIC driver. This is necessary for the
>> Renesas RZ/G3S SoC which support suspend to deep sleep state where power
>> to most of the SoC components is turned off. As a result the I2C controller
>> needs to be reconfigured after suspend/resume. For this, the reset line
>> was stored in the driver private data structure as well as i2c timings.
>> The reset line and I2C timings are necessary to re-initialize the
>> controller after resume.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> This patch doesn't have tags, so I'll add mine :-)
> 
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org> 
> 
> Just one thing, though...
> 
> ...
> 
>> +static int riic_i2c_resume(struct device *dev)
>> +{
>> +	struct riic_dev *riic = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	ret = reset_control_deassert(riic->rstc);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = riic_init_hw(riic);
>> +	if (ret) {
>> +		reset_control_assert(riic->rstc);
>> +		return ret;
> 
> Can I add a comment here saying:
> 
> 	/*
> 	 * Since the driver remains loaded after resume,
> 	 * we want the reset line to be asserted.
> 	 */

Sure, thank you!

> 	reset_control_assert(riic->rstc);
> 
> Unless I missed the point :-)
> 
> Thanks,
> Andi

