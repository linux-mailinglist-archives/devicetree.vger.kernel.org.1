Return-Path: <devicetree+bounces-321322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3wDLE+7JS2onaQEAu9opvQ
	(envelope-from <devicetree+bounces-321322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:29:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 145627129C5
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:29:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.com header.s=google header.b=YBtAWWgK;
	dmarc=pass (policy=quarantine) header.from=suse.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321322-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321322-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C66D2310E0AF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 15:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89942381B0D;
	Mon,  6 Jul 2026 15:09:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0C33815D2
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 15:09:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783350549; cv=none; b=IkozfLgVM+5pNQGsZZo+lxEirQZwX9TdnXQB2NBksNXuZwbyZn5LM4mCoFcR+/PDQKyUO4OOuhtXhJlLGz5phnvf3I7+dVfsxqMTJ3HhcsPGRynL1Gk1X0dxQTKSaV4fiAvqQ4K2aLpcGy5rbTyKVViHtpMtL910PvFVFL96XYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783350549; c=relaxed/simple;
	bh=mkpp4MVzWHtDp8SOpkWZpFrfMoSnUJfJiOTNKfH9TV4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PZSkyjWGiefjVMwmPq2myqGprmoCk4vi2EiQEsZMrljw6rxEFlysZaD7AHyGjgYoF5C4c8gCl/CXhXk3o5SF7ilEIZGu3rf78WjzRjCAusGNUCcUSkI1JqXW+wO3mj3aayV6hFoSBGPSguQfv9XKdeFbMH4lVF5Sy6YObMEZso4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=YBtAWWgK; arc=none smtp.client-ip=209.85.221.41
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-475417f010dso1723381f8f.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 08:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1783350546; x=1783955346; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=P0DC2hOdTNxx+EPNV41bd73bBnK5k0yS7npNoHCzZEU=;
        b=YBtAWWgKOzKerI/hS7lna/3devvoGbKExlUKxUbv8KzlEcQ733HI83CaC7dP9c5/FE
         GaTjUOui2WJrjUG/9a8cIE+DI8YjqehxqAXcxS3blkKIRSyubUuajtXbMY7bU9G52H+p
         v6EkbeJzwUb+UWyYupil6TqXjdDJawh65awuvdu1c1MhDuiVbFYQabm0o8HRPSqUa+cC
         6X5GIZ/GA3NKSLAM2HcxmOeqBm4i1QdojsvHZMFoFy+ba4QgJlyMjbovFLk3RFf5wLru
         UrW2VNGrJHBmADFxgnhMu/Tncn9zXMBIjMT559jOrgZZ5yXLIAd7ct7cK+Eky9cq7vBa
         vYLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783350546; x=1783955346;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P0DC2hOdTNxx+EPNV41bd73bBnK5k0yS7npNoHCzZEU=;
        b=VBa+zscC6KdJvBwJspK/i34NGlAKWLldd2X/TYoHp0suaeRCRC7JJrrtL/4YyobUJW
         VxAGEpqHi5UnT088KBUxdTmLoFthuQzalPlKu3Zmd9Fp4HtZN/0c3H42FCo2/LOy1xhF
         LSeHsI9TZPtHGqLcfvgRMJXSg00OBAneSwEBcb8JX8f91HgZrDdUe0cdMR+DWFiP9HY+
         UPs1S2el09IowjC0LhO/QEQrSl9TxiKXnA11D40TD2GqvjgqCyAKN8Zql2KUXhfLVIAI
         mQjh2oxhwvxIrifObqmJTRr9La+jGrMTcVDLP22zKpFtmPpBT7CXC33lC0/kcoyxkiOo
         iAOw==
X-Forwarded-Encrypted: i=1; AHgh+RqogoU//sK5lgN30S/k7+SHuZsiF9vjd6990yGaCtBQTdmzaXTSEspgIsItCelcJCOKkl/vhUJCQaxx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0x/rDGFlfeGUWljm4Sny6a5nEKAqFVShwUMvrmo6fgQZx1/AX
	WUTwqqx8StcZV3ea6xaJgzF64TGUk4hk0G415kzT+ZO5/LQ7RiCo3MmM/gRH+EobZQ8=
X-Gm-Gg: AfdE7cnfpLxdsRK8fg9YiXrk72Ag7uVF9QAH1DGlIG1/Pxz3ktCl2CITdCqKvWv/uMp
	s0KBUW6iEtseh8vOn335C+nW2Up1UffMQJkLtyzQLr09a1fPITnTQkloP3FVm2cO/EObCJ1Ys2j
	uXdmFfx7OPH9TS8ZHxm8SqOF0HjGeLALjsHERQ9JP9Y3hBkv0JbsxpBiwiC4Gw+3lBxSnDD/6F0
	XRNdcsQ509ZWfO8rDIpsoEYoenUEpGlPELobqGpQamzOdCEOiNKfLiZUWkHsgKNNCuwEbvJnKEU
	PlU0sPZFuiv5IULfeHzxHNSKuPlwOFS4l5NSJh+fAtDAoioUWWZtgSicmhL+smrH5pqAoU6jEha
	X02AsOhk6DdA6/pnciA8BnN+2tkQXiyeMm4K78o1zEfMOQTArzuZzZQoPAWpew8B0W7vLiKOOq2
	DC4dI5hxdwLuT0lzzElhxWwfnCScwUIm7pRNCxrbyMmY8KB1w0K29cczgfSGKU
X-Received: by 2002:a05:6000:e43:b0:474:9002:c74a with SMTP id ffacd0b85a97d-47de66a6dd6mr548307f8f.35.1783350545711;
        Mon, 06 Jul 2026 08:09:05 -0700 (PDT)
Received: from [192.168.1.136] (48.85-85-171.dynamic.clientes.euskaltel.es. [85.85.171.48])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039ae4fsm26285613f8f.18.2026.07.06.08.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 08:09:05 -0700 (PDT)
Message-ID: <132a24cf-75e5-4db4-9b24-71296f8f5710@suse.com>
Date: Mon, 6 Jul 2026 17:09:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] pmdomain: mediatek: Respect PD relationships during
 error cleanup
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 ulfh@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, nfraprado@collabora.com, irving-ch.lin@mediatek.com,
 macpaul.lin@mediatek.com, aford173@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 justin.yeh@mediatek.com, kernel@collabora.com
References: <20260701121920.19347-1-angelogioacchino.delregno@collabora.com>
 <20260701121920.19347-3-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 xsFNBFP1zgUBEAC21D6hk7//0kOmsUrE3eZ55kjc9DmFPKIz6l4NggqwQjBNRHIMh04BbCMY
 fL3eT7ZsYV5nur7zctmJ+vbszoOASXUpfq8M+S5hU2w7sBaVk5rpH9yW8CUWz2+ZpQXPJcFa
 OhLZuSKB1F5JcvLbETRjNzNU7B3TdS2+zkgQQdEyt7Ij2HXGLJ2w+yG2GuR9/iyCJRf10Okq
 gTh//XESJZ8S6KlOWbLXRE+yfkKDXQx2Jr1XuVvM3zPqH5FMg8reRVFsQ+vI0b+OlyekT/Xe
 0Hwvqkev95GG6x7yseJwI+2ydDH6M5O7fPKFW5mzAdDE2g/K9B4e2tYK6/rA7Fq4cqiAw1+u
 EgO44+eFgv082xtBez5WNkGn18vtw0LW3ESmKh19u6kEGoi0WZwslCNaGFrS4M7OH+aOJeqK
 fx5dIv2CEbxc6xnHY7dwkcHikTA4QdbdFeUSuj4YhIZ+0QlDVtS1QEXyvZbZky7ur9rHkZvP
 ZqlUsLJ2nOqsmahMTIQ8Mgx9SLEShWqD4kOF4zNfPJsgEMB49KbS2o9jxbGB+JKupjNddfxZ
 HlH1KF8QwCMZEYaTNogrVazuEJzx6JdRpR3sFda/0x5qjTadwIW6Cl9tkqe2h391dOGX1eOA
 1ntn9O/39KqSrWNGvm+1raHK+Ev1yPtn0Wxn+0oy1tl67TxUjQARAQABzSRNYXR0aGlhcyBC
 cnVnZ2VyIDxtYnJ1Z2dlckBzdXNlLmNvbT7CwXgEEwECACIFAlV6iM0CGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheAAAoJENkUC7JWEwLx6isQAIMGBgJnFWovDS7ClZtjz1LgoY8skcMU
 ghUZY4Z/rwwPqmMPbY8KYDdOFA+kMTEiAHOR+IyOVe2+HlMrXv/qYH4pRoxQKm8H9FbdZXgL
 bG8IPlBu80ZSOwWjVH+tG62KHW4RzssVrgXEFR1ZPTdbfN+9Gtf7kKxcGxWnurRJFzBEZi4s
 RfTSulQKqTxJ/sewOb/0kfGOJYPAt/QN5SUaWa6ILa5QFg8bLAj6bZ81CDStswDt/zJmAWp0
 08NOnhrZaTQdRU7mTMddUph5YVNXEXd3ThOl8PetTyoSCt04PPTDDmyeMgB5C3INLo1AXhEp
 NTdu+okvD56MqCxgMfexXiqYOkEWs/wv4LWC8V8EI3Z+DQ0YuoymI5MFPsW39aPmmBhSiacx
 diC+7cQVQRwBR6Oz/k9oLc+0/15mc+XlbvyYfscGWs6CEeidDQyNKE/yX75KjLUSvOXYV4d4
 UdaNrSoEcK/5XlW5IJNM9yae6ZOL8vZrs5u1+/w7pAlCDAAokz/As0vZ7xWiePrI+kTzuOt5
 psfJOdEoMKQWWFGd/9olX5ZAyh9iXk9TQprGUOaX6sFjDrsTRycmmD9i4PdQTawObEEiAfzx
 1m2MwiDs2nppsRr7qwAjyRhCq2TOAh0EDRNgYaSlbIXX/zp38FpK/9DMbtH14vVvG6FXog75
 HBoOzsFNBF3VOUgBEACbvyZOfLjgfB0hg0rhlAfpTmnFwm1TjkssGZKvgMr/t6v1yGm8nmmD
 MIa4jblx41MSDkUKFhyB80wqrAIB6SRX0h6DOLpQrjjxbV46nxB5ANLqwektI57yenr/O+ZS
 +GIuiSTu1kGEbP5ezmpCYk9dxqDsAyJ+4Rx/zxlKkKGZQHdZ+UlXYOnEXexKifkTDaLne6Zc
 up1EgkTDVmzam4MloyrA/fAjIx2t90gfVkEEkMhZX/nc/naYq1hDQqGN778CiWkqX3qimLqj
 1UsZ6qSl6qsozZxvVuOjlmafiVeXo28lEf9lPrzMG04pS3CFKU4HZsTwgOidBkI5ijbDSimI
 CDJ+luKPy6IjuyIETptbHZ9CmyaLgmtkGaENPqf+5iV4ZbQNFxmYTZSN56Q9ZS6Y3XeNpVm6
 FOFXrlKeFTTlyFlPy9TWcBMDCKsxV5eB5kYvDGGxx26Tec1vlVKxX3kQz8o62KWsfr1kvpeu
 fDzx/rFpoY91XJSKAFNZz99xa7DX6eQYkM2qN9K8HuJ7XXhHTxDbxpi3wsIlFdgzVa5iWhNw
 iFFJdSiEaAeaHu6yXjr39FrkIVoyFPfIJVyK4d1mHe77H47WxFw6FoVbcGTEoTL6e3HDwntn
 OGAU6CLYcaQ4aAz1HTcDrLBzSw/BuCSAXscIuKuyE/ZT+rFbLcLwOQARAQABwsF2BBgBCAAg
 FiEE5rmSGMDywyUcLDoX2RQLslYTAvEFAl3VOUgCGwwACgkQ2RQLslYTAvG11w/+Mcn28jxp
 0WLUdChZQoJBtl1nlkkdrIUojNT2RkT8UfPPMwNlgWBwJOzaSZRXIaWhK1elnRa10IwwHfWM
 GhB7nH0u0gIcSKnSKs1ebzRazI8IQdTfDH3VCQ6YMl+2bpPz4XeWqGVzcLAkamg9jsBWV6/N
 c0l8BNlHT5iH02E43lbDgCOxme2pArETyuuJ4tF36F7ntl1Eq1FE0Ypk5LjB602Gh2N+eOGv
 hnbkECywPmr7Hi5o7yh8bFOM52tKdGG+HM8KCY/sEpFRkDTA28XGNugjDyttOI4UZvURuvO6
 quuvdYW4rgLVgAXgLJdQEvpnUu2j/+LjjOJBQr12ICB8T/waFc/QmUzBFQGVc20SsmAi1H9c
 C4XB87oE4jjc/X1jASy7JCr6u5tbZa+tZjYGPZ1cMApTFLhO4tR/a/9v1Fy3fqWPNs3F4Ra3
 5irgg5jpAecT7DjFUCR/CNP5W6nywKn7MUm/19VSmj9uN484vg8w/XL49iung+Y+ZHCiSUGn
 LV6nybxdRG/jp8ZQdQQixPA9azZDzuTu+NjKtzIA5qtfZfmm8xC+kAwAMZ/ZnfCsKwN0bbnD
 YfO3B5Q131ASmu0kbwY03Mw4PhxDzZNrt4a89Y95dq5YkMtVH2Me1ZP063cFCCYCkvEAK/C8
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20260701121920.19347-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321322-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[mbrugger@suse.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[suse.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mbrugger@suse.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,suse.com:from_mime,suse.com:dkim,suse.com:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 145627129C5



On 01/07/2026 14:19, AngeloGioacchino Del Regno wrote:
> In case any probe error occurs (usually, a probe deferral) the
> power domains shall be cleaned up while respecting their child
> to parent relationship, or the system may freeze.
> 
> In order to do that without any memory footprint impacts after
> the fact, allocate a temporary array in the probe function and
> use it to store the indices of the added power domains in the
> correct order.
> 
> This will be used in the error cleanup path and will be freed
> at the end regardless of the probe status as, when the probing
> succeeds, the genpd API takes care of unregistering all PDs in
> the correct order anyway.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   drivers/pmdomain/mediatek/mtk-pm-domains.c | 43 +++++++++++++++++-----
>   1 file changed, 33 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
> index e1cfd4223473..db543d4b1813 100644
> --- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
> +++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
> @@ -738,7 +738,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>   }
>   
>   static struct
> -generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_node *node)
> +generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_node *node,
> +					 u8 *domains_idx, u8 *num_domains)
>   {
>   	const struct scpsys_domain_data *domain_data;
>   	const struct scpsys_hwv_domain_data *hwv_domain_data;
> @@ -906,6 +907,7 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
>   	else
>   		pm_genpd_init(&pd->genpd, NULL, false);
>   
> +	domains_idx[(*num_domains)++] = (u8) id;
>   	scpsys->domains[id] = &pd->genpd;
>   
>   	return scpsys->pd_data.domains[id];
> @@ -917,7 +919,8 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
>   	return ERR_PTR(ret);
>   }
>   
> -static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *parent)
> +static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *parent,
> +				u8 *domains_idx, u8 *num_domains)
>   {
>   	struct generic_pm_domain *child_pd, *parent_pd;
>   	struct device_node *child;
> @@ -940,7 +943,7 @@ static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *paren
>   
>   		parent_pd = scpsys->pd_data.domains[id];
>   
> -		child_pd = scpsys_add_one_domain(scpsys, child);
> +		child_pd = scpsys_add_one_domain(scpsys, child, domains_idx, num_domains);
>   		if (IS_ERR(child_pd)) {
>   			ret = PTR_ERR(child_pd);
>   			dev_err_probe(scpsys->dev, ret, "%pOF: failed to get child domain id\n",
> @@ -949,7 +952,7 @@ static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *paren
>   		}
>   
>   		/* recursive call to add all subdomains */
> -		ret = scpsys_add_subdomain(scpsys, child);
> +		ret = scpsys_add_subdomain(scpsys, child, domains_idx, num_domains);
>   		if (ret)
>   			goto err_put_node;
>   
> @@ -991,14 +994,16 @@ static void scpsys_remove_one_domain(struct scpsys_domain *pd)
>   	clk_bulk_put(pd->num_subsys_clks, pd->subsys_clks);
>   }
>   
> -static void scpsys_domain_cleanup(struct scpsys *scpsys)
> +static void scpsys_domain_cleanup(struct scpsys *scpsys, u8 *domains_idx, u8 num_probed)
>   {
>   	struct generic_pm_domain *genpd;
>   	struct scpsys_domain *pd;
>   	int i;
>   
> -	for (i = scpsys->pd_data.num_domains - 1; i >= 0; i--) {
> -		genpd = scpsys->pd_data.domains[i];
> +	for (i = num_probed - 1; i >= 0; i--) {
> +		u8 pd_idx = domains_idx[i];
> +
> +		genpd = scpsys->pd_data.domains[pd_idx];
>   		if (genpd) {
>   			pd = to_scpsys_domain(genpd);
>   			scpsys_remove_one_domain(pd);
> @@ -1215,6 +1220,8 @@ static int scpsys_probe(struct platform_device *pdev)
>   	struct device *parent;
>   	struct scpsys *scpsys;
>   	int num_domains, ret;
> +	u8 num_added_pds = 0;
> +	u8 *added_pds_idx;
>   
>   	soc = of_device_get_match_data(&pdev->dev);
>   	if (!soc) {
> @@ -1228,6 +1235,19 @@ static int scpsys_probe(struct platform_device *pdev)
>   	if (!scpsys)
>   		return -ENOMEM;
>   
> +	/*
> +	 * Temporarily store the IDs of the power domains that are added as in
> +	 * case of a probe deferral this can be used to correctly cleanup all
> +	 * of what was added before.
> +	 *
> +	 * Note that this array is used only in the probe function and must be
> +	 * freed at the end, regardless of whether all of the power domains were
> +	 * probed successfully or any failure happened.
> +	 */
> +	added_pds_idx = devm_kmalloc_array(dev, num_domains, sizeof(*added_pds_idx), GFP_KERNEL);
> +	if (!added_pds_idx)
> +		return -ENOMEM;
> +
>   	scpsys->dev = dev;
>   	scpsys->soc_data = soc;
>   
> @@ -1258,13 +1278,15 @@ static int scpsys_probe(struct platform_device *pdev)
>   	for_each_available_child_of_node_scoped(np, node) {
>   		struct generic_pm_domain *domain;
>   
> -		domain = scpsys_add_one_domain(scpsys, node);
> +		domain = scpsys_add_one_domain(scpsys, node,
> +					       added_pds_idx, &num_added_pds);
>   		if (IS_ERR(domain)) {
>   			ret = PTR_ERR(domain);
>   			goto err_cleanup_domains;
>   		}
>   
> -		ret = scpsys_add_subdomain(scpsys, node);
> +		ret = scpsys_add_subdomain(scpsys, node,
> +					   added_pds_idx, &num_added_pds);
>   		if (ret)
>   			goto err_cleanup_domains;
>   	}
> @@ -1280,10 +1302,11 @@ static int scpsys_probe(struct platform_device *pdev)
>   		goto err_cleanup_domains;
>   	}
>   
> +	devm_kfree(dev, added_pds_idx);
>   	return 0;
>   
>   err_cleanup_domains:
> -	scpsys_domain_cleanup(scpsys);
> +	scpsys_domain_cleanup(scpsys, added_pds_idx, num_added_pds);
>   	return ret;
>   }
>   


