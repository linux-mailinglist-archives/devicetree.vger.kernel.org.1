Return-Path: <devicetree+bounces-280475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FjXDp3kw2lvugQAu9opvQ
	(envelope-from <devicetree+bounces-280475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 14:35:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A28325E0E
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 14:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F4633047E4F
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 820C83D301A;
	Wed, 25 Mar 2026 12:46:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9321F12E0;
	Wed, 25 Mar 2026 12:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774442795; cv=none; b=EwarB3Atd2SLqYnGATRN9TD5+FwjY/iU+vvGynDWnYmcOC1QZkbfm1d9lg/E/35fyPDEQ+2vsT8xU/0buDMqC0Xjnl/BqcQUZ/8QBZxIqemOv6r9kXUNiki+FkPEjAOr55AsGghP81mCQ4Wd5/5OdlNn2jwBdIs1Miv+jcWCkBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774442795; c=relaxed/simple;
	bh=1jeLxdRNqOOedIEPi94GHH9Xdup79Ihw4tyK3EqayC0=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sl21Y4oJP0WN6YmlnDL9VgieWcWrNxFCvRUvBZ2hW9jveB5YIRM418YHOum4Flu9A9ZkJRqjGHYfS6nIsNuk4TjCOYvsaXPvSXatOkLrGA2GXQhrF8zoy+6gTNSeA4tdlvmI1ild5GgV6eFLXPCeGt9JDyQ/ARvG7kWbiT7mva4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.224.107])
	by frasgout.his.huawei.com (SkyGuard) with ESMTPS id 4fgmqd0t9yzJ46DT;
	Wed, 25 Mar 2026 20:46:21 +0800 (CST)
Received: from dubpeml500005.china.huawei.com (unknown [7.214.145.207])
	by mail.maildlp.com (Postfix) with ESMTPS id A5AC640589;
	Wed, 25 Mar 2026 20:46:29 +0800 (CST)
Received: from localhost (10.203.177.15) by dubpeml500005.china.huawei.com
 (7.214.145.207) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Wed, 25 Mar
 2026 12:46:28 +0000
Date: Wed, 25 Mar 2026 12:46:27 +0000
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Rodrigo Alencar via B4 Relay
	<devnull+rodrigo.alencar.analog.com@kernel.org>
CC: <rodrigo.alencar@analog.com>, <linux-iio@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Lars-Peter
 Clausen" <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>, "David Lechner" <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, "Rob Herring" <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: iio: amplifiers: ad8366: add
 adrf5702/3 support
Message-ID: <20260325124627.00006828@huawei.com>
In-Reply-To: <20260325-adrf570x-iio-support-v1-1-9a2685eb2e55@analog.com>
References: <20260325-adrf570x-iio-support-v1-0-9a2685eb2e55@analog.com>
	<20260325-adrf570x-iio-support-v1-1-9a2685eb2e55@analog.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: lhrpeml100011.china.huawei.com (7.191.174.247) To
 dubpeml500005.china.huawei.com (7.214.145.207)
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[huawei.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-280475-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cameron@huawei.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,huawei.com:mid,analog.com:email]
X-Rspamd-Queue-Id: 64A28325E0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026 11:12:02 +0000
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add compatible entries for ADRF5702 and ADRF5703 Digital Attenuators.

Explain how they are different from the existing supported devices.

Something simple like the "Each device has its own gain range and step,
hence no fallback compatibles are used." that you had in the original patch
is what we need here.

> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> index 2719de1166a1..065637ce33a5 100644
> --- a/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> +++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> @@ -20,6 +20,8 @@ properties:
>        - adi,ad8366
>        - adi,ada4961
>        - adi,adl5240
> +      - adi,adrf5702
> +      - adi,adrf5703
>        - adi,adrf5720
>        - adi,adrf5730
>        - adi,adrf5731
> @@ -66,6 +68,8 @@ allOf:
>                anyOf:
>                  - const: adi,ad8366
>                  - const: adi,ada4961
> +                - const: adi,adrf5702
> +                - const: adi,adrf5703
>                  - const: adi,adrf5720
>                  - const: adi,adrf5730
>                  - const: adi,adrf5731
> 


