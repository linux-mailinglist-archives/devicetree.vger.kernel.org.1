Return-Path: <devicetree+bounces-269154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF+IGm5poWkUsgQAu9opvQ
	(envelope-from <devicetree+bounces-269154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:52:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE65D1B593F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 029CA3142FF9
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D3F29D27D;
	Fri, 27 Feb 2026 09:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tawCJQB7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4202D5926
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772185677; cv=none; b=mmFgasVyAnCPbpluygdq5wqp7Xkr2ATU61jQq4SE+5FvX7hqTfvzkpIg0ADZn3JAA70d4Bmbk4HeXcju0AsmZJhVemQyQGA0O9wuKd3FI3imWwnLMvSLuV5SgxYslPhL9jTyGISyCovZDgDl+ge3IOt4DfZP+y6zmhpoqwGZjoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772185677; c=relaxed/simple;
	bh=sDqOLIElO9sU72I8htWWTt5yNo0GEDCaewrWX4E83eY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qCfteFAwJc9h2hSxSOijvpySyYZEIGOwDwfeosMzAcyY9LQZm3dQaxR9PLWDIbZKGezogwHy0mEI9KPvWu1mEJdAXGKljD33Ygayq+6fp+WyWRsnlKyad312jGyo3ovAlwJBL0Uti7MNLq/9tp4fMgQtGur4+PmWGqNiX63TGWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tawCJQB7; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-4398dd671daso1980515f8f.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 01:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772185674; x=1772790474; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lvnzu0nnoktPCLf+OVvM4xkOpLiznX3KsepjyKiu5SE=;
        b=tawCJQB7tfggauC1TSg88aUG+pHpHclM53cndGvlsNz4NrQFs+I8UCJ6GdHKqx1RxV
         1vYSwGL77XHCQ9nvDrjllPg+fZR40XhHT/7xy9C2VX6STF7BGecOD2BFsLTYHISicTp8
         N5HU1APBIzVCrmscvO2TYfTAoliRtvLbOWqy97VzFUtRJbiU6YaesbL3BevcMGxWCFbj
         XIYBXRWtbBQW1tin9nNbI5u6CTGmXy4Qwtf7fk1zq6EsI+Cs72AJopDgWKfQuAV2eCq9
         2E4Qhl1MnJp++sI0MKAiy5xz6oK/cqKdkh10Tc5OUgPMnAmY0pGLg8y7IBA1zEe7BJPX
         Ercw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772185674; x=1772790474;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvnzu0nnoktPCLf+OVvM4xkOpLiznX3KsepjyKiu5SE=;
        b=LRQd8lJaDK28hJHORV94Ga6AFbtJ8KPB74u92D8U26KlBdLR6WqMD5lNmCO/N2jA9H
         l+/zZQP0nZVvTrXu8hB0nyZFzGUUh48WCJyjuIzDyCpWvTwVye1FZ8d7lSDlK9Yo2mPi
         50pIRJyZ63ZUCjoZqiZ8jN2mYk0JplrtHNF/O4DQwXUjAl2Xqc/eBYh4OlJCqEyA5gM7
         20uUAWF9rtV0GVFzI3ds/hNlbHIcoYM13jh+E153RxqvQfgrX1lxhQ0KnjdZSnzmvjmg
         sjl48vFD9qNzYLGIIOjAL1lPepbWHbp+jAuoNnvZn/le6l+cP/6RpFk1cWd4FBRMC/ty
         jgvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvZGIOtl2ZINNDXEHWaOnlr8rZYTJR1HshOX0UUC+KQvzDy4vZ7G2g9ld1GTk6aLp41HVibPfA8zXw@vger.kernel.org
X-Gm-Message-State: AOJu0YxiCc4RwGtVUsocoibiR3YRprxPzelDd0p8JLWNsm3i8/5ObLxp
	oSEp7Xq+ANjg9bOZbjyA8BnTo3nYz0/rL3n6pEVDRpT/icTGYndDaDr59Cs7co95A6E=
X-Gm-Gg: ATEYQzx772GD0ToUwENZzqnQyGaOIREm0cFt0etpXPAJEiBDZxwBBYHGj6LimcsNnUK
	xiyzKUmEFWdw94jimalTbCM0p6/RH1FhZHDu6/k6rUlu6Mv30MYtOiqzOkJzj6s2wsUuipahi6h
	sOXBst/yTLBKR6/YMGdv3aJ2CdQapv6/jab9cK+Prbd5P4J/PMCxGuGud00xJHf1eTKFnB9NzP6
	Im5EQKWqiHH02IJd//nIgUOyiHmap9pM2MEM9JY2cNCn7zgPbqJFMr9TCmx2bpzndKXIsLsG9HO
	BoMNYKl7ciQEN4y12ce90QC/YErWvLgCUJk6s3cR+JlN1Yfe3YN7bEWFZCBnQDyCCYsCcV9bP59
	vaqKKmSR+1k3+n0P0BCrrBmtZ0U5ULAKf/5eqEPBgmgcdFiC5EU2qIAVdaLqdUIryruBWkYACw7
	4ORwtThvpthPqaSFsHFnIzANbrD40ITLAJGBphMVTd/1LcSHrlyMIGOi+zMIqO3/jTnyGXkeO/u
	d4=
X-Received: by 2002:a05:600c:46c4:b0:483:b505:9db4 with SMTP id 5b1f17b1804b1-483c9c0f1d1mr32779065e9.31.1772185673668;
        Fri, 27 Feb 2026 01:47:53 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b770c2sm92861155e9.10.2026.02.27.01.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 01:47:53 -0800 (PST)
Message-ID: <44b01d94-427c-49d6-bac8-a5d14141b24f@linaro.org>
Date: Fri, 27 Feb 2026 09:47:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <20260227-overjoyed-spiritual-saluki-7561c2@quoll>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260227-overjoyed-spiritual-saluki-7561c2@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-269154-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BE65D1B593F
X-Rspamd-Action: no action

On 27/02/2026 09:41, Krzysztof Kozlowski wrote:
> On Thu, Feb 26, 2026 at 12:34:25PM +0000, Bryan O'Donoghue wrote:
>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>> PHY devices.
>>
>> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
>> have their own pinouts on the SoC as well as their own individual voltage
>> rails.
>>
>> The need to model voltage rails on a per-PHY basis leads us to define
>> CSIPHY devices as individual nodes.
>>
>> Two nice outcomes in terms of schema and DT arise from this change.
>>
>> 1. The ability to define on a per-PHY basis voltage rails.
>> 2. The ability to require those voltage.
>>
>> We have had a complete bodge upstream for this where a single set of
>> voltage rail for all CSIPHYs has been buried inside of CAMSS.
>>
>> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
>> CAMSS parlance, the CSIPHY devices should be individually modelled.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 114 +++++++++++++++++++++
>>   1 file changed, 114 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> new file mode 100644
>> index 0000000000000..c937d26ccbda9
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> @@ -0,0 +1,114 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm CSI2 PHY
> 
> Qualcomm SoC CSI2 PHY
> 
> 
>> +
>> +maintainers:
>> +  - Bryan O'Donoghue <bod@kernel.org>
>> +
>> +description:
>> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
>> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
>> +  modes.
> 
> So just to be clear: this is not MIPI CSI, but only the CSI PHY? There
> are no ports here, which seems fine for the phy and will be in the MIPI
> CSI block?

CAMSS ports map to the CSID - CSI Decoder yes.

> 
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,x1e80100-csi2-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +
>> +  clocks:
>> +    maxItems: 4
>> +
>> +  clock-names:
>> +    items:
>> +      - const: csiphy
> 
> probably: core or iface
> 
>> +      - const: csiphy_timer
> 
> timer
> 
>> +      - const: camnoc_axi
> 
> axi or noc
> 
>> +      - const: cpas_ahb
> 
> bus, ahb or cpas, depending whether this is only one ahb or this is bus of
> some cpas subblock
> 
> See also: https://lore.kernel.org/all/20260115-sm6150_evk-v3-2-81526dd15543@oss.qualcomm.com/
> 
> 
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  operating-points-v2:
> 
> Just true. It is not an array.

LOL I asked a chatbot to review my submission and it told me to change 
this from true to a list.

€90 subscription well spent...

Thanks for review.

---
bod

