Return-Path: <devicetree+bounces-264414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCSJItMvi2lVQwAAu9opvQ
	(envelope-from <devicetree+bounces-264414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:17:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8DF11B297
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE942304C079
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B3E328B4E;
	Tue, 10 Feb 2026 13:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h/R5cJsn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D958F207A32
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770729382; cv=none; b=o+QDCx91qdTJ9wBdefxseQWZbEFXDERG2w65fhRq3tr8+jaHEKhpGqA7CtyghFZjVT43KmL4aR1Lt+I0JMG+mewJhPKz6VZ0nJUoEG9yh01SrmtFZX15bjPIxIRDJ7qbx86aObOImzrax/yYLCaQ+E7yNaj7sYQ31sE+iw04XPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770729382; c=relaxed/simple;
	bh=47lTU55/gykUcjRt+xxtWjYlJLvvJMCfBp+RED1uTkU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sqxdziM5ifwPi0FtCp9x31HrKQBMuX9xAYiZ5A9dBRiGjvr8LoiyTG3Ed9qE7VreV4NSy/QlDNgUSRS/I8faaJ/EJlL6JOC+9OnGxXKn55mP+28u0GxuP/USWwVXK1mz7UBH7jplPFXpACMC1rbTSICi4UQ02p4HfArI7uI0+Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h/R5cJsn; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so12377955e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770729378; x=1771334178; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OYSe1+CAiybXtDZ7qn+sljqCDCmOWnnVyECoc1AwnJs=;
        b=h/R5cJsnrDi94NyDn/J7FIOCfsNM7gozZyxaObjI+6X6rB9sprwsX7pR9y3pGMv0YA
         woI2CgwbvOFDzBR1swB+bHKpWYNCCNW4C1Hr16Of/A47BheUb9P3UEcd9Bl7pLYG/Trq
         +fzdixSUZzv8T583rW3eFf4bdw1PXeDjh57Az0TS8Lu5jcVm0aZNauPwfC6C2pCvObKx
         PBqkJJWnFfAlJ3Zt019Y/9umAIfIJTghqZGrZ/+IPlk8nxN2baChBKUCnWB6Ib0TqK4N
         bJ90s0aQKX637GvW61zgznta3ae1S7neoNeTKWzZ1X0TlEo0icLZd3rgRazdVnWuEkPK
         8lcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770729378; x=1771334178;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OYSe1+CAiybXtDZ7qn+sljqCDCmOWnnVyECoc1AwnJs=;
        b=BFzkU6dRRHegUlanYJchtZC8b3WDFcfCr31ZFQt+/YDfeh+7XIEkU2akNYjlj1nazV
         QN5/Ybg1nre/9qd9wQjXBEqCYioMdZnONC5nbSZHmZdnjasZzasK9bemAGg9iyObUAIq
         mePVuooUSNUr11l9ipyiK6ANtE4z8lVUCgcGaG7JI9pWy3Df4Jr5MnLCg8lt+UqvWa5n
         3Bz3LissoHHivM7DoLxY+fgK7Rh1twak16Tc95dR5tBoetQNYFmJy1aQXJqVdF4rvH7B
         D3ACQq7hNQ4fRp4No9iwssuBkXncnQbTiK4KOc28s2wg62jlVBlsfR8JvefuMruKmD9u
         A6Qw==
X-Forwarded-Encrypted: i=1; AJvYcCXBOyExl4uIKMHRSAw1y9Tp90H/yBgo2g5WWMyC/3yFkll6The9ao0oLy55WCFF1Zxo5xlW/4AEsesV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+MxCBwbsCEFk26G02Kh9wAnAjXa+jiMrtnOHp3sAV4QHgOCuc
	mjLd7/twUtdy6fP0nvGZr+ZK1g5Y6SEBunCAV9MGGvbgojSS2yySMkp3/6jjXiZgXmU=
X-Gm-Gg: AZuq6aLF9Qt9xpU2VeL/Ptnuj9oxQMDgLShWenWw+23osOuU6tF9T3YuUr4mcz5BAWu
	y6N0bnjN+pGQOZh73+qi9/oHI+2MdHnD+f77Xep9rtj0G6gRQWKBNvOl1eVmSOqZfZzHo6gXcpf
	i48EhuoJ2lZ6hcV6DPF4MatKqeJtsQrasglXr8A3FQfJEEYOYskdSmVRf5Tsbv0woExLSkmzZVC
	MupjMHtOztnroh/6rJFevS3QTnWTsDJqh8aB0jnlC1XdCl2nNWJtKVqG5yHOaVekZAKi6hHBM1t
	wxFcv4cCKDpfh9gXtOU7yFYFayGqMj7nD9kjmmG84RPuo4qW2sIhtGSB33XP4uUODM1VV/XGVNk
	+N3U/suMfzkJDdVyFmXtLp3o6tjW35wrI0n1Hp1H1CkSqSuVeeDoDzGVkJIIdHCkJcnSkTXOF6I
	roMGSM4sdA6zucRlg6Gd95Ws8lrhgyqM3fZ7GSDG+3ukpLLNJeu/FhwkHNryTJKdol
X-Received: by 2002:a05:600c:3552:b0:480:4a90:1afe with SMTP id 5b1f17b1804b1-48320339137mr232607865e9.34.1770729378123;
        Tue, 10 Feb 2026 05:16:18 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7e64b0sm72637865e9.11.2026.02.10.05.16.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 05:16:17 -0800 (PST)
Message-ID: <416e2f12-92c1-4e41-bf08-860443710035@linaro.org>
Date: Tue, 10 Feb 2026 13:16:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/7] dt-bindings: media: qcom,sdm670-camss: Remove
 clock-lanes property
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Tianshu Qiu
 <tian.shu.qiu@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
 David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
References: <20260210020207.10246-1-mailingradian@gmail.com>
 <20260210020207.10246-2-mailingradian@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260210020207.10246-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.2:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EB8DF11B297
X-Rspamd-Action: no action

On 10/02/2026 02:02, Richard Acayan wrote:
> The clock-lanes property has no effect on the hardware configuration, as
> of 336136e197e2 ("media: dt-bindings: media: camss: Remove clock-lane
> property"). Remove the clock-lanes property.
> 
> Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Link: https://lore.kernel.org/r/bbf0dcd9-d0f2-49a6-a2f2-6ec9376f2f59@linaro.org
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   .../bindings/media/qcom,sdm670-camss.yaml           | 13 -------------
>   1 file changed, 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
> index 35c40fe22376..78b9e03da06b 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
> @@ -116,15 +116,11 @@ properties:
>               unevaluatedProperties: false
>   
>               properties:
> -              clock-lanes:
> -                maxItems: 1
> -
>                 data-lanes:
>                   minItems: 1
>                   maxItems: 4
>   
>               required:
> -              - clock-lanes
>                 - data-lanes
>   
>         port@1:
> @@ -139,15 +135,11 @@ properties:
>               unevaluatedProperties: false
>   
>               properties:
> -              clock-lanes:
> -                maxItems: 1
> -
>                 data-lanes:
>                   minItems: 1
>                   maxItems: 4
>   
>               required:
> -              - clock-lanes
>                 - data-lanes
>   
>         port@2:
> @@ -162,15 +154,11 @@ properties:
>               unevaluatedProperties: false
>   
>               properties:
> -              clock-lanes:
> -                maxItems: 1
> -
>                 data-lanes:
>                   minItems: 1
>                   maxItems: 4
>   
>               required:
> -              - clock-lanes
>                 - data-lanes
>   
>   required:
> @@ -308,7 +296,6 @@ examples:
>                       reg = <0>;
>   
>                       csiphy_ep0: endpoint {
> -                        clock-lanes = <7>;
>                           data-lanes = <0 1 2 3>;
>                           remote-endpoint = <&front_sensor_ep>;
>                       };

I think the ask was to have clock-lanes in the board dts rather than 
dropping the clock-lanes from the yaml.

We want to keep clock-lanes in general as some SoCs support changing the 
lane assignment.

---
bod

