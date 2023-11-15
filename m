Return-Path: <devicetree+bounces-15802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 439DB7EBD0E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 07:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D50061F25661
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 06:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97E8A7E;
	Wed, 15 Nov 2023 06:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="agaLieDS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAFE4404
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:27:46 +0000 (UTC)
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42CBDD9
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:27:44 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2809fb0027cso153825a91.2
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700029664; x=1700634464; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AKSOBVjj+YjOcXAU8cJCuporBoTYiy5nHyba5GnlAqQ=;
        b=agaLieDSj7L8eCTTz775oRhZLMFY0SzOJ7NAh1P1ga0w8nx2UIh3SY3BBeZ4Es35aE
         Hek8wiRKc+DazloKR1aW1NQNcTG2x5LSZhKpiJElFlryujlvZ2GUcrIWLoQ2EmbyHsaB
         2XHstflom80TWlZSJbT710fih6XDJNyKIQPAf628p74zaGE6zW/v+234mp0hOaEwMp8o
         +KLALvnP4txEw4OyoRrpsRqqGPhQkTi9q4rFZQOtFzAQufJ6QXdrbmK7m388W6HBltno
         AawqUFSQ0CaflKFE5/AAaJF9uHrVsmfebP2DNRsFRWCtleu7joCImd+hT0CqF4FAWU6S
         G+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700029664; x=1700634464;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AKSOBVjj+YjOcXAU8cJCuporBoTYiy5nHyba5GnlAqQ=;
        b=CtbylKtbbvtcJdnW5SBv4R1biCbgYzGtPyE3BP1dyqPm/lBQVBTn0oEn1YXXoUgcdC
         ddDxXTExCL/JywqJbP6WMFrC8c+aYG3RbPBxUDIdTHryp6xJLKQW0/EmZ4VPXCxL/FWJ
         fntUiUtXR0JE2JM3B0yBtTjrugP4YVTEYchCjbzFfzpQCmQSQAf3+oIbwuCcMjrR68sc
         YqlLX/WAS6xNWe0wUwawsafwqZK/Hlz6ziGlVzS+uiFgRNrMCfhIuRm6TuDtOKt2Vqcy
         Otw3+WMgY7lluA0TZMxk+gPaD0zN8vjdN9L8/tNbTf7GjSoUT2Y8qi3/Ug1WlSfyEavr
         ASbQ==
X-Gm-Message-State: AOJu0YyYaDis1123uQliiNX7mgYjrAZn5w2DbTGrt0MMninHLHeIhuZf
	Aa1AJS+bZstVaw9uNGNhBabltA==
X-Google-Smtp-Source: AGHT+IHLjecUpYnZT1aX8sOnGe785XxMzOTpOQh8BD10EBM3cElVJkFW7QBKAP+68Bxnn0Wv3wq58w==
X-Received: by 2002:a17:90b:3a8c:b0:280:2652:d41 with SMTP id om12-20020a17090b3a8c00b0028026520d41mr9717051pjb.4.1700029663650;
        Tue, 14 Nov 2023 22:27:43 -0800 (PST)
Received: from localhost ([122.172.82.6])
        by smtp.gmail.com with ESMTPSA id 23-20020a17090a1a1700b0027ced921e80sm8998415pjk.38.2023.11.14.22.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 22:27:43 -0800 (PST)
Date: Wed, 15 Nov 2023 11:57:41 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: David Dai <davidai@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Saravana Kannan <saravanak@google.com>,
	Quentin Perret <qperret@google.com>,
	Masami Hiramatsu <mhiramat@google.com>,
	Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Oliver Upton <oliver.upton@linux.dev>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Pavan Kondeti <quic_pkondeti@quicinc.com>,
	Gupta Pankaj <pankaj.gupta@amd.com>, Mel Gorman <mgorman@suse.de>,
	kernel-team@android.com, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: add virtual cpufreq device
Message-ID: <20231115062741.v3tpm337c2lidxzr@vireshk-i7>
References: <20231111014933.1934562-1-davidai@google.com>
 <20231111014933.1934562-2-davidai@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231111014933.1934562-2-davidai@google.com>

On 10-11-23, 17:49, David Dai wrote:
> diff --git a/Documentation/devicetree/bindings/cpufreq/qemu,cpufreq-virtual.yaml b/Documentation/devicetree/bindings/cpufreq/qemu,cpufreq-virtual.yaml
> +$id: http://devicetree.org/schemas/cpufreq/qemu,cpufreq-virtual.yaml#
> +properties:
> +  compatible:
> +    const: qemu,virtual-cpufreq

Not sure why we need to mention QEMU here.. Why limit this to just QEMU ?

-- 
viresh

