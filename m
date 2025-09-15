Return-Path: <devicetree+bounces-217432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 990A3B57B33
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 14:36:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18C257AEDD9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92113093BC;
	Mon, 15 Sep 2025 12:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NO9Jju51"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ACF2D5943
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 12:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757939771; cv=none; b=X7wy9aO1C7u+IE2fk6UpNfoS8hP8vG4qIM9LO6GrlaawB+z7K9kRoKJ+NwxO+HwytYsOSgBCyU1DeOmx5+zNrCtBvwEdQpokBT2gvZ6CDmNe3EIb6KoQgMsHwjFjo0JZ98mAeO0oqiPxfFKwJRWVfuphCmt2Z0KK9IQG+s67uFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757939771; c=relaxed/simple;
	bh=gpLksYcw9Myqwzil/WQeDaXG00Vp4w5WqIhVKKBj/rk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ifAnMFdBI2Upd4wWWLDAqna0wNNIgz8CBJHAyGw6SJIDi+G7g+9pG0XgLWGSYVxHJQgRuGf2F5xukiS92HpxockX5z/Vp2/UA+KjsRyVzSZcyTaP2QuTOdTTZhTbmD6nruSLN2KKL4Eu7K6Avqm3LeVBWCNT7hfRmhUNHIbuNvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NO9Jju51; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757939769;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wLL8rzXBaL9TL+cKj7734rcnA0rGbpZjb3H9q3ePb+M=;
	b=NO9Jju51TBiOerlqEWqmbLfBeUVSPoh6/FpMC35SijbAgVCBZADCqkVolAPr1zzunM9vXM
	XD/lvE9NDVTp7hqwL/cZKAesCsnjOwGlKVyi8sLl9oFsZPAMykhFR6U08HXU4ns7w830WZ
	9JJcMiF7m/sAapPhFiNB7JfhiEqtqTg=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-587-M2SGjDTVN6iEmGbaKBOKgw-1; Mon, 15 Sep 2025 08:36:08 -0400
X-MC-Unique: M2SGjDTVN6iEmGbaKBOKgw-1
X-Mimecast-MFC-AGG-ID: M2SGjDTVN6iEmGbaKBOKgw_1757939767
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-777a81f38a6so47746066d6.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 05:36:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757939767; x=1758544567;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wLL8rzXBaL9TL+cKj7734rcnA0rGbpZjb3H9q3ePb+M=;
        b=sruSVYAxMOJ9xaDXsocCLzQBl+AIb1MVl9uVrp2TKjs9uv6/Nh3L3hXcEVRR2hsNdl
         zP1eGmaLwkQj1QVIsZQvdSQYXLq/z/Neog4PLSYi5F1eBSUxADoAs9Ckugzb5Crarkp+
         qMd2cpM2mxDELbXhIlTsCgptGrrTUGqrgfyCxGoJk+8vGGGWF8xJxREQJOzq1oz+3929
         r016jKljk2tVZ7NdBBiA6Isdeb9z2scavkDV1sOVbSShD5Z528KNyuV0jIEN1L2j3aS1
         BlKe8AjfUQKRKTXc6zwQPPVBuAKcqjRYddtP6GzxJU3YebDCJkPOMGBopdMucRo4lK8D
         0kbg==
X-Forwarded-Encrypted: i=1; AJvYcCXB2AVOk+hUuEiPP5FSf+jXDxoSHAv2M0lRn5xYMNvqin5aGurRhPjfIiy4XRnw+UmTpWrRzxVajrS7@vger.kernel.org
X-Gm-Message-State: AOJu0YxmW2Dyl/9mZEukWmEQc2jKXdjY8NctMCyTEwO5ni9a3NTEP61h
	9Gva7/Bvz1B/yMGu78GSaBXwvhYLjNk1b0jBkfS3j5AhRGb5ou3xkBKLwV+b3rvcjIB0oopkkyj
	Fw5epXIQgQJRJfAuqEmYPygFfFDoSg7qp0HFiGaFWsDnfkqHS5lKBF3dxo0YPM14jED0dR3POug
	==
X-Gm-Gg: ASbGncvDFd4HyA8o0kHNlXIB3K32gNnKdXoUTFulEuvpc6oahCALh7IARFDgeDZIcgq
	guAqkqxdietcvo7xyDNmc4X/2KVEL/VWoD+c5nA0KMkIU2NymNudC0tcKcm5WKeIuCY59/iRRE2
	W16glOLQqKLxk/q0R7y9t+F+ZudvP+EZzC0X5FC7npXFzY38vZPvnqPqXlJQmENqWjWXICfLiTp
	mNtqxGmPgoJ92JgfzQSgioGlt6Nd24jeEYo1tE2BOhTb37rt4qS4EASa6HGpCNVhi7NvF0hYfz8
	GZduf58kC1O0o8lO6sUw3FyukyYOmsFCKmvKkrbazqe/IiP3h4qj8eov1h+SE9G5ejXyYMEgkfF
	apMGKcW5Nw66oaBZiWA3qZJbMSKklwQw=
X-Received: by 2002:a05:622a:178f:b0:4b7:adf0:eeb3 with SMTP id d75a77b69052e-4b7adf0f843mr9502211cf.71.1757939766709;
        Mon, 15 Sep 2025 05:36:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHY7Mxjz8VG1qTosAk9YY8DjG+y2q7MXDw84ZmcJWfZt1ziy/I8az1raMUNBU225CmbUCJKNA==
X-Received: by 2002:a05:620a:3194:b0:7f9:7000:f7bb with SMTP id af79cd13be357-823fbde9118mr1346851185a.7.1757939388265;
        Mon, 15 Sep 2025 05:29:48 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b79a7b639esm26809461cf.5.2025.09.15.05.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 05:29:47 -0700 (PDT)
Date: Mon, 15 Sep 2025 08:29:44 -0400
From: Brian Masney <bmasney@redhat.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 4/5] clk: Add KUnit tests for assigned-clock-sscs
Message-ID: <aMgGuDxzYZpw9sti@redhat.com>
References: <20250915-clk-ssc-version1-v4-0-5a2cee2f0351@nxp.com>
 <20250915-clk-ssc-version1-v4-4-5a2cee2f0351@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-clk-ssc-version1-v4-4-5a2cee2f0351@nxp.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Mon, Sep 15, 2025 at 04:29:38PM +0800, Peng Fan wrote:
> Spread spectrum configuration is part of clock frequency settings,
> and its behavior can be validated similarly to assigned clock rates.
> 
> Extend the existing KUnit tests for assigned-clock-rates to cover
> assigned-clock-sscs by reusing the test framework. Add new test
> device trees:
>   - kunit_clk_assigned_sscs_null.dtso
>   - kunit_clk_assigned_sscs_null_consumer.dtso
>   - kunit_clk_assigned_sscs_without.dtso
>   - kunit_clk_assigned_sscs_without_consumer.dtso
>   - kunit_clk_assigned_sscs_zero.dtso
>   - kunit_clk_assigned_sscs_zero_consumer.dtso
> 
> These tests cover various invalid configurations of assigned-clock-sscs,
> ensuring robustness and consistent error handling, similar to the coverage
> provided for assigned-clock-rates.
> 
> Co-developed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

This looks good to me. I'd typically leave a Reviewed-by, but that's
probably not appropriate since I'm already listed with a
Co-developed-by.

Brian


