Return-Path: <devicetree+bounces-263276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLWxKGWzhWmbFQQAu9opvQ
	(envelope-from <devicetree+bounces-263276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:24:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1052CFBFE9
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61197301779E
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D6935CB86;
	Fri,  6 Feb 2026 09:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VvvPTTt/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F6835C1BE
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770369695; cv=none; b=StYdIjjtJdpvZOJExgdlzcxL48t1CqGPeXNQo4Y8ApezK+kl4YsEXm3CtqrgZa/K1YGBESR+V4hQiekDbdmKIBlL8fMAozrCjDi00wXJAO3/U9yztncbkyW1F4Wpz+jA9XX9jveK3q8UjUwX78FDq8rqkMlixWcxqsnULqHsZh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770369695; c=relaxed/simple;
	bh=mPK2MiKQ3X13y09TPJIpWKe2qfh7owIvcDLRW37DMCo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k3a1PPxeK4eFSruz7opw1agX+xXgtfiPyNbVxGWGjh5FPK51cgeMlJ74w1XHXpDhfAmlhAqrPkzl7lIMnOEQdkNKqb+Lun8p2w0xSNfp4Tx+YGA3j0JuAA2SG4EBkdWDWXHOu8XV/o8pBXTB7sDLIL9X7kbGkNrkdTGFh3wTyno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VvvPTTt/; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-81dab89f286so938872b3a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770369695; x=1770974495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DHcOD9pDSPOBKmWPMOHD8g7QnZvvQliE20szaOYrjF8=;
        b=VvvPTTt/H+i3fpdLtN1w0fbMQFruVxkhcFClfTnVb0aJRpW6hGcMM6C7UgnLeiJjRv
         x9U5dQ6cNnzSLrGN6WW5S5JhszjS6HluYhZpOesk7IXNG0SO82JDFJrRppwJN2TuXzLn
         dztN5WFkL/RMMRdJhhzIt6XJoyK2iSiK/G6wHS/TB7Ew0O7NHRTVbitkYJdPcErsJVHh
         cZ2d6u5LLwmXRimqEJwuH79mzAj428BvGkb0LaofcxncWLNawynPWh6XE+AdlOpf1csP
         Bb5LqDES0OpeiKVYLz+QYcDPlkZutzHQjx9UXhYtPk8IQYz8/MsJVNLW2mMUI1Mty0FG
         8TsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770369695; x=1770974495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DHcOD9pDSPOBKmWPMOHD8g7QnZvvQliE20szaOYrjF8=;
        b=Ig2nXHCTaq0L5vyG2EXokoDNOxvBxLgtmJ5essRy3bOuq7rM1QeI7hHz856C7tIAHo
         POus3LHTMAw5XiYGUujb1xSF9JmnAjEVt6evDTQ+tuVr6WeTQmDFEmk7YFDZL5TKpsMd
         7ij63wgyp5EYuPrOLMZjpXvhd1bPydOj/Wt/Z0zz6YjRt4FLsPqupJwMjtNkjVYcBJLb
         qER3a60BJdUco9ObqUvEZpmwOwc8DsoxBgk1cWfUZoslNcgj/l8EYoORBhR50A558QeH
         W4ONLSYO5ViLlle9KKJ6dXVH0rogpht7mGud6phmPtHChe7HJyV5ZkuCXD46DEbClY5E
         Ln6g==
X-Forwarded-Encrypted: i=1; AJvYcCVQ5Y3WXhRBP82m9Y0ivE3ipVfkgehoTZPG6Z9tR1Jy1cG7OHvp4U2C29RmeGokf6fbQe7mJrPod8h0@vger.kernel.org
X-Gm-Message-State: AOJu0YwZfq4gUSwNTqjbRPx/Q05zOzqNkeOYOP2DgaqPp37BYKdJ3bic
	0z2wZ/3DWJmTNKkewSD6kZ3F7w4EtF7OADmiEq0yXG86du8xcfEkbD0N
X-Gm-Gg: AZuq6aI5UZS89fA9Fxk7yjEXy26irJD5Hv5F3XalJmFqS9zm1hDpiJJM+yW73zMCjQg
	4YD6ZGWqqYRgMVaGjJdWwCAnn9jdQpasqeVupgul1aI0pWG6xkOAesaVscFt11PpQE4S8g9VAu3
	Nk+pxb0gk1YAGS3BLncJsF4hCaG6nxZKJv7SO3Q/voQeV8bgkOU91GiPK692HTeTteBVjuWjCZ+
	S2ijTS9R/zhuA71c1TGwqy6xqIfuIK1vl/bXOmgGTvHt9fgrXbbhCgTNkl1w326dT8D/wJaLThk
	zrlIKFMlJ6ONZVbhUKvXKW0/qf9YX9DMtXxbeJCOpmg7TjeWXrbsZn4TvNuhOmooAtlRRZBlZ+J
	tJGopTfiT1BAymPdRAaxAQKL13q91OTbH90z28+sBlgPIFOUHXubNff5IOXfgT75tZKhW4GeTHp
	hxzxn4cCFwSID9uGKOIEMyK3d1TS2NKpG73NGnDHPRDV320el+a0EDRLNHc38nsOed
X-Received: by 2002:a05:6a00:158e:b0:81f:4c37:7647 with SMTP id d2e1a72fcca58-824417a9046mr1511837b3a.68.1770369694600;
        Fri, 06 Feb 2026 01:21:34 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824416cb967sm1632051b3a.30.2026.02.06.01.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:21:34 -0800 (PST)
Message-ID: <1a82e38f-2009-47b0-bfb5-c2624bb06719@gmail.com>
Date: Fri, 6 Feb 2026 17:21:29 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: nuvoton: ma35d1: add display
 controller support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, ychuang3@nuvoton.com,
 schung@nuvoton.com, yclu4@nuvoton.com, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260129040532.382693-1-a0987203069@gmail.com>
 <20260129040532.382693-3-a0987203069@gmail.com>
 <20260205-tactful-warm-chicken-50bdc8@quoll>
 <a0910eb7-4597-45a7-b538-f2feb021f389@gmail.com>
 <7c29f46c-aa27-4569-9170-53538785e029@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <7c29f46c-aa27-4569-9170-53538785e029@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263276-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.111.199.128:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1052CFBFE9
X-Rspamd-Action: no action


On 2/6/2026 4:56 PM, Krzysztof Kozlowski wrote:
> On 06/02/2026 08:12, Joey Lu wrote:
>> On 2/5/2026 9:23 PM, Krzysztof Kozlowski wrote:
>>> On Thu, Jan 29, 2026 at 12:05:31PM +0800, Joey Lu wrote:
>>>>    &uart0 {
>>>> @@ -129,3 +165,23 @@ &uart16 {
>>>>    	pinctrl-0 = <&pinctrl_uart16>;
>>>>    	status = "okay";
>>>>    };
>>>> +
>>>> +&panel {
>>>> +	port {
>>>> +		panel_in: endpoint@0 {
>>>> +			remote-endpoint = <&dpi_out>;
>>>> +		};
>>>> +	};
>>>> +};
>>>> +
>>>> +&display {
>>> What sort of ordering rule is followed in Nuvoton? Why is it different
>>> than DTS coding style? Why do you choose other style?
>>>
>>>> +	pinctrl-names = "default";
>>>> +	pinctrl-0 = <&pinctrl_display>;
>>>> +	status = "okay";
>>>> +
>>>> +	port {
>>>> +		dpi_out: endpoint@0 {
>>>> +			remote-endpoint = <&panel_in>;
>>>> +		};
>>>> +	};
>>>> +};
>>>> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>>>> index e51b98f5bdce..7d9d077f12b2 100644
>>>> --- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>>>> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>>>> @@ -379,5 +379,19 @@ uart16: serial@40880000 {
>>>>    			clocks = <&clk UART16_GATE>;
>>>>    			status = "disabled";
>>>>    		};
>>>> +
>>>> +		panel: panel {
>>> No, there is no way your SoC has a panel.
>>>
>>> Don't add fake stuff to your DTS.
>>>
>>> Best regards,
>>> Krzysztof
>> I'll move panel nodes out of dtsi into board dts.
> You did not respond to several comments in total, it's fine, but if you
> just ignored them, then it would not be fine.
>
>
> Best regards,
> Krzysztof
Thanks for the review. I've gone through all comments carefully.

Some points were addressed directly in the next revision,so I grouped a 
few replies together since the original code will no longer appear after 
the update.

I will also restructure the DTS so the panel is defined under the root 
node to follow the standard hierarchy and ordering conventions.

For remaining items that need discussion, I'll reply inline one by one.

Joey


