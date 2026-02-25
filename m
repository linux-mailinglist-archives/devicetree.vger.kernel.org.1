Return-Path: <devicetree+bounces-268300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFToAJnXnmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:06:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 520251963C4
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22AC230902CE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9799F3939AA;
	Wed, 25 Feb 2026 11:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ASyuHSbN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7923393DD4
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772017367; cv=none; b=LInbqZhby2+O0RAmMMtscUYFKuaIVN1Lxr7TuuCnJKrN4UgOJ1EDpRzbw7y78D3hojGynlSDfbBs/q0QP45RMU+8WeAN31fkyUoXZ7N/YXZTcrPcjMQYRtDqERQLANFMQkmsY9VnaRmkTc81MFOuzzxq0ck2mw+hv0NgiAr1BOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772017367; c=relaxed/simple;
	bh=2Ksm4t2ssBFbW4D6J/nf8WFA+F/NLSvE3p7qlAcer9g=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=UppXIOaavUTTR4NEvynhEsinVD0ml9FdNqmKpDaswSjz+4MkQte/QhMkdzE2sP3lTC4G1TkueJtcoR9b92BhKKLwNVlPupJ7bGUtkMD9brVIjlS8/U0wZ3zaiHL1l8gGL2SQdQtEliu7dU4WbGQgbVpuR9lTT+1yv/pnpAgP9BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ASyuHSbN; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b8f8d80faebso114324466b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 03:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772017364; x=1772622164; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fasARduX+OpLr39pcOJg7FMt8nIdqSHwG8WsE7QY0p8=;
        b=ASyuHSbNRu63rCeEDgG8sC7/TVMcLO6tPM/Vm5kDsMXmhjkygo+kRkCONmMI7jsXY5
         9/mjOxrVxLMqFNJZMSIsTTit6G7OcKktGKeRFmPLDu1a5S6LwRSBcqdh6d8BemXT3hpC
         5UGhJY/vmuvXYNqZWuOa8TQANcrgvMJT93EkFod5Z5RGITDJNNy/iCbYQeSzZVS1PKFJ
         6omP5PTxg8KUjZ5QSHTwintn5DIW8wJC9fnsq/PPk3i38tEP2nqJ3ZwnijeyxUPK2lPF
         NzbK7Q1t7EgVf/I7lJGJ+TgDviemsON092DmSVHCgvhV6JnH2Ick3O57FkiDA0MdX6DV
         T+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772017364; x=1772622164;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fasARduX+OpLr39pcOJg7FMt8nIdqSHwG8WsE7QY0p8=;
        b=KGRcdNqrcE9wiqLsPtcYKRoZzURXFZkubCNjo5ta/pkqLi681LYpeMWLzwaXI8VOaw
         R/UrXVCmopxN1zqeaeSzUSHvlWRo6J2314FqTZSGuAlGIEmRrnbokFHuMYAIBwtpb909
         HcuoD1YU0mBFDlQ3Z+hQZDTDtK5MUVpX3296zYjniItJ0XqOwwqVBmdiHaTv58hWawAF
         VNvaAngZse0Y88Tvx9MlTCdPkqEDo8BDD0UciG4W7ZT8n3qF/D//pOw71OTpW8CSvz9w
         mzzKKRys6Z7dkeooUObb1jstCJ28z74pYKL4fgPJfgNpBS7x0BF0AxBkrJ/SrQ75oC0l
         qyKw==
X-Forwarded-Encrypted: i=1; AJvYcCWr1WBjvTVSlTgyhVuxR9IN0BsoLU2eg7i97xl/Ka/orr77DxlGHRYzDr1+NqbLgv3DrGV4ylfSfT4h@vger.kernel.org
X-Gm-Message-State: AOJu0YyvoHXnSs0PjSAuTxd0odpyUGA0+bPbCkS+xnTUBzkUmr+IuU65
	PwHMNd5ky9/s5nQSLDjRoNFWggU2PI5hcOzduL6yQBjEwX6Ij6J9hbskS/YPVIyvva/V5WIO2Vw
	NZL5m
X-Gm-Gg: ATEYQzyM7BQM8KCMm+/A+lf6FclOdqPZhSYQ4c3TuKGEFH5QF1jqYV+MI0+RiIC4wj5
	/KNPKJXJ+UNIfANr+l90VU/5sT7KfPbYssHPObS3nE5yF+doSqV0z91QTppYyTEolrox6mh5J+d
	llcGtM52f9IJXIDe6HO4QWW3tKjj6VZvVyF23TsfGndd+SX/3Yg/RWSianiu4UuvJT4sQqNVQXI
	kY6W+QUNJAhe+oI09QoTaFp3SMiXic39V9Toqa9bD7BHjgxcQNCcCoyo5Mq8JhkrHo/lew5ayL0
	N20HNSnTy/S114bfMNaKANNSI++L2+Ek9CxJu1uXyml8Z1ntX2csmMMx7x5U98mNPgLChpkwBrp
	TDqAkCUue7lqwiDBSOlDXCe0LpPNv3INQtcs95OcGSNa2F+GjwdRgDdERu7LT+2HdvAqpC8S4zR
	tAozmX6IytcKMwBGEU9LinBbPY8vMwMhuqS7ahWzlFapkxPYfUWZHoUhuLQ1R4KN7lO8aF
X-Received: by 2002:a17:907:e10c:b0:b8a:e013:9c5b with SMTP id a640c23a62f3a-b933cb5ace3mr131693066b.4.1772017364070;
        Wed, 25 Feb 2026 03:02:44 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084e4c27bsm498817666b.39.2026.02.25.03.02.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 03:02:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Feb 2026 12:02:42 +0100
Message-Id: <DGNZQA7LKJ3N.25LB4X3HW1N6K@fairphone.com>
Cc: "Luca Weiss" <luca.weiss@fairphone.com>
Subject: Re: [PATCH] docs: dt: submitting-patches: Remove possible confusion
 of combining DTS
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260225105927.35151-2-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260225105927.35151-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268300-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.979];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 520251963C4
X-Rspamd-Action: no action

Hi Krzysztof,

On Wed Feb 25, 2026 at 11:59 AM CET, Krzysztof Kozlowski wrote:
> DTS patches were always expected to be either sent separately or put at
> the end of patchset, but the first part of paragraph regarding this rule
> used a "should be placed at the end of patchset" phrase which might
> create wrong impression. This "should be" about order of patches applies
> only to the case when DTS is combined into this patchset.
>
> Suggested-by: Luca Weiss <luca.weiss@fairphone.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/submitting-patches.rst | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/submitting-patches.rst b/D=
ocumentation/devicetree/bindings/submitting-patches.rst
> index 81e27e50f905..2a5533f68830 100644
> --- a/Documentation/devicetree/bindings/submitting-patches.rst
> +++ b/Documentation/devicetree/bindings/submitting-patches.rst
> @@ -64,9 +64,10 @@ I. For patch submitters
> =20
>    7) DTS is treated in general as driver-independent hardware descriptio=
n, thus
>       any DTS patches, regardless whether using existing or new bindings,=
 should
> -     be placed at the end of patchset to indicate no dependency of drive=
rs on
> -     the DTS.  DTS will be anyway applied through separate tree or branc=
h, so
> -     different order would indicate the series is non-bisectable.
> +     be a separate posting or, when combined with driver patches, placed=
 at the

"when combined with driver patches"

Is there some guidance *when* this is appropriate and when it's not?

For example would touchscreen bindings & driver, and dts addition be
appropriate to combine into one patch series?

From our discussion on IRC, you said a series covering 3 or 4 subsystems
is too much and they should be split.

Thanks for working on updating the docs!

Regards
Luca

> +     end of the patchset to indicate no dependency of drivers on the DTS=
.  DTS
> +     will be anyway applied through separate tree or branch, so differen=
t order
> +     would indicate the series is non-bisectable.
> =20
>       If a driver subsystem maintainer prefers to apply entire set, inste=
ad of
>       their relevant portion of patchset, please split the DTS patches in=
to


