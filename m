Return-Path: <devicetree+bounces-324779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e6NgDXYrUmpsMwMAu9opvQ
	(envelope-from <devicetree+bounces-324779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 13:39:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A96BB741648
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 13:39:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=tOXfdfMm;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324779-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324779-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DD87A30071F6
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 11:39:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E86392C4B;
	Sat, 11 Jul 2026 11:39:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83A41D45E8
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 11:39:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783769970; cv=none; b=BEqEsZ7CPZW5/BuW8A0kQ+8ApKk0vpZX92/S7ygyQGER+6A/bHHL4b7IMRXPsgBCpYgl8E2/CqxCqEUT41tWRReQsZ/10KSy8kSLv5UZkmAudT2WUNvO1xZlGBIghhRcSGLV8I3vmY0zIbU733NhEX4MrHXRIzfdYdVrlIqYYYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783769970; c=relaxed/simple;
	bh=/V9aJygM45xNNQSX0JoGwGv7gQeayjRUR4gf62fYu8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pzPqElmuDr2vNatYzNcGKjgyqjnk7zsJMzCuEDsO0MTwaoT3aJaJupoRxWg3EnLi28K3DXzD6FG0mH1fSPS7WjXIRzdXSaEweyVY7l7gGqiqEyqRFhfXXv7sdTphbQ4qrOEMbEFPUf+YmUmqcfPmbRxNL2KQH/AZQkt3CjCJDWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=tOXfdfMm; arc=none smtp.client-ip=209.85.221.41
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-476a130c138so2117350f8f.0
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 04:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783769967; x=1784374767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZaWhI2wQ7rol4Vu9TMGFIS5R1vwCn0PiFCfGw57BvxU=;
        b=tOXfdfMmIudTw8IvsCuJ1rFZBSHa0VH38jd9UJzzbh3/ue5xU/C9LjptEHblia61B5
         3ZpyciqglJj4tqg6jH7UFx+7m/lrnGpNru4P0iVV0D3SIoE1b7qSZTSCLFsDuzrp3T/B
         K+PheIO0yJ9s8LxHNTxKVrQD+BFEhFzAntNASMFVOeXNGUjsKrZZQKUGkmH/gPKM16U3
         5gt/PUqFI/miP2RMBbEPR0b35w6ANHW38EhQUP9vw1ifBRsxpKmxNKgjCbFnrKZdaeSU
         XUC7fFJIW0hm9b/Z/Efo1IQwvIx7lzkiW1GOSrHKPT/x5g+1LYxn0dul+HQLR53rlANj
         aRpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783769967; x=1784374767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZaWhI2wQ7rol4Vu9TMGFIS5R1vwCn0PiFCfGw57BvxU=;
        b=tAIDY1CrziFvlyw8fcMyslhIZ4cktrD7Q7bw1ilzkpiJmANMuPP2d6it5K9HXyn0cO
         MirJg8fwGbZCyJpwNzPhs3fbM+FkLnGcOkkqSyNklvidWFqAlBtt7LVB4PPokHYTNbtq
         hxTfwOLSeUp7fx4P4a6zeFB77MlcLev4UXc5WP0/J1nAUoLhSNWaGCOEYjfWPehYjI4R
         y+LPmC4CQAtNmBMqymvkaVUvByl9XCY5mDcDn4iUM1D+Zeb7qbv9faXmS71aGlNZ+R73
         OytdWG7b4mlvJgna2LjO3u/7RDr/pG7CnSXvcfsE2iB/sCFOOkwooYP+ABZl5K4MpYGJ
         UWOg==
X-Forwarded-Encrypted: i=1; AHgh+Rqr1jVGVzAtV1kTQWjfTZE3zO/Ng9CXi8WCoHDqygd4olH0k3MDyxsrsi5S9f4DxAMDinUUbN4qPEUE@vger.kernel.org
X-Gm-Message-State: AOJu0YwAWX4wpXnDsq/hWu0mfrfGJ8kVPJyoYq4lYyVOZWTk3BwxNnxT
	5Vo8Vyw58RdO/Ei2QgsCZmheGq3rerSjr6ZcuDzKPMIvb7fSAFyQboms
X-Gm-Gg: AfdE7cnRG13IWA7d3hGJ0vvxwveJ5l5xMeZRib6wFT+U2JRw8uCy9PnvZRZmkcPgLnF
	Ajp2hpnzn+ctOpfyVhYK84kBQ8oCAdgtuawo/6yeHtQ+T+E4nxVaRTFW8NWRBQlumVGjy88GUfp
	L8pkwYuwu2QdOQaEuAS2d9C7frRL7qB6gj4QeUnDJ7wBkauXoCELMWttQl+Mm0I6FAa+SpZeUf5
	yExNVbe3rSArJ49m/0TnNwmNMFlvjNW08P+jjC8FNkH0dKO3ueF9iHFJ4kV37MkCs0viKaIXMZG
	yYZG9zVQcMWQz3dKX2/peEN9errdTbR7VtQIZwPkbk1gachnxbOADHN3bXybnj+7O0GRI2prYVF
	tZt78IqDaFRvFjedHITMOO5LS/GAXZ36cqp1qu3+/3vcnh8a34PQkKh+S3v+Jgr7r3iJm3O/ITJ
	DUlJzYOZ6s0QQsOMszyrLQn2yWBMLs
X-Received: by 2002:a05:6000:2612:b0:46e:1815:6a83 with SMTP id ffacd0b85a97d-47f2dd1f23fmr2658296f8f.29.1783769966968;
        Sat, 11 Jul 2026 04:39:26 -0700 (PDT)
Received: from unknown.tail46804.ts.net ([2a02:b027:11:e106:f973:a70:bd1e:4000])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47aa0960634sm69194942f8f.26.2026.07.11.04.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 04:39:26 -0700 (PDT)
From: Gianluca Boiano <morf3089@gmail.com>
To: "Wang, Sen" <sen@ti.com>
Cc: Gianluca Boiano <morf3089@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: sound: add Texas Instruments TAS2557
Date: Sat, 11 Jul 2026 13:39:12 +0200
Message-ID: <20260711113913.71220-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <f814faf1-bfbe-42e4-ae0e-e34c7b2aad7d@ti.com>
References: <f814faf1-bfbe-42e4-ae0e-e34c7b2aad7d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324779-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,ti.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sen@ti.com,m:morf3089@gmail.com,m:broonie@kernel.org,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:shenghao-ding@ti.com,m:kevin-lu@ti.com,m:baojun.xu@ti.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A96BB741648

> +	ret = devm_regulator_bulk_get_enable(dev, 	ARRAY_SIZE(tas2557_supplies),
> +					     tas2557_supplies);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to get/enable supplies\n");
>
> Looks like all supplies listed above is mandatory in the driver, please
> make sure you list them here in the required as well.

Added vbat-supply, iovdd-supply, avdd-supply, dvdd-supply to required:
in v2.

Thanks,
Gianluca

