Return-Path: <devicetree+bounces-267455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GErIAhinGkoFgQAu9opvQ
	(envelope-from <devicetree+bounces-267455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:19:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 245C0177EBD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3354C302D715
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F842701CB;
	Mon, 23 Feb 2026 14:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VvwNQJMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA8923EAB8
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856389; cv=pass; b=HdxSx6J5OSwedLQsTXmiH2DWzaZu/xe3bmqvRoBhCRX8REXYAwWvBVE6bHLRUoOdYRizlUBLRQxj41UUiO+emUVeU8FCYOsUqHGltdddoYC9fGaiXZIfIMY24sp+I1oUiuE0M1rEE8zO3n1k9S3QjfQ4RklYWYZa85ebEyqEEWQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856389; c=relaxed/simple;
	bh=FL5LZ0gh/NYYvf5+Fxi1ZAVTOpQS4effQ4pJIcnfQ40=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f5qWSkqsfTABfmObatIilwMJCgW8JHly7i0SlTpv58e8LaWs0UjBxMYrxJFKoWFS2fXCT9ZxBnXDbIBxe6QK0rxwu9M0w3AaayUygMz/YoXneF4lO8Q80Z1NIdBXxG6Xdmf2Jg5217EMll5tq8skfgRndbX5Ow7YV4VOjT0ldCs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VvwNQJMS; arc=pass smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-386fb2c31e2so38909821fa.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:19:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771856387; cv=none;
        d=google.com; s=arc-20240605;
        b=h977qNUXuvJmPoKW2KIBqz/cYkpv3f5DqUlJwp84A3Xp1pq00hB7GtNdsQCL1EwmMl
         rwvvL8M759zfrIEobVf13ls5wiRM4It39zC/Xl35gax6BAgc87cCLKmKJEA2NSIUIh9l
         teCTWIzKq8BxJR1s4Fj6PP7sWaquqzNW1whZb5o3034+EQVjQ/ijBn06dwlLFq4yKhk0
         HtoqVm/8iDTvLTXpQOqK5G45CyoQAQSTzC+KVeKZNYZvam4FnyJET/T9JbejtLRK3IKZ
         pfsMDGCjGJTFaf1FK1wb6evaQmFLkI3NhSZVJBEaSLXtYaE6bVvDg6m8aomZfQzzvQ60
         JOug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=idrQ/jeVZq+j/eB7PxPxR/YnyxQLfS/V/Bq6MX5Ug1k=;
        fh=/kNo/16j0cRlY6su166wRu1CNn9T+7Qwvwl3WXKK+GM=;
        b=WXlzL7uYKjb/O5BefEoEk/8w/hwIuv/MAhXvdyjA1Q7Kn8TFLfkzfaSkYmQlY0RU95
         JSsqhv6+9XZgiG0nuWBsR61Bf3nrRQaSMAFMixcnIAOd3xSfwgcSaS9cUg5Wp8YCS4vo
         gv0igVYaUoFhlEZGsi3G+NSIz86wANXW4kSs3t9Ra5M4SsFhAwurO0cGjsgTyK8on4UD
         O1P+8t2IWBTIC1tzs8rXVSxL7Swgsc2/aRqtVa0Miv9tHOXtazfsgvbiOjUcIfCnDewu
         gW+o9BuE5KKV/W6qFOAd2BCH2ZynfULSe+MNrDu0K/xAF381wmRjWW2mVfEG87lrRVT7
         OgMA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771856387; x=1772461187; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=idrQ/jeVZq+j/eB7PxPxR/YnyxQLfS/V/Bq6MX5Ug1k=;
        b=VvwNQJMS3KrTGTzyJQUlD7HQK+G748TSsgG9rNUfrm7YRwGlu3m4zkgXmjC0S0k7IA
         nJytBk1oeeHpo69kVnkhXAedxiyVODNxg/+PVFrWAEPrjiIL+vWtZ7tNamObRVB43b3y
         pfqxeGfi8WlCvNH7GJpOs8o81ZQiLVUkhoy8+ayQkPCUiirxiKqv+nq6EcYJohur4wu9
         kD4WCmDvLwyXZ8k8+qLgKmMl0MJWF/z/MxCEh7/EZhCFCZaN/0RbswccWKJVww0Bpzs2
         bvXCWaVO7uE8EruBhpEqq9N4TCSHsZPAWdDgIrxIcg1fzMbg91xKYtcflq2lh3drfUXP
         ZOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856387; x=1772461187;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=idrQ/jeVZq+j/eB7PxPxR/YnyxQLfS/V/Bq6MX5Ug1k=;
        b=kMd22DljOHx1GKuTWisXej8bLVIrtEPMcvkQb9FFSZL8qyR+XIDk2J7fFinJdzY+Uo
         lMr3upMcDJFSoyHgtXr/P+No4bwRt/Krv18wDXnszYWkcuWNgoPymvf2YCcgTIA7/7ij
         cRyWKcL7yU0Nb84QQ6s6l68pKh5Y8bH+6spnJTOeAUsqbXa8jf4RE6HvsKBZAkQYKuJO
         QJoXaiTddZz7/E5lVcbSP3MlaurTfvy+FEJBlbwWHwgVtFvWKjh4NOW0tk8vO3jAhDG9
         q5WRTc2lEmfazhTnCQPlog368wdfB/kHZicWGJwHOkdVytMvTB+RCGKnPueE+oxlukQn
         fUeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWD1mE5FEsz0xmTW5rJa+x/nBoXEwArnm6lUOofLiir3bQ85rC8LhJ5u5wEf1L5DoBBFoNQjvmoev6s@vger.kernel.org
X-Gm-Message-State: AOJu0YxiJhYovavQVuiHqYZuok6gQdMJ/lTd4YvtvAXWmv2MB7t1tFut
	m8uB8GoBlALy3ARS88xL/kCkUv6+4AEtoLtYmMeTjj6WtmKtGR5B0/FdraIf6fxlBmNFgescuB6
	HC5tV58zaWasrNAywlnWCPPxtLbuEzOs=
X-Gm-Gg: AZuq6aJAcNAhKIDdpRsB5xTzrU+zNVuMeBbgYSPVsEcxH0p9jO0Pq0N2jw5nP6QTSFc
	sXn9AjMd1N1P9wmwy0RCq1FyUHuNKYzFhBAi1skR5wvEsPy861xQHy+iPl1CgkfjSrjSjgIBEXM
	6rXfRRIcGMnJ1NOXpxePX4K9A/zOz6jr+ooZ9bYXbQTaN95LFariM8j766gkWBoQ9vVCHVEVvLn
	yHuzHHynunsuq+6hyq7lgXuIiclaDubYlejhI3Xl11dk9m5UEjXYjVuJGbK5Svhlz06pzBkdbi2
	b1/XGBkZBWvLApcWsYA5B84o1WsP0iKf9jiwVbfgTidrV3uhKUNVUMLUF3LpFohndg5i4CM=
X-Received: by 2002:a05:651c:325b:b0:386:1e28:4d72 with SMTP id
 38308e7fff4ca-389a5e8682dmr26588271fa.30.1771856386303; Mon, 23 Feb 2026
 06:19:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210022620.172570-1-festevam@gmail.com>
In-Reply-To: <20260210022620.172570-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 23 Feb 2026 11:19:35 -0300
X-Gm-Features: AaiRm53tQ9jeTLBl7oZy6tkKfexZ-jDpIbeaeuybq8k_hMkuBo9fYYBRcqKKldA
Message-ID: <CAOMZO5BdgjaHKA6xV5MzPLDetqy-+iRdVPn3o38vo3szcxEhVg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
To: sboyd@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	linux-clk@vger.kernel.org, jonas@kwiboo.se, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267455-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nabladev.com:email,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 245C0177EBD
X-Rspamd-Action: no action

Hi Stephen,

On Mon, Feb 9, 2026 at 11:26=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> From: Fabio Estevam <festevam@nabladev.com>
>
> Add support for the Rockchip RV1103B Clock and Reset Unit (CRU).
>
> The RV1103B CRU is compatible with the existing RV1126B binding.
> Add the compatible string to the schema and introduce the
> corresponding clock ID definitions.
>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
> Changes since v2:
> - None. Only added Krzysztof's RB tag.
>
>  .../bindings/clock/rockchip,rv1126b-cru.yaml  |   1 +
>  .../dt-bindings/clock/rockchip,rv1103b-cru.h  | 220 ++++++++++++++++++
>  2 files changed, 221 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h

As rockchip,rv1103b-cru.h is also used by the dts file, I think it
would be better if this series could go via Heiko's tree.

Would this work for you?

Thanks

