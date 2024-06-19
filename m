Return-Path: <devicetree+bounces-77453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B34C90EB20
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 14:31:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 010DF1F243DF
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 12:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B64C1E4B0;
	Wed, 19 Jun 2024 12:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="FJok2Xc/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D961E481
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 12:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718800265; cv=none; b=HTquTY7RPG65oYXRpaVRFfFi4NkWoMXVcb3uvY+aJid5Z97D82StTc/eTShYDnhJhewhMKWCiLBtHPbRKUNz919uaviVLUaesaYc/VVPQzNkNNSPPgBDmbfC67+8kPuEpVsBG1TXzjj2kBE7WomdKzFd4lwDmbnnMp8MkoCsf2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718800265; c=relaxed/simple;
	bh=TH9JQT7kyrX6PzsAOVhg4kfSEHYD1Xc7vG+/74Piwm4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W6dq5Y2QX/kbtV4tRXmwuREYPDcMbX3Y0zwYIDAbwNHV2iYWkN71xOHcm8rCMojKkoUaLnt0njCpJwFWrMA2WAfz0BbyPzCoNTjiCiDJ8t+g40bf/iFV5KcpAaCpIrpQRRJB84GMViExmNFOS8uT4SQWZVeq29l4s72TlIEWUxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=FJok2Xc/; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718800246;
 bh=x02U8+l6EKieLoFUJAdvmmFWzcx31NceP9nLmd76s58=;
 b=FJok2Xc/xrFBHEHpEzIEcg5LRCyg5f4BYC7fVfMsuoMxBfBjoKTLKs8v0rz/Zju/HytFjMKlw
 NBDhRMrSN14ShrhpSUpVYYFgDeNr+oaQNn1uX8TwxJ89J5hE7oRBVKaL/wuTMGeDiqSMzwdURUE
 aIMKof6RR5nliWU0oFA986B2mnUN0cUjwcQygLcWEfjs4YETR1vvCEqjLytDRgR439ULcgwp5G3
 3l/sHgRn59P0lLTAYIUWipQRkU8S2DCUAs83i9TfrVeNfznIhcsyOSXZW/rxS6/pIsXWi4vRQvs
 DAsp5QPCFv9imz2o7JDoBUv4Iu+khWIqjtRRVTSnACEA==
Message-ID: <dc71686e-a3fa-48f7-83a9-34d0f365ff07@kwiboo.se>
Date: Wed, 19 Jun 2024 14:20:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: rk809: Add missing audio codec
 properties
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Lee Jones
 <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing
 <zhangqing@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, Furkan
 Kardame <f.kardame@manjaro.org>, Michael Riesch
 <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
 <20240619-rk809-fixes-v1-2-fa93bc5313f4@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240619-rk809-fixes-v1-2-fa93bc5313f4@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6672cd025f5eef29994e8aa7

Hi Cristian,

On 2024-06-19 13:23, Cristian Ciocaltea wrote:
> The RK809 MFD provides a RK817 compatible audio codec, supported by the
> rk817_codec driver.
> 
> This has been already in use by several boards: rk3566-quartz64-b,
> k3566-roc-pc, rk3568-evb1-v10, rk3568-lubancat-2, rk3568-odroid-m1,
> rk3568-rock-3a.  However, dtbs_check fails for all of them:
> 
>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>   rk3568-rock-3a.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
>     from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
> 
> Document the missing audio codec properties as found on the
> rockchip,rk817 schema.

This is duplicate of "dt-bindings: mfd: rk809: Add audio codec properties"
part of "arm64: dts: rockchip: Add Radxa ROCK 3B" series.

https://lore.kernel.org/all/20240505134120.2828885-3-jonas@kwiboo.se/

A v2 of that series with fixes for reported issues is imminent.
How do you want me to preceded with such v2 series?

Regards,
Jonas

> 
> Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../devicetree/bindings/mfd/rockchip,rk809.yaml    | 30 +++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> index a327d73f3c43..cadfb5f1c631 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -12,7 +12,7 @@ maintainers:
>  
>  description: |
>    Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
> -  that includes regulators, an RTC, and power button.
> +  that includes regulators, an RTC, a power button and an audio codec.
>  
>  properties:
>    compatible:
> @@ -93,6 +93,34 @@ properties:
>          unevaluatedProperties: false
>      unevaluatedProperties: false
>  
> +  clocks:
> +    description:
> +      The input clock for the audio codec.
> +
> +  clock-names:
> +    description:
> +      The clock name for the codec clock.
> +    items:
> +      - const: mclk
> +
> +  '#sound-dai-cells':
> +    description:
> +      Needed for the interpretation of sound dais.
> +    const: 0
> +
> +  codec:
> +    description: |
> +      The child node for the codec to hold additional properties. If no
> +      additional properties are required for the codec, this node can be
> +      omitted.
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      rockchip,mic-in-differential:
> +        type: boolean
> +        description:
> +          Describes if the microphone uses differential mode.
> +
>  allOf:
>    - if:
>        properties:
> 


