Return-Path: <devicetree+bounces-270796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AikDX9mp2mghAAAu9opvQ
	(envelope-from <devicetree+bounces-270796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:53:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 946A01F8300
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E8B2305C8C7
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 22:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B93390234;
	Tue,  3 Mar 2026 22:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u5U4EcsH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E353238F62B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 22:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772578425; cv=none; b=lbz0W/i1YqoZIaAgOaNMU3TCdpz340vyFBolW92ChW003nBtQlMTM6fTL4RSGQ+1PNAC61QoZLqjHynchj+vMW/z2i60RORCv2RrRe3nmmSIupqRgryYhGcO4XH7amg32b+xhho3praQ+62vl6H5cEGuR4OjYs78Y6fKEqcjbZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772578425; c=relaxed/simple;
	bh=jLuXQS5uqPs5ikIuKXGCNbVWA/IDbgIXTJL0nPYHNNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MbduCEFLmjfeNkYZwjUtnR595eEjo0oatkRrh3HeLeDjhtYe5rSzwCRhat5jK7gP0TTtT/0hSZU2QPmncJBXPyC4ZlUftT4XzzUFtWyOMrQ9B4lvY88LYEKGyVYbcxLLyGPgu+Dr2MkfHrI1wXTHyW7924QlAI94Xd73pBMW05g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u5U4EcsH; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439c4a93841so506870f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 14:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772578422; x=1773183222; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YS4rmu/Plq/GT8U8U/B/TnIeQy/JnY6psImqbAy1u5E=;
        b=u5U4EcsHE16Zna6ek1DZ2UZPoG8wkYa4KoK32TRJjGyIobpWvKL6ENvB0wQINrav7A
         bKsaK8W6pcU+hpd5DYgcknTTv2/av7UC8PeSGp435tWGP4KV0m6HWdGqN7djvzvkqwBj
         4SViMdsNd1yLIdjV/Is4BSFbcdZ/WBuBIUky4JkmvTjnv1YuTaJ5kNNWYAQ0uSZ0n0sJ
         v+mVJ1FrSm7F0ytyFp1qWSunSfxVJQvwGEQyXBORKs5O29l8tCzt+k8TGgBHcxdtTe84
         HWnT6q01JQyIXypUSNkS6OmxGTvRXwBdUNRCIFICYnOakK9o5FibaJEJq1G7nBaBT33N
         d2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772578422; x=1773183222;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YS4rmu/Plq/GT8U8U/B/TnIeQy/JnY6psImqbAy1u5E=;
        b=fAQ4/VksIQrSKngXM+MicURfh6C+8I6tkgaUFrrpjUkkXkSadarh2VO4pj7edAgdS/
         oxJJzg59F28EqdzgiClvMnF9u3z1e3ZjoscEsbEkvKjg27Nl0AbLPwg3OVkqW/3voFHF
         XeQQLQTVN5KXf2Pm5S4xGiZeM/VwvHeSTP5ZGHo5TwO2RdkuZOYm555dVhaWeO8pGzDQ
         Nu3E7U/XA+q65JZoZ4U0R8J5MEfF/heS5kxmXneFvQQklwnbuQGMQenIkjYyALiQb4mP
         R+SoRr+zGdkyatX9zlgWSjyVNq5mCBBeqW1stl4pwCLO7CT8YtT1RZfTzWePUXyt02rQ
         S+hQ==
X-Forwarded-Encrypted: i=1; AJvYcCWj5au3jzWoAdKwjODpazfEesw+2FwxDNgvflnaylZ6L/zcRi0VSSTtNsVlLYDG/BXIBdzrhcBFj/aP@vger.kernel.org
X-Gm-Message-State: AOJu0YwDTymHZIQEF2IG4KnSGcgupNTSJ/TWz3QItTnj01NAq8n8JTv7
	iqrjrKBEd9ek07vB4j1U8lQFwBXx+z7MgFcSCJtC7VsbDwY8j9q5htUsHoeCrClOf1U=
X-Gm-Gg: ATEYQzwixwoozdHsuJwkRLcq0jnRHtKXgzkEqw2wIGNQ9dH5+xb4qIhJEl/vAP8bfUJ
	gg4t6ZKept3QllkJ1bv3NSED57YeYCel7eXCM6C63jVEJyz7pe7fKdpwgbbGqQGQ2iWK/0icMS0
	+yzuVELXSlrGj8Fubm3H3LHoV+rtisG1+PxYnAuY1h4PVeNOsMSla7OuzM+cqiKJO+TgBEcnDcs
	KHPVUHwGdx9BxrdGegAlcEmVg2NZKOVlIgW3edK634VLITHVhURTHe62iV05Ssyi/LUxvhoXr4L
	9fTRvQ/D0Z7VyuVj0tArRtZHX3OBp9k+jDiLBHIcmnItoyHP2TqzTaSU2iq4/7jEqv23bDPBODc
	yx8REPBLpaxsOOI7Ru4cG3qaLqleEudmdBoIyZR5sR6w3/9pK34Wjb/i+6Hy4fb5b3hvtneRMPg
	5D2BRgf5jH5Ya1JhR9LWmGHhipvJQ12yHuj8wqW0iyW+8HXISr1LddpUN8CAAcdErOrlBous2H7
	XQ=
X-Received: by 2002:a05:6000:2207:b0:439:bc2b:cb50 with SMTP id ffacd0b85a97d-439c7f64eadmr257072f8f.4.1772578422246;
        Tue, 03 Mar 2026 14:53:42 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b503425asm20135391f8f.25.2026.03.03.14.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 14:53:40 -0800 (PST)
Message-ID: <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
Date: Tue, 3 Mar 2026 22:53:38 +0000
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
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 946A01F8300
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270796-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 03/03/2026 18:58, Vijay Kumar Tumati wrote:
>>> - TITAN_TOP_GDSC
>>> - MXC
>>> - MMCX
>>> - MXA - first time I've heard of this rail, from memory I don't remember
>>>          having seen this in ipcat when I could do so.
>> MCX and MMCX are comminly required power domains across the PHYs but a 
>> subset of PHYs have the dependency on MXA.
> Actually, it's a bit more complicated on this target as 
> cam_cc_cphy_rx_clk_src also depends on MXA, which means all the CBCs 
> connected this RCG do as well.

Right but that's something to model in the clock-controller then not the 
PHY.

i.e. if a clock depends on MXA then the clock controller should 
represent that dependency - not the PHY that depends on the clock.

camcc on hamoa looks like this

                 camcc: clock-controller@ade0000 {
                         compatible = "qcom,x1e80100-camcc";
                         reg = <0 0x0ade0000 0 0x20000>;
                         clocks = <&gcc GCC_CAMERA_AHB_CLK>,
                                  <&bi_tcxo_div2>,
                                  <&bi_tcxo_ao_div2>,
                                  <&sleep_clk>;
                         power-domains = <&rpmhpd RPMHPD_MXC>,
                                         <&rpmhpd RPMHPD_MMCX>;
                         required-opps = <&rpmhpd_opp_low_svs>,
                                         <&rpmhpd_opp_low_svs>;
                         #clock-cells = <1>;
                         #reset-cells = <1>;
                         #power-domain-cells = <1>;
                 };

So... we may need to add MXA here, probably do based on what you've said 
but I believe TITAN_TOP_GDSC is the only power-domain we need to list 
for the PHYs themselves, as what you've described above is a clock power 
dependency which we basically already capture in the clock controller - 
absent the MXA - which is apparently always on...

Sidenote, is MXA required for videocc too ?

                 videocc: clock-controller@aaf0000 {
                         compatible = "qcom,x1e80100-videocc";
                         reg = <0 0x0aaf0000 0 0x10000>;
                         clocks = <&bi_tcxo_div2>,
                                  <&gcc GCC_VIDEO_AHB_CLK>;
                         power-domains = <&rpmhpd RPMHPD_MMCX>,
                                         <&rpmhpd RPMHPD_MXC>;
                         required-opps = <&rpmhpd_opp_low_svs>,
                                         <&rpmhpd_opp_low_svs>;
                         #clock-cells = <1>;
                         #reset-cells = <1>;
                         #power-domain-cells = <1>;
                 };

---
bod

