Return-Path: <devicetree+bounces-276037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJNwL1bNt2mDVgEAu9opvQ
	(envelope-from <devicetree+bounces-276037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:28:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F30A1296FDF
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:28:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 336DD300C34F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876A6388361;
	Mon, 16 Mar 2026 09:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OoJFiU2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1AD386577
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653319; cv=none; b=Ugxzcw46Rj9Hyk1cZnmEgvpn5Qh+ih6pFuKnrQ/32r1y0UxNaN6I2ayVH016gJVmrtgCigt0P7VwdJd+pvwRCqLrcQx+MzvYDsHYgYF9sEUZYk7Z5Iibb026zmKdwS+lEbdqe5OhhxNZzlRajcoVF2H9jIxa2jk6WVF/x6bjzp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653319; c=relaxed/simple;
	bh=9c+Cpxp1ZGW3zXQamjYhD0iRzxH3nZLhn74BuWgaiP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sWKQgUA8U0BiTVzlkOqVQWfioA7SzSfRs1wI0TlhZeJlYWFBFSp2pyFN5WSTrNOtCFH5Jn27JM0H7Hmy7c7+GD+ij9ljxN3CR3ER1nVmXEAGeQWtA0QE4iAdLATKHtOiDwYtAk7QLIm4vF+P0gcn3F3el7ViO23cVUzMy+oMx54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OoJFiU2y; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-386c441ba1dso2061721fa.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773653316; x=1774258116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q75aoBy7Ji4mItPLv1quA/8WA+tC3Zlx81nywgbhn7w=;
        b=OoJFiU2ysS8xfggD0fZWt27gi04RkJ65YpHk68DkMbrZaoY/Qe4d0sYSjP1MhnuhDq
         ZMUs/kE+WHqd6M2JJ60C/zsLWKM8Kq7Fu+WIDYUCLZe4wBeptbu5+QqC5TIWUCmRyyqb
         ZUw8CCgqvsCv+NMeR2jC+o2TTkE4m1e68b0tDeDSFotv46XgJvYW1QMKjCjgt+IdA6IY
         zjeEtoO/bqdL+t2CIFlO8WadyBAW5p6UjE1VgMtyz42nzI3eVo5+IU7jXXXgC2neEaKY
         7BzufaZ1Nxuc8gJ2NpwtpsDB0KlmqOWuutKvXMH7kAsr5iSGrW/Eonl/p5DNDtQwytnR
         05Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773653316; x=1774258116;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q75aoBy7Ji4mItPLv1quA/8WA+tC3Zlx81nywgbhn7w=;
        b=Q/4SJUs8O7VLG5b7+rbmwodlrrJQEZEK3+U7zUJeP+xAMalAfxJ1ey6RY7rGi9uvZu
         4dqYhYP3oj+DnP0ZLh5G8TJvNC0FcTU6I9NSPTex6r1ebpnnc4qZ6qlMFpRdsa3zZe7y
         CTj83VDNA7eyRD0OjDKPzxIVzWmpiiU46r0+tNzck29yqWgt3Klfj74S+x5P9SYR1X/O
         wmVhlHDanNbxLUysC2FGi1xoC87frKiXFobe5vFgbW4oZM42o9IbAAF5Sm+MgwRHj9AG
         kYmFDF6wK2A1PQTMpemBoBnZL8VAWRCGd5CUNnHJH14WwVZ1mue4UN90aADA4IEJddIA
         VGzg==
X-Forwarded-Encrypted: i=1; AJvYcCX1JluYEIwW0NwQwoGoFhqb8axHmaV3Qex1a9Fne5Ia+8d281uhHNlQLXzCkc8r441nRkxb0c/U1v4O@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6v/jdVyaF2KElykDJE1gl4yZtdEEooIGd47p75MdKMvVETgEI
	oMqJh2h5JFQ7wKLDvU1DMSJAo1DBkVXjy3LKe43unvw51MYNaro3uZHfvSEPJSv0ybk=
X-Gm-Gg: ATEYQzxZz8ocpi4ryg0GIf+npHMj5N9/QFdmC4JlkWzOze04y+ZZ23WiS3JUdjIeLOM
	e/Y2hB9g39zaTmkOnViySwtHZb0d6tYkP2VWSOv7+99mbmq8Tj48TdIIGBpyMheC/Hd5IP+tO02
	CU1XNWh+AEcpX3DsvDIRBh7IXS4f7/5DwkrAatIrNclzc2RY5KnmNLfS8pMsc1+De720VdVQSrF
	G6K/EvREXq2sjB4tTiQV1G4QLaG77/cI9L8P98l/28GyzxYw7nBi4qR93gRGD6teG6zoTjf8jHj
	u02uXADz1tP36BbAM1wDhCrHEUzc0rAphqgGbLYPgWLIBID0a291J/wKUWJJTD8/XuGtFz0Ps+c
	TzizwQy1HA2FyUzk6gRzhyye/BHeEqX55aeyXg450whzh+bv5NRl9XzkqvVQTzSUMFfxyEENUjb
	8uXl1jAoUWGmE6CRZ/Tazn/wQSvzfIgCqNH6ou37sXNESoxjJRPcPGu7UiAacyv4xvoZeXpUv2V
	AwA7A==
X-Received: by 2002:a05:651c:211a:b0:384:9158:6bcd with SMTP id 38308e7fff4ca-38a896a443dmr21270251fa.2.1773653316000;
        Mon, 16 Mar 2026 02:28:36 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d617e1sm31237711fa.9.2026.03.16.02.28.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:28:35 -0700 (PDT)
Message-ID: <30f3ec22-c86d-4f05-b519-641fc2632c50@linaro.org>
Date: Mon, 16 Mar 2026 11:28:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/7] dt-bindings: media: qcom,x1e80100-camss: Add
 simple-mfd compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
 <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-1-fdfe984fe941@linaro.org>
 <cca53190-ec16-40ee-ab4d-7bfbc1f082e8@linaro.org>
 <bmcxyn5bv24cmxvuyhjbbsjb2bfhq55nmoccfqxvgiwx3g44nb@xq5fsyfqdma6>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <bmcxyn5bv24cmxvuyhjbbsjb2bfhq55nmoccfqxvgiwx3g44nb@xq5fsyfqdma6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-276037-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: F30A1296FDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 04:39, Dmitry Baryshkov wrote:
> On Mon, Mar 16, 2026 at 04:12:35AM +0200, Vladimir Zapolskiy wrote:
>> On 3/16/26 03:02, Bryan O'Donoghue wrote:
>>> Add "simple-mfd" as a second compatible string to allow child nodes
>>> within the CAMSS block to probe as individual platform devices.
>>
>> Why are there any child nodes representing platform devices?
>>
>> There is no necessity of it, please use a layout similar to CAMSS CCI
>> modelling.
>>
> 
> I'd say it differently. I think, putting CCI device outside of the CAMSS
> node is a mistake. In the hardware all those devices are a part of the
> separate block, they share the same NoC fabric, etc.
> 

A simple-mfd model could be considered and pretty often it's usage makes
great sense, but likely it's not the case here, when phys are childen of
a factual CSI decoder. So far an umbrella/container device has not been
considered to the best of my knowledge.

OTOH I see no issue in placing phandles to the same exploited resources
under multiple device tree nodes, the ultimate goal is to provide a proper
hardware description.

>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>>>    Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml | 8 ++++++--
>>>    1 file changed, 6 insertions(+), 2 deletions(-)
>>>

-- 
Best wishes,
Vladimir

