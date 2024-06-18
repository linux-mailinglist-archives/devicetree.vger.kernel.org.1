Return-Path: <devicetree+bounces-77246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B513490DCCB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 21:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCD971C23AC6
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDAEC178CC8;
	Tue, 18 Jun 2024 19:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="C0hE81uU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDEB1741FE
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 19:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718740060; cv=none; b=E2PLeS8oUbgZrA9DW5GRo1yRLrmiavaXOidqvB839QFdQdzndlq538DEKb+odXVUQdfm9QMiOxuzpjQqvYBaw77sBVH/mZlzNGPjFU+Tde11kSFISJURJSRJ01ZEAhhWrEHgHSGS4qvbHAclXrFBdpjApOo02IaFIvaBtr7/3TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718740060; c=relaxed/simple;
	bh=80bOpDur7f/VLqFOdk85Pc7ZTNvF+5oggXMjPZy+ow8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hG8YWDz6Ggz7gOqjz8MJ19VN05azJ2E5RSEzkXOytd/cZrYmYy5x92ytBtscCBr9C9FgFBdP/7wOm6hz77TgYmJw9xwZG4YzxTsLuM+ryLf8rk+Il2JN4uXOQh0jdZ1KHq7AIsl/SWEAY1lm2Y3SyjsqhcNGZOPRa1xucKipqtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=C0hE81uU; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3cabac56b38so3419852b6e.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 12:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718740056; x=1719344856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8HJKNnvc8aggx0Ee52gIMjiePYGprFwsF/CuXFArkqE=;
        b=C0hE81uUdTeffw5oSge7mNrryhFeGmsy9ITK9gvX+9vrWpbr6St80ancopEYtsRQv9
         aZ6U9mrc6wRD43Py+NRrto2+0nJXxmuXfeWKU2KOaSTrq3CTLPZs7mKMGES7TB1+K4eh
         aDqxdZ2hz0U7ohZ5EY1YGBkeE3AT8JUXeV9wUA3ArzRELAGOjibmEb7cxw5Mh5PY6e+Q
         WfkiBaSa+952KaqPVb7fIieJXa11hMJpSLHNeNoIdddOfnPEHpf9uE4dHaLLxwTEhGqg
         5Qw59ida3/oHcpLaaqfga0++nC7TwViwUf04aT4D4FKypLmxBaXxKMvKt/X3FDtnq+y2
         JTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718740056; x=1719344856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8HJKNnvc8aggx0Ee52gIMjiePYGprFwsF/CuXFArkqE=;
        b=FLP4HkT+8Om5fCtqEtAFJoh+up9+woxYArhLoFtnZZyqJs0CLJpz6pazvYcx/Vma5o
         gCN8zQ7Gwr2ZEdAYXVZAzdSbBLeGT1okHL2JuLqE8evpVKh9IYcurtVGL+moRpARN7PV
         mDJNjAOprQg9L7K6gsyNWMv+k2KY+exQzJAZE/caRFSquf3M6Gzxm+vCPSvf3xSYCotQ
         kkprTIgqC+WAr78PxqXmEkAjRZ7L5PgMHuU7B6gJo6baHktBLbqBuw+XPHjfVJ/nBUxk
         SmAOelgfQZHrA6yeHvcleN2iMD5KaG/PSkp5SPW0GObjmyIlqUr2jfoO7Opb0hTWekGc
         Me6Q==
X-Forwarded-Encrypted: i=1; AJvYcCX2qYvZxb3WdkuWuXuJvvIlGDXIfc9NAqY3Xh5mWpPLBTj6XToeTcYx68GKqGX2mqcIpbe0NrrZf8I2cs82KVxvocuNFLac32GDhw==
X-Gm-Message-State: AOJu0YxmH9N1qKlKelAzgIkXN2/BtrY/Lu+U2Z1bRb1jQ5VR3bWHpI3F
	qkUuuhw+GhzLl/j4Tg9mQP3D1/brRh+3hanVeu/72xjgdx9jD12pLPDqVWh2kig=
X-Google-Smtp-Source: AGHT+IFoPn43lF+j3aRcMTC4F1x8qcmNWprQM/JcNVkz3sSPT6L3Dvzuqi3I5g9gcSivGrFlNsc0kw==
X-Received: by 2002:a05:6808:1705:b0:3d4:41b6:6c4e with SMTP id 5614622812f47-3d51b9b86a6mr867052b6e.16.1718740056313;
        Tue, 18 Jun 2024 12:47:36 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d24762b9a2sm1881135b6e.24.2024.06.18.12.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 12:47:35 -0700 (PDT)
Message-ID: <78dd5a21-911f-445f-95a0-4ece55b0721f@baylibre.com>
Date: Tue, 18 Jun 2024 14:47:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: iio: adc: add common-mode-channel
 dependency
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20240617-iio-adc-ad4695-v2-0-63ef6583f25d@baylibre.com>
 <20240617-iio-adc-ad4695-v2-1-63ef6583f25d@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240617-iio-adc-ad4695-v2-1-63ef6583f25d@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/17/24 2:53 PM, David Lechner wrote:
> The common-mode-channel property is only used in conjunction with the
> single-channel property. This patch adds a dependency so that we will
> get a validation error if common-mode-channel is used without also
> specifying single-channel.

It turns out, this might not be a valid assumption.

See https://lore.kernel.org/linux-iio/20240617-iio-adc-ad4695-v2-1-63ef6583f25d@baylibre.com/T/#m7b921cf9a7deb4a4f02dd2f05668a3dd99232ee9

> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
> 
> v2 changes:
> * New patch
> * Depends on recently applied patch [1]
> 
> [1]: https://lore.kernel.org/linux-iio/20240607-ad4111-v7-1-97e3855900a0@analog.com/
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> index 8e7835cf36fd..5baef30104dd 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -80,4 +80,7 @@ anyOf:
>    - required:
>        - reg
>  
> +dependencies:
> +  common-mode-channel: [single-channel]
> +
>  additionalProperties: true
> 


