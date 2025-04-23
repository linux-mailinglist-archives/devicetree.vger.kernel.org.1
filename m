Return-Path: <devicetree+bounces-169677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80904A97E18
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A68D3BE790
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 05:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3300026657C;
	Wed, 23 Apr 2025 05:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yfn0ie8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187F4266595
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 05:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745386571; cv=none; b=LW/7dVYpF2MKjvTb3685DC70cfkkSaRMYhL0yRemsFdszfBuVzey7U0hLH2vVVPcj/dPBGv6GbvAvhK9YyxEL5OoOdHAffBar5yPp8A/Tf6RcqnkahsTJw/fO+Yi2I8MXpSaGOtUzXRNxoJtqRtGUEy5lU8s2Ttms7D/CS0QjdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745386571; c=relaxed/simple;
	bh=znd3Gx+1i6NPOJ5fHPpMjC5QdTJie7kovH5k6mPOKO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EhgNlgm7yO0t6FtbzhLLrJ+FFdQqZqLsHZSBgA1wei0VIn7/vtS3fo6tKCCgSYnMjuxRHpHQ4LQNB/rM9ysejzp+0yrRGbi7JuRwB47Dwb7hfd78tnc5zi+sRo0ScFN7HTE5b8ir5m9Q3T1bBE26KOjFXJdqz2TGeIgCIRT/BtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yfn0ie8l; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-736b98acaadso5724942b3a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 22:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745386568; x=1745991368; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FqXZmhQqMpQ55WXDkvwtb6bzPG8ypT7T0jmt2s5ZCM4=;
        b=yfn0ie8l1kYua/HCnXdMB4UPmI749NcR0wtsumJFxdtMr9ul2cJXyy2NrmAIvbZBqz
         KG6dYBb3ySWWeVEbv3kdV6gNwEl7ynbZ2uZ1VIU/HjliuFsaG3Ci/0gNu4JaRaASuzck
         WHSqgSShz3DWLxdMlaDw5q7LVbSN8Irg20jqFCyADjw3a/frVe3aL0vhvYHcuWL+iWiE
         9TWtX/URv0O784ADQO0wD21sFD+Q3VaL2dj9x5ZWpmK5WMVMfQ2MwL3gVzfOcdqnGOMf
         WlayqPWJc+GbFVX4ebBY5Xm8y9hq7D0U7O73gEH+LiZg2xr2TRemVM67QzhZpgrRjAQb
         HMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745386568; x=1745991368;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FqXZmhQqMpQ55WXDkvwtb6bzPG8ypT7T0jmt2s5ZCM4=;
        b=aAL2EtTufOPDLMttSluVTvHWYbY0MqGWb233caLXg0h5BrmNkXSrNjwMXcIDrbod7l
         gIGXj8kuW/ON/9JjhRKBiXai3kUauTbxziyYV2QO0AAmMrdPQ4ntZRSQnIVvgRUz8YBW
         DZGR3N6/LVLmvTQXAep1hVIMltj4qdSPBQAiwmQo8DLAr6Lv19z3oiJGDcDC2v/D7DDI
         TGGgnDT3Xd4reG3OYqXxftXmMCmyQIGAQXwHUrEVxqdYUeKIuJEbLrsmIagjynhdk8vS
         +d6iaZPAINOPc1huthHBeXkyuLHoqFjQyflIYA5PdI7r4WWsynXqgBi9irpAXXKOfUfI
         zcLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk+zVp7wtOdKaL+8+Bn4ya06s6mmluXDSumu1VLdmgjPWzQbKpwHK1kOkLm09VVxG/YbIh30ZJGvZ2@vger.kernel.org
X-Gm-Message-State: AOJu0YxwMjaOdZvOjDd0EO6B7rljc0lyv80QVXGf+ntm2ZI1m2fCL5Il
	HlM5L+t7WHDlAHumoyGjvvXXF/w5xmikQCu1nUqSwahOMjJX7XRIKlHO4Y3C4kw=
X-Gm-Gg: ASbGncvIeKijHwd0duE9hQtfoL8lIzd6xzwkTXI0eF7Uj/xNbxrl1RgsPOD3Nu45YWu
	OYYFOpZfze89UqPVF/IltWuwp93IVoNs5b2343QaXiPRl2JGly6noBqBGSi6nBdu8jQ31enWkb1
	jUIib6dNJO3Tp4KmjSakWe7R7GgxKm/oNXWsgQnklU3j5D3Ec2iQLB4xEkjwXe/wnGYvKvtmYmn
	48OU0GwrK5mx69ifC4l26neRbBcLwE3M5bTui4nub3Px8iG7WUsJYWEKdFErFxzrLwGUBtcCWw0
	w+gFmcngujkz4NcAnc8Fv1tteCBkbAlZ6K4vCuc5Qw==
X-Google-Smtp-Source: AGHT+IGH5CEH3qbiKs7N8VcrCjZGvYVDP7IFgmEG+4RsZjJN0YJwU+Ch1jF6olLdlhwBTsOOZVjUQg==
X-Received: by 2002:a05:6a00:3928:b0:736:755b:8317 with SMTP id d2e1a72fcca58-73dc15d32b0mr25849726b3a.21.1745386568035;
        Tue, 22 Apr 2025 22:36:08 -0700 (PDT)
Received: from localhost ([122.172.83.32])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8be876sm9697501b3a.36.2025.04.22.22.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 22:36:07 -0700 (PDT)
Date: Wed, 23 Apr 2025 11:06:05 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Praveen Talari <quic_ptalari@quicinc.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org, psodagud@quicinc.com, djaggi@quicinc.com,
	quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com,
	quic_arandive@quicinc.com, quic_mnaresh@quicinc.com,
	quic_shazhuss@quicinc.com, Nikunj Kela <quic_nkela@quicinc.com>
Subject: Re: [PATCH v2 1/9] opp: add new helper API dev_pm_opp_set_level()
Message-ID: <20250423053605.63njjtz3s3krdeqb@vireshk-i7>
References: <20250418151235.27787-1-quic_ptalari@quicinc.com>
 <20250418151235.27787-2-quic_ptalari@quicinc.com>
 <20250421074004.yttb42qq4p5xzi3o@vireshk-i7>
 <e6e1ee6d-a12f-4e18-b2d7-65d1ccca5308@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e6e1ee6d-a12f-4e18-b2d7-65d1ccca5308@quicinc.com>

On 22-04-25, 22:37, Praveen Talari wrote:
> most of helper APIs in core.c and even i don't see any helper API in
> pm_opp.c.

This is more of a wrapper over the existing C routines which is being
added to reduce some boilerplate code from drivers. And so it makes
sense to add this as an inline helper. May be there are others which
can be moved too.

> as reference of APIs in core.c, i have used  -EINVAl instead of IS_ERR(opp).

That would likely be wrong, maybe we should fix those too.

-- 
viresh

