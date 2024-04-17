Return-Path: <devicetree+bounces-60010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E258C8A7EA3
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 10:48:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EDD01C20AC5
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 08:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030F6128369;
	Wed, 17 Apr 2024 08:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="d0v2CN6S"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D912744B
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 08:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713343711; cv=none; b=Rp+KjBznHwV/IzqFcN/Cwjf2aK39xuXi4jw7CnCRj7jIGQlyepDrmaqtjdwD7Eo3ZaPDw53Uq6ir8D3tb25r8q6KEE2h9mumzt6+5NOddcuSLhspEulDQodh57P/Z3uXTVFgTJhiKzgTnNyghEWYS1hi7TXl0kVhqoQqH9MIpGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713343711; c=relaxed/simple;
	bh=9O1uyMqgroGS4B5PMRw9zGd+Vs72xNjodcslvYD8+qc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C+bOqdUnlIBTet7h0MGxY4yQRCaRGp9opJts6/pzBxa2RsBkesmMg+Fz8xmgAAWJWhd6zJcNKFP1MqIr/wHSP1j5B+4AKN+atlxZMNrOQ0UJ2TnlRKwWkh6DdiGH93+fe/cseSY1U/caZ5A0pkigyx0vDqjRJYmXubZcgjd1XLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=d0v2CN6S; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 20240417084822b71c5420b3b61360a3
        for <devicetree@vger.kernel.org>;
        Wed, 17 Apr 2024 10:48:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=fRv0+tfrUOHioCHoaBQAjU7ZjT4itSxcSH3330aztOE=;
 b=d0v2CN6SS5QFYG/NzgpUd7atP97vXo5xpniyL8la8jqDZhfaeDrVss1htgyGH0NZAqe1fk
 vNnpDAavIItraopEy0eTmXId5PZGIXvJ0y241mIBhWsQWKhy6dYichbKnROmaJ01ShDGEvsV
 DqHPasdQh4Gpgal3q1rC/ema7MTIg=;
Message-ID: <02e1148e-0eed-4bb7-8a3f-27dccf16d23e@siemens.com>
Date: Wed, 17 Apr 2024 09:48:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: ti: iot2050: Add icssg-prueth nodes for PG1
 devices
To: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jan Kiszka <jan.kiszka@siemens.com>, diogo.ivo@siemens.com
References: <20240409164314.157602-1-diogo.ivo@siemens.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@siemens.com>
In-Reply-To: <20240409164314.157602-1-diogo.ivo@siemens.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

On 4/9/24 5:43 PM, Diogo Ivo wrote:
> From: Jan Kiszka <jan.kiszka@siemens.com>
> 
> Add the required nodes to enable ICSSG SR1.0 based prueth networking.
> 
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> Signed-off-by: Diogo Ivo <diogo.ivo@siemens.com>
> ---
>   .../dts/ti/k3-am65-iot2050-common-pg1.dtsi    | 32 ++++++++++++++++---
>   1 file changed, 28 insertions(+), 4 deletions(-)

Hello,

Gentle ping on this patch.

Thanks,
Diogo

