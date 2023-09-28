Return-Path: <devicetree+bounces-4121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9507B1449
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:12:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 99F711C2098F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 07:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB1E2E646;
	Thu, 28 Sep 2023 07:12:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFE331A70
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 07:12:49 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAECE6A65
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:12:08 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1c3d8fb23d9so94341425ad.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695885128; x=1696489928; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TJoUNwdaki6Xdk56w8h4X10ZwavJLOep/NoqWzb5sro=;
        b=KmocmIaXIoK7M2uIcsBsACfhSzBDMmYL+BZ+pBVQuHEwgNJGsHu5+MpdSFDYLihb6H
         4G3edLHxEY40942iuQTvMrdRcH/RIormLiKPxL8Q49lj/xfFUVoNZvgNGGPmAXeulC8Q
         wEl9ISvB5sZG+yvfyzfg7v6QOL2c2HYOrKTnohCxEjD9IT2n3q5TPWwaPJFXc+S7gPDZ
         Sw7Lth4FIdCJD3EVcyqB+MmT3Szkn7PQt0Py4LYpC8zcjgfAEmaTGscnCJnNLpKrroq+
         xJZODxBR+0Vg1KnJmXFUVWes4+SVw6zZoUbUks9pSNeR0JrtwEi4W90bUSLs2SqnczmR
         5o9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695885128; x=1696489928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJoUNwdaki6Xdk56w8h4X10ZwavJLOep/NoqWzb5sro=;
        b=fhsDE+WJmMyT7OMRNJqLnU2W01duU+zWs02oVZR6vvQMEprKOMNs+PHHTFuJaRH0eW
         AqI40OigjnyeLjrpb0Rs4jzQL1+S7kHqNoPYZs3FkCEPRtUAQnU0SvgnZXw8TJxkxhll
         HkzhDlexuDDiblqq40zWZwzyFWuWE8ySTkq84XBNyoM0L214ZDn3mxo4P+wwFKyUn7Jc
         zdlZYApe/0HHm+brBSXNr/ctLCKf2CPl9Tfepn3L3hCTyuThL4Vgj9R2VjC1fwMhhKZM
         5jI17V2XeA4PZqbCJD3vtXb1lp5pSjdJ+UqURe6HT+l/uUnzhofjjCKcyEJfw7+WUaZS
         PpaQ==
X-Gm-Message-State: AOJu0YzorPdIprRnZw8XusSddLl3xGEQ7Bl8dZkmU4q7BUwDV5c03eBt
	X5T/VTP6fy8C5wQkGIr8xhIW3g==
X-Google-Smtp-Source: AGHT+IFWFaxdMdy+VyMTM9v9ZTpIurQ/hIZWeJXFwgNjarLfJVDQ2awuAxoyaX+XpVwNuzMfubDQvA==
X-Received: by 2002:a17:903:2309:b0:1c3:6e38:3940 with SMTP id d9-20020a170903230900b001c36e383940mr431701plh.7.1695885128324;
        Thu, 28 Sep 2023 00:12:08 -0700 (PDT)
Received: from localhost ([122.172.81.92])
        by smtp.gmail.com with ESMTPSA id w11-20020a170902e88b00b001c44dbc92a2sm7563875plg.184.2023.09.28.00.12.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 00:12:07 -0700 (PDT)
Date: Thu, 28 Sep 2023 12:42:05 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Richard Acayan <mailingradian@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Georgi Djakov <djakov@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: cpufreq: cpufreq-qcom-hw: add SDM670
 compatible
Message-ID: <20230928071205.jffwl24y6tnkrfao@vireshk-i7>
References: <20230816230412.76862-6-mailingradian@gmail.com>
 <20230816230412.76862-8-mailingradian@gmail.com>
 <cc428a34-7c06-964c-2cec-123e99c92c4e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc428a34-7c06-964c-2cec-123e99c92c4e@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18-08-23, 11:40, Krzysztof Kozlowski wrote:
> On 17/08/2023 01:04, Richard Acayan wrote:
> > The bindings for Qualcomm CPU frequency have a compatible for each SoC.
> > Add the compatible for SDM670.
> > 
> > Fixes: 0c665213d126 ("arm64: dts: qcom: sdm670: add cpu frequency scaling")
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied. Thanks.

-- 
viresh

