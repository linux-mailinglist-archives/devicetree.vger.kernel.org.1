Return-Path: <devicetree+bounces-11528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3D7D61A2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:25:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18F352818C1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 06:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80BE156DF;
	Wed, 25 Oct 2023 06:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E2TrS5tw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD9BF516
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:25:14 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BAF2136
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 23:25:12 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1cacde97002so32457415ad.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 23:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698215111; x=1698819911; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YRNx4/VhgJBUmPLhfW0nzhO+j+HC6thHIfSQat4cc5Q=;
        b=E2TrS5twCMhJnRkIHOMNNqcEgDS2AEsF0M3m9s/HaI9gY729q04tRAq/7QNZ7+cBOU
         Ba3IzzbiUn1t9ozMz5lMCVCxxV04VZsgGe7Mef8ndh2b3IbF9I90FaV3B6AIbdmEendN
         7V6BQMSzkID7eUnXBxSTDFx30/8UNfiT6V0slAQzrxjyddUaNQXMC/r1hhKmpZjRa9BL
         1RcKEPoEXeWiwUNaknv0M6FSUYhkpcaq760kb502SEUH4C9ycryn4f5cmCVnW9PKqalD
         OSx8eu6mq9eDvN3qx/UaZ2be5KHJqA1ebie6Or7IrZ3otksLjy9AanbrLfstZjfBjCUr
         xImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698215111; x=1698819911;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRNx4/VhgJBUmPLhfW0nzhO+j+HC6thHIfSQat4cc5Q=;
        b=PeReYWbOo2EMW61JJwsI/7ijM9d8fS3NH7P1VWgU5SeZVbaBYrQxNW51lke2XQlf8s
         FJ6Gtt+fWWfjQu6PasXaYjA6c9NCL5zgdzEw/eYd7RG3wY9iY5Kfntwtte/T4n6HoxYS
         KycAbYq/SZwqp8BVPKd6N96Oezai7BQibyqGr27YNVKag/CPd6yu7vyDP3BF0BlYPcMc
         KuFKoMGRIVFiUGi0ZNP/X1Fwcb/Dn0oYUZHJAupyrfkdlaFpZf0kk0o2cV9WnQcQgXvO
         7IKhytYzFri0ZTxBSCVpXbp+90SjhriHZ6cXaDyOSfOWbpk1otictb3kTRAADpOl757L
         Te/w==
X-Gm-Message-State: AOJu0Yymn7qkZsjyEAkAoTwciGaz5osEhfEvFqj+I8U59476vEEeZ6kA
	PZoGJZpcs9MlU9EIPOUqnBKEKw==
X-Google-Smtp-Source: AGHT+IGohNcTFzm2Bh0bFriQkaNYjeD1yBiORs4U/Gyp7N7O3RPbMKBRyGUEMkF90cJRpigxhPHV9Q==
X-Received: by 2002:a17:903:11cd:b0:1c7:29fd:33b6 with SMTP id q13-20020a17090311cd00b001c729fd33b6mr13396486plh.40.1698215111463;
        Tue, 24 Oct 2023 23:25:11 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id u17-20020a170902e5d100b001b89a6164desm8371393plf.118.2023.10.24.23.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 23:25:10 -0700 (PDT)
Date: Wed, 25 Oct 2023 11:55:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	rafael@kernel.org, ilia.lin@kernel.org, sivaprak@codeaurora.org,
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 0/9] Enable cpufreq for IPQ5332 & IPQ9574
Message-ID: <20231025062508.vccrmkem45p3fnwe@vireshk-i7>
References: <cover.1697781921.git.quic_varada@quicinc.com>
 <20231020070947.cwigtaa2haij56hz@vireshk-i7>
 <20231020080339.GA6197@varda-linux.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020080339.GA6197@varda-linux.qualcomm.com>

On 20-10-23, 13:33, Varadarajan Narayanan wrote:
> On Fri, Oct 20, 2023 at 12:39:47PM +0530, Viresh Kumar wrote:
> > On 20-10-23, 11:49, Varadarajan Narayanan wrote:
> > > Varadarajan Narayanan (9):
> > >   cpufreq: qti: Enable cpufreq for ipq53xx
> > >   cpufreq: qti: Introduce cpufreq for ipq95xx
> >
> > Can I pick just these two ?
> 
> ipq53xx patch is dependent on the previous safe source switching
> patch, hence not safe to pick that.
> 
> 	No -> cpufreq: qti: Enable cpufreq for ipq53xx
> 	Yes -> cpufreq: qti: Introduce cpufreq for ipq95xx

The patches don't apply cleanly. Please resend.

-- 
viresh

