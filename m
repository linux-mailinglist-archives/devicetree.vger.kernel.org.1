Return-Path: <devicetree+bounces-19202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 319BC7FA01C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 625311C209EC
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7ED288A7;
	Mon, 27 Nov 2023 12:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="czRxqj4t"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1334137;
	Mon, 27 Nov 2023 04:57:04 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D6FA166057B6;
	Mon, 27 Nov 2023 12:57:02 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701089823;
	bh=FySumCrnHCkLNmJr8XJVzT+Zu5nrGGp8D2JVx0dI6Zo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=czRxqj4tLuvWQ5UN0mnq/93x90RSVWFH35tTAHbAW0OSwJVBHmH1X2MrmkWHwaICV
	 bUtG8Jf5AIoa0pmZJV6J5FP9ep6l46xRsB3zFdZFGxdtEwzu2jQS4Yp8iAn4Z5aj6/
	 VWMv9pOz+yCjc6nfvFOZKzvXSoCcahu85stn8cr2qUv0Up8YMLdY7e0Zi8gDOgA5CU
	 LLEMq8VotLORUfZY8pYGpaAAeeqpVnJMu4dCTAZeJUIMBHHNgsr/hFlzkJAvykPIIq
	 kP3IX81JYE/rpiTQOe1PIvKjuz7ki4C4z1cNvMm+R7q5YAUayolMzQVbwHddH5F7B1
	 7oMhPCh6e1kOQ==
Message-ID: <12601252-5a90-40cf-b634-493219cebf38@collabora.com>
Date: Mon, 27 Nov 2023 13:57:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: mediatek: mt6358: Merge ldo_vcn33_*
 regulators
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230913084457.1638690-1-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230913084457.1638690-1-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On Wed, 13 Sep 2023 16:44:56 +0800, Chen-Yu Tsai wrote:
 > The ldo_vcn33_bt and ldo_vcn33_wifi regulators are actually the same
 > regulator, having the same voltage setting and output pin. There are
 > simply two enable bits that are ORed together to enable the regulator.
 >
 > Having two regulators representing the same output pin is misleading
 > from a design matching standpoint, and also error-prone in driver
 > implementations.
 >
 > [...]

Applied, thanks!

[1/1] arm64: dts: mediatek: mt6358: Merge ldo_vcn33_* regulators
       commit: 2a19d6609722b40d0f44337d56ee75a69a69aeab

Regards,
Angelo

