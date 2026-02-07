Return-Path: <devicetree+bounces-263638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFHnIvuFh2lRZAQAu9opvQ
	(envelope-from <devicetree+bounces-263638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:35:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E2011106DC9
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:35:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93CED3018D4C
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 18:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 203682E62AC;
	Sat,  7 Feb 2026 18:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="l6VsbM/L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66C826ED2A
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 18:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770489332; cv=none; b=OWZfsrRK3phhjS74b1WpERzjIOfCRqW8HO7+OtvSm8Xsk8whXB9Koon9J/ZJgUNcr6mMUBVrDX6GGcHO5nSSv4MMSqe0WsHrtSoJ78PSh1cjeRsRO+HW2t05IjNIkSujWr22o/TWqNEBhESvTKEJ/O4cb0/F/XZZN8b4n848DV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770489332; c=relaxed/simple;
	bh=XNpbsRYsF2rlv0zb0B6eouOvN5D51trGAHHoO5yraxM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qLh4l1hQsAbHQGxAd11APlAHGXKRutd5QnczxO2y7El5JX8kQwFgxrW0KODacVSzo1HFsTpLoui7n3rcQmsGlB0n8pCCLthMW2/nMs/S2Hl0SggK78TwvfdB5donxFfTTjDWpc+DR5TF5KE7OphSy0feT1wN+OnzqIYdJ33iUh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=l6VsbM/L; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-45ee8823e2aso1932332b6e.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 10:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770489330; x=1771094130; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NARnSWeEyQX0QI8rBoQ42GOyDjukxOobZDpLSRoeY1k=;
        b=l6VsbM/L9qC7D5qDL2bPJA0eG5rteivNxvTXWAOG15wMXr69WIu7OIrrvNbt7c9DPL
         tMcgLeEu1R1YcBsGxefcFwabW6ZwDlqIqzhLiWLnR9xRUW49ubehS5FQmVSkWaYuqwaz
         fA8JOILVik7YI/qbjk5Jg2CYPIvm0kyhgJEdO4fSF4qTBP2jvjv13hW+RH95Oafl5Q6H
         oOLmpWjAj4ckG02XO+PUC5oQDT51sT2/W9Um5znbqUT+XZvG7kKFSJhZUf6UXsVWBUev
         pjEkbfx+kFqmNFn5xllvBNPU0lNJ31zdJ+5fGSszN3CEG7WsOcuDNJTa1dk+gJXrJK9q
         xUsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770489330; x=1771094130;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NARnSWeEyQX0QI8rBoQ42GOyDjukxOobZDpLSRoeY1k=;
        b=MFh5QKY3eIWMnqO9GPMd0V8/4EM20l2/DEFixyolmCWcRYfGq+8oUmsJTjlG60Hu+V
         FcfGqhbCOJHSCGMj8ZQyJAb0/iYgHkdA6mctIkMq2PApCy+G2mxGbn6nVVFw7hlTkFAw
         Agp4erXATJUo5Sj0t/kwjTCqlbySPv5a3GulHgc8r6MHCX1c0M++Z6yDTA+3/vYK1/07
         UzDJdfLa/36VXcPFdZ/tfr6B2dZBtYBYDzAxzCJhZohA8t+PjfK73hyn8PgyiePXBzOF
         l/8x3N5lqFyN8F0ryBB3goM3oAyqPu7GQjBE3aXm2WfIeqrr/MaXUT+0HCeUDO+ZC8p2
         7HBw==
X-Forwarded-Encrypted: i=1; AJvYcCX/A+W5lavgOBJ45Flo4I3q7zKvLEl1WXMLJgRqFKhT7YQXAWr+L/X6Mt69WRva+myOKGHRh7u+Y6s1@vger.kernel.org
X-Gm-Message-State: AOJu0YzbGws2MLtIVrPVkFtmibmNKh76G8S4/vui15EoS0+SARs31+Gl
	NUjFha/Ocevgk+XqTXj0Je+Pt1TKTHN5rPcVPqDg3RFwbufjNK2sMiKfbXL8HiBPrmg=
X-Gm-Gg: AZuq6aKSGyzh+9Uc3k0t+3k8FPeaXbPDLPXwk7ueSikoVjeNV048+LL3tfOhsOlruCs
	7YehTDnU1rwIQD4KqLE9OYRG+MMQPr5X6OiMyhOEaP4JhY+HUFZg4KIcYb1ngvs2maDpbqnJ25k
	n6Hf5g1XcQgYmCHXlfV067/wR0cefcLMDDD1LQ33bcsdbFbhMskQzl5BgMNnEz5VN52mv8f4xkB
	VHQ6sXtwoHYlC7HiqMAGHUUOqBBebrwh+i+vp+I/q08EZdHGi1R6GA+HTHPrvAp4egfCtfzEW1J
	cQeyJFpcqjMCttYK2rOcQogcOUiwPM0Q62x4D/jonbk/TMkEpweVvytv3x+j9k4iKOwqDUfHHH9
	Rgg/OpflguWUmpdQhunjntOAVTVDQMn4OTcSROvQm/woZEmxtHKU2HM4BJO5/enAjVxmKw64IUB
	mgFUMfsgSihtFwFNhy1Wv7UbcINAcHuu+65kor1AbEtNDi8O9Nm2iCMY1q+g==
X-Received: by 2002:a05:6808:158e:b0:45e:f0ef:cd75 with SMTP id 5614622812f47-462fcb77c7amr3236711b6e.65.1770489330578;
        Sat, 07 Feb 2026 10:35:30 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:74a6:843b:f33:21ae? ([2600:8803:e7e4:500:74a6:843b:f33:21ae])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-462feb5455dsm3550699b6e.17.2026.02.07.10.35.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 10:35:29 -0800 (PST)
Message-ID: <a38f418d-a73e-4f9d-9c58-92566c3db0d4@baylibre.com>
Date: Sat, 7 Feb 2026 12:35:28 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 8/8] iio: adc: ad4030: Support common-mode channels
 with SPI offloading
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, michael.hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, corbet@lwn.net, marcelo.schmitt1@gmail.com
References: <cover.1770403407.git.marcelo.schmitt@analog.com>
 <1f05069e25e9ea28db2cef9fa3856456be3c2614.1770403407.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <1f05069e25e9ea28db2cef9fa3856456be3c2614.1770403407.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-263638-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,lwn.net,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylible.com:email,analog.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid]
X-Rspamd-Queue-Id: E2011106DC9
X-Rspamd-Action: no action

On 2/6/26 1:02 PM, Marcelo Schmitt wrote:
> AD4030 and similar devices can read common-mode voltage together with
> ADC sample data. When enabled, common-mode voltage data is provided in a
> separate IIO channel since it measures something other than the primary
> ADC input signal and requires separate scaling to convert to voltage
> units. The initial SPI offload support patch for AD4030 only provided
> differential channels. Now, extend the AD4030 driver to also provide
> common-mode IIO channels when setup with SPI offloading capability.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylible.com>



