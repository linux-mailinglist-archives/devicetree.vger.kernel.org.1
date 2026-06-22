Return-Path: <devicetree+bounces-314544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w5ZcE0CPOWpwvAcAu9opvQ
	(envelope-from <devicetree+bounces-314544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 21:38:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 467886B217F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 21:38:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=K6kAgr2X;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314544-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-314544-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6F257300BCA0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD89A349CD9;
	Mon, 22 Jun 2026 19:38:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0F8349CCD
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 19:38:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782157113; cv=none; b=oQshn/KrI2N0PL69c0Op+OyhjdJOG5Jt7KNUqE54C2ltYM4FBz5St8BO05t5h12TJf8GA/6fQLs+pZOjmrEY87yIOdT7ua43rHE6dpOrSzvcBkKxqDarrM1F5i2eCoU/DpVerq17C2IdKInxJYPBOqGdSrUoBEDnMYxg7WEPILQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782157113; c=relaxed/simple;
	bh=lknCrpWSUnG2slkL+WFUZQOuRhKIj1k8zp3ZG8RMUcA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jqYycKKpkZH1jHQnPs+n3VMG4g2v6Rli/iGzkRSnMLImH+0y2haKPkNW59mhVyvEdAQBwZPvCGzoOwuDTGWnOxcSv3tRMWV8wvvdEIDX/gaUStA/eDQiA+bHLUBiFhaiVty1yaFuHBMpFSsP0Y8Sv45M4kts/DJMwH12TxFmZ4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=K6kAgr2X; arc=none smtp.client-ip=209.85.210.51
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7e93e0a3364so2460227a34.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 12:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782157109; x=1782761909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gax4TQHMEysxfgOcDqf89njSaGBEez8kqfllKRVchko=;
        b=K6kAgr2XLdxQ32UdqV+UyHCvlgX3OWEv1FUHFSgL3gz1GDILKnDBC3N8UYqETwtOvb
         Oc2JLf8OXNVEO9T+iHKWXQ5TZj+W8/I5S5uavtsP6IXIwFxvarjYPcA+YHbEW+wdCGgt
         AQRJqH96KwIctZ5FHFqtIXOMfza25VUOLC9JkVgU6OO8dwiye1lZzcINXjgwGbIImCBH
         ziZ+utpybLSeSl/gARX4Ru2Csv8f36525VGrCzvIK1x1D3zrEsmbR+ttygIDk6WORd4r
         l0hHyoKg2quQJFnYFjHiFKLIozbrFbedb6chG2BxAngnmQenz4Xp/DiPqKheAqZmTVdu
         gchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782157109; x=1782761909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gax4TQHMEysxfgOcDqf89njSaGBEez8kqfllKRVchko=;
        b=lStqG2iH+WbQaQod0fpC84p1GUVA5GgscKFD+CaNaHwRl9sClmvAkcn84ncCEuo182
         xG+ox8qEjFVymq8UR9LP8VcOG95y1CZfG3Eoxzi1y3UOmJCD/sfkjCNxEc8w01JA95I1
         2WtLIgxSaz2JS1qqvs+rfAsoO5O1E/Co+ki7TBprx3dsBv1MwKr+3ZQxChhfTXwwpgqL
         AMLnJUvPx3x+1+YdtAPT7XAQv97TsYYJwJrv3xWOu2FZPPm9jDYtCpVMW3U2Q3ndt6Nq
         U153t6l2Lft6TD0YGRvIksQnnwMatnjsohD4fpnZp0E37s6ZIngAbmswsfX/H4Fviy5d
         F8+g==
X-Forwarded-Encrypted: i=1; AFNElJ8HJ1PCyEgxA8dqjPjkuha5RYwUKXOY2ZKqbKGi0H25zqoGRa2107FyhgPtCE40Dv65orPaFclqnToL@vger.kernel.org
X-Gm-Message-State: AOJu0YxMykUK0tDDegoeHiEYUGKeSQjsWZzan/8HtO0Vhied0BAOE3ce
	o2Adhuf3UsCwYTUjRJdbcZoBaeFxbXwl9kM2xl+TD2/VviS0j/ZAkii5m3CezLJ4SVM=
X-Gm-Gg: AfdE7cmWfGvOkS3hg7Vqhzdfe5z2SwqO5khGNbs8ENuLwR2nbGCya1XO5A38zW/k3HN
	dw/loagQgvT40DLsqUfel4j5jBDiSj4ZRqAzcGiPdA7d3NkEPaV1RkRXRMBg78NOjTcdUEaR4oT
	LbcB9Ov0lHiEfsZWpubCC1IPS3E3xFaAXQ5I/MBFJtwzafpDeXVSh9rg1hUe7KofQg8ymn4GfyZ
	co3WDo9q08GJZjZTj/7RyB9GA9r4zCrw2MDzLHlGxO2JlGL6Fp0x3B129bN7WwSf38Bo0y1Eeks
	/YXiAx29854ZlN3EOaKFADlRunKvXwNZPQRA3kTtzPGlz7wgrGZKE/d/mooEjCQpZGVRFiko1pk
	celHuD5ph1RaTBpnysmBtDucTFQ6fhiqrnWlc+chKuL49X7EKUhNlvFnBR1rT6S+Ap5AXbqAEPR
	LxODw85r+xz56odvX+gMFthC+/NnDy2H2Aby8+lW9UoPROvte4992mDgBs51yKTf0=
X-Received: by 2002:a05:6830:3494:b0:7e6:e162:915 with SMTP id 46e09a7af769-7e92d815dd8mr13819644a34.5.1782157109479;
        Mon, 22 Jun 2026 12:38:29 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6526:8577:6be9:cb7b? ([2600:8803:e7e4:500:6526:8577:6be9:cb7b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e94406d488sm7094981a34.8.2026.06.22.12.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2026 12:38:29 -0700 (PDT)
Message-ID: <42e544b8-f2da-450b-92bb-99c41f1c72fe@baylibre.com>
Date: Mon, 22 Jun 2026 14:38:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 0/3] dt-bindings: iio: adc: Add reference,
 excitation and burn-out properties
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260622-new-channel-props-v2-0-aafd5369f253@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260622-new-channel-props-v2-0-aafd5369f253@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314544-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[baylibre.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 467886B217F

On 6/22/26 2:30 PM, Kurt Borja wrote:
> Hi all,
> 
> After submitting a patch series adding support for TI ADS126X ADCs [1],
> I was made aware by David [2] that at least two more chip families,
> ads1220 [3] and ads1x2c14, share very similar features (though these
> chips are not really compatible between them). After that, I found one
> more chip with the same features which is already upstream, the
> AD4170-4.
> 
> As David explained in [2], these chips are intended to be used with
> RTDs, thermocouples or other resistive sensors so they share the
> following per-channel features:
> 
>   - Configurable reference selection
>   - Burn-out Current Sources (BOCS) for diagnostic purpuses
>   - Excitation current sources (usually called IDACs TI) for sensor
>     current biasing
> 
> Given that these three features are present in all four devices and
> three of these drivers are still under review, my proposal is to have
> these features be described in adc.yaml and have this series merged
> before the three others [1] [2] [3].
> 
> This series is sent as RFC because I still don't have much experience
> with dt-bindings and I don't know if this approach or the properties are
> general enough to be described like this.

It will probably be easier if I just include these patches when I do
v2 of my series (if you don't mind me tweaking them a bit).

> 
> No dependencies between properties were provided because not all devices
> may be able to configure each one of them.
> 
> [1] https://lore.kernel.org/linux-iio/20260612-ads126x-v1-0-894c788d03ed@gmail.com/
> [2] https://lore.kernel.org/linux-iio/20260615-iio-adc-ti-ads122c14-v1-0-e6bdadf7cb2b@baylibre.com/
> [3] https://lore.kernel.org/linux-iio/20260610151342.44274-1-zizuzacker@gmail.com/
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
> v2:
>   - reference-source is now a string-array and now presents a couple of
>     quick examples
>   - excitation-* properties now do not enforce arbitrary limits
>   - Dropped burn-out-current-polarity because it was not general enough
>   - I kept burn-out-current-microamp because the discussion around it is
>     still ongoing
> 
> v1: https://patch.msgid.link/20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com
> 
> ---
> Kurt Borja (3):
>       dt-bindings: iio: adc: Add reference-source property
>       dt-bindings: iio: adc: Add excitation current sources properties
>       dt-bindings: iio: adc: Add burn-out current properties
> 
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 38 ++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> ---
> base-commit: a50909aa46dec46de3c73235fc15a7d6f763d996
> change-id: 20260618-new-channel-props-4fbd52020da2
> 


