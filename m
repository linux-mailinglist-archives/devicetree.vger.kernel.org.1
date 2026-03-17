Return-Path: <devicetree+bounces-276710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGHVG0NjuWlsCwIAu9opvQ
	(envelope-from <devicetree+bounces-276710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:20:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E22B92ABB44
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E61F30AEE66
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329B23B4E83;
	Tue, 17 Mar 2026 14:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XPT4o5yd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDAF33556B
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773756462; cv=none; b=UGO2fWqL6WjnC12Ox5DKnA7RcTvMcR8HxbWUc3dxS4yr+jiJlu+TKokbz4Ttvem3qkVvaqyHBA7HOjgMdutc2dEfdOETpxF2JnxMscwmMoU/K7nbPgCcDuhEizP/sqHZj+GvVf5zS8ra8xTaby6DaHrIUjEc8uuUM8S38Ppx9fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773756462; c=relaxed/simple;
	bh=wgzcFkHTCxr0nZzPWg2ONzU+NfOaWdB4NrZwRjIZSY8=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=UMDzvad+gYjtjHQK1kb/7L2TFaqw/4PMNwcTcw1C3wfMk1J4xtncT0cvIycm3xfz++aKVuNxSWVc7SdHO8LbYgb5DtBj4ZDEIQetfMZWTGHnldBknQbiVtRPF3Jq+n2c1r+2uafUdAsN4toiTvpnCH3zEZrd5QH9lYYLLjyIGG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XPT4o5yd; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4853c1ca73aso48959085e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773756459; x=1774361259; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N4FQFwct641zr80eIr2ZHYhiIx/XAziYXoGFH19ywqk=;
        b=XPT4o5ydgU0/xy7hAhwTxuVqnIPhsd3XavimwsDlPZYGXfemiyxwsBBzJS3qhtYrnH
         9OE427BdMhPrVyijuDSYEfwQQ34bRhNUJ+u6+77M5FbzQ9IyetZqn1OLJ1Wa328Op3Fb
         M31lCRDmW89URZdmCaibIajJqfkgut45U17cz0AzVMH1VVDlLQcLBSAJtACpg2uLRfSv
         FwbTI+JpB398+1yFx6CKTET0+f3vCpllJKseHlJRT+gzlqpuPOWPLpD5wptLTGUlpwum
         p9L9drPmEZpimGI+6bYJJZJ+4kaDhmmrlw8puUeMiMYFdqywfEPl3PXh47IHL9y5W9sD
         bS3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773756459; x=1774361259;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N4FQFwct641zr80eIr2ZHYhiIx/XAziYXoGFH19ywqk=;
        b=A8Rax7s/R35aAP4S+94twA5p+TATZX8pw8xJGS1OydEY9Xxna8GnlqBj0Psl3HuPP8
         hln5VsFI1ajjoAplldhNhI7N4Du0Gnp/hwXbMRs5tdI6kU5Fh7fjPUTfs4o6EVeL58/m
         fXZMgxYHQKaTh6CDQ+9EhPCOpsYcogN8ckFjFavXLZEEJqPvFPDlIwAfFTk9humwHNPB
         9JF1DDBOBnumGkTU4RsBNNJS3q2YVwD2zvRf7rzALRdxGHthmWifJg0J3wDCdtTqU2u5
         6cw51JaHQ8pwexYvWdl29YHaCUKlLychql35w8eKmtGhd9qTmGJH+7RH0Fcf8cX8da9C
         0ZUw==
X-Forwarded-Encrypted: i=1; AJvYcCVZB4MvZfUKPduoejYzdUDmIdTi1TcYpW9uJMByxOsHQlM/FD7jel6VJUPeO7IveOhK4UhvqWPutosW@vger.kernel.org
X-Gm-Message-State: AOJu0YxMdovoqyf1HaaP3V+cL5NKnAsm/7cuDiCtQwgq2kkCIc9pcqg8
	gtJUej3M9gIIpdnBFNThYhaGW9wRvI0FHpj5r4xBY56rbu35mpgHTDV/f2hs0HqwoX8=
X-Gm-Gg: ATEYQzy6TlzAsGRsIIvpX0d+hG5rIjeExCSNH8GVVMjyfD4QxdOGEgofEL5eWolHqCg
	pGKDOaTizX7tMzxyRSGFhzUL+6jojzCCiRpAGCs/EoZjqtnSpaR6osknx6Yb/FlE+5qIAZcRji6
	PMRNJk8EL5t+ivy4jbLrj8/DCoZZ9d/FH6nx0mzOh7sDqWum/VjjHc5NeMEsDx9a1eJ1UNzi3PG
	TqFholPhIOTMc3vKLklNVuqn7LUDKH5Es+i1/E79OJ/8RH/qdp6HbOnpaWFc0cLmArs68dcNA4a
	8Hdp2jAzhQbna0t0uG1Ckbx4kcSlNQKW648g8dSbchSsuLb3jTVBO2unm4FB657RU+oW+3dhq+z
	Rv4+Ck6foIohP/VhMjEP5gJsV2qwcpgxTS18JSbOUdMit3DbUQkiNqoj9inRdfe8qxJdRyFTLbU
	r4sBu0M40rCAV+4h4PIfBMt0n/f5CcuMki2ShnLsh3Xmud/8lUc/HBoCNnQo1VWzlGiFrSLRVvV
	ScnGI110nuhaRpjJg==
X-Received: by 2002:a05:600c:1913:b0:483:6a8d:b2f9 with SMTP id 5b1f17b1804b1-485566e2d50mr291282515e9.5.1773756459032;
        Tue, 17 Mar 2026 07:07:39 -0700 (PDT)
Received: from localhost ([2a02:c7c:5e34:8000:df24:76aa:fdca:2fe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea8fb0dsm125024095e9.3.2026.03.17.07.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 07:07:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Mar 2026 14:07:37 +0000
Message-Id: <DH546REC2G49.2YNUL3SWK4QNB@linaro.org>
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Peter Griffin" <peter.griffin@linaro.org>
Cc: "Sam Protsenko" <semen.protsenko@linaro.org>,
 <linux-samsung-soc@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, =?utf-8?q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>, "Tudor
 Ambarus" <tudor.ambarus@linaro.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFC 8/8] arm64: dts: exynos850: add PMU interrupt
 generation node
X-Mailer: aerc 0.21.0
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
 <20260226-exynos850-cpuhotplug-v1-8-71d7c4063382@linaro.org>
 <CADrjBPrC43gaRZw8289a15PLBN8ideWvO9jJwPr5beRJ=x4Rbw@mail.gmail.com>
In-Reply-To: <CADrjBPrC43gaRZw8289a15PLBN8ideWvO9jJwPr5beRJ=x4Rbw@mail.gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276710-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.181.31.48:email];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid,12a01000:email]
X-Rspamd-Queue-Id: E22B92ABB44
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Peter,

On Fri Mar 6, 2026 at 1:44 PM GMT, Peter Griffin wrote:
> Hi Alexey,
>
> On Thu, 26 Feb 2026 at 15:47, Alexey Klimov <alexey.klimov@linaro.org> wr=
ote:
>>
>> Add pmu_intr_gen node for Exynos850. This hw block is required
>> for different power management routines like CPU hotplug and
>> different sleep and idle states.
>> Also reference this node from main PMU node.
>>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  arch/arm64/boot/dts/exynos/exynos850.dtsi | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot=
/dts/exynos/exynos850.dtsi
>> index cb55015c8dce..e3f4fe6ee118 100644
>> --- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
>> +++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
>> @@ -211,9 +211,15 @@ gic: interrupt-controller@12a01000 {
>>                                                  IRQ_TYPE_LEVEL_HIGH)>;
>>                 };
>>
>> +               pmu_intr_gen: syscon@11870000 {
>> +                       compatible =3D "samsung,exynos850-pmu-intr-gen",=
 "syscon";
>> +                       reg =3D <0x11870000 0x10000>;
>> +               };
>
> This should be ordered by unit address (so in this case placed after
> the pmu_system_controller node). Refer to
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

Thanks, I'll update it.

Best regards,
Alexey

