Return-Path: <devicetree+bounces-313994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fRzoLKc6NmoO8wYAu9opvQ
	(envelope-from <devicetree+bounces-313994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 09:00:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 032936A878A
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 09:00:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=TWdA0U1a;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313994-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313994-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 280CB302D5C8
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 07:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C769F372684;
	Sat, 20 Jun 2026 07:00:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A531372063
	for <devicetree@vger.kernel.org>; Sat, 20 Jun 2026 07:00:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781938850; cv=none; b=q41v+PuHq1h6nZ5Z7VroCf+ICzQgHB+t6iUmehVY1sFN3RJ5e5D9DiQnOy9Y77eYlhzY4bESOZRJ8/i+QG+nYiSVxiFfVkMNGN7/hTX4dDWCHh8RVjbR1aoJKeSJtd/PuBgI5XwTNic2GaPB7tzhz8uBgWY3ugQwjbiF+DI+jzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781938850; c=relaxed/simple;
	bh=djuARFPUgpWQ+2QCx6otv9OxDbelpVEruhktlJ/lOSk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=V/m/GqcNOhlAjLWRv0J8ghnJuyNXdILyAYqOSewyXgSLPJ9muLIbf5aSqVKV1qdJumXAN/NUiTUORXW5RY/NNnYiN/PRVJX4KALqP6GWAF99Fzj3j6zqy+LzwbinbG5rv5sMGUvIH4+ywQtpZeCrj1ibHhIxZTDRxHNwiBXjJss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TWdA0U1a; arc=none smtp.client-ip=209.85.221.46
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4626fdc829aso1999349f8f.3
        for <devicetree@vger.kernel.org>; Sat, 20 Jun 2026 00:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781938848; x=1782543648; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gDqfvOGsdlB3BZC/2DeF2hYu+XrbBaFGRVONyocXsLE=;
        b=TWdA0U1aaD0jRPkRO8qDS2FSqs/DJLxUG5dgo6DgRInykQ+RjYt2tqhCin3KJS+qVn
         PrriwTtnd3x9u1VnTK+TjYaBPQ3SAsaje0RuzkNoGcy1q0r0Rg4jCa0kbMTznKF/I5Gr
         857GTqOWuoYGk1WKZUbxPPqCSJnkxrAiJqrXG8X7Rg/cZzG6oEakYlXADtrHGD4t2ZxA
         5YMoXZCKcII3V4va+b5SFj5QxYHUpdqiL9rJSpZ3Ec2ZaRHp2SiVroBDbVwXrhg59Z6t
         GBysaeXCmGWW0s5kfwvavq2kuBG8OXmKJ85saPrSD7LTv8uMJXSrvik/VHMJ8Pd+Uwmi
         A0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781938848; x=1782543648;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gDqfvOGsdlB3BZC/2DeF2hYu+XrbBaFGRVONyocXsLE=;
        b=pSK55VRX4lNaazk9RQBfSbUEL7CS/rFZbr504dtMjKUH+DPYKh5d+OOxGmk0CA9xIP
         mNN7slFJjoPcu9FwIx7E333DQiQsAbeNvCMEYQCEgUiQu/ynif5eAIaU5i/h0BdYP/cH
         dDpCLNteu9hkFxnogZJuH1PzH4UzDXbG9kbTSuXHQwbuQu6RGYDjnzpSVo+XAxM8kwR3
         Qu9K337U0uvzOifoz1E70TfX38/PhuHwE8VJxoGe5Y/JzJfO93hdl0yx9zOzNnecBxEp
         VuHznQyB1U4mj7ntBSl+YW3j+e/FsblQMUuaqWTG1eeeafUGudRe7FwazbSVP45r4HA8
         nbEA==
X-Forwarded-Encrypted: i=1; AFNElJ9UE/3ynZ/ftaxpYkL767nN2alsvM9n7Tqd/NON+hnFr/IPmfTyqwcZiJicMxzQKkHO4tqnS1ri6IpF@vger.kernel.org
X-Gm-Message-State: AOJu0YztCQcKbmm4PDc+XDxFmQgMb6luP+5fAHHYCORnT/ite9OwleM0
	8vPRTU7zJ+auerGv0DIQZ46vbmu6uQR9GdtTD7iJYWBDuQRf33fniI+0
X-Gm-Gg: AfdE7clLSJvqPajKWxGEn/v00Ckz/VhiIBNX8y+3YdpXDFq9pvLj9Gbo1nP1Gtyt75f
	0Gq32BuYpEx4NmHmgOPEKCjTsndAtLiezN0tAsfZa4aGPjnU01bHasRLht2pjtlvz6BJvYeyuVy
	YzkAYMSySuHF59dOMahRVpn/uSnMW5LySzGpe5kYhNQB1tYrofT+2whxQo4Od5whFKV8c7CGcjH
	mMop6SXARr4GB+JtMcbCyrqGQ0bHx7r2J8hi3Czn0adgYqwO+PTMasWFONF8z2ye+zqp7aPGrxb
	SpYuSmIkqEnOHG3P1VHDHvyjNd+yq3kqs4OgK9Akc4/1C4AwkY7w3MnvyRLjBq0EBI0P4Vg9mVP
	Je+xq62YjOv4J7O9pGu8K/m/pAuI9o3MEX/v4E6x4OtKw5VgE/NMI4LOQuFiRJ+yOpaO0ZWe8sh
	lZih54fh4++6eTZ4L4zORc2L521s+1w6OrvmLkPiCadB6FK/Vch21Ic9IBiz8k28OiC0C6n1arB
	wjW89FXpojek7lcyf3RBQVnjI7lDWiwR950FFt+jkI50IFEhYtuIiayhc9tRhicBY92j64XTC+E
	7fbjaEu0dL+LKQmP
X-Received: by 2002:a05:6000:25f8:b0:461:a1c4:9fa9 with SMTP id ffacd0b85a97d-4656a375912mr7847306f8f.0.1781938847397;
        Sat, 20 Jun 2026 00:00:47 -0700 (PDT)
Received: from systembl0wer ([2a02:8308:4092:11f0::f9f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46666c57afasm5582025f8f.29.2026.06.20.00.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jun 2026 00:00:47 -0700 (PDT)
Date: Sat, 20 Jun 2026 09:00:45 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Maxwell Doose <m32285159@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: Re: [RFC PATCH 3/3] MAINTAINERS: Add entry for Sensirion STS30
 driver
Message-ID: <20260620090045.5c84eb28@systembl0wer>
In-Reply-To: <20260620044010.1082621-4-m32285159@gmail.com>
References: <20260620044010.1082621-1-m32285159@gmail.com>
	<20260620044010.1082621-4-m32285159@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313994-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:m32285159@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[systembl0wer:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 032936A878A

On Fri, 19 Jun 2026 23:40:07 -0500
Maxwell Doose <m32285159@gmail.com> wrote:  
> +SENSIRION STS30 TEMPERATURE SENSOR DRIVER
> +M:	Maxwell Doose <m32285159@gmail.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/temperature/sensirion,sts30.yaml

Fold the above changes into your dt-bindings patch.

> +F:	drivers/iio/temperature/sts30.c

This change then goes into the driver code patch. If you're
adding new files, ensure that your patch also adds a mention
to said file to MAINTAINERS (IIRC b4 actually checks for this
when you run prep --check).

-- 
Kind regards

CJD

