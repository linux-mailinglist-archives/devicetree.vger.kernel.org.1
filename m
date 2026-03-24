Return-Path: <devicetree+bounces-279993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +ICdG0PLwmkBmQQAu9opvQ
	(envelope-from <devicetree+bounces-279993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 18:34:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EBC31A1D9
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 18:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 610833008682
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0695E4070EF;
	Tue, 24 Mar 2026 17:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gig/XURb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A0E39E198
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 17:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774373361; cv=none; b=E3bwSh4KESKuBPT2qRBxp/lU5HaDePpJWq1KVVci5xVkUp2WOAHH5eOUNS6hqoAkfcU7o0F7nETy1VQPh80UBiHR8Tw7VahZxrZzbel0QA9lXwZ+5wIe6VAKEUMJ0X4zeMc/1OYtz0Muk4AZz5gYeoKnaL4RJVh8oozn4Sja/lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774373361; c=relaxed/simple;
	bh=+ZEbCLyLoc1U+1Me6J7mvrYpkghwfgGTcKlIxBiMGjA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d4efbUh6xyAyndu9TuoZ0mmOAXvWv4yZnAfykJjzmaDtGLftjHH/LyQGdLNsAuFNhxSjwhH9X5VVXftrDU0fSnZLAcA0g29S2xTCpjMJeeeUAwHjl/7s74xIZ6MBrYn75X3+hIHLVDc7SgFhb22XowGYuikk0MBl+FOFwebBaAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gig/XURb; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7d91f82d819so1301238a34.1
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 10:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1774373359; x=1774978159; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhy7rQIQOTUlhyX3h0JAVHxGs6BVrDyegAUb4sJpE/k=;
        b=gig/XURbyRAsg/bb8Zyf7Wtsozf4/11Hsf/+ggaOK+YgLbT67Cgf0Db1awJU/+Nosa
         NFnyeuDEzCyqBlTO9kq/2Zm0h/XIAzB3jmS7VmtmE9iYRYTBA1B2aCSJ8YBxW60FTHUk
         YvpRfuoRQ4pWbOrOIl26SNA+BjfJXqTbcVSPoyU+CgbCPo9w7VTGlz1BMsYjek0wQebr
         GYt5OO8fjV+1aUksClRqTPZ11kqtuBlFkjQVtsjLVoDZw2hNI0TTqyGBwn/HuI0mqZbs
         LjnoL7LyXLJGuJT9IWUvd0PWDLSmaDrhQPmSt7boBFzZb3XFrnmvehylwKOeV9r1axAP
         pWBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774373359; x=1774978159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zhy7rQIQOTUlhyX3h0JAVHxGs6BVrDyegAUb4sJpE/k=;
        b=q/bBuuoTnP2rclEDUe6YAoK+vhRfVAvpjeK61kY4gMjFvRkQAVR2XP+UP1fPzvnOFS
         aKpAUtoS4cQ7qv0qvgB6ioPg1ierbHaU0s8EtcnnBdz4a+anvUEJUjfiAuFdht/DrOLE
         s6ZqwnrmBIk8V5KJItC9IBiH50gflrjhl9/MAnq0383LElqmZ3ekApRpnhznIauV8bq/
         xFPrsUQWRkcw5IMqYIaa/88sfUoy8itka97UHWe+Lg6BsbxGLb1NZYrcJX0Ov9e++DEw
         Z//pn3O+op3luMDL7GaC49d/qRIflKPdUHErcYxpfG50BnQneITqOjNp5fVViEJ6EKOa
         tdVA==
X-Forwarded-Encrypted: i=1; AJvYcCW+9fSXeLvDv4sX202Ybol2fu+1o1dxjCtvMR8y5bDAZpOeD0OEnO5ALZwVG4eMVFE0tUY0Oosjxjg5@vger.kernel.org
X-Gm-Message-State: AOJu0YzJif5q8SJY2+WBDQh5+/YbtUMmH4QvVDwZ3qgXuEtfjXnBBkS3
	sbZnIGu3xzA4WEkHnpOLLVEqW8wu8+vuuwN33m81KyvgSPh7kQgpN8flwwLxLUtgnfk=
X-Gm-Gg: ATEYQzydmOgxXbtcO6fmLTKTuBBQgOes8ng6Cs+8t+tcJOKvfEyQrfAtRa61gDpUnoD
	QP3ussTJa+rfDiTUeXU0IEKkq30RT/OnsHGr+AOEq6IVAFS5btzm3FVT2YfluO9h1iEdpi6WNB3
	zDXOz07g6XUHw2mNciFut6tLGNpoXZmDucQr9r6C+QFxhMnv3X8vWQi3IjBtPaVndFn4aypQ2Ne
	lzojveVhno5cnKTbFRaIO7apJv3X35HQ4oQOyGZJ3VqfHcnZocCF/r/dph1u9ZW2p17uiDFI0k6
	bAZXZx00+g8iEK6p9zIn/8LXwTmgbwJR9lSk5MoacNeOrJz1NbWA3ohhBwlluwmF8aBKLrIHALf
	aEU3IvSc7kE6ZPVWb/fBR7/lhVzqkKOj7SNyhQolCZrWpiXhFvdkDnZEWvsIbIVx1oKHfYbaL+o
	uUjJJ1HZcab8RTHORofLn66fSu+HZg6hhcfCHN1wpHCkZRv+LEhbziHW7RYUSQkad3pE6emp4=
X-Received: by 2002:a05:6820:985:b0:67b:bc25:2670 with SMTP id 006d021491bc7-67dff42078dmr407150eaf.26.1774373358893;
        Tue, 24 Mar 2026 10:29:18 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:8a85:a776:3f75:a1d? ([2600:8803:e7e4:500:8a85:a776:3f75:a1d])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-41c148a5f99sm14342917fac.2.2026.03.24.10.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2026 10:29:18 -0700 (PDT)
Message-ID: <c1d99a64-ea4e-4cd5-9b1e-0972a5e0d61c@baylibre.com>
Date: Tue, 24 Mar 2026 12:29:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
To: Sirat <email@sirat.me>, Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260319190738.151614-1-email@sirat.me>
 <20260319190738.151614-3-email@sirat.me>
 <8502eb51-53c9-4f1b-92d0-21b06fa4802e@baylibre.com>
 <CANn+LWJEJJoGQU7p2P2GrOcA_g2x7jEnvjcTJYG1hDRUnRw3UA@mail.gmail.com>
 <b1da32d2-e1f7-4fea-82a7-a40e8073a100@baylibre.com>
 <20260322110319.7d7558f3@jic23-huawei>
 <CANn+LWJwPUiCkz_godEeBvZnXEXzNmCW_-ou=wHL+kjfn0zF_Q@mail.gmail.com>
 <CANn+LW+OPP2riP1d=zZKz8MnTk2yo2CL3qn17_LYD=1SmCAQgw@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CANn+LW+OPP2riP1d=zZKz8MnTk2yo2CL3qn17_LYD=1SmCAQgw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-279993-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:email,baylibre.com:mid,sirat.me:email]
X-Rspamd-Queue-Id: 67EBC31A1D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/24/26 10:17 AM, Sirat wrote:
> On Sun, Mar 22, 2026 at 7:52 PM Sirat <email@sirat.me> wrote:
>>
>> On Sun, Mar 22, 2026 at 5:03 PM Jonathan Cameron <jic23@kernel.org> wrote:
>>>
>>> On Sat, 21 Mar 2026 19:37:58 -0500
>>> David Lechner <dlechner@baylibre.com> wrote:
>>>
>>>> On 3/21/26 5:39 PM, Sirat wrote:
>>>>> On Sat, Mar 21, 2026 at 11:09 PM David Lechner <dlechner@baylibre.com> wrote:
>>>>>>
>>>>>> On 3/19/26 2:07 PM, Siratul Islam wrote:
>> ...
>>>>
>>>> If you do a buffered read, which stop ranging when it is done,
>>>> then how can the direct read work after that?
>>>>
>>>> Can we just start and stop ranging momentarily for a direct
>>>> read?
>>> If the latency is high, then worth considering whether autosuspend
>>> and runtime pm can help. That way a burst of reads will see low
>>> latency after the first one but we won't be wasting power when
>>> no one cares.
>>>
>>> J
>>>>
>>>> Otherwise, is seems like we would want to have ranging always
>>>> enabled.
>>>>
>> Maybe we should go with continuous ranging then since it's the
>> vendor-intended behaviour.
>> Since there is no hardware single-shot mode, by design, I think the
>> driver should just behave
>> as the hardware intended.
>>>>
>>>
> Just for the record, I'm dropping postenable, and keeping predisable
> for only the cleanup.
> 
> Thanks,
> Sirat

predisable must clean up anything done in postenable. So it doesn't
make sense to have predisable without a postenable.

If there is something unusual going on here, it will need comments
with a clear explanation of why it still works when it is breaking
the convention.



