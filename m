Return-Path: <devicetree+bounces-222174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA6CBA6811
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 07:02:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC1BC1899616
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 05:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B3F28DB54;
	Sun, 28 Sep 2025 05:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZhqbWGta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD37A1C5F23
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 05:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759035717; cv=none; b=KoQzp2sO1GtZ4krsa5PbplZZEvkbgH1fkx+CW4ypyOV5YGXMK4v40f1zPJfOKE50v9/rQfb9le32Ae0HmY7rLDniz4TXw5fQDwk2byJFdlpxYZE0WMcnbE6TONM7yssT+QqwVj/nTuJ2xHjIAoxqbTBQdkj8iheH8l5FrTfgTDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759035717; c=relaxed/simple;
	bh=2KAdNtvOHAv0iPsSzF6JnRSyf3a/6LV1XFGg4SXH3dM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SVT/AHK5bF73KLUqWly03mOOKt8bIpuNnNCqx93v8/yss/ymx6OeL/f7ZKmSg1ZCzLHk6GthgAVu8J0bepOldhF/nKww5FGyprazIIaFk3377GsIZL1lLpETovSjmWMYPQ0koepR2LmbYVEVGzlKPCZtO2/rLeSKEJW0OAngTg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZhqbWGta; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-24457f581aeso34283895ad.0
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 22:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759035715; x=1759640515; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0U89y2eMhj2iLIuruto3nVeAxA529zvX5Wm2O/HQL8Y=;
        b=ZhqbWGtaxUckOZSo4F4tbV5mdHQNP93rvyc5CDtQc828TQYK1P/Fu6cwRu2T6IgQHj
         1HRdfX7ogs82Z3WcwJeu64ibnmZb55Ls6GmwoIxNdQd9v1UmLxWCeCI+F4f81Fcm5XIQ
         RB2T74MK8Junbjh4pJQ0tXhAFAGsEQ6U5FzGxiVVtS2wZ51i0lhVWEKNpd2g6IAuzyTu
         EF7mUtmjeE8FbLpL+3OLTc3/Bzon/GuG+GViechN1RvOVvX7rhnAQGOEePa1KWez07CT
         60itKa29/s6bevw60s3zK3n+a0+c4xc0xe9QP8YGbRdQDZtxgrM+tMrvpeFI6vKwt+BP
         sDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759035715; x=1759640515;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0U89y2eMhj2iLIuruto3nVeAxA529zvX5Wm2O/HQL8Y=;
        b=MAlwwAsQhZKAXb4mYaUaZNLF5812JTi4JPP1EKj8tZ5s21yIxEyXpjuLX3x1vFLRR6
         8myP91fmKSk2ss4zDxD+ObOxI1hqOx1N9GdO3TrcfXtBlMRVDvf/ths6nfbRUWi5Bl8+
         4o1paadyq9vtsL+U139UI6Spz1VBTJaodZ8omievfdkU74NwZozDKEafyaME9M3XUalN
         vMEzdo6fcNkfqad0LNpnjJRvvaMrKt2l9tsbiAYOAedkWL/5vfE9DmdttlYaUY3Tu996
         QIEseA0lZIKfLCnjLykOBiyEunAMm1AWkCSi4TCQOyuO30GnxJt324jJnSthR1jUWX00
         TYfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNZOlf53RH3OE+NddNh57IEgmPACm03OnXJefrdu/aVpUcZvpGfwvHaOjc5gEbKttclfU9xoLV1zoB@vger.kernel.org
X-Gm-Message-State: AOJu0YyIHjzOKc47ZkSyV3Ke3w64bKbQD54MxEGVpbQ4bvv02QvP8ysa
	n2s4r0W92Xj9IfzKmYPrOgMngrDvrWnodlZxbbosvBushpCAH5A56HMa
X-Gm-Gg: ASbGnctA79AR09xTrftHchPgHEMAyRfk+lUQvOOZc6X6DTrygcCq8VUKYJwhCKeLYS+
	54FqIC6RxblfOjYqAsK4Caus1Nsa0n980EK/0AQvpsBvgqT/fS3SgQw2PU9I5/pnh25HEgY5Uyg
	HQi+3wBXkCJHc7pM0XQPerCRTjyAm92cZA3gvrw53BJgeVwz35nPeTjo014uw1E4ag1tf2kdg8P
	q3/Tn8qimK0NQWML5CG9DOQzH7aRseuRs6T1A9wydBOSuA7oeOlDrySbdmTkk19yrwcqLngJ9tE
	nf6OdMfO123ymt6PWhoMwTmghhflKuBcykaTLIZNQZYG9gWqecMLbsF5n8hgEdGID9CQAeIQs/r
	R1TAts2i5zZI6Aey6FAhBAZh51EdHJwZ1fBW9jz31e6bsrC13ovG28GZ9VUwpsOLNZjfmTYwVow
	LLXQXMIxhh
X-Google-Smtp-Source: AGHT+IF4gSMaafr65leHEt79++HLMxBmNFlxKbU0qyU/KcJdtn6/e0eUVQSCjElsKiida6VyLQveJA==
X-Received: by 2002:a17:902:d2c1:b0:269:96db:94f with SMTP id d9443c01a7336-27ed4ac8880mr159569835ad.49.1759035715125;
        Sat, 27 Sep 2025 22:01:55 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:22dc:7b49:8c5d:38f6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d43ecsm96573425ad.24.2025.09.27.22.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 22:01:54 -0700 (PDT)
Date: Sat, 27 Sep 2025 22:01:51 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH RESEND v3 1/3] dt-bindings: input: Add Awinic AW86927
Message-ID: <rudd5cgaft43bjllspx3cb7wmcqe35cirtwfuf4b3kcntpxjad@4un73z7omcwc>
References: <20250925-aw86927-v3-0-1fc6265b42de@fairphone.com>
 <20250925-aw86927-v3-1-1fc6265b42de@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-aw86927-v3-1-1fc6265b42de@fairphone.com>

On Thu, Sep 25, 2025 at 12:07:28PM +0200, Griffin Kroah-Hartman wrote:
> Add bindings for the Awinic AW86927 haptic chip which can be found in
> smartphones.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>

Applied, thank you.

-- 
Dmitry

