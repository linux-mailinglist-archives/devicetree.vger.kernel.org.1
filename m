Return-Path: <devicetree+bounces-139661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B12C4A16871
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 677C918890BF
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04EA0194C92;
	Mon, 20 Jan 2025 08:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QfK+390U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7B3195381
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 08:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737363127; cv=none; b=m2izf5kgxzxQYJCit7WIk3G79gBB2YO592b1p6urdg6GRFZcvpgXg6Pfi9CXrmhuczP8ZcF6bdZZbVe7Z7tsrK+6VVR6ATjRs5Z6TojynyjiqZpT++86nskcpACiJ4JO07WeoFYZB0hEWshBzLZtlkbSKWqODpULI2rum+QTPkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737363127; c=relaxed/simple;
	bh=1JUQYuhdGSLcJOMGmrsYFnhon7d1SuCZiQp/dEI6qDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rhHbM4prJXaRy5kmrKKE45RLMIQP+c0SbFeuZORksfmhk2RfOAgHgZdmq1JYOt0knoqOSp+e8ge1vx9s8vhWQ70LcccvB8RB01a2hlO9JmVxJVCtLCA2MgVRHxBLSM1xynDRxCZclqvRwmMPmGhwZzxRQyKo6mqCLbnXXeTsO2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QfK+390U; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5401be44b58so4350603e87.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 00:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737363124; x=1737967924; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YTpWMAEaMG9QvbcSNXP0KlGFWbtNf6yy+VBl+0ZfPnU=;
        b=QfK+390UU0vdfjJ4Wqlo1AoyNWMOaLojS3p/BSThGdIwXqH9kWuzeqZtOBzoS5lD62
         oLqAmQBcjDFhZxSouWrvcvfW2jUj4vuaGXwtEpU8vK12KMfAQNi4fi7aPSTsxf517XeG
         3fvqPDl4Ho0oNJXNndyBfacToZ8CbVKoYcimJSzZG0ApkO1znSp1Su5dAnooOZXsmqZ1
         1jp14km/pYKW5ufXAh8Cl8faXJJhLvrrhd1oNKrJ8lCUFVa4ShCZj0Uao6BJdJx/ko78
         EQi64CPP6Uyp4n1pr1hrjqVIox6TocaU+2sF2pMX7YJG77D/tICOtyRwIB2OhruEuzGh
         DgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737363124; x=1737967924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTpWMAEaMG9QvbcSNXP0KlGFWbtNf6yy+VBl+0ZfPnU=;
        b=DAZtNiFgjbu+6iEbCVn/dPfG3icUMTvGHBXOAdJVOT5lTAfh44cEGN5sPz/aFYsC/u
         pEvWlU8HzhjTyTUq+Y6Pf6CwzLPjBRqM3h37f1LUrfrlqyteUqQ90tHT50wt4h23lPhp
         0TrkC7jpPVqacPLUPS+yxVihyrIOH7ZQy5edSCG4eZsD0Ph45bbX1JNHJvszoIbKqWlQ
         TxjC2iHC8FADEOYB2jfOo1mFFj23EP6WpVTMnYRr8ptfqtwPlSoWthgY79QMx3ScVKP+
         omryxUsCpoaxMyFG2aZusTQyQOyfTHpZY1WWlYK0fUbtNQV4vNi1fZk7nvL5iq9/vcCr
         Pozg==
X-Forwarded-Encrypted: i=1; AJvYcCVMOfjQCi72R1z4AHvRo8DFzWVaCfRlqwAG/qCywwMH/di/mglBMALl0X/jgZ8zh3n+MfjBtFN6tW6g@vger.kernel.org
X-Gm-Message-State: AOJu0YwpRIKDKodH5ECl9+ax7iRbSfTlG1o3wn9K35U75/qd57RIS7jb
	9FaB/rgggK0bHkdQ0Hb/+QBa+K3hzttclMB940/SkWU7VDiVUK0GQvsXgMrj/s511mph9CBqpGA
	9Lkg=
X-Gm-Gg: ASbGncu8zNcPmblv+Hk85Qeo3bzofvujXxuxOXRpfwrQq6A7L24m6sfwaYVbfqc/I6Q
	OD4ucdS9jAtFCM6Uey8njfk/hmmwcOSxM8CxqXn5l2dADE8IDvzVQgTPMK4+aqGjyE4/gX0N0RP
	vy2IykEDqL20lEaK+XF1lPoRf5lHqIZT2rNbD8Gh60Mm3mdMHcs7L4WFgsdyaEmRDwGG3s8nyXi
	xQmSoJZeVJjwoMIrKznZzuq4OA+nYNxnLUX32j9z69WfI4d2ZX1rLqpz0CXe2/ZrK5ejwKGUkyx
	PV5s3GJriRA2C4etqBT+gpk8fWUZQwxe6vF7ASI5aLgSFY2BGg==
X-Google-Smtp-Source: AGHT+IHyZ25gS5p5OdMxHhdDuUjFvCRRQRGi9F7ATGGW1jG6/T087u04d/e0A95xRpBXs5gJz2cjEw==
X-Received: by 2002:ac2:4c4f:0:b0:542:6d01:f55c with SMTP id 2adb3069b0e04-5439c216ba7mr4011525e87.3.1737363124175;
        Mon, 20 Jan 2025 00:52:04 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af07cffsm1216241e87.38.2025.01.20.00.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 00:52:02 -0800 (PST)
Date: Mon, 20 Jan 2025 10:52:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Will Deacon <will@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <sboyd@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v4 04/10] dt-bindings: clock: Add Qualcomm QCS615 Display
 clock controller
Message-ID: <czxiikfvffnfljngec6gdwoapx2khtvltauzhezexkxxitclfn@7pfnj7jtyfil>
References: <20250119-qcs615-mm-v4-clockcontroller-v4-0-5d1bdb5a140c@quicinc.com>
 <20250119-qcs615-mm-v4-clockcontroller-v4-4-5d1bdb5a140c@quicinc.com>
 <173728731976.808036.168078560019330137.robh@kernel.org>
 <a646b3af-9957-4720-893e-9013b2dca43a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a646b3af-9957-4720-893e-9013b2dca43a@quicinc.com>

On Mon, Jan 20, 2025 at 10:10:11AM +0530, Taniya Das wrote:
> 
> 
> On 1/19/2025 5:23 PM, Rob Herring (Arm) wrote:
> > y bot found errors running 'make dt_binding_check' on your patch:
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/clock/qcom,qcs615-dispcc.example.dts:19:18: fatal error: dt-bindings/clock/qcom,qcs615-gcc.h: No such file or directory
> >     19 |         #include <dt-bindings/clock/qcom,qcs615-gcc.h>
> >        |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > compilation terminated.
> > make[2]: *** [scripts/Makefile.dtbs:131: Documentation/devicetree/bindings/clock/qcom,qcs615-dispcc.example.dtb] Error 1
> > make[2]: *** Waiting for unfinished jobs....
> > make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1506: dt_binding_check] Error 2
> > make: *** [Makefile:251: __sub-make] Error 2
> 
> The code https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/include/dt-bindings/clock/qcom,qcs615-gcc.h
> 
> The cover letter also has the series mentioned.

Please. Stop using bindings for clock controllers in DT bindings for
other devices. It provides no benefits and complicates merging.

-- 
With best wishes
Dmitry

