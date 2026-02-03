Return-Path: <devicetree+bounces-262414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EcCFbtzgmnBUgMAu9opvQ
	(envelope-from <devicetree+bounces-262414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 23:16:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EF69EDF26D
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 23:16:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 26130302D9DD
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 22:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 732AF35BDD5;
	Tue,  3 Feb 2026 22:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CNGGKORq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BB1328263
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 22:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770156982; cv=none; b=KDG1qMZY+5qMIO+ZqAxpSOgJPiYk9lT8FgqrnaCoN9DxhH91fseT/+2Zf5iLHEY3Ip79eLZtGB4bq8Vdj8julW0HPz3ttSMHBXGu2tu1lbaGplRxCKL7tVRqsjJnDKJxhTbXAyh2N8uvSfIio0/JDJkljJJkiN5A0Mi2eHQX8NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770156982; c=relaxed/simple;
	bh=Is5GYtZerD0NK6E8ZXSCoqOK+wq8akx9no2ZxVMphmY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ToxQE7tyQy6kC+/fUl7ddMAzOwIS59sYrAUxObczYHw/Jhdurgh26hU4VDNSoMAIurn8aqcSSTlWEXTgQ9CG1G9/vD/6fYrGoGAYVDxxaIvkX3s3VHOV4K33vc1Or1hZ4sDA6Ttd1M2wVkQJtN6Ha/qClz1Wlt5gZjIDFQnrM0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CNGGKORq; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-662fc35291eso3410952eaf.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 14:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770156979; x=1770761779; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7c0NPTkqLZrpseRrb77cJ9keUj/pZc1R94Glr/7UpBo=;
        b=CNGGKORqtFd3qtxzeCJZhThoKg8Nrfi+14pIM4nFOXok9C6uQOU0kJBh8Z6FQUWnMV
         0CwzPvF6wDiDrqrQDqouK4LFcbWwm6T9ccEXMdohS3+ZVBkjEnp8TFM5nM9U2XwhFneX
         90Dwo+3Kc2vVqXtZ+vzW+Q7AUaPibt/zqeUzKRD0QjxURzBPdpuNqFfuFQKF0NaZK5NR
         9zWveKK5cHluQuRmeuwfqO8fAL6rzDU4AtJdzdxgcRu2Ks45N90CJo+OHE6VH45agw+l
         Z54HKeifdJeU2dKO8cK6pzz8psKCvWPH59Zq+9yIVB1Fo3E2JiZ427bEpljIAWxD6pda
         2opA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770156979; x=1770761779;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7c0NPTkqLZrpseRrb77cJ9keUj/pZc1R94Glr/7UpBo=;
        b=fT5tOvIeMYXRVP3gH/vatouzMkRx4YPGn6EgW/xfqeSl3B4ymgEA7cLcfme/CeJ9yV
         npKm1ayxuJbkqz2xKnuoe7vTuxm8lTEcbqneMSqI+4rwczCIxZNT6hWS3oWnCESIaJ3N
         LWgjp+fD9k8dG7Hx+IoEA/dRY9ZBiZX5jDvSNzeoiAW8GzTwVrswwsb4iMqevl7pUpwL
         G1AZxBqd1p0mmHozhCEucXtIAMe42XKYleOux2oHm3BEWci1zgEEKJUCSrYH2EFS4GTj
         OqsXGAAhQ5mbrPHzumiSDPvatwMK2HC1uiRfKOIFe9ybL5YdVVN8t4EnjTCJktrsVAKh
         m4pA==
X-Forwarded-Encrypted: i=1; AJvYcCV+MSwXB91BRhGDVKoCxXIDCxGT6Rcgj4do0gKdARzWBp8CO343T02zrUpHgTpZa1MHG0sAxq1aqnbW@vger.kernel.org
X-Gm-Message-State: AOJu0YyOVGNCv0Mdsmf35eHqmhNiawg/fssjf12SWlqqBHtUySCKbSG8
	7taakwvZbNXebeQ7+1LVMVPq5Ta9LMkMjtQngX2XuY/YChy+abw2L7YkiLY80PZPfrOcU0gbpMt
	30sN3
X-Gm-Gg: AZuq6aJTSXHyZOTt5+XFTGzMHEQIw34Qun8YDtRW/BIAsFFWz3hYq07T9Z2nQmlRvmr
	Jh4qsjBjj2qT68i4fp52Fyw5oiLP8iZrdf5D+hKkDaghcnwl5EZTK+KZSsOZ72ROKvLebfIAl7i
	eezCe1l5PGgPfzKYyV9FgPgZc1avn29j8T8xRD33Gs8A936oqf0Dt2zMJQkE3c7DhHXsiltQ5D2
	ofHdqPuCRCRM0uxelIGcSctAgjShaQpvrA0MjVAUqMHnorS61Jekiu+eoD9MSlP+2U8u+QZZe1/
	JTjELPW3MxWocvGsEvU84ZKk/Sr0B+efjaTp9I03NEsfpyB5+bdXO1clFj4SlpYq82lYcwM+WoP
	YJ69DeQplJeqKb/m0zzVP6XKdHKHXLgxt/khVo9UsDjW24DVli/bWLDjIh0HPdmM5F0wtnuiCKm
	T5RV6ftAV08Unwgs2Fz1T0ZgtjBx0Syxlg91qCoR/5gwR67bjkJbO8HhI=
X-Received: by 2002:a05:6820:f09:b0:65f:66c5:c3e with SMTP id 006d021491bc7-66a20d658eemr547793eaf.22.1770156979083;
        Tue, 03 Feb 2026 14:16:19 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e13:880:992:e796? ([2600:8803:e7e4:500:8e13:880:992:e796])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40a544e77fdsm481769fac.21.2026.02.03.14.16.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 14:16:18 -0800 (PST)
Message-ID: <37d5b1a4-93e2-4fde-ab56-186d34f8835b@baylibre.com>
Date: Tue, 3 Feb 2026 16:16:17 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/18] dt-bindings: clock: Add MediaTek MT8189 clock
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Bartosz Golaszewski <brgl@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Qiqi Wang <qiqi.wang@mediatek.com>, sirius.wang@mediatek.com,
 vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
References: <20260202062840.342707-1-irving-ch.lin@mediatek.com>
 <20260202062840.342707-2-irving-ch.lin@mediatek.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260202062840.342707-2-irving-ch.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,baylibre.com,kernel.org,gmail.com,collabora.com,chromium.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF69EDF26D
X-Rspamd-Action: no action

On 2/2/26 12:28 AM, irving.ch.lin wrote:
> From: Irving-CH Lin <irving-ch.lin@mediatek.com>
>
> Add dt schema and IDs for the clocks of MediaTek MT8189 SoC.
> The MT8189 clock IP provide clock control for main system
> (apmixedsys, topcksys and vlpcksys) and
> subsys (eg. peri, mfg, venc/vdec ...).
>

> +#define CLK_TOP_VOWPLL                                  174

This one seems out of place. It is not used in the driver. It is
a fixed 1:1 divider AFAKCT, so should not be included. (And this
line has spaces while the rest of the file uses tabs for indent.)



