Return-Path: <devicetree+bounces-21997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8503A8060AA
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 22:25:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40E8C281CD0
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 21:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6836E5A2;
	Tue,  5 Dec 2023 21:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="hd8V46PA"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 447711A5
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 13:24:57 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E17AB8719C;
	Tue,  5 Dec 2023 22:24:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1701811495;
	bh=UDWcFcksNDSZ3bnIJtlYDj3W8lT3fK2OZ5ULG/P8BJM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hd8V46PA+/yicfPo79+VHRyHMC+qFvQ400uSImK92b7FhoTcG0JOv/22yL1y0zgV4
	 XpooMzB2XsmDKQrpHPO0d4qtUom936q60uToJ57/baGi08swVgHyp37QKeklKo3KLG
	 cKLZIfhOV3LkidB9wxJtbjy8HpGMaFIDWyc33MbtJfhwFxv41H3G80Bo12fUyiGwAJ
	 DsKiiPBEvbQSoEm8KrNBgl/FM60XPRP9bQ3uqHtKWQh+PHfh38O6SULXPTY4lr7lO+
	 Exw0CKtPfV4DIfqDnhKVEVJ6jBF7RZpKwDtOy2xWgBCooyRI/lXAJ2Htk7XAcjTnij
	 U3thh4NF8UBFw==
Message-ID: <4a3e4dd5-f393-4668-95a3-d30a8889b419@denx.de>
Date: Tue, 5 Dec 2023 22:24:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: lcdif: Properly describe the i.MX23
 interrupts
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>
Cc: stefan@agner.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20231205184748.2103321-1-festevam@gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20231205184748.2103321-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 12/5/23 19:47, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX23 has two LCDIF interrupts instead of a single one like other
> i.MX devices.
> 
> Take this into account for properly describing the i.MX23 LCDIF
> interrupts.
> 
> This fixes the following dt-schema warning:
> 
> imx23-olinuxino.dtb: lcdif@80030000: interrupts: [[46], [45]] is too long
> 	from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Indeed

Reviewed-by: Marek Vasut <marex@denx.de>

