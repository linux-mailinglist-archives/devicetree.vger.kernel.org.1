Return-Path: <devicetree+bounces-5026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D389D7B4D0A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 56DF9281C39
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65BBA17C3;
	Mon,  2 Oct 2023 08:02:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3820B1C01
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:02:47 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DD04BD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 01:02:46 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-32167a4adaaso15548948f8f.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 01:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696233764; x=1696838564; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y6nQA+7IdEGVeShtOyMA1surPP+2JRBkHyJxsRPLijQ=;
        b=XDJ5pAXY6YxG3c0+6FlSurhBAfPtUTE71UN+fVHS+NafdGJS7Ces567xuWWa0O4OXs
         uC53stThmn8Q1H96ZvAdAOTCVcwxlMAHxQYNQ+BUEPUumRdegg6XUGmvYklGGEQB3m+Z
         LM7NckrcqMm9AogQwVDLWN6wBV5tR+R/cUxdxTfv9wrCXRv+xduvFmIQwgjIzwGRKhPZ
         qZnrntx9zYXBPY2g3vGtqxT7sMitkECkutbj7hBckhZPN28SHyerVIZCSlU+AITJBwah
         gYT+XPvlEqaQFs3j2vsP4tSyctLCZve8J6p5B3ZXWqY5vw1dMQRQqQxmYgkH4MBvR3oF
         Efiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696233764; x=1696838564;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6nQA+7IdEGVeShtOyMA1surPP+2JRBkHyJxsRPLijQ=;
        b=XiCOv6bsvq2qo+xQm9CUhiFGDVIMj2dyFOkHJjuKIr4pfBLrb3Nqhiim7LeaHuhjX6
         shq1WlYdlF1ZdUYJCTBocpgMZsdlIdo/evIem7FM6VLnr3z3HamBJsnrSFyYEZG7NKpr
         /yvvVONPMM7ll2yoAJvJYvvnFAHWRhX0OswvKdL3jUfkHmYRNbzX5jF2Xv3kIKTarYtr
         q+sLh8iXw7leaXzAAPBNbx/MMsoyW0laUX88aM40x2m32979wsyDl1OzmepT1qk8Tmcw
         viDOLNgZK4pkVf+Cw+xZUVDo3fKOG9zu30YI4EGpp+/raGeMaeJDXN+FvWWotpO6J31V
         cSaw==
X-Gm-Message-State: AOJu0YzBhXnFwT6MjhSGouppiEjIf0tWDtIFz2Lfv159ebYX7T6eFNjm
	r21Ii4280CMD8N3g/TQWmmLpng==
X-Google-Smtp-Source: AGHT+IG+SIdpkH2w32xvRD5YxMNyd5NqxjZoHzXm9cLdi5kGPZjemkeSqZXoaAiWaNjNYY9xhHEktg==
X-Received: by 2002:a5d:63d2:0:b0:313:e953:65d0 with SMTP id c18-20020a5d63d2000000b00313e95365d0mr10034512wrw.28.1696233763900;
        Mon, 02 Oct 2023 01:02:43 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id k10-20020adfd22a000000b0032320a9b010sm19655680wrh.28.2023.10.02.01.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 01:02:43 -0700 (PDT)
Date: Mon, 2 Oct 2023 11:02:40 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org,
	Apelete Seketeli <aseketeli@baylibre.com>
Subject: Re: [PATCH v3 01/27] dt-bindings: iio: resolver: add devicetree
 bindings for ad2s1210
Message-ID: <2416fa1b-86f1-40d5-b7b5-5fe85e0a8472@kadam.mountain>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
 <20230929-ad2s1210-mainline-v3-1-fa4364281745@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929-ad2s1210-mainline-v3-1-fa4364281745@baylibre.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 12:23:06PM -0500, David Lechner wrote:
> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 

Having two from headers kind of messes things up.  The second From is
included in the body of the commit message.

regards,
dan carpenter


