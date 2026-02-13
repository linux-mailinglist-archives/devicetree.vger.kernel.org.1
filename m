Return-Path: <devicetree+bounces-265274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MHiD5jajmkiFgEAu9opvQ
	(envelope-from <devicetree+bounces-265274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:02:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C090133C50
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:02:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C56FC303299E
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B68AC3195FD;
	Fri, 13 Feb 2026 08:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zjKjcdwd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C873191B5
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770969748; cv=none; b=q+t0N1GT49POf13xGC8OOI/AeLh8m9liAOVQLCpSzBlvo6jftsx6VDiDXxMb4FOhnFH1gKdlGtboW5k5p1OkYO1WHzFjGcnNXNnGChhCrrV6gqry1C1UqR5Ro2x4rL61szNZE/x010BiDBbvpiiu/yGuEdylWC1m4Is7KvZtvwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770969748; c=relaxed/simple;
	bh=YuUImcaHV7Y1d4T5vAe0F0a09U37V8B1PbdWpCRJ28k=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Y+Kx74aXhgPlZJje3X9fInkEmheMwuO3fQFFUXgv+BVQnfWozUwXYqGXUWQ5VvGMyniLLJdeIwuYs4Iw4/gas4JsEw1x2h0Fh1D6iQMzE22baX2WSeqX8Ji91MZRr7TXeduW9V05IFwsJoKIhDqEOOoqU+Q85MTAwJVpEaIr338=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zjKjcdwd; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8f9b5240a2so92218666b.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 00:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770969745; x=1771574545; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YuUImcaHV7Y1d4T5vAe0F0a09U37V8B1PbdWpCRJ28k=;
        b=zjKjcdwdWtGzi4G3h2O7QBvlOBYfzGGuC6EAVCixrH2GMmErXvcPxUKLOnZH6Z0xnq
         K+dJVltop84bt7KdX0TZZIZSjWitYHogW6vJblRNzLiYfvPBrIma2U0VvxOaoKrqBNy3
         j2ovIK8AQxL/uh4Cmcy3swy03YbAhUBsZvccXYFTzdRKGisLHslhI97KhCwy9IsCGa5W
         Ew4YQNxEp248xa7Rr1LQumuaekqO9IYS8RFdlTDrjdPm9Y0EmTTc7k8JSh2uBJbVEh4/
         NwqAV6lMZgJ7lC35KiQv+XuXdfQQFkXixr5tZb9X71wVQc33aGjRd/zHmrPL1iAeoFEQ
         Lsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770969745; x=1771574545;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YuUImcaHV7Y1d4T5vAe0F0a09U37V8B1PbdWpCRJ28k=;
        b=sf2mLI7FFFwqTRgMr3djYDtyJ8GdztRLJQFygrFv1eHPP/U9Ewfw8oxyYNzsp/zu6c
         p/23yzdyL94RCqlV2KK/7C//0IMTzni9rlgqVTQ/PGR4Q3ueQl5rktka9SvjGorkegTq
         A+qlR2W0PDmm9+I1hi0869zrP7x1Ic8AXJ46MCdb0K7FI7C4l+bkHlZfJZ9TDJrczh7b
         D4gOH6idVLeO/8rfur6CzciRZYVcL/umtOWQAGLr/0MU+c6rXE2t+C/fgtKidvlDc3bY
         XqKxu0jFB2q4eVFLAsdLafmPDyo9ToXHqRZlgglc45fKIysYS/cxGg1QSy+oxlvk2W1r
         lS/g==
X-Forwarded-Encrypted: i=1; AJvYcCX1DfryDV7ZryiGMfqTRjgmewESeiM6cuovULm1SPghHkaXBS17+DyTKZetvh3a7xKZQS1ROFLCAfWy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4WenuWNrW9fk+HT3jwRoazB82A6nplykgUt8mnkGXdMEpo+Qm
	FmG5/K1dICrGJco0oBvJV7q4KRTmQ7RhfVGQBf+YEUK4hryHeXMPQSoWgMl4LiZHMpM=
X-Gm-Gg: AZuq6aLWpUurR4GCMPTcAfvm0huU4ZM88KWknDcuGyYmEyLDYfrhDUJUzHhtlcRSF+Q
	aWBxzoeh8wszXoEbixXmivhrkkLxRg2DsbgRDVw9T1tHVZ9hT15UM7SlQ0uUHJXanooGxdjK6s0
	J/XREH+oEYNCaNqqmm1ZYb9SIQUEYB0e2+SORcbBbNie/5t24nk23I8ptcbXUihOIyAH1Nf6CEb
	fjfXEfYzH8zIGKpoE7VNUO6qVK3pS9UH/o6RnZd+EugdqPOWMUMl4hztuRWjo3yUSGwSvNaJUvT
	6XiPNr5WhAMDrfwdp5XX/Wfx1SoCC4h6R9AUPW1yPUoj9FrVwZs/8lW2g0q22ir83cO9hdYjh2v
	ivDIXJH66MxrBLyjYF00pEkblc141vE3pfll/X6W6CD14AWiGk3UaLgLEfUFfgKhNsgETNnwqOJ
	e2fNenQz62tb0LRZwmJIKoLOo21j2vaYp5jl3fyLGKW/rjEs8g+lA7YHHxO/Y/mhH2p8+r
X-Received: by 2002:a17:907:3e2a:b0:b83:95ca:23e7 with SMTP id a640c23a62f3a-b8fb4176f79mr42051366b.4.1770969745217;
        Fri, 13 Feb 2026 00:02:25 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec35688sm234531566b.51.2026.02.13.00.02.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 00:02:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Feb 2026 09:02:23 +0100
Message-Id: <DGDODOW5NS9N.AS3NWJ3VOID7@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/3] Add CAMSS support for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Luca Weiss" <luca.weiss@fairphone.com>,
 "Bryan O'Donoghue" <bod@kernel.org>, "Robert Foss" <rfoss@kernel.org>,
 "Todor Tomov" <todor.too@gmail.com>, "Vladimir Zapolskiy"
 <vladimir.zapolskiy@linaro.org>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Taniya Das" <taniya.das@oss.qualcomm.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <3ph8XeidoxkUIsK7qiOH29pde94sdwa3ReWKVVrPabgS5enIAmwVAC5plyFnBMJGKQBnxFB6df6j69OMFIeavw==@protonmail.internalid> <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com> <df4a6a77-9004-4dbe-9b11-7af2bea7e068@kernel.org> <DE8JJCQA0C4Q.35NEED7XG0K0V@fairphone.com> <17e7ebc9-3b88-4334-b87d-1bce6d5bb120@linaro.org> <893b97ad-7d2b-4408-bab5-2cd63fdaa33b@oss.qualcomm.com> <28f33d3a-6866-4bdb-a1e5-d193dcb7d4d1@linaro.org> <a15bbbf1-549d-4603-ad6d-3a578b548184@oss.qualcomm.com> <0a114896-ffca-427a-8761-977dafa73ea5@linaro.org> <0392b41d-3a95-4c77-9267-bfa3e207013a@oss.qualcomm.com>
In-Reply-To: <0392b41d-3a95-4c77-9267-bfa3e207013a@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265274-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,linaro.org,fairphone.com,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9C090133C50
X-Rspamd-Action: no action

On Tue Nov 18, 2025 at 12:50 PM CET, Konrad Dybcio wrote:
> On 11/18/25 12:08 PM, Bryan O'Donoghue wrote:
>> On 18/11/2025 10:06, Konrad Dybcio wrote:
>>>>> Konrad
>>>> vfe170 is what we have on sdm845
>>>>
>>>> So I'm just asking Luca to try the sdm845 method of waggling this cloc=
k since what we have doesn't work.
>>> It's of course going to work because this way you're not calling the
>>> code that throws this error
>>>
>>> I was curious whether you know the actual reason why this is being
>>> done in some other GCC drivers
>>>
>>> Konrad
>>=20
>> No notion at all, perhaps as a workaround to this very problem.
>
> I tried digging it up, but only managed to find that there is a signal
> between titan and gcc to request it being enabled (perhaps that's a
> fancy description of hwcg)
>
> Maybe +Taniya would know? (context: sm6350 gcc_camera_axi_clk stuck at
> 'on' when disabling)

Coming back on this again, anybody got an idea about this clock issue?

Regards
Luca

>
> Konrad


