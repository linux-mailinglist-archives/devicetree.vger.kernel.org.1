Return-Path: <devicetree+bounces-157029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1D1A5E85F
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 00:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0022E17ABF5
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 23:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA9151F152E;
	Wed, 12 Mar 2025 23:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="POsKFPb3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE6F1EF389
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 23:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741821937; cv=none; b=CDFXHBlZAH6ASilQoVn+DLZj3heCEjngDmsaNwezuG8M3k1Qgpxl0z/88kXk/8L2mnKbPJFe8E+BDYZ4+CirT5f7KjF8OqAG6zCBFkV9LqT8NZaeWxqS0tVmojqrVvsbTHkMpFGfNnZvEezxb3kXA0SrX043+1wWcbs5lF30DfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741821937; c=relaxed/simple;
	bh=KNOXCxB49IWpZXkEuShUxxFDdmvuAFP6JtXUlRzTWE8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=arSOdb7HAru40r/UPCCRvcrCOg+OmMJdTM/jQTjVN8LiVKb8uRs0jPefU96nbOodQJPM3jrcvo5w1d9DwiQLxjJPjSxGrDrfJytsKx4LAO6Rnj/mhMgl8tx3AFJgnjoHbuVpvzwdH7I+BK7sYYxBIEksmCS3I5W0+rCmDr50B7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=POsKFPb3; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5b6f3025dso445232a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 16:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741821933; x=1742426733; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cbP3u4ukcH6UtAZm28jTjg95b8wU0mnB31L/HtHfr/Q=;
        b=POsKFPb3cgKruwzgXihPs4RTCjHoXI8CqbOhsYbLezi7cB0EY3kF126c2kp7FW0Glm
         TQvUHOGxFY8P6mhcJnv4vNI9+svwl8VBoyQWuxNlHuPduNPN4BgwZXbzoj3Fzs2jDr90
         iMrpEfZ8DheLnb2mHVEhU2HDrDBYCsOMMtlO5d0PPYNG9KxFkRtDoS2MItq0D6ChDg3z
         1pFVywx21U0JImeOrn7mHdTMFs7R3mt7EqyFjqLPQeKQga81Cgpc8+qSA7ON1yldeZrc
         NgV4cDxJoU7mqbgRTEVJX3lLFJVn092ITMY4xbEUin+oA83PR+pZUNElMYsX7MwfNnto
         3O/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741821933; x=1742426733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cbP3u4ukcH6UtAZm28jTjg95b8wU0mnB31L/HtHfr/Q=;
        b=msJYYVhtBBEFb0z0lvGA/6MPV8CX2DhCziyl8GDQfsuvmvfG0Cpkyd/dcyWK3iMWi5
         FDSl5KJ3Q9JYPM8wsgJR6946dYDU+hMjpNncBl4llqwELQRopJ99+kip6EECZ+1RcZKA
         fajXlDZTYH2dfxNjRuMaOu2bDeeL5g8uuJmt44xIqh36cMo6z2RmzHHmImS8MB/rGW4g
         Xi9/jmy2d6mp8VYDQCD6wdd1PrdfZ5Bn9pDh6gLfBEwUXuS+O5xxsIsPq1rMa0Jyt+Oa
         WWNZJQTuDoEJxOhucBggEwwKLGUeisf8q5Sv8uSZMiKcB6qxprQhFUfYQVlxNb2ev/u9
         MSHA==
X-Forwarded-Encrypted: i=1; AJvYcCVreHKkan+blWX1NyIF+EbvdIwW9E9KNr3MudeMjZFD29nxKuz4AfTnqoy/B2tG7WjT7pkfgmGmTZVC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4J8IPhLM/sOb2aFHx6VSl3XF6poFtpKW1BT6q22Xc9R18DPg9
	9jnDbzBY7hPHC6m9a9sLkr82SjxhhPSpjytczWyXgSaeQDgugpgI9muqAHcrDc0=
X-Gm-Gg: ASbGncsQpP6tZZH6B0DUw9X2eIEi1Ftz/Xi9uH5xBmMHZ0NYX882mejfC7/4rE65lLn
	nNV8YtOP0NXLboh/Rf/C9eXnzsaBdvomFk2+MdolhUC73fy6/9MQPgIH1apbYe9d0Z2CCvG9Pwb
	uGkH+pFTFzHZUX7o8N/k4V4iI9JGBHQbw5pLsq5q3LoZWOBLj5uEyXIM0+tnz/zKO84TdQJwUGi
	CAQXkUL0h/tk74GLtm9ZuzKo82JsflRD/ivhbBE9bgUh/q2puBOnzzqdRrFXwCy8x0QPaOttvIs
	oq0wmXlKZS+zyU67qpV1LJolY+v6mGfIA46axoBVAKHCA9zLXHCMgwy8r8I3q5vd6ZDLLBqWsk8
	sKoB5VoWx/fhzUTPxXipo7SSdK7NEjnTYfew8uIHjxr7f2WzAzRrsZfoe6a+c8UDhxXSBPir6mH
	2nuPPYGZYc/pFS5swmaoKe0/w+hFSKM5Y=
X-Google-Smtp-Source: AGHT+IEQ9vjHKRKBUp2ycACrS8aKwBtnDiyRwBCDM+O3Ys0xwiBai+d7QgwA4ZAZ03T6YvvBIIvtoQ==
X-Received: by 2002:a05:6402:4489:b0:5e7:8848:f567 with SMTP id 4fb4d7f45d1cf-5e78848f991mr10629817a12.20.1741821932981;
        Wed, 12 Mar 2025 16:25:32 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816afe1f6sm27754a12.77.2025.03.12.16.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 16:25:32 -0700 (PDT)
Message-ID: <4a5ace5c-728e-4ae6-90d0-94270c83db3a@linaro.org>
Date: Wed, 12 Mar 2025 23:25:30 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: clock: qcom,x1e80100-camcc: Fix the list of
 required-opps
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250304143152.1799966-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250304143152.1799966-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2025 14:31, Vladimir Zapolskiy wrote:
> The switch to multiple power domains implies that the required-opps
> property shall be updated accordingly, a record in one property
> corresponds to a record in another one.
> 
> Fixes: 7ec95ff9abf4 ("dt-bindings: clock: move qcom,x1e80100-camcc to its own file")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/clock/qcom,x1e80100-camcc.yaml   | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
> index 5bbbaa15a260..938a2f1ff3fc 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
> @@ -40,9 +40,9 @@ properties:
>         - description: A phandle to the MMCX power-domain
>   
>     required-opps:
> -    maxItems: 1
> -    description:
> -      A phandle to an OPP node describing MMCX performance points.
> +    items:
> +      - description: A phandle to an OPP node describing MXC performance points
> +      - description: A phandle to an OPP node describing MMCX performance points
>   
>   required:
>     - compatible
> @@ -66,7 +66,8 @@ examples:
>                  <&sleep_clk>;
>         power-domains = <&rpmhpd RPMHPD_MXC>,
>                         <&rpmhpd RPMHPD_MMCX>;
> -      required-opps = <&rpmhpd_opp_low_svs>;
> +      required-opps = <&rpmhpd_opp_low_svs>,
> +                      <&rpmhpd_opp_low_svs>;
>         #clock-cells = <1>;
>         #reset-cells = <1>;
>         #power-domain-cells = <1>;

This patch is fine as there is no current upstream user that depends, 
there's no ABI impact.

I'll take this into my tree as a precursor to a V5 camss bindings but, 
it'd be nice to get it merged ASAP.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

