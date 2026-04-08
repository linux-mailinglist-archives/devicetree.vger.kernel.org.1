Return-Path: <devicetree+bounces-285630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFKyArUN1mmfAwgAu9opvQ
	(envelope-from <devicetree+bounces-285630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:11:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0143B8CCD
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:11:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C26E300D70E
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 08:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6189B39D6CF;
	Wed,  8 Apr 2026 08:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IFV1Uasy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3B237CD24
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 08:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775635886; cv=none; b=PYUqW7gNF2wISJoNxlIiHH5kafUqoiNmRAXHVKm83aXdoIuksXJxAJb/mdNYrg/OLkf+i/brXJBbh7kIude5/Djxi9CxDBtLWFnRiOX5sC2QNzVsYB7fMIM3ZqkvmXr8TaWHkag+6Ah/YubCu/u4cyl4kNUbO/OMwGu3y4U3fPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775635886; c=relaxed/simple;
	bh=qK0XOhdUp8ewL5EwkKLZy+s840v+LEgMIWvVBSzPG1Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=dlEvHCjPBmic/KPihdHAHsOqfZ6w366PH9cz+yo7Ofk6P3cmN89UAUGUsdOxUTYBu/K+Y6DwX6NacXQcKYrEXF8xLSgv+arUz+pz2nwu9dOCAlpWGgLJvtDt9/rd8ZuQgYCl25VS+0757St0TJikT5QUC2zpltWOcoT5w2BOUJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=IFV1Uasy; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b9c755b2cdeso663771366b.2
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2026 01:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1775635883; x=1776240683; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XS7jjiupqdwNkh5OVoHcVKRKm0KpURxAwvyTzn+V6qk=;
        b=IFV1Uasyu5dKvZ/kbi3oSrrcuNBV6c44rIuZRFJHMQkeu3DzNZYMlWd1tHOJeD9Y2n
         oWmvlk+kJVL803bJIcsYduQI/QIgfPM4U+AcfrIMdI/35hufJeVF79Il5OnPQqDVzWrC
         vt6gQTn7rM5T9Ev0DDbS9m/dI8Hkol+OEt46FFQ8S4WpUDEQ/XSbS8Swg3fdes9KMLfz
         0g7tq57LWUbmk21doLWlDjGd0IKr/RmgzY8/NcpQwoRrOy6Pe00I3bzdC9A/Fjc1v9VD
         3xhL5b4EDtx3CeUBDTF6gMkcaDxHDTseL4Ch6Ab9Xfsk0668G7yvin1SimYIsFu2BSmW
         BS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775635883; x=1776240683;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XS7jjiupqdwNkh5OVoHcVKRKm0KpURxAwvyTzn+V6qk=;
        b=SKNedfo2LzXY6AtODUzHDFIpAvBwoBYpIr4dVHTA2+/emtKUaKtF/PGF/ws4y7JAo4
         So1sVsmcKkLIHxudHnJd00vj0CHOgBf4oEROBUs1q9BVkHmqKaC9mhp8lj6JqxHlJVJo
         IrbWX7pdDinrM7gPtZuLm+10I40VMs0FvjdvfjLie7kJz01JPMa9/8evcz2bzgSgGeP5
         WXvh3lvp9/SS8+6k+jvbMF6yXuvmNrA5weDBDEVv+eT5AIGX4qRNVAFrPMewNCeHJOgC
         Zj+CJX9SNZ6Jrr1yy7fBxuW72n46yEokACMqJU6Z4Cn9ckeLJ2gdHMMjtRmFCvrYNLEw
         wqOA==
X-Forwarded-Encrypted: i=1; AJvYcCVpDYS9fGHUX1MXEBZc2eo93Xc4CrKO/qz4zr6ZvYMPxlSqnbnoZp2tUlvVD9/8T+wiakqTNutLsAEn@vger.kernel.org
X-Gm-Message-State: AOJu0YxKAvjAFNmVyq4i+E2A75y0DZVtN2YtPNc6fGzHXsj+A0KwbkeP
	ieschAfWzAcd5X2JXIzoz5YWR4gtPusfkIHZsKwo3mO4UAEGwC/D/y8Nobj4uGi9z/Q=
X-Gm-Gg: AeBDiet7B72BG8Trb+7eADM/QjE0EUHHBdlxi7AQxkkrQt9NfBjgsDsGyuBYfdMYjG0
	SW02C9pQDebvSt816XV5i5vFrrGR7yNsBDWucBlZR4bvdz3YHa5ZmPd4v28auk8b77FN3YARyN7
	kc/P20r054GGOFvHJfQEBqiCBAcZinPr9rlO6OQAPtmNl/Ur25JE5ZvSzyDo7nprjCywNHlhfxK
	8sL0tHMPvhlnh3iXv5IRj1EiznBPhP3h8Am3NBS4YgoNcRxbF3cnAhV97vezkgicXhe32ktXNPW
	2YwT3YGgFQqTflPi+Ssy3SZsgX10DsQR3I4ijmwyCrj3DtBmQ9ZVGD5OIjg5e3eVHwCqjFkkHuG
	u5zfApMVq/Rj4gWUrcLqKUgdmc4smxzVu1B+fYpdja9PtXW33CrRyXsZ6kiDTEwfQniF2qL41cI
	9CjBOeTT3SVzQGI2NDtMpNBRrfmdc94+PqP0Oy6llf260yHAMSmT8CudPL4x6s5Ljuqu/Y
X-Received: by 2002:a17:907:9302:b0:b9d:14e9:8416 with SMTP id a640c23a62f3a-b9d14e99155mr231127466b.37.1775635883060;
        Wed, 08 Apr 2026 01:11:23 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9c3c574041sm634897066b.0.2026.04.08.01.11.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2026 01:11:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Apr 2026 10:11:22 +0200
Message-Id: <DHNMDZ7M0BVS.36Z923XKNXPEC@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Luca Weiss"
 <luca.weiss@fairphone.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: milos: Add IMEM node
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260407-milos-imem-v2-0-5084a490340c@fairphone.com>
 <20260407-milos-imem-v2-2-5084a490340c@fairphone.com>
 <20260408-adamant-hairy-galago-61deed@quoll>
In-Reply-To: <20260408-adamant-hairy-galago-61deed@quoll>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[fairphone.com:query timed out,94c:query timed out,0.223.255.192:query timed out];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[0.223.255.192:query timed out,fairphone.com:query timed out,94c:query timed out];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.223.255.192:email,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,94c:email]
X-Rspamd-Queue-Id: AD0143B8CCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed Apr 8, 2026 at 9:34 AM CEST, Krzysztof Kozlowski wrote:
> On Tue, Apr 07, 2026 at 05:11:11PM +0200, Luca Weiss wrote:
>> Add a node for the IMEM found on Milos, which contains pil-reloc-info
>> and the modem tables for IPA, among others.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> Not happy about the names of the subnodes. pil-reloc-sram is not allowed
>> it seems. Glymur calls it "pil-sram@94c", not sure this is wanted?
>>=20
>> Please advice.
>> ---
>>  arch/arm64/boot/dts/qcom/milos.dtsi | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/q=
com/milos.dtsi
>> index 4a64a98a434b..0c69d5810f5e 100644
>> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
>> @@ -2289,6 +2289,26 @@ scl-pins {
>>  			};
>>  		};
>> =20
>> +		sram@14680000 {
>> +			compatible =3D "qcom,milos-imem", "mmio-sram";
>> +			reg =3D <0x0 0x14680000 0x0 0x2c000>;
>> +			ranges =3D <0 0 0x14680000 0x2c000>;
>
> Use hex here as well.

Will do: ranges =3D <0x0 0x0 0x14680000 0x2c000>;

Do you also have a comment around the name of the subnodes? Do you think
they're okay as-is, or should they be changed?

Regards
Luca

