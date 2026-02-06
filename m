Return-Path: <devicetree+bounces-263243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wG/2FYGUhWm3DgQAu9opvQ
	(envelope-from <devicetree+bounces-263243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:13:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB2AFADFA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:13:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5BA393006788
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 07:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED7F30BBB8;
	Fri,  6 Feb 2026 07:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EC6SIBuK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1BB30BB9D
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 07:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770361981; cv=none; b=Kns8SOj0YG8w1x7pdmIKST/3AO1Bqd25kjw3737658ZHpJa1SRTf62wt3UR2qcn8Mjm7RNet22EFHrPUCQdgOjQ3Zic4NXH51ROrDQjv50e0gFwqXz8OGVjPYaJmtNc/lRlk6ZeM/ujAIERN1t1m1mnKGe/L51cvGYC4y3Sx5l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770361981; c=relaxed/simple;
	bh=ve3N8JwFfzJI6YYKKpjYLKApafRYjH/sQq33xov40bE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TgabMiCt/bWfJFWOWzoPQLTd9cRhXPNe37cy886ssaLwJgKX6lTtG0nVwd1NMeVXyYTHdtvsWY9J2xicbYRig2MhYRzumiMBRDsCcx+JrESwD+0MddodCFZ38SI+n1PgJzNSDqJGNsVr24rBHc+YYBm1zUo9a/q7FIPtjhGEJXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EC6SIBuK; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-354a2d107bfso199859a91.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 23:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770361980; x=1770966780; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3UW7bwvIJSmR6JD5JewClPLgD/uZ6ndB7iEUdc/rSvY=;
        b=EC6SIBuKcJv3N3N/u2WU9V2Dt+nwLIII4gZd6OF+vfDH63NNui91Zczs8UfCjobPI3
         DIzakz/1H2OLbt65lHRhm1fp0EsqytAbHG9hhTdozjWtmM2DqKV1Y/jwPLDOGIasstXL
         c6t8YRFmapWTXJF4De1b2H4/oZllGwlTOVfsOiNAfWIFEa0iY42EX7kQsIy7RbRcWCen
         vTembW+orRHqi+DdVsfIQL81KbRr4phZviZ2zRF6nbfb7USxOZcx++ZpOeQKlws/xF18
         WWCLYUOl6qhvOK85jT3CLnyF+vK+9zEU5BADqGBL2anRz68W+NHvXZJ9dEbOlv6iJylT
         7W9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770361980; x=1770966780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3UW7bwvIJSmR6JD5JewClPLgD/uZ6ndB7iEUdc/rSvY=;
        b=O115Qzgs2rpmynleDTZkwNjyQ/oAeXV9Wf/MsBwiIliVXcLY8Ohar1A1MhDB+4wTAa
         iFVxCU9fpjIUTQNYsQf87yjb5Vjou69yOiwFNGlkKt71qknMhrGwQn5hiaceimghAzOj
         1z0qu869FgAfRj8VNyy4D7lY56jACdMh3dc4+KRgqm8f9f/bsE1H6hvNlctzZSdAOAwJ
         KqSO24DQQVoyeyJpDYmZZcSWrC8V9FUPpME21e5n45epHOuvYG6QNPutp3N2agqxsic2
         FjUfoGZ/0ACIAY1g4x8OmAtmgDhgLGJ2n46w/7odnYEymUJQbrByLuPanIU2Eb1sEJMM
         TSIA==
X-Forwarded-Encrypted: i=1; AJvYcCW0d5mHjWMIzC9PSCP+IvWC6C/5RMyK0m5xF2VQvhJMe11iBKUAh6bJG+bD+vsMqKZPKwTyaL2WiDFP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyg/d7XKb9khjj7PSM1U+djLd8LbR7SQaHVOqqUlI0kpXSF/1q
	dxXT3rZvc5PtxRPTPBat7uo3UprFME4POs6JSrDlgjZHGe+427wg+t87
X-Gm-Gg: AZuq6aL1ay4J8kfKe/7vgcjkaSqEQVSR8yOGpp5ARoAskwch6ZFIUmmtZ9yY8+40Th5
	6e8fZ2gsOrJdKE5TC1l90SK09nKm9UqhP5PYu55WaVd/uD5ev+JkjIwWUzRMJ5YFLcW/nKB3pEt
	r/r6VEoJmzAdxfgFwVNUIuOJYyJXwMrcOS0LzWMYDfbNue6CzE2cPmlLIomr6O/X8bGuVt1/csz
	PkQirH2UChJCSeI+Vxx573bD/7nm57JKQbgdvk8YN36+zoGnhbz/NBY7DhMnjFBBJT47PMB0x4Q
	3/gJVR0mASWsC6ZaaeJD3/Jm4pba9KUDKtSGXbXxcwrCIUZfKcNsvpO36BqI53m/3MT8vtbSeBQ
	VP4uP+XLJ6jObUvUfU+66fUkAWkcCMUE7YJKukEN3JIirMvCiJrmKK+vg/oAkCI/yuHIsYmkqqR
	maBu1ckNtLilWPctW18AiQKuTitJAO/cWAb5z5/dsvHaUYvb7qJU5QBY+jtb5UKodg
X-Received: by 2002:a17:90a:dfcb:b0:330:bca5:13d9 with SMTP id 98e67ed59e1d1-354b3e5e993mr1427756a91.32.1770361980362;
        Thu, 05 Feb 2026 23:13:00 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb52494bsm1411203a12.10.2026.02.05.23.12.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 23:13:00 -0800 (PST)
Message-ID: <a0910eb7-4597-45a7-b538-f2feb021f389@gmail.com>
Date: Fri, 6 Feb 2026 15:12:57 +0800
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
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260205-tactful-warm-chicken-50bdc8@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263243-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[2.111.199.128:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: ECB2AFADFA
X-Rspamd-Action: no action


On 2/5/2026 9:23 PM, Krzysztof Kozlowski wrote:
> On Thu, Jan 29, 2026 at 12:05:31PM +0800, Joey Lu wrote:
>>   &uart0 {
>> @@ -129,3 +165,23 @@ &uart16 {
>>   	pinctrl-0 = <&pinctrl_uart16>;
>>   	status = "okay";
>>   };
>> +
>> +&panel {
>> +	port {
>> +		panel_in: endpoint@0 {
>> +			remote-endpoint = <&dpi_out>;
>> +		};
>> +	};
>> +};
>> +
>> +&display {
> What sort of ordering rule is followed in Nuvoton? Why is it different
> than DTS coding style? Why do you choose other style?
>
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_display>;
>> +	status = "okay";
>> +
>> +	port {
>> +		dpi_out: endpoint@0 {
>> +			remote-endpoint = <&panel_in>;
>> +		};
>> +	};
>> +};
>> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> index e51b98f5bdce..7d9d077f12b2 100644
>> --- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> @@ -379,5 +379,19 @@ uart16: serial@40880000 {
>>   			clocks = <&clk UART16_GATE>;
>>   			status = "disabled";
>>   		};
>> +
>> +		panel: panel {
> No, there is no way your SoC has a panel.
>
> Don't add fake stuff to your DTS.
>
> Best regards,
> Krzysztof

I'll move panel nodes out of dtsi into board dts.

Joey


