Return-Path: <devicetree+bounces-270810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE5bOLN3p2kchwAAu9opvQ
	(envelope-from <devicetree+bounces-270810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:07:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC411F8B2D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39CE630CC788
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 00:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54F1A135A53;
	Wed,  4 Mar 2026 00:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gEv2ibit"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A62727A107
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 00:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772582545; cv=none; b=PwQFnJ8dhVz8G1QMkJLwUtVFnjMqeeiBCkUwg+kfQTGVQdqLtPtWL/lX28W2g/sXo8tWHP8HWkG0+KV7s6tijPOZh3IcOxfKrGY7hmlnkhB3MWtJJVPMPJkGATOZ69Uz8fMDT9dkahav3QT51pj0GFCs0eaLfjr3cOoA4M55Rb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772582545; c=relaxed/simple;
	bh=+gtpGvpUHd0JfxYPbL7Ag7WdFEyaLo1orHoZcjDRLSI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qhg6MtlCAecydCOtumo1ZzIGFIs5nDtetkMyOHYUBwUIux0agqSHa2FoyXC1rgVp6EUHKARtpTEl1i0y415W3bT7Juh3P5m/W808SR76lSOuNLHWXPC06EQMPAqjdzMx6F066XNDv5DiL7L2BumpGEVJ2e6brgfXdDqDTphCXgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gEv2ibit; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48374014a77so75887115e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772582541; x=1773187341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3A33foWrGV/3pmx7ubiIaObP2mGudnBEt53Evwina6s=;
        b=gEv2ibit1f2fbU9KEdVfRan/5cUB1vb8cJvTAZA7E/42XGxSJPfr78bpQB/7mZSMjZ
         uMky/uBY0bIjaDYxD0nSHg51KaKuaDefwjeTkjquiRenHjMuq1ONx2XEgOC/kzUIFBQS
         Ms/KI8wthv6zc4TcKFnbempDxtFn/ufYxYR9PSI60/eknY4aSH57Jmps3S69qTgLgpuH
         Wwl4V1e/BjJLw7csr0+pEGcWR53c86t57V/RgiAMD2PTSZFSefp2AGAbwJL9HTIpajV8
         f1PQlLwnz4ueAWPHR3PRUctM7qIsMpxtGy3dTCidQZe5ICyiuu7C+Pcb7Ah3YBgpj8N8
         XYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772582541; x=1773187341;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3A33foWrGV/3pmx7ubiIaObP2mGudnBEt53Evwina6s=;
        b=BjHgrZMa9i4M9RpkleGdb6toZhbT6TpBrvtnLLATYYAacKvvo5nm9+DMRmqmhZmjHP
         mcgW+jXcmNy3oSkVnRe3o4LeM32x5PikQoRXWfeQZw9H0ddivf+o7+jKQDIiX7NNRJQG
         JtEDDELIDrM6hfcOB+Mz5AtRbp/slJAXNzB57bAWTdOCU/Cm+xoEpfWGDa8oHDNhLuUH
         lr1RfLu8iQlB59+IDDbarbvR/2lCj/AaY1V95V8yy5deVhgwOZ1JjkHZgynTdm/P42Mv
         MS4rT7SvYQGtBlgC5inwmMOPaYyAToYTKE20CtxfewYDwsEBBpzVNw2USAVQq71LYzZ7
         loBA==
X-Forwarded-Encrypted: i=1; AJvYcCUjVcLYCuFRDtVIttUWskMQZWKFK0PslyVEwDQVElKBJZl1W7yg9qSG1AcwuQcYFiW+Eww0ZMxu1mMF@vger.kernel.org
X-Gm-Message-State: AOJu0YxnyVZjKN7lXpiwtytizOZ4Oez3tgdHBgDqt4/LVAajHHEOk03I
	0+hiZoDHK/9G6pcdvFEG4ed5v6iipOYpg7trTAFEqd3Osc1aOMzfVNsvB/em6aWSyvI=
X-Gm-Gg: ATEYQzws1EtJzuImNCJ2/baxhpJP/vbebXnXNeGaipMoCY6c360vuWF88arkOKWqiWE
	2kt3WepVpW/63YGoM1D1LwIl6jdnJlAagt9l7r/ffjfcXOjWxTqbwtXhUsIleRmWFHOQe9NMUVU
	TG2fboJIM2CM3aQ2TDmxX4+U0SUIIVY6bHK8tKFpPtPepu0XBCILfvlyjtLXyXF8E6gF+WEdFfE
	7eCPGZe73JbbwBpZHsGo1kypMjI3YswJ43OJGka0rKIBxYWbJGrwhyScdJQLbU5b9CXVNdEe3HW
	xYDgm6uQj1XmSJdgF+yU6c8nQKtH+1Azm2hCFrL3SAPf3+CEm2L6cpSQr7bKFQH3eDTGd3Dei9G
	An7ATl8jCdcX3L+SJl0oKEs7YfsKgw7T5//bVnZLenuPq5MLtadL6ZSk6YzoibpAWe2lTj4Zx+W
	ihUVEEPzI/EY4LHT7z7v9YXKVrD+j6PYVaZV9vXk0z6UmWN2KOZfy8L0jpTNt+/APJ
X-Received: by 2002:a05:600c:8105:b0:477:93f7:bbc5 with SMTP id 5b1f17b1804b1-48519840222mr1722765e9.10.1772582541304;
        Tue, 03 Mar 2026 16:02:21 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485187ced3bsm11058185e9.8.2026.03.03.16.02.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 16:02:20 -0800 (PST)
Message-ID: <39828202-9f48-44f9-9f28-574f141e2ee9@linaro.org>
Date: Wed, 4 Mar 2026 00:02:18 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <4pFL6wOeTKUt-Zq4YbjqJdacMgUIPSYJD-4-5DcIMEZ1sM7JsNFYcSv1bd7ZRVOklTsmkEfxM2b6tTflmiECNQ==@protonmail.internalid>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
 <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
 <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
 <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
 <bfTUflirC2qzMSllq_4qHGr3GL6TJ088yNF4lCBtjCoc1sXqz0KcfYyWuQv6TeRtP6GdpqllNp4ipl4Qax4xwQ==@protonmail.internalid>
 <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
 <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
 <8e7c2036-74de-4f21-8269-8e2b24323753@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <8e7c2036-74de-4f21-8269-8e2b24323753@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4BC411F8B2D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270810-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ace4000:email,linaro.org:dkim,linaro.org:mid,acec000:email]
X-Rspamd-Action: no action

On 03/03/2026 23:50, Vijay Kumar Tumati wrote:
> Sure, I was just giving an example. I haven't looked a lot into the 
> IPCAT / clock corners of this target particularly. Someone needs to 
> check the clock plan, 

I mean, feel free.

understand which PHYs require which power domains
> and add that in the following OPP table and as for scaling you can use 
> the same RPMH levels for all those power domains. Btw, if you had 
> defined the below OPP table for TOP GDSC, I think that is wrong. It only 
> has two perf states (on and off) and doesn't need OPP scaling. If you 
> look at the Iris driver, they link only the mxc and mmcx power domains 
> to the OPP table using 'PD_FLAG_REQUIRED_OPP, not the GDSCs.
>>
>> +    csiphy_opp_table: opp-table-csiphy {
>> +        compatible = "operating-points-v2";
>> +
>> +        opp-300000000 {
>> +            opp-hz = /bits/ 64 <300000000>;
>> +            required-opps = <&rpmhpd_opp_low_svs_d1>;
>> +        };
>> +
>> +        opp-400000000 {
>> +            opp-hz = /bits/ 64 <400000000>;
>> +            required-opps = <&rpmhpd_opp_low_svs>;
>> +        };
>> +
>> +        opp-480000000 {
>> +            opp-hz = /bits/ 64 <480000000>;
>> +            required-opps = <&rpmhpd_opp_low_svs>;
>> +        };
>> +    };
>>
>> ---
>> bod 

Yes, we should scale the MX*, that's incorrect.

csiphy_mxc_opp_table: opp-table-csiphy-mxc {
     compatible = "operating-points-v2";

     opp-300000000 {
         opp-hz = /bits/ 64 <300000000>;
         required-opps = <&rpmhpd_opp_low_svs_d1>,
                         <&rpmhpd_opp_low_svs_d1>;
     };

     opp-400000000 {
         opp-hz = /bits/ 64 <400000000>;
         required-opps = <&rpmhpd_opp_low_svs>,
                         <&rpmhpd_opp_low_svs>;
     };

     opp-480000000 {
         opp-hz = /bits/ 64 <480000000>;
         required-opps = <&rpmhpd_opp_low_svs>,
                         <&rpmhpd_opp_low_svs>;
     };
};

csiphy_mxa_opp_table: opp-table-csiphy-mxa {
     compatible = "operating-points-v2";

     opp-300000000 {
         opp-hz = /bits/ 64 <300000000>;
         required-opps = <&rpmhpd_opp_low_svs_d1>,
                         <&rpmhpd_opp_low_svs_d1>;
     };

     opp-400000000 {
         opp-hz = /bits/ 64 <400000000>;
         required-opps = <&rpmhpd_opp_low_svs>,
                         <&rpmhpd_opp_low_svs>;
     };

     opp-480000000 {
         opp-hz = /bits/ 64 <480000000>;
         required-opps = <&rpmhpd_opp_low_svs>,
                         <&rpmhpd_opp_low_svs>;
     };
};

csiphy0: phy@ace4000 {
     power-domains = <&rpmhpd RPMHPD_MXC>,
                     <&rpmhpd RPMHPD_MMCX>;
     operating-points-v2 = <&csiphy_mxc_opp_table>;
     ...
};

csiphy4: phy@acec000 {
     power-domains = <&rpmhpd RPMHPD_MXA>,
                     <&rpmhpd RPMHPD_MMCX>;
     operating-points-v2 = <&csiphy_mxa_opp_table>;
     ...
};

---
bod

