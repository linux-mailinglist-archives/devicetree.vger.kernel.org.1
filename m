Return-Path: <devicetree+bounces-13681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BDD7DFEA9
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 06:13:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EC9A1C20F94
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 05:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205B62D62B;
	Fri,  3 Nov 2023 05:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="olZcH8W9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A752E2D626
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 05:12:59 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9172A133
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 22:12:52 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2806cbd43b8so1592575a91.3
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 22:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698988370; x=1699593170; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OixtEquTnHR2YZhEd0MDEhswdqqqsbVAp+5RHrt7SyY=;
        b=olZcH8W9AllPK4gFcgNwx+AWhkczLaehkgn321GTYcJk/ckcLrAFRmjOD0YQFQYNF7
         woOMIi00GXEyUCA/8BDlxiz6JI3anxj/zzYeXw16pmkL09/TT+GnVmynHnCX0UdEZFQf
         n23QaP0dyooFNYC0ShlkzZoUxSxEeii/4J4JkENreIVAtigByG4cLC8UuEcWw88BD64B
         hDZu2DFVjQltO7l/EWYrfpzpdzEs6Kt7Ym1RnVV5yh01C92KZqMUP73foEU7Ey5we70X
         bRgVI0GnG5wnHZZJrzpJyPaQ0rqlg1uR5/a6SPpLxC7JWcchODi2oR7nphd3K5cX8vAB
         jMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698988370; x=1699593170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OixtEquTnHR2YZhEd0MDEhswdqqqsbVAp+5RHrt7SyY=;
        b=DE0ko9VLScDyyVg80z633ne3tJYu8ARmVBRZv+3HeZZtHoVOik2amc5piWywMmF/Jn
         /535ZGFChjk2SowdbFR3Hi95yoLEKdrhHBSS51Rg4CBG2JcNqbS0y0ACbFHqfO+mHjs3
         Cu0oTEcc+Pi+iUoTYySilECDVMQ+Clf3CiBgQuRzrZTuMPB2oFQ6VTkoy3RjTuTvZSPF
         kvkeEKBaJHo+8AzU0ty8jTP2Q5ZHnrI+w8ZGbSUk0pSvUqugVj4Yt77cc0Nvr8ODtP00
         NQ/bTIOiGq0m+on2ehp8fcvEmZH5LDakTBz56wB+ICmlKlGGUf/VyyPNMqm8FMmbglJv
         f/6A==
X-Gm-Message-State: AOJu0YyOPu0qJumrfpEHPhTWqHqmTWCnL6ZitagbQYxLgNzFR0CyT043
	mwcrd0g74nOjH5Rcq2MdG8MM3w==
X-Google-Smtp-Source: AGHT+IFExr8ybCriMSgOLlaz6WAWaai4oOiYuReMXnpbJnZEcRwsDQDCfUwG4Y7Q7LrrQj7TnqqbKA==
X-Received: by 2002:a17:90a:7e88:b0:280:c97:5968 with SMTP id j8-20020a17090a7e8800b002800c975968mr18934034pjl.5.1698988370217;
        Thu, 02 Nov 2023 22:12:50 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id js4-20020a17090b148400b0027d15bd9fa2sm626409pjb.35.2023.11.02.22.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 22:12:49 -0700 (PDT)
Date: Fri, 3 Nov 2023 10:42:47 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, mani@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, rafael@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, quic_parass@quicinc.com
Subject: Re: [PATCH v5 5/5] PCI: qcom: Add OPP support to scale performance
 state of power domain
Message-ID: <20231103051247.u4cnckzstcvs4lf5@vireshk-i7>
References: <20231102053013.7yt7pxin5awlu7w7@vireshk-i7>
 <20231102120950.GA115288@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231102120950.GA115288@bhelgaas>

On 02-11-23, 07:09, Bjorn Helgaas wrote:
> On Thu, Nov 02, 2023 at 11:00:13AM +0530, Viresh Kumar wrote:
> > On 01-11-23, 17:17, Bjorn Helgaas wrote:
> > > Can you expand "OPP" somewhere so we know what it stands for?  I'm
> > > sure everybody knows except me :)
> > 
> > It is "Operating Performance Points", defined here:
> > 
> > Documentation/power/opp.rst
> 
> Thanks; I meant in the subject or commit log of the next revision, of
> course.

Yeah, I understood that. Krishna shall do it in next version I believe.

-- 
viresh

