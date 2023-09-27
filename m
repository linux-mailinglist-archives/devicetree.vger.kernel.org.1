Return-Path: <devicetree+bounces-3604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A762C7AF7C0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 03:47:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 584A3281A54
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 01:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F060623A7;
	Wed, 27 Sep 2023 01:47:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45DD2F5B
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:47:43 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C868272AA;
	Tue, 26 Sep 2023 18:47:42 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c63164a2b6so18484335ad.0;
        Tue, 26 Sep 2023 18:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695779262; x=1696384062; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kdJIQdTaHI0k4LukyVP6v1Fv5TtDAf1OoI8Bd0E9aK8=;
        b=U47/cp4hH+KbCm2Jq2Jyxba1UgQRjLM7ioT6KuVLWLtMgSDTItfSCUe4hcFihgDy6K
         3QHlPwnnAKJtjRMzMYMqSPRNu7VhumxE7p4NC4mB/JlmY6IXepVGQyE5ojn9DfeI4Eu0
         33LHTaTnUmk3PPS+0CZxmV+l0iq6DcTc31igq90c0RTZhIQX54CenEIT68oQ/eJ+NN67
         deAmIEP9SKXAfQGRIVlzAbbDq4FtLWqUwjCBBObKJ8nVy/Lguee/YFUldXxbrn3tv6nV
         9voTu2q0MGlWOzTOe4rh2f4OkTIstqwJ4oWLKvzIdUsx2JTy3uLLKw59WUffs0K7gRyX
         xOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695779262; x=1696384062;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdJIQdTaHI0k4LukyVP6v1Fv5TtDAf1OoI8Bd0E9aK8=;
        b=wLTzvfTPl7G3R84TzQmTPeC3pdLCeCclD3rVgoMnBmQ7SxccAcFh0Jd0TqbP2/7xBd
         s2SGlEnJJ/zB2crnBU/1s4uBPldknqNQC4SxAIbvUuNcOk0XiZP0Om246tn4Ya+GRfi4
         gOQ83N9Gk+VGioi9+8oi40OjQQcmSx8UDvF5vAcZnG+P2kQ3ycWx/l04cKQu8kSFVsTv
         Gxb3x7XtVtqkg97ybATW6vXqExdKJq3qiyralwdjwkz7ij+SkPRCpcmtwa9Wb7KXmAYk
         Nv01zNkL2ELSUFYx/FdnSkKY/ipQ0Jw1HRHDgr272YGbcsXeHxzldfhaMMCzBgR8e3X4
         OOvg==
X-Gm-Message-State: AOJu0YyhpltzKQUGuRal6UT3N6vj2soefuVv7be35FZrLHoFXRk9xbG3
	ilcSVRfVrYdLkE4FiA0gd8ya3eFXcK4SHw==
X-Google-Smtp-Source: AGHT+IHNbU5YWvLueYGJ0d4j/juY2IrOftABxxWQl3+rEGkb6aUw/CBCHn1A7vxf+om//IVkt1GxuA==
X-Received: by 2002:a17:902:d2c7:b0:1b7:f64b:379b with SMTP id n7-20020a170902d2c700b001b7f64b379bmr1051920plc.17.1695779262159;
        Tue, 26 Sep 2023 18:47:42 -0700 (PDT)
Received: from localhost ([2804:30c:974:7600:2605:6970:d08b:fd3d])
        by smtp.gmail.com with ESMTPSA id e1-20020a170902d38100b001acae9734c0sm131190pld.266.2023.09.26.18.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 18:47:41 -0700 (PDT)
Date: Tue, 26 Sep 2023 22:47:39 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: adi,ad7292: Fix
 additionalProperties on channel nodes
Message-ID: <ZROJuya87tMI4Q/y@marsc.168.1.7>
References: <20230926164357.100325-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926164357.100325-1-robh@kernel.org>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 09/26, Rob Herring wrote:
> "additionalProperties: true" is only for incomplete schemas such as bus
> child nodes in a bus's schema. That doesn't apply to the "channel" nodes
> in the adi,ad7292 binding, so fix additionalProperties to be false.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>

Thanks,
Marcelo

