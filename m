Return-Path: <devicetree+bounces-276470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCZOGdrsuGknlwEAu9opvQ
	(envelope-from <devicetree+bounces-276470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:55:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6262A422C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:55:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 86C8E301823B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E883803D1;
	Tue, 17 Mar 2026 05:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gWwbLYod"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2144D37FF78
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773726913; cv=none; b=PjgDaxut4jH8H18aRBN5ru/RyK2bimjW+p5of8VngzPmAnmyGuPq1SalsD9ZS2h8CGu8U/+QBrWeeoY97jCJBk/XUXaQe+N9ViKUnc3cTH3Xwt840WzvfrHDSBieohSi9C+NpNgzea4Cdt3TO7hvMrWhv472zLzm9w0glbokJHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773726913; c=relaxed/simple;
	bh=GMP79ITCgxv/qqTOcIGDhMjkPwlpAtEKWoKxT1QzKrM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U7SXAT2+wsWNTZI2ji0xOzAI6DF2yejYAmXhzuNlrPoD2RY85arXDfcla/0Cb+wbEnc5Kn+bMS/Yl+IpKjULFyLD2RvVHAP7AGMd/sMv2DSSVSeK/+uaPPPWkI4VprEHzVXFw0i1mhU7Y17wwPF0gsMpnVQuqqQIbI+p2e2nBFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gWwbLYod; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4853aec185aso43625865e9.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 22:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773726910; x=1774331710; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kcOeBnO85QXQKxiCKrlrGwovlX4gkf5w7/X9rdV9RuA=;
        b=gWwbLYod2MJtEqf29QupScfb9gpItkNGwvBMBG1+UiQNzmrCwp3qD4mNusAWvRpXTV
         vYjNt1lXqeIpRZXFQKWyz3VmpDNYTq2QheBIE3V19iFt9PCSFdlz74ABhoESa+WrIGiR
         1rCWK5f952IJ5CcX/Wn0U8u8eApmFLBDRXvkbJFv9QvShtcVx40Id67a1w2blQcn1IfH
         ez/7RduyRZEzIAuS3BS5u71L2+j96GJ8WoN/+OzkdHHyJ9ZTDNipE0g9rPHUBvAOR4v9
         9Sr9OG+Bz/fnJgcTfzG8zRtUsq6becPQzDM3zQKmx+YfdQOw12WHgLM3unIzhsC99AnC
         cM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773726910; x=1774331710;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kcOeBnO85QXQKxiCKrlrGwovlX4gkf5w7/X9rdV9RuA=;
        b=FxZ0Z4qOitGr0+u6QosUvimK12jNGbee9cspZZMZngeII5oXzmmCuMpiPI5/mxSU4I
         8lfp6YP8R/Pa0ij0mIy69OGj5hgPAcCh6Kr6gH3IuWByXds7q8lEtbQj8gTfHzcxIxx0
         sIjRYWi4JMAMFxwSFyAH2Z4TQyAWRbDfkiqvDya/9bfVcmxLnCTLbv+yULinB1cH8d6a
         5v3WgSEregYYqAVvUfcLguw23muLJc2NUQT84z+5bDKY29BBlgeI6aI0eT+NrYpHzBo0
         GzBXOe5GAJ58XILsX16kwq/qNghNyyEsJfEXWwGwcQ0Rw2uJ0lizxQv3XNnC1oO6yyXH
         nNvg==
X-Forwarded-Encrypted: i=1; AJvYcCXb0HsywCtDjANvYKeOcRQzxgAsgV0b2DBGrLldgCrFFALX3uk1GCHrx1hTKwPBTZBjrS0OQ5/E/red@vger.kernel.org
X-Gm-Message-State: AOJu0YyBGqf9JxNFu+ZfEBOi5kBX3oD59E3tQgPGjYM9zOickCKLutDC
	FjqevENoE/fqYYvk4LaI9c4ryGSeOwWMfBDzbDoof8l/5P/tp8OOPp/2mtoagNIE62I=
X-Gm-Gg: ATEYQzx0JwKXoiILIPGqiWH4H9Za7JmBR+u5ISNgv/djgo1GD+LtITmRLeh3clSJHpJ
	I8qI7FxemkMe6c1OdDnyMTvxMI3hwSGkzPnKE7phkJ/g326E3XWXH+IQl5W0ZB4fNNwsuYouhA6
	h91hSRg4H21aYWNzdGufLQnvBqIDbYfzcxfSQPi9vupdVXOWEN7vw+ZP3HzHxY/W2WnGsQ3GaXB
	stkdDBg5VBuFAaHV6Yk2B+l5BYhNS2FlsMQoHEowCULdlveDym3qndecxJAXRdadKErQLktFP04
	nTLhkuJ09hyWA7Pc39RLdg37GMoTN6ThWeaL9KhEqKzzlbWZSqKke7cp/a34KGAtFtZ4wcFe524
	IwBrMAWZUpAAjQTR3Ocs72UGqQAdrEH4PFjW4k2SRkYu2sW9wXCCTf6BtRoH+TeWJwQITuFrn7i
	S+hnaPzwjKIGUGOKyCrfFnxXrcjbDFJhSE01A=
X-Received: by 2002:a05:600c:c8d:b0:47e:e2ec:9947 with SMTP id 5b1f17b1804b1-4855671052dmr255918505e9.33.1773726910252;
        Mon, 16 Mar 2026 22:55:10 -0700 (PDT)
Received: from [192.168.0.101] ([51.37.189.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea98070sm42508625e9.6.2026.03.16.22.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 22:55:09 -0700 (PDT)
Message-ID: <d104e54d-8276-4d1e-bb7d-9c01c45a7184@linaro.org>
Date: Tue, 17 Mar 2026 05:55:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/7] dt-bindings: media: qcom,x1e80100-camss: Add
 optional PHY handle definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
 <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-2-fdfe984fe941@linaro.org>
 <20260316-papaya-mink-of-examination-6db401@quoll>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260316-papaya-mink-of-examination-6db401@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-276470-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8E6262A422C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 16/03/2026 07:31, Krzysztof Kozlowski wrote:
>> +patternProperties:
>> +  "^phy@[0-9a-f]+$":
>> +    $ref: /schemas/phy/qcom,x1e80100-csi2-phy.yaml
>> +    unevaluatedProperties: false
>> +
>> +  "^opp-table(-.*)?$":
> Why do you expect multiple opp-tables?
> 
> And where are operating-points phandle? Please look how other bindings
> do it.
> 
>> +    type: object
>> +
>>   required:
>>     - compatible
>>     - reg
>> @@ -175,8 +201,6 @@ required:
>>     - iommus
>>     - power-domains
>>     - power-domain-names
>> -  - vdd-csiphy-0p8-supply
>> -  - vdd-csiphy-1p2-supply
>>     - ports
>>   
>>   additionalProperties: false
>> @@ -188,6 +212,7 @@ examples:
>>       #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>>       #include <dt-bindings/interconnect/qcom,icc.h>
>>       #include <dt-bindings/interconnect/qcom,x1e80100-rpmh.h>
>> +    #include <dt-bindings/phy/phy.h>
>>       #include <dt-bindings/power/qcom-rpmpd.h>
>>   
>>       soc {
>> @@ -233,6 +258,10 @@ examples:
>>                           "vfe_lite0",
>>                           "vfe_lite1";
>>   
>> +            #address-cells = <2>;
>> +            #size-cells = <2>;
>> +            ranges;
> Again, incomplete example. Where the the phy?

Both of these q's can be answered by adding a phys to the example, which 
I will do.

---
bod

