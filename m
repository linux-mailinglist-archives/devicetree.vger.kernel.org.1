Return-Path: <devicetree+bounces-173028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8DBAA7492
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:13:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF4B41B64992
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 14:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775FF2561AD;
	Fri,  2 May 2025 14:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YD0FCrbz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97594225417
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 14:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746195099; cv=none; b=YMGmVEOEYmwSIpGNMftOZu531X1qYVFUvppEatUUsCIJImcey+mDMdAFA/hwTwGn/hIY/vn7PCFsLN3kgzdrhNVSB/hewL2eVhlVB9d+iTd4uOvmjrFw6CgUzZEoPbku4MqABCF7F/llSZN/B/qI3rrDVarRcdInLCGqykLqBOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746195099; c=relaxed/simple;
	bh=yIxrVkU4SFQ66DwToqGuNlKqd5dY6/8jM/wyRARXfyA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l2RgJ7BxAh0zbA8rV5U7+L4IeqmRlz+eUU3D2lCbradnCKsV0f7VP0MPp7hyzInU2U1c7r1X624ROon7h1ESheuJfhHMZZRNck2WIk6MIbhECIDAqV52nBlGwL8tDGgbEqBQK1V4HA6pWk7kvIc5qp6prqJ/7g8CexziOZrlTSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YD0FCrbz; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ac339f53df9so439733766b.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 07:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746195096; x=1746799896; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yIxrVkU4SFQ66DwToqGuNlKqd5dY6/8jM/wyRARXfyA=;
        b=YD0FCrbzKXq2+J2x4Rcme2ozK3eFo4u0VIcHUYKLCvz4iNR79O8ClYduTKwRNcyqaw
         bXfiWU/HISaRQTGl3+5YiTH8Bn+C/UA3AfmXKSAZhQGqC3w2yI7tWHr8Erm2y68sfehE
         spUNbVK2CCXox3mX3/cjje+6fCpKZ+OFr57nh02U9astSB86upmsB9tQ6Ah7WVJ0gnuB
         Zk+UoNj2VfPGePA18Gq9mklX40U3NKRmbWrYI93hWENAlxFN1uFh89syUJA295cyrN36
         Gi7qUZfun+1RCkxTjX0potqKDlk1mwNhLmrdS5btewlFex6spsP2zqpBafPZ2RIKURBm
         HmGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746195096; x=1746799896;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yIxrVkU4SFQ66DwToqGuNlKqd5dY6/8jM/wyRARXfyA=;
        b=C1Zi8F6hOe5nycY1gEqB1ehP9YIqbzSP6yKTdsry/OyUOvjoTHLNsS4DdraQx74/Eu
         z5A+/A9OOGZRamy5jvq0NL2Xt1Zkhtj1Hp3O3lcibCG//BxeEBkrq7PoE1gjER3mDDM8
         FQ//EfdvuANl4J0GZJlM6sG5u8fF3nuPfQXegnkZO+x8UQxwQ3TNhjMW5GjawLh/KxSO
         cm5gXqz3VLnCPA6PZ7yVsIZT+y9+z2aXpHhXOqLM9c59RjxrMZrT2oRwNtJdkvGoNrJn
         T1Ct4gFQcJMJaE+mcafIQk54W6o/upfaR0+ScQFwU9RXsioEqpIMjBW8g8C+1WukaAw4
         VPIw==
X-Forwarded-Encrypted: i=1; AJvYcCXrYKdmoiQkQh3QaVqSadBUQQh16Y8jz/nJXwqPDGie0ULKXxnaAdF06q4Z/k+lyDpoUKDYYcOP+Ipx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq80opg+7nFhrdonPrL1vhWzbSKiMprriw/o062SZmYegcBLdC
	zlz1lAfi4shoOUcBaQ7DQKsRTAp3bEb11juruCQczEa2xlvs6TMr8GhUihBmeKRxdIjrPX6rAs7
	emeG9zQfP9G0PBWFTzYKc9lplt6DpgCUEzGwMtg==
X-Gm-Gg: ASbGnctYCas2BwP2ymyyp+SjY7BtxjU1bhUnXX+awPlJVsTYr5vgV1q4Vi4PvMHGCFp
	Od87LA0ANQE4yzYJdVftPUWgIPTtwHI/zEmyB84FKNpK/Gqc1xcKEfuSNpCkQcOmmAOBd705V0a
	0WYbVCfAZEjxVkmlQRi3gOUrg0lm7RcNqp
X-Google-Smtp-Source: AGHT+IEs1bTD91IQNhCNs2cmGXwwVdvucdgeJR3evc2FFZN3RtZBiPjhHMCBSyUR5aj84pE2Qt2l2g6KYv7IB3kEAbQ=
X-Received: by 2002:a17:907:74a:b0:acf:15d:2387 with SMTP id
 a640c23a62f3a-ad17ada7132mr329262566b.19.1746195095856; Fri, 02 May 2025
 07:11:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250502031018.1292-1-quic_ptalari@quicinc.com>
 <20250502031018.1292-2-quic_ptalari@quicinc.com> <20250502053758.utawzhq6famwenc2@vireshk-i7>
 <8ba02745-378b-4264-883a-b99764701d0b@quicinc.com> <20250502081402.yjagnnjrfva7u4cb@vireshk-i7>
 <e1b2029b-2461-4cfc-a6b3-acdf5e01c289@quicinc.com>
In-Reply-To: <e1b2029b-2461-4cfc-a6b3-acdf5e01c289@quicinc.com>
From: Viresh Kumar <viresh.kumar@linaro.org>
Date: Fri, 2 May 2025 19:41:24 +0530
X-Gm-Features: ATxdqUFgSe5sdPhV4tcbtGto6wWWIR8JrD77D7tcOXpnzioIpQJVJvx6MOBRrS4
Message-ID: <CAKohpondRqdfqC3CFSJibL2om8_Bbds8k5Dfu8fcZDksNxQUwg@mail.gmail.com>
Subject: Re: [PATCH v3 1/9] opp: add new helper API dev_pm_opp_set_level()
To: Praveen Talari <quic_ptalari@quicinc.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org, psodagud@quicinc.com, 
	djaggi@quicinc.com, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com, 
	quic_arandive@quicinc.com, quic_mnaresh@quicinc.com, 
	quic_shazhuss@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 2 May 2025 at 19:32, Praveen Talari <quic_ptalari@quicinc.com> wrote:
> now i can push V4 right and will not face errors on my series w.r.t this
> API.

Not fully sure what you meant, but you can send a V4 of the series,
without the first patch. Please mention it as an dependency in the
cover letter and that it is applied in the OPP tree's linux-next branch.

The one who applies your series needs to apply the series over the commit
in my branch to avoid breakage (if your series is going in 6.16-rc1).

--
Viresh

