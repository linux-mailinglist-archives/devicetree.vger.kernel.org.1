Return-Path: <devicetree+bounces-262313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBmILDEYgmmZPAMAu9opvQ
	(envelope-from <devicetree+bounces-262313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:45:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AED1DB75C
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73A13308F9D1
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 15:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8865D3B9605;
	Tue,  3 Feb 2026 15:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JWYzJmqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E973B95E3
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 15:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770133272; cv=none; b=lBbSxa/nzloAIMGEA7qinHDv7SbRkrnlzYwslZpMaIwlLMtiQJPE57FXi2efmhk5TVFoJ3fbxSZwY4xpgrMgUPQfKg+QOv8aEgGz48biA1Xdk6K6eKIx80Ci2d7KmL3c4K+dsldQV+JmaWoAZzRqO1asjTnrnnajX22QumsHxDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770133272; c=relaxed/simple;
	bh=1LJxSgDfu2qHVQ0BcLX0FLZBAv55EAAcPTpRZxMhd0k=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=kVTStRDpSEfaU9637slroRIUCy37NZEULGrwgZGB54qx2WoYGZ/FwipTNentURT74bhLA0r1FEb9f+TubWHX+d9R7ol4ToxZH7Wto7blzfZyYXxgswN139YHGgIiT2ZmBZFMQ1inmOeQ0XRVwHGiBTDOoIj05uAKoGjqFT7aJiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JWYzJmqr; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-794d4c34bd3so25690047b3.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 07:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770133270; x=1770738070; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y+dHBcJ0EB1oMWtqDa79JLU2lSQMRC9g+f/II9Wq8ic=;
        b=JWYzJmqrJZlDuWM1M5XSmQVkgjbQcC7n26n23tCf3PGLlAdKUMHG3fwNQyMmVm3ZkA
         K1V+/fe3vNvj9m2gpSXu7EXOOMCMLYTpAIMUoNTCUJW0ni7iz/z7Fm7rPcR6KDQq7xK4
         ItBSQRcNiyDYGU9SwuC1FC/yFjrozk1SC56D913jf+Ua85WQ1j/kmZVsmYiHoygrctCU
         TeXJVuXmZBXolSbyCba4DGpse3lDmguwg/wiBjGHL2o17ltHCvkFuHQ+diVXfAL+GGqM
         4HMLpjX2VLE66GvCE68ai7nPtr72lbMMIBjr/h+BZGUR/Dp9v7EFbqwryxuAvUhAlaiw
         eG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770133270; x=1770738070;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+dHBcJ0EB1oMWtqDa79JLU2lSQMRC9g+f/II9Wq8ic=;
        b=clN2N10oYLeDTAP1dXmeoUBitl0I+tJ4RJCoQBl4uwOKg+fckGylxqOxywa/KZQ09G
         SaIOFxFBVfZVvOjIxzQOuACD3M/t1Y3Qvc8xbzLhgoRi6TG5BprNuSWpUEfVFcIZ333A
         vnQBufTSgKZD1QDWW10FuNSDvoytW9wd7bRTHF1g+FvYOSQexwQPfj7Hl4BeFAG8RDL5
         1pr/3lOG4x3XTcoEfvNfo+OisXMgkblq/7+1XvrGoDNtOWaKYD7uTAX8iSULdpECYOXH
         tRDDLY16yP9Y8WaNq8eukf3zIB4+JloBr4x53RtclGKbmRxuDW0FEO8cspC+EszIOZLT
         3tlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwJSukg+gP0AjOtehYaedZ3oj4yTI8Cn9WjzGmYLlGDW1NxpCYY5MFghPemCcHHGdI995B+AZxA9dg@vger.kernel.org
X-Gm-Message-State: AOJu0YwZsmToMujb6gj59sSr3Z+H7pM/9M5o6RzT/ovaOA7EYrYladQy
	wFGsSRo00knw+XI9WsFIBTOUMvAqDQ+53twlseV/opH2s3o3vvtiUEm3
X-Gm-Gg: AZuq6aLPdBcJ/+h6bRFIMWJhKbW0s1QLnxufzTVfH6vWTL4mkeruQQrj7xV9H0PAxkh
	4IuqcZxyGZ7Af3rEA1EHK8liqJU+DaIFDDwZH41RepDXAvoX2zUkwafZEPGlbpwzIXP3luHj3zB
	P8oh5howtZ6mtyw3JyjA6jMy+d9kvUcmpllmFFSAq0IU2D7bzhxwHG9l3HXmK0hDYkIiWx4i9Ce
	i6CXtDMQiigOKgqJqFjP73UT1uQw4feYb2DpUUoegcrQ01DY13nYepkNnPOGBhVX3aS4kXP5SuY
	fg9rxXk8IQOelxzfDvGwWqG84C7tZvaxSLqkCJgNPZs38ClRCKhcU3pP8As8R6hiTUbyQkbe3vr
	+ryGBt4mDdlA17hGc4dGYMQesXJxAtUgPIUJp5SwvwAD0UoJW5ocmOZFUrldR/z2lEsQEwu49vf
	VGEyvj3rUghAJOPw==
X-Received: by 2002:a05:690c:260b:b0:794:f3df:80f3 with SMTP id 00721157ae682-794f3dfa1a8mr32368167b3.69.1770133269769;
        Tue, 03 Feb 2026 07:41:09 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649b30b5825sm8121645d50.24.2026.02.03.07.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 07:41:09 -0800 (PST)
Message-ID: <372c9172-ea01-4a3a-b737-3f7f14519791@gmail.com>
Date: Tue, 3 Feb 2026 17:41:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: Re: [PATCH 2/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
To: David Lechner <dlechner@baylibre.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
 <20260201-cm36686-v1-2-4949a2a9ba63@gmail.com>
 <eb922433-3951-409a-a397-b48efef57b7b@baylibre.com>
 <b133521f-434d-4972-82a3-6e7978e557bd@gmail.com>
 <086d6b35-8c19-4e92-9cd1-557b98991d35@baylibre.com>
Content-Language: en-US
In-Reply-To: <086d6b35-8c19-4e92-9cd1-557b98991d35@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262313-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2AED1DB75C
X-Rspamd-Action: no action

> Pro tip: when you reply, trim out the not relevant parts like this.

Noted.
> We could start with hard-coding the als_trans_ratio in this driver for the
> scale (and write comments explaining where it came from and what we know
> and don't know). Then at least we would have a scale. And if anyone needs
> something more accurate and reverse-engineers it we could fix it up later
> with a DT property or something like that.
> 

In arch/arm/boot/dts/qcom/libra/common-proximity.dtsi Xiaomi sets this property
to 16, and they set integration time in their driver to 160ms. Maybe
als_trans_ratio has something to do with integration time? In that case, we can
calculate the scale from a formula, like this:
scale = cm36686_als_it_times[index][1] / 10000 * 40000
val = scale / 1000000
val2 = scale % 1000000
This would allow us to preserve lux value when changing integration time.

