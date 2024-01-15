Return-Path: <devicetree+bounces-31971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5195E82D617
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 10:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78A3E1C215A1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 09:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0A9DDCE;
	Mon, 15 Jan 2024 09:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MY8AMHzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A4CCA7A
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 09:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4b77c843fbeso2258729e0c.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 01:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705311363; x=1705916163; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=MY8AMHzm0zzOfE2kr6s0KuzGxC/DQaMOpBZZ0uCIv+y0f+omuYjJVAbp9q2Z5Qp0X4
         Wrq8d6OGszExGkO9g/sXYeITWABv+L2RzYeqVg6+hhtI4mVjxwhhVktAaVh0xjdZWtTH
         EmlE4iI02mKFxVh5mvFjsB7TUhlKD2CaYhchEGFhfDAF/VmmzvUuHMR2wzGoW5L8mGgu
         buuxRdT8gUfkLNoL0ept8VwDmeGTwMsotZzxDndfJ9vtG+puIT1wLFDXBzxN6d760Fog
         rZ2vrB67ETxFvJHoF4Fm0Tp/yulVBG6Bl8Q3gbp/c6F5Ki26Tmmy+eTnpquD4GvfqzEF
         Vdwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705311363; x=1705916163;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=q6xSvuwKD85GvUGP3tdEwxxuBPbewG6QPqEH/+EXQrFcD0eaia0rq+8b4EwgCT1FgC
         B+WXXETiq0Ay3ZZx36u2h5056XtYL/8LUcGK8JkhENKqTLZH9mAtxPGrDtScaFyt7G+U
         OXoNFFn8NEV+3o2Jg2T61Zo/cj7BSLPzaxBwZPVT7g/2s4r2Klp4Ic/lcM8WrWUiosyq
         UpQ1fnuNqWguw1T8D7aezJuVSlFRri8ccaUm1iIrky4rXsACEwfGk2jVYleHXS6tNZAM
         RrWdJrZ5msh+OT+kPBL17x7y9hs0Oegaax/C2F0a4ml4mSw5jTYSZRd/aOOc80gl0oKh
         TB4Q==
X-Gm-Message-State: AOJu0YxxebB+Zkv24MGcdBtdv8Fr58Ey3h0y4JFIXecQN9i7X1ui6f1a
	SnubVQCLsrZ8aHrH5kowDuA02ORTjRZKdQ==
X-Google-Smtp-Source: AGHT+IGGpV3oXR6Nk+SH5Y2vZo1QzHCDIEQux3dJgPdZlkMMXEgHJ8y5qSO2K+Y+gdoFxXcB+hnDyg==
X-Received: by 2002:ac5:cbeb:0:b0:4b6:b867:c83f with SMTP id i11-20020ac5cbeb000000b004b6b867c83fmr1922016vkn.22.1705311363678;
        Mon, 15 Jan 2024 01:36:03 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 13-20020a056122084d00b004b718a667ffsm303915vkk.32.2024.01.15.01.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 01:36:03 -0800 (PST)
Message-ID: <18e88ee0f8cf1d91588d79e4dd2813d0f3720aa8.camel@linaro.org>
Subject: Re: [PATCH] dt-bindings: ignore paths outside kernel for
 DT_SCHEMA_FILES
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Masahiro Yamada
 <masahiroy@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Mathieu
 Poirier <mathieu.poirier@linaro.org>,  linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>
Date: Mon, 15 Jan 2024 09:36:00 +0000
In-Reply-To: <827695c3-bb33-4a86-8586-2c7323530398@amd.com>
References: <20231220145537.2163811-1-andre.draszik@linaro.org>
	 <170432630603.2042234.10993333941885772911.robh@kernel.org>
	 <827695c3-bb33-4a86-8586-2c7323530398@amd.com>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0



