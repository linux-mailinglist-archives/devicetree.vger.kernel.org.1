Return-Path: <devicetree+bounces-320312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iQcWBOj9R2q9igAAu9opvQ
	(envelope-from <devicetree+bounces-320312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 20:22:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F784704E25
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 20:22:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=T+PZACzA;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320312-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320312-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C0A71303192A
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 18:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39CA5312837;
	Fri,  3 Jul 2026 18:22:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEC53101B0
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 18:22:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783102948; cv=none; b=pFnKCbygjPZFFMh7gdboMO1zFYVLswhsTv0wFqCMdjqtF6dZoHVLbjooFZ9Om0eAlR+I+3n2i6jVFBr7x+GmEUOnl1r1qtWfuvtitoNfNKcWeE/q+6zcWk1PY7R42P1/DRSqalg7wH8TUuGGzmcRXfaQziJRJl9prRkhz4Na+S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783102948; c=relaxed/simple;
	bh=hxBGVg1I3Scx5arwHErmUZuqdQcchgsL/BnGaHD6KXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o9Vds3MPb9jH/EJHnEcoTes/51lKrlSUwTaMYw8FxQUi+RlaCswvnWNa1N1WQPGHsvo+/tnmfrRnNB84cPq0BbnW5/4b/FX/iOhE5JocGVRIN2Gp5IYwm8V4dUJEhwL2zk44YHMMvnDSi0FZ8ssMNxj8E6ZMGRlwkwEUNTqNsvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T+PZACzA; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4728c12ba97so519204f8f.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 11:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783102945; x=1783707745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bxI7BvM12Nerj4aOhcbX/lZ/mvSXXX9U7cR4vYDN6E4=;
        b=T+PZACzAU3Z+o6UqtQlXQggO6fAQenhdbZMxi4AHXwdW4wP7yYBuVqsmHXh54c5uEq
         ArKcmDza1O2+4/ZocIVCHNEvkLTWqJhecZinubXA+GugaudOlnSYDUM2PFp23nsqOxJs
         9nzT6UYTZAu3pnz4C5lKP/kZgZ2QU97nhOi3qxrZFNeFKAViTmbBgvrnd/tn23xOwTPb
         1fD1PB9j0gtTAineiFdGDtKJWrDcDm64L/lhKVO2muZDPQYAVzQjwjtEA1dQ2EFU6ezV
         ZlFwzUB0Tv+cwt0Utg1EEgDJQJ9FsogxRUEl3JO+1HUQTwsN3VwbbhiNVMibcJmcAXxO
         rEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783102945; x=1783707745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bxI7BvM12Nerj4aOhcbX/lZ/mvSXXX9U7cR4vYDN6E4=;
        b=dEVFjuOQUX05yxXM9EZO2fhQKltwXpxZELNhexn8ttLb2s01pFOC8WD6QJkUaNnE0x
         DEBx00cflXtVkv+pb46xRECWwjueH2vLbSIWLBazZV1PoIEUuy+sH3o/q6NvO4xtPy2W
         nQnS3qEWmzgVuScMN/IEMPannairlOT9utoTVYz29KHG8NsqxEgq5FSPn6AVDGnvBzcj
         JntyfRBpWFwHEwSbi6NZ4miWGgKktsaKhVAsbsR+xbx2P7NjaVtgKLEfqD4gahS0v/CN
         w7i6FvmFoDwJzPRShTKP9jSPW0KjDo8tOGwo7r61g6pMBagDF2RGjcG/jgQAc2b9yLT7
         Q5oA==
X-Forwarded-Encrypted: i=1; AHgh+RpGyf1tBYlAFqTXtSqHE0UyiWPFj/O2d0HenMYs4OKX9b3BbqsD4qGUBt7jfh3ZPXveeixxbC4sYCAl@vger.kernel.org
X-Gm-Message-State: AOJu0YxlR7xy2nQM9Gt4uUeX9gJ1bq4IFyGpo/m9A6WkK8N//M31rMwX
	N3x72DHBgPPzl5QGxthPRIq2YT21R6ixDC4XEZHT1QwWd0zCJ538JJMx
X-Gm-Gg: AfdE7cnqjnEcIJgmScoPeHF/ZcNpc7SJooLeflofrRv3eck1/z8Q6Be1057xwEjuXaF
	pHfS8+9REN5Sha//gG7mer6lyL7nFoxCEukaKe3okQivHBPB4c7ksSC7S9GnRcB49lHzk6KXrBx
	x6KuvPFsivAMFP6gF9Nrz3Q3iiEE+gQZyiqlqkhQc5VB+JznfU7SopR70Cxry/I+Fjw6+YR00kY
	hYue09uww900PPAOu5+eLr4Zu6CfkRmfd3cppFsEpoY8zZHn3/eHSSY+8pGOtMcCd9sHTi217OJ
	xU/NCm7OjiYprQvLcEE/RR83u54ZDAQTlNqLTaTBtA5+5jEEnnrhqWQlxdsL2LJTH7OUATCpf3+
	tAxO1VS+OCHf7pmvXQCk9YBE5JVhMLcYscXWbqXWDBtxtWkXua8meRTUwpXT1xFI8yw+wWUcgRp
	xYYtGmhhnjr7FWN6yZM5pNrhxg2szi05ScpJ5rU36DDCncyDm1gr1zw/S5xPhi0vLO3GiyqXsjB
	CYVdyeL
X-Received: by 2002:a05:6000:26d0:b0:470:258b:b20a with SMTP id ffacd0b85a97d-47aa96997eamr636555f8f.10.1783102944899;
        Fri, 03 Jul 2026 11:22:24 -0700 (PDT)
Received: from [10.128.11.240] (195-23-151-163.net.novis.pt. [195.23.151.163])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9b4d850dsm1388530f8f.0.2026.07.03.11.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2026 11:22:24 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <8c2f0ddd-5722-43b2-baf1-4653de8025ee@gmail.com>
Date: Fri, 3 Jul 2026 19:22:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] media: i2c: add os02g10 image sensor driver
To: Elgin Perumbilly <elgin.perumbilly@siliconsignals.io>,
 sakari.ailus@linux.intel.com, vladimir.zapolskiy@linaro.org,
 laurent.pinchart@ideasonboard.com
Cc: Tarang Raval <tarang.raval@siliconsignals.io>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans Verkuil <hverkuil+cisco@kernel.org>,
 Hans de Goede <johannes.goede@oss.qualcomm.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>,
 Walter Werner Schneider <contact@schnwalter.eu>, Kate Hsuan
 <hpa@redhat.com>, Yemike Abhilash Chandra <y-abhilashchandra@ti.com>,
 Svyatoslav Ryhel <clamor95@gmail.com>,
 Hardevsinh Palaniya <hardevsinh.palaniya@siliconsignals.io>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260702072502.7907-1-elgin.perumbilly@siliconsignals.io>
 <20260702072502.7907-3-elgin.perumbilly@siliconsignals.io>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20260702072502.7907-3-elgin.perumbilly@siliconsignals.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320312-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:elgin.perumbilly@siliconsignals.io,m:sakari.ailus@linux.intel.com,m:vladimir.zapolskiy@linaro.org,m:laurent.pinchart@ideasonboard.com,m:tarang.raval@siliconsignals.io,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hverkuil+cisco@kernel.org,m:johannes.goede@oss.qualcomm.com,m:xiaolei.wang@windriver.com,m:himanshu.bhavani@siliconsignals.io,m:contact@schnwalter.eu,m:hpa@redhat.com,m:y-abhilashchandra@ti.com,m:clamor95@gmail.com,m:hardevsinh.palaniya@siliconsignals.io,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:hverkuil@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[siliconsignals.io,kernel.org,oss.qualcomm.com,windriver.com,schnwalter.eu,redhat.com,ti.com,gmail.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F784704E25

Hi Elgin,

On 7/2/26 08:24, Elgin Perumbilly wrote:
> +config VIDEO_OS02G10
> +        tristate "OmniVision OS02G10 sensor support"
> +        select V4L2_CCI_I2C
> +        help
> +          This is a Video4Linux2 sensor driver for Omnivision
> +          OS02G10 camera sensor.
> +
> +	  To compile this driver as a module, choose M here: the
> +          module will be called os02g10.
> +

The whitespace of your kconfig entry could use some care.
The usual style for this file is to indent by 1 tab, and then for the
text in the 'help', 1 tab + 2 spaces.

- Julian Braha

