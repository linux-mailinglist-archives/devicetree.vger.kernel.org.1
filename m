Return-Path: <devicetree+bounces-7037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A11A97BEC06
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1B451C20A8F
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA2A3FB0D;
	Mon,  9 Oct 2023 20:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="OI6BE535"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F77A200B2
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 20:54:11 +0000 (UTC)
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AED2A9;
	Mon,  9 Oct 2023 13:54:10 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 4EC8B8286816;
	Mon,  9 Oct 2023 15:54:09 -0500 (CDT)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id JBIZjUBB-1bh; Mon,  9 Oct 2023 15:54:08 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 63A2B8286866;
	Mon,  9 Oct 2023 15:54:08 -0500 (CDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 63A2B8286866
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1696884848; bh=Hq+W0pYoX/RD12Ucrxx4Xcw+gED/OOKCQdN4ucsOuWU=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=OI6BE535nQveYjP7j4B0Efiq6aUYLcdyg9sq7gYXDWXJY4uPZq7jFurfNlejmCg6Z
	 hIVLOSih3fiZpD2tjACVr5Thzcg/og1jK0vIbFAe4W2VqIKRpewrCV0A6ulkD5DE9O
	 MgkPBWEh52DtJsZ6DahmAPqTK0zZB/XJO1ieNVUA=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id g2WM3TFOVVU2; Mon,  9 Oct 2023 15:54:08 -0500 (CDT)
Received: from [10.11.0.3] (5.edge.rptsys.com [23.155.224.38])
	by mail.rptsys.com (Postfix) with ESMTPSA id 789AC8286816;
	Mon,  9 Oct 2023 15:54:07 -0500 (CDT)
Message-ID: <a834b0b9-f7d3-b9dc-90ef-51a5f7b0e0b7@raptorengineering.com>
Date: Mon, 9 Oct 2023 15:54:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for SIE
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 devicetree@vger.kernel.org, lee@kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Icenowy Zheng <uwu@icenowy.me>, linux-kernel@vger.kernel.org
References: <cover.1696285339.git.sanastasio@raptorengineering.com>
 <e2fb7a1924bf5642204c50d73d414b5d41e09e93.1696285339.git.sanastasio@raptorengineering.com>
 <55870f8f-db70-424d-9de5-bce87800dd1f@linaro.org>
From: Shawn Anastasio <sanastasio@raptorengineering.com>
In-Reply-To: <55870f8f-db70-424d-9de5-bce87800dd1f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/3/23 4:23 AM, Krzysztof Kozlowski wrote:
> On 03/10/2023 00:32, Shawn Anastasio wrote:
>> Add a vendor prefix for Sony Interactive Entertainment LLC (SIE).
>>
>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>> ---
>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> index 573578db9509..cff35e68a34d 100644
>> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> @@ -1211,6 +1211,8 @@ patternProperties:
>>      description: Si-En Technology Ltd.
>>    "^si-linux,.*":
>>      description: Silicon Linux Corporation
>> +  "^sie,.*":
>> +    description: Sony Interactive Entertainment LLC
> 
> Is this different company than Sony?
>

Yes. As I understand it, Sony Interactive Entertainment, LLC is its own
separate corporate entity, though it is ultimately owned by Sony Group
Corporation.

> Best regards,
> Krzysztof

Thanks,
Shawn

