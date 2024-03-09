Return-Path: <devicetree+bounces-49602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FA087712B
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 13:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E871E1C20AED
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 12:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61AFC3BBC8;
	Sat,  9 Mar 2024 12:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="fKWSQkd6";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="fKWSQkd6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx101.easyname.com (mx101.easyname.com [217.74.15.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824283BBC4
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 12:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.74.15.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709987366; cv=none; b=RrK3NTUzmfaKo+6aMEHeK1+n92oM7sjgZZEXySGb5pe3p61k1h3k5ug5eRSScmr9d2uZHUaqbTDhyipIeTX3NexZVTfp+LJyEdIkn9Ar7W0enW8nwW150JtL10bCWjXJP2zF4YpSG0sRWEA3WME0FzYrmqYY+zIEBugk33HgOSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709987366; c=relaxed/simple;
	bh=cmiHQWD9TDnZ65u9In3YCXf4aAqBKZheLjeLbs3XM84=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ab2nKLT9uv5eMO8KWavKhJuTYmUmIH8WqysblMBHavYxT3/ce5pXNbOYA2uHYJN9OMQLllkLvsE2PBLIMIgcXT5YFkFPXfnNTpxEPT2bvGdaPSN+HjEbhQgb+72DcLG+oKDCnOfQC+Y/+XC2xUxWRT4LdAQYjVMZbhLE1uQBBns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com; spf=pass smtp.mailfrom=paroga.com; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=fKWSQkd6; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=fKWSQkd6; arc=none smtp.client-ip=217.74.15.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=paroga.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=w4ocZVhEdKKPZzJiQi1Os36YGF2u8UmwpmBh4wF94S0=; b=fKWSQkd6emr+rkBfyho12CbqhA
	SPKYMOToBfuYlZ/LVWg60EcYRZyOQPRozGlG/8984+ELG50NVyWvJP7+1WgNcfjdkpYwSWOvA6pPD
	m+UwWtG+LR1GAOn8fepJuUPECAbdRW1W7whE2JPabxkgBvdfO2+EMtp4X/g/6fkQb8KTNsHKZKvup
	2LAkUVB7FxLnn7P8PuqkxUzGmH7l9ROzgWyGn3beyFKzs+AJ0KLNGOSUR8LvoX3lWSSoZ0WeUOVXe
	dYcrYQkY+x0gCDILJ2PHEPNaonXVKJS7oZz4scbuvqdGYPv2oQVhthpUZuxuXEzDW+osYZMpTM5JV
	BaJypPSQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=w4ocZVhEdKKPZzJiQi1Os36YGF2u8UmwpmBh4wF94S0=; b=fKWSQkd6emr+rkBfyho12CbqhA
	SPKYMOToBfuYlZ/LVWg60EcYRZyOQPRozGlG/8984+ELG50NVyWvJP7+1WgNcfjdkpYwSWOvA6pPD
	m+UwWtG+LR1GAOn8fepJuUPECAbdRW1W7whE2JPabxkgBvdfO2+EMtp4X/g/6fkQb8KTNsHKZKvup
	2LAkUVB7FxLnn7P8PuqkxUzGmH7l9ROzgWyGn3beyFKzs+AJ0KLNGOSUR8LvoX3lWSSoZ0WeUOVXe
	dYcrYQkY+x0gCDILJ2PHEPNaonXVKJS7oZz4scbuvqdGYPv2oQVhthpUZuxuXEzDW+osYZMpTM5JV
	BaJypPSQ==;
Received: from 84-115-228-205.cable.dynamic.surfer.at ([84.115.228.205] helo=[192.168.0.94])
	by mx.easyname.com with esmtpsa (TLSv1.3:TLS_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <paroga@paroga.com>)
	id 1rivWR-0002vO-09; Sat, 09 Mar 2024 12:09:55 +0000
Message-ID: <f97b4a8e-7944-496d-9bed-20e8076a327b@paroga.com>
Date: Sat, 9 Mar 2024 13:09:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: Add Texas Instruments
 LM3509
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240308215617.1729664-1-paroga@paroga.com>
 <cb220c6f-086c-4995-b2e2-bce78b9a4b04@linaro.org>
From: Patrick Gansterer <paroga@paroga.com>
In-Reply-To: <cb220c6f-086c-4995-b2e2-bce78b9a4b04@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/03/2024 12:53, Krzysztof Kozlowski wrote:
>> +  - compatible
>> +  - reg
>> +
>> +patternProperties:
>> +  "^led@[01]$":
>> +    type: object
>> +    description: Properties for a string of connected LEDs.
> 
> Are you sure this is a string of LEDs? How does a string/tape work with
> a backlight, I mean physically? How could it look like?

I just took most of the descriptions/names from lm3630a-backlight.yaml. 
I understand it in this context as multiple serial connected LEDs (as 
shown in the circuit diagram in the datasheet), so that each of them 
gets the same current when connected to the output of the chip.

Maybe a more general question: Is there any easy accessible information 
about which code is the best used as example/reference? I tried to align 
my code very close to the LM3630, but you gave me a bunch of comments on 
that ;-). And would you like see patches cleaning up some of the code 
with bad/outdated style?

- Patrick

