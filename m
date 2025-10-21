Return-Path: <devicetree+bounces-229204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2E9BF4EF6
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 74F3E4F1CDD
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E932765DF;
	Tue, 21 Oct 2025 07:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="P7ecpmPO"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910162737F6
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761031303; cv=none; b=HSm0Kx5zZ7+xVwYfuT4rXxGlXMpdqSi0xO6akoV6yf2Kkkx2B+owBeYi2fOkR7LZZT92qWOKz0aESvmbyMCQjMzBeWACP0ctwuwUNyuqS/3kEfDP90+v/tLMUHkOSFIaHU5D7CGJG6XSWpZfXvAnLBWJkiPiV2O33U0ScTESGc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761031303; c=relaxed/simple;
	bh=AY4vlSigkAu3MeDU9Ovs29Ds/Xigd7mN+cX5NsRteBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mQX98qmwJNJaXqXNTuBZVeraw7QaP9dYY4TUZvmqbJpKYkJO2g640Nr/2eevA1AnAcg9JHaHVytZ96SUwmhteCpo8E99Q2sJGAqZ+a6UsCDPNjPde8GTUbdSCPVExSzYB0EV1ht2AS1hXr227pmCIcfildJZ9d2sRPKDuqOvvok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=P7ecpmPO; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761031300;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hfnRqiKEelMSphBHduFrZUqhUrnjzFO9LXcBFI/UlsA=;
	b=P7ecpmPOU94cZbRy1GbqHLI3C0VsYXa6mSI6UwID0xD1NawxAtPGNl+tWwmvfTNiVmz85g
	s7hxFKIHWZjNbZJZYKjwqxN0StR2FbnIT+XnfifORLCcDyqON65/UTP+oSofuV+l8LN0Ii
	47jOnwvnt790GkafCs6cQnzVNmCcWvA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-441-pcw1hOgVNSijToN9DzjM-Q-1; Tue, 21 Oct 2025 03:21:39 -0400
X-MC-Unique: pcw1hOgVNSijToN9DzjM-Q-1
X-Mimecast-MFC-AGG-ID: pcw1hOgVNSijToN9DzjM-Q_1761031298
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3f7b5c27d41so3106088f8f.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:21:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761031298; x=1761636098;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hfnRqiKEelMSphBHduFrZUqhUrnjzFO9LXcBFI/UlsA=;
        b=ibuyovDBVNjQ7BSjuc+G0+2jyLfiqZzkAhmsu4x3xT/IYRSV/OrCXp10FziHE9BxKI
         XbvazWM0sIZTjIhWkD3JFRcL23BgPQD72Y4ocNb4VLlurIXWDxoxnuRQ4IwBWxfyjNGy
         43pRwoUhbr537+sjBm+lUAVJml8CkachlKCHuvqKpoJv8oe6veMxeSXNbwhP0KlGynSu
         gaMog3nlEXC3LwPPXZu/au9BXtwsfiDgcQsygpAWIsVrqNP9W/DCjkvzKqcSFkVqgTjE
         cUWOV10XQyrLnchC6TA72Dd/NUwU8WYALuQj+ICcY6ZVeEZ2OsTacDdsPaJVAFgGSkCv
         auBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWmlxqr+urdKGBhWvqG0hhb0Br4OmgWmgGRvjiuVp4szo5Br/vVByqFRN97cE1IudXzfEIk83B4FIE@vger.kernel.org
X-Gm-Message-State: AOJu0YwZYAQ2i24x7oB8OvdSkURvme/Q41BNbKozR65ozKyRceKyedYI
	agZ4zNMnzcY54bo8MtVQlQp5MigrOdOvp60RJCR+Psx9D/Dh+Pcub9tP3FQx5wz8G+g1k9wzo9V
	MbDb0QqZNapyGKc1Z61g5HkvLs79AeXrzvuMfik5QilCq7tHR8f859QyRVKlRQNY=
X-Gm-Gg: ASbGncvMDqfMlfr8zSQfvFgM4h0ciPDxxVVJ01wnOK9jRuUmAwMbIIKGKXUAL6N0Yd6
	wiVbWW2FNgdodgesnJmt179G9yjN7HfioNshdwVT4Fiho4CDrVBaZn3u6HXSVgRW8emHY+2erqp
	TJZ15XoKzbRnbP5snsyMWho0qtog264JT/k7sv0jYozseNuZ3bMOym8zP6rWIC9IRUUFeZOr2dF
	X9OTLulsv//mhYXDUwToV9Lc/Oe6gh+ntJN6LkKCAsxW9lCRhyRbpQYjZUkiQlI8/NEPnEwHbSB
	A7v6hWHMfmQK+MxPCnTwaW8Y+WrPIRIuY//1mhnZaCLK+bMFesuweDMG5BYSY8ittv2NOJfx5+W
	Pbh7rjcnVcouwo4SZLDSBHcnijZzPD+3WY3cWsyERhzt3LX8=
X-Received: by 2002:a5d:5f95:0:b0:3f4:5bda:2710 with SMTP id ffacd0b85a97d-426fb6a7461mr12855821f8f.9.1761031297967;
        Tue, 21 Oct 2025 00:21:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDxfoSFLan3voMA9n/iCNlQKxAGKdDWFt5/7nuSlMdSyP4+uV6cZzpLp5Db0jFPI6pELrtOg==
X-Received: by 2002:a5d:5f95:0:b0:3f4:5bda:2710 with SMTP id ffacd0b85a97d-426fb6a7461mr12855798f8f.9.1761031297518;
        Tue, 21 Oct 2025 00:21:37 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2712:7e10:4d59:d956:544f:d65c? ([2a0d:3344:2712:7e10:4d59:d956:544f:d65c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4715257d972sm187420125e9.1.2025.10.21.00.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:21:36 -0700 (PDT)
Message-ID: <6e62af59-b282-41c7-9275-fec3c5d479fb@redhat.com>
Date: Tue, 21 Oct 2025 09:21:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 5/8] net: enetc: add ptp timer binding support
 for i.MX94
To: Wei Fang <wei.fang@nxp.com>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, claudiu.manoil@nxp.com, vladimir.oltean@nxp.com,
 xiaoning.wang@nxp.com, Frank.Li@nxp.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 richardcochran@gmail.com
Cc: imx@lists.linux.dev, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251016102020.3218579-1-wei.fang@nxp.com>
 <20251016102020.3218579-6-wei.fang@nxp.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251016102020.3218579-6-wei.fang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/16/25 12:20 PM, Wei Fang wrote:
> +static int imx94_ierb_init(struct platform_device *pdev)
> +{
> +	struct netc_blk_ctrl *priv = platform_get_drvdata(pdev);
> +	struct device_node *np = pdev->dev.of_node;
> +	int err;
> +
> +	for_each_child_of_node_scoped(np, child) {
> +		for_each_child_of_node_scoped(child, gchild) {
> +			if (of_device_is_compatible(gchild, "pci1131,e101")) {
> +				err = imx94_enetc_update_tid(priv, gchild);
> +				if (err)
> +					return err;

Minor nit: the indentation level above is quite high; you could reduce
it a bit replacing:

			if (of_device_is_compatible(gchild, "pci1131,e101")) {

with:

			if (!of_device_is_compatible(gchild, "pci1131,e101"))
				continue;

There is a similar occurrence in the previous patch.

/P


