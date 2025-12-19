Return-Path: <devicetree+bounces-248223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18471CCFFCA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:12:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81B50303016A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36CE2FF15E;
	Fri, 19 Dec 2025 13:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="rdkQli19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FA83191A1
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149437; cv=none; b=ipj6lH2IcLwyn4sbCJWXFUhWfI5zSct0bMXHjH0YdtlGUFMCevQBSySiRloSWEeOLi50fOwpvbxNKAoLUIg9CSpYbPhj6HCN0UcH7/bPmKm+KE/kVGDw97ySL+K95CM7QkD7xVzkEoOPxE9ByUdPmzSBUOHIRnCuC3X1JVkAvzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149437; c=relaxed/simple;
	bh=EE/IMt3bWpzuwoh4Y4VtblwKWctMNVKGBDh9u8GUYg4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Qmbb7Ixx36W1okf4WLEJ3fSa2lcALeTYSOoFs+cIIEQo0C+ObRJ4000wr5djFu2A9b6qiJ3gHYBRDU96G/imLDdNkapLdX29oPsFL89b21UYFb0Z70P5cclTG3PQhJ1z3XlL0OffdcLtR7NSTadHY6T/WfdyN55xt87Zsc1hhr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=rdkQli19; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-64ba1a1ea06so518580a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1766149434; x=1766754234; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9xYZmg2CKda72uPjDDhOOvObRBbG4YdmNuqSLpmH/Go=;
        b=rdkQli19NK7ZEFHBRsA5+cEoaTtjs0dkJIY4AiX/DVUiiCUmYs6ErlxDUXa1ZNQPV/
         Fwj7zF+TZE3+sx6a5lBgBF+lLAkpjj+eKs42IIyJLTP4AjRzaaCGVVAg8G2w2JofOQ61
         OqOi4XmIKyot0DosmjRoIM9NvTnQ/QkiQnYjf3mM0+fMHyK/2Gr0NPpNZ1ILuzpXGclf
         4hvOGVA8nUKkH9tUXicpXtcDK3vOdZC0/epBjlorfgUOzVI6d7pJx1+pfi4GHt3XN5MR
         knAIyiWTFDad2ZGMGOvR02ssNj9LxLxU0f6uW4oBjqumk6ixccZj9TTAoqFC3zCXooV1
         c9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149434; x=1766754234;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9xYZmg2CKda72uPjDDhOOvObRBbG4YdmNuqSLpmH/Go=;
        b=X0PkEQAhvOrHaw73f61DxRt1AfO+B2LnCHVGCj+GZyzRsWNDeyAjKnRasMxNlhIVI/
         mNHvWbtCQ/6WEcKue2cqYsGVOjvgQoZUzdE0abuAFsTxW/2h8Cqaj6mykAyoh/jeUnCR
         IQzpUGX/ANaIVMi47MqJSBAOmDIWtRxmJXIjDq7Ytw/SH6ImoXQKWbo7v2FPVZZ6xzVQ
         vlgXA88TOl5J9+VyKQSdr7tzJmabmhzfF6C9zEsw71UcikkBUEuhsQcJeiiky7a83k8Y
         U/bu9GUYyiJdA9U1WFfYqzxcwT6RQZtOrQI6yzTBaX8IjNg17tw5Lzon18bDEQwAi1C9
         dEpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKi6Ifx7a3G/Pjt4oa4wXx4deJbVdze/Kq0LKl1BFT6uzMfpY8S/PQbfRF5twX48E8oCv/o10qtECs@vger.kernel.org
X-Gm-Message-State: AOJu0YxRzW25Aju1/R/LbmY0xidRfrYRPm1w4Wzh52mEk+Ur3u+QHKZk
	ZVjutYL/XonWe9xwI87/N8w+Vm46WzciCpp+OyUNv1X5YEQfJJKtVCIM5qliJGrrJsM=
X-Gm-Gg: AY/fxX4mBEAuLrSWVaHSx/k/OY+AXBczviQA7Bacc9LBlTnsZnpfzJrwq3zcR7HO4Nv
	ZVaAle4EUbk9nxCE8UAQ0g8oWKVS8hRM0A1yPONpgBDGaFnI/h6a9kMfPRVO9XEqvqTVT4HqYgF
	AvO6I4iVh48lWKi8IgQb0veS+kfUBtoipgfADCCqQ3cnn6CgpDWrUIPBqKRYpvQZD/laWpF3ubQ
	U8ajOP+e1stLYnUwjaa9opEpb7VhRy9yQ8VN0dZVojleXVOY/NpbPdGWYq+03+goYGNPCoVK7gQ
	hg/W1Ke2yZwuTLdDYUqFNy0R99gL0QfKXeYazXG5r6FIrxBrYVOH/JR4ivDbIK5WR/qQAe2ilLk
	64R2vvMen6SlZciDnzTcSFy1Qd+O7Ah3yaJzjg2OXZI16aUHf8fbLcauIM/LPh5M81uelkd+7LJ
	42WI79ISWIa46DEeXq3s6Hr5JVFGHp5YVjIDKNtAMmzKInRO9ljevn4+uxzL4gPaPPn10TA1Yk2
	l4y9ZCNayyJ2ts15JdlXCx+
X-Google-Smtp-Source: AGHT+IEUfFWnQG7RAyzRaKjx7Ol55uUIMDfqgbftEXKGsTsm+LxGEOqp3Py4SFBBhTsoJjx3bbI4nA==
X-Received: by 2002:a17:907:7ea2:b0:b79:a827:4c4a with SMTP id a640c23a62f3a-b8036f1308cmr281276266b.15.1766149433565;
        Fri, 19 Dec 2025 05:03:53 -0800 (PST)
Received: from localhost (2001-1c00-3b89-c600-71a4-084f-6409-1447.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:71a4:84f:6409:1447])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cb27sm221143266b.51.2025.12.19.05.03.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:03:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 19 Dec 2025 14:03:52 +0100
Message-Id: <DF27Q0DG1UZG.1Q5HP9SBKYBT0@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH v4 2/9] dt-bindings: crypto: qcom,prng: document Milos
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>, "Viresh Kumar" <viresh.kumar@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Manivannan Sadhasivam"
 <mani@kernel.org>, "Herbert Xu" <herbert@gondor.apana.org.au>, "David S.
 Miller" <davem@davemloft.net>, "Vinod Koul" <vkoul@kernel.org>, "Thomas
 Gleixner" <tglx@linutronix.de>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
 <20251210-sm7635-fp6-initial-v4-2-b05fddd8b45c@fairphone.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-2-b05fddd8b45c@fairphone.com>

Hi Herbert,

On Wed Dec 10, 2025 at 2:43 AM CET, Luca Weiss wrote:
> Document Milos SoC compatible for the True Random Number Generator.

Could you please pick this patch up? It's been on the lists since months
and blocking this series from landing.

Regards
Luca

>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Do=
cumentation/devicetree/bindings/crypto/qcom,prng.yaml
> index 597441d94cf1..a9674e29144e 100644
> --- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> +++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> @@ -21,6 +21,7 @@ properties:
>                - qcom,ipq5424-trng
>                - qcom,ipq9574-trng
>                - qcom,kaanapali-trng
> +              - qcom,milos-trng
>                - qcom,qcs615-trng
>                - qcom,qcs8300-trng
>                - qcom,sa8255p-trng


