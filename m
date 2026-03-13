Return-Path: <devicetree+bounces-275439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLYHDBo+tGlljgAAu9opvQ
	(envelope-from <devicetree+bounces-275439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:40:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7265E28740C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:40:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9E843058EE0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70773C73CF;
	Fri, 13 Mar 2026 16:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DaOVbzC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BACF3C6A51
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419970; cv=none; b=TUTSFBSPSg0e2xPY0f3e5GtGCJZQVlgpECKn5yw4xWEw/9g7C6XCVbnk6EDBC+Vsk8QaXSgNVWo8niRswjvvQ/kbxBg7ir9QwnWmKZmn1a2vFtP4yEgfrtUgmoktp1ekWpins9LdUgIUPSxJfrZn+hj7FNkHFuL/GlaBvZf01uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419970; c=relaxed/simple;
	bh=Qj7u7fKzT27EaALLTcCusFhJ7ATg3tivF3VhphoT12w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OdEId/NhgV/9ymzgXjNcNzwofsxoo6mQjKEy0CsV/Qixk8PXqF5BO9JXkYoy09/A4pXlTlIZBNiyUcNlPYSqVS9b/vIwckeMCaDjmfdW2Adh8GK04li/63lJ9VAjBdqsykaWEKYh+hp76jIUVxlp+dE4+GqISO+x5iWDLioXh00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DaOVbzC/; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439b78b638eso2537198f8f.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773419967; x=1774024767; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SpEPoHYvhvWkjpmYEpEt8jyUUg5KMMUdOdkwivHgCi4=;
        b=DaOVbzC/MQfQZvuTtUCqVq+ekt2HGjagyRzoDSez1ksKifQOvRzQStVjVt9jt6Tk1U
         bdBBx7iFu+Thpx2NA5bGj5w4oU2nSMWaMhs1e+yzddQ40wbImoyTSxT9YNWXqz2nGXF1
         fJGv6Wi+pBDosr6/RJ9WsaUHYrTNFxPEZrf0Vyoj3BecjhBXDFdJB6EKonccmftX+p2G
         ytwkEaYR5PhUrH6LqGqaGr21cdzhSJLjy+PUBsBL3PvHrLTEdYVg/CDKmEWhF5A5u/pI
         kIRZzLDTXyWvezW8Hb9o6r1Xn5WhFR3iOukr3yBTel4EZjUG7QA2ttSMYBW/QT6+II0/
         Tq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773419967; x=1774024767;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SpEPoHYvhvWkjpmYEpEt8jyUUg5KMMUdOdkwivHgCi4=;
        b=BTAi2aARFAtTQfnfnpMSCyjrVMFZk+qfgHTFDz5aZ016FOWp35eQH28FXdxZ2J9Ulj
         Axk5kF6qY2hGnjVHJrh5+G0+POe3c6D0nEPUo+uHBX2+leYRf1XPUkKQWckvaGto22X+
         IqtNrrl6JZ56xFuwvmGfhb1cCCfPGwIO0VSXaEWGDXzvsvwj7WqAodKjJ6M5nTn26VD/
         EpHH9BkmTIejaCimCv8BvTj9rYM93zEtbGuj0iI6dkD7MPnYrrgoEH1VIiIZAl9zZ7xA
         +N4mTPo8tR6RhfNJ8Ix1TIKVfcdeBnT51LHJ9UB1Tin0WTWwj8oUB2wwkwFlfWpmitjg
         DjsA==
X-Forwarded-Encrypted: i=1; AJvYcCXx6Ip3pYUsPcYYgohMyoJdgKhFEY3YF3N3RLVN8jtpP9gRukJvLjwXSx+lZqPCNvEVhe/8lUhNGS4m@vger.kernel.org
X-Gm-Message-State: AOJu0YylLZKh+Bz3YmMJLuKGPfpRF20PVVAKCxP+ekWsEc2EoauwjLgn
	9mQbot2bJE/MlQs7EViJhzxF9cB0RhhF28edQOwoKFBUAfQas8fFJhqf
X-Gm-Gg: ATEYQzxe5BsFdGMIjrt5OYlh0DY8S3p020rtg9glnjgSb6W6SIFzOkj80oINZ0jpgC4
	o4Il0hVhzAZVjYtRliwvRqAwwjs/8IefSTfj4XLyFz9CX9sN7cWIzwuNYCwXCPT9iKVckO4ZAiK
	ifGoj3SKj7ryi5r//fWI9IRSpUs7uXRhD+Ln3JhdtbG2IGCl3Wv1HClDRIGpIK9F/uhyO1GXIUV
	L8N6KTSTgPF9L27RzJdyCY1ek0CjuWsRS6vVEUwocTSwD6ksVNqXJmBGxgv2qdNp9DMzCekqWx+
	2tvbC0V4fhWLtGoAj+WXs3WOsKQR/yYWXd96Ot2eYJXwwF6x7sTfF+zf4v+qpIg7fuN19tWzmU1
	CHO9y8KM+tew4qBUjq6/EmXzYrBzpkFRASTYbeM/yiD6w9k65ZScBzluT6I75m/RJTC2Gr9az85
	G8ZvFGmA4i4Gd3W8ZZ3PqHtBYhTv2Em99SdQnj
X-Received: by 2002:a05:6000:2283:b0:439:cb79:ab05 with SMTP id ffacd0b85a97d-43a04db5ff4mr7600661f8f.36.1773419967340;
        Fri, 13 Mar 2026 09:39:27 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe22e9ddsm16346345f8f.37.2026.03.13.09.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 09:39:27 -0700 (PDT)
Message-ID: <3d27945a-639d-4c3d-969f-2ec23bdd9900@gmail.com>
Date: Fri, 13 Mar 2026 18:39:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: light: vcnl4000: add regulators
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
 <20260312-vcnl4000-regulators-v2-1-2bdebbcbb58a@gmail.com>
 <20260312-slouching-shelf-c8f64433881d@spud>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <20260312-slouching-shelf-c8f64433881d@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275439-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7265E28740C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/12/26 7:39 PM, Conor Dooley wrote:
> On Thu, Mar 12, 2026 at 01:53:12PM +0200, Erikas Bitovtas wrote:
>> This commit adds regulator properties for vcnl4000 ambient light and
>> proximity sensors.
> 
> This we can see. Your commit message should say why.
> 
> Do all devices in the binding have all of these supplies?
> 

If we look at the datasheet for vcnl4040,
https://www.vishay.com/docs/84274/vcnl4040.pdf, in figure 11 we can see
that there can be 3 supplies: sensor supply Vdd (vdd), I2C supply for
the bus Vpull_up (vddio) and IR LED anode Vdd_led (vled).
The other datasheets refer to three supplies as well - one for the
sensor, one for anode and one for the bus:
https://www.vishay.com/docs/83372/vcnl4000.pdf
https://www.vishay.com/docs/84138/designingvcnl4010.pdf
https://www.vishay.com/docs/84327/designingvcnl4200.pdf

>>
>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> index 2ba4d5de4ec4..a1b4c02db246 100644
>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> @@ -33,6 +33,10 @@ properties:
>>    interrupts:
>>      maxItems: 1
>>  
>> +  vdd-supply: true
>> +  vddio-supply: true
>> +  vled-supply: true
>> +
>>    reg:
>>      maxItems: 1
>>  
>> @@ -54,6 +58,9 @@ examples:
>>              compatible = "vishay,vcnl4200";
>>              reg = <0x51>;
>>              proximity-near-level = <220>;
>> +            vdd-supply = <&reg_vdd>;
>> +            vddio-supply = <&reg_vddio>;
>> +            vled-supply = <&reg_vled>;
>>          };
>>      };
>>  ...
>>
>> -- 
>> 2.53.0
>>


